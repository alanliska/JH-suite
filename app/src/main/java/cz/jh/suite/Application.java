package cz.jh.suite;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.widget.Toast;

//import com.termoneplus.UserAccount;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

//import androidx.annotation.RequiresApi;


public class Application extends android.app.Application {
    public static final String _PATH_BSHELL = "/system/bin/sh";

    // paths
    public static File rootdir;
    public static File etcdir;
    public static File xbindir;
    public static File libdir;
    public static File scriptdir; /*for backward compatibility*/

    private boolean installed = false;

    public static boolean isAppInstalled(Context context, String packageName) {
        try {
            PackageManager pm = context.getPackageManager();
            pm.getApplicationInfo(packageName, 0);
            //PackageInfo pkg_info = pm.getPackageInfo(packageName, 0);
            //pkg_info.getLongVersionCode();
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }



    public void onCreate() {
        super.onCreate();

        rootdir = getFilesDir().getParentFile();
        etcdir = new File(rootdir, "etc");
        libdir = new File(getApplicationInfo().nativeLibraryDir);
        xbindir = libdir;

        if (installed) return;
        new Thread(() -> {
            installed = onInstall();
            new Handler(Looper.getMainLooper()).post(this::onInstallStatus);
        }).start();
    }

    private void onInstallStatus() {
        int rid = 1;
//        int rid = installed
//                ? R.string.app_install_success
//                : R.string.app_install_failure;

        Toast toast = Toast.makeText(getApplicationContext(), rid, Toast.LENGTH_LONG);
        toast.setGravity(Gravity.BOTTOM, 0, 16);
        toast.show();
    }

    protected boolean onInstall() {
        boolean r;

        File piddir = new File(rootdir, "run");

        r = rootdir.setExecutable(true, false) &&
//                Installer.install_directory(etcdir, false) &&
                install_public_directory(piddir);
        if (!r) return false;

//        UserAccount.initialize(etcdir);

        {// clean-up obsolete executable
            File dir = new File(rootdir, "xbin");
            if (dir.exists()) {
                for (String item : dir.list()) {
                    new File(dir, item).delete();
                }
                dir.delete();
            }
        }

        // Andorid 10 does not allow excution from writable directories.
        // So terminal application must be version that supports aliases.
//        if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q /* API Level 29 */)
        {// clean-up obsolete wrapper scripts
            File dir = new File(rootdir, "bin");
            if (dir.exists()) {
                for (String item : dir.list()) {
                    new File(dir, item).delete();
                }
                dir.delete();
            }
        }

        AssetManager am = getAssets();
        try {
            String asset_path = "etc";

            //noinspection ConstantConditions
            for (String item : am.list(asset_path)) {
                r = install_configuration(am, asset_path, item, etcdir);
                if (!r) return false;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Note at this point xbindir == libdir
        File exe1 = new File(xbindir, "libxbbc.so");
        File exe2 = new File(xbindir, "libxbvm.so");

        return true;
    }

    protected final boolean install_public_directory(File dir) {
        if (!(dir.exists() || dir.mkdir())) return false;

        // always preset directory permissions
        return dir.setReadable(true, false) &&
                dir.setWritable(true, false) &&
                dir.setExecutable(true, false);
    }

    protected final boolean install_asset(AssetManager am, String asset_path, String item, File target_file) {
        int buflen = 32 * 1024; // 32k
        byte[] buf = new byte[buflen];

        try {
            String asset_item = asset_path + "/" + item;
            OutputStream os = new FileOutputStream(target_file);
            InputStream is = am.open(asset_item, AssetManager.ACCESS_STREAMING);
            int len;
            while ((len = is.read(buf, 0, buflen)) > 0) {
                os.write(buf, 0, len);
            }
            is.close();
            os.close();

            return true;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }

    protected final boolean install_configuration(AssetManager am, String asset_path, String item, File target_path) {
        File target = new File(target_path, item);
        if (!install_asset(am, asset_path, item, target))
            return false;

        // always preset permissions
        return target.setReadable(true, false);
    }







}
