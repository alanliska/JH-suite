package cz.jh.suite;

import android.Manifest;
import android.app.ProgressDialog;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Handler;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import android.net.Uri;
import android.os.Environment;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import cz.suite.R;

public class MainActivity extends AppCompatActivity {

    public ProgressDialog progressDialog;
    private static final int MY_PERMISSION_REQUEST_STORAGE = 1;
    private TextView labelAB;
    private TextView labelC;
    private TextView labelP;
    private TextView labelR;
    private TextView labelK;
    private TextView labelCh;
    private TextView labelO;
    Button start_Bayless;
    Button start_BaylessRicci;
    Button start_Bell;
    Button start_Pauling1;
    Button start_Ricci;
    Button start_Brown1;
    Button start_Brown2;
    Button start_Edwards1;
    Button start_EigenFuoss1;
    Button start_Fuoss;
    Button start_Hancock1;
    Button start_Hancock2;
    Button start_Misono1;
    Button start_Misono2;
    Button start_Yamada;
    Button start_Yingst;
    Button start_Brown3;
    Button start_Clifford1;
    Button start_Clifford2;
    Button start_Brown4;
    Button start_Edwards2;
    Button start_EigenFuoss2;
    Button start_Marcus;
    Button start_Zhou;
    Button start_Pauling2;
    Button start_PCM;
    Button start_Sanderson;
    Button start_BanksBurnop;
    Button start_BrownStein;
    Button start_Cabani;
    Button start_Dick;
    Button start_Hammett1;
    Button start_Hammett2;
    Button start_Jankowski;
    Button start_Joback;
    Button start_Klopman1;
    Button start_Klopman2;
    Button start_Mavrovouniotis;
    Button start_Pedley;
    Button start_Polymer;
    Button start_Simamora;
    Button start_Zuman1;
    Button start_Zuman2;
    Button start_Zuman3;
    Button start_Zuman4;
    Button start_Zuman5;
    Button start_Zuman6;
    Button start_Zuman7;
    Button manual;
    Button About;
    Button license_acpdfview;
    Button license1_gmp;
    Button license2_gmp;
    Button license1_x11basic;
    Button license2_x11basic;
    Button license;

    /**
     * Called when the activity is first created.
     */
    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        labelAB = (TextView) findViewById(R.id.labelAB);
        labelC = (TextView) findViewById(R.id.labelC);
        labelP = (TextView) findViewById(R.id.labelP);
        labelR = (TextView) findViewById(R.id.labelR);
        labelCh = (TextView) findViewById(R.id.labelCh);
        labelK = (TextView) findViewById(R.id.labelK);
        labelO = (TextView) findViewById(R.id.labelO);
        license_acpdfview = (Button) findViewById(R.id.license_acpdfview);
        license_acpdfview.setOnClickListener(license_acpdfviewClick);
        license1_gmp = (Button) findViewById(R.id.license1_gmp);
        license1_gmp.setOnClickListener(license1_gmpClick);
        license2_gmp = (Button) findViewById(R.id.license2_gmp);
        license2_gmp.setOnClickListener(license2_gmpClick);
        license1_x11basic = (Button) findViewById(R.id.license1_x11basic);
        license1_x11basic.setOnClickListener(license1_x11basicClick);
        license2_x11basic = (Button) findViewById(R.id.license2_x11basic);
        license2_x11basic.setOnClickListener(license2_x11basicClick);
        license = (Button) findViewById(R.id.license);
        license.setOnClickListener(licenseClick);

        manual = (Button) findViewById(R.id.manual);
        manual.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent = new Intent(MainActivity.this, Manual.class);
                startActivity(intent);
            }
        });

        About = (Button) findViewById(R.id.About);
        About.setOnClickListener(onAboutClick);


        // definice tlačítka jako obvykle, ale...
        start_Bayless = (Button) findViewById(R.id.start_Bayless);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Bayless.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Bayless.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_BaylessRicci = (Button) findViewById(R.id.start_BaylessRicci);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_BaylessRicci.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, BaylessRicci.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Bell = (Button) findViewById(R.id.start_Bell);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Bell.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Bell.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Pauling1 = (Button) findViewById(R.id.start_Pauling1);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Pauling1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Pauling1.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Ricci = (Button) findViewById(R.id.start_Ricci);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Ricci.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Ricci.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Brown1 = (Button) findViewById(R.id.start_Brown1);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Brown1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Brown1.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Brown2 = (Button) findViewById(R.id.start_Brown2);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Brown2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Brown2.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Edwards1 = (Button) findViewById(R.id.start_Edwards1);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Edwards1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Edwards1.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_EigenFuoss1 = (Button) findViewById(R.id.start_EigenFuoss1);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_EigenFuoss1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, EigenFuoss1.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Fuoss = (Button) findViewById(R.id.start_Fuoss);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Fuoss.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Fuoss.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Hancock1 = (Button) findViewById(R.id.start_Hancock1);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Hancock1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Hancock1.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Hancock2 = (Button) findViewById(R.id.start_Hancock2);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Hancock2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Hancock2.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Misono1 = (Button) findViewById(R.id.start_Misono1);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Misono1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Misono1.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Misono2 = (Button) findViewById(R.id.start_Misono2);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Misono2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Misono2.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Yamada = (Button) findViewById(R.id.start_Yamada);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Yamada.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Yamada.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Yingst = (Button) findViewById(R.id.start_Yingst);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Yingst.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Yingst.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Brown3 = (Button) findViewById(R.id.start_Brown3);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Brown3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Brown3.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Clifford1 = (Button) findViewById(R.id.start_Clifford1);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Clifford1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Clifford1.class);
                startActivity(intent);
            }
        });
        // definice tlačítka jako obvykle, ale...
        start_Clifford2 = (Button) findViewById(R.id.start_Clifford2);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Clifford2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Clifford2.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Brown4 = (Button) findViewById(R.id.start_Brown4);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Brown4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Brown4.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Edwards2 = (Button) findViewById(R.id.start_Edwards2);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Edwards2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Edwards2.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_EigenFuoss2 = (Button) findViewById(R.id.start_EigenFuoss2);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_EigenFuoss2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, EigenFuoss2.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Marcus = (Button) findViewById(R.id.start_Marcus);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Marcus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Marcus.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Zhou = (Button) findViewById(R.id.start_Zhou);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Zhou.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Zhou.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Pauling2 = (Button) findViewById(R.id.start_Pauling2);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Pauling2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Pauling2.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_PCM = (Button) findViewById(R.id.start_PCM);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_PCM.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, PCM.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Sanderson = (Button) findViewById(R.id.start_Sanderson);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Sanderson.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Sanderson.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_BanksBurnop = (Button) findViewById(R.id.start_BanksBurnop);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_BanksBurnop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, BanksBurnop.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_BrownStein = (Button) findViewById(R.id.start_BrownStein);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_BrownStein.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, BrownStein.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Cabani = (Button) findViewById(R.id.start_Cabani);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Cabani.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Cabani.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Dick = (Button) findViewById(R.id.start_Dick);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Dick.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Dick.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Hammett1 = (Button) findViewById(R.id.start_Hammett1);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Hammett1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Hammett1.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Hammett2 = (Button) findViewById(R.id.start_Hammett2);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Hammett2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Hammett2.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Jankowski = (Button) findViewById(R.id.start_Jankowski);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Jankowski.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Jankowski.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Joback = (Button) findViewById(R.id.start_Joback);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Joback.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Joback.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Mavrovouniotis = (Button) findViewById(R.id.start_Mavrovouniotis);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Mavrovouniotis.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Mavrovouniotis.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Pedley = (Button) findViewById(R.id.start_Pedley);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Pedley.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Pedley.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Polymer = (Button) findViewById(R.id.start_Polymer);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Polymer.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Polymer.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Simamora = (Button) findViewById(R.id.start_Simamora);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Simamora.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Simamora.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Zuman1 = (Button) findViewById(R.id.start_Zuman1);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Zuman1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Zuman1.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Zuman2 = (Button) findViewById(R.id.start_Zuman2);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Zuman2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Zuman2.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Zuman3 = (Button) findViewById(R.id.start_Zuman3);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Zuman3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Zuman3.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Zuman4 = (Button) findViewById(R.id.start_Zuman4);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Zuman4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Zuman4.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Zuman5 = (Button) findViewById(R.id.start_Zuman5);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Zuman5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Zuman5.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Zuman6 = (Button) findViewById(R.id.start_Zuman6);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Zuman6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Zuman6.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Zuman7 = (Button) findViewById(R.id.start_Zuman7);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Zuman7.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Zuman7.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Klopman1 = (Button) findViewById(R.id.start_Klopman1);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Klopman1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Klopman1.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        start_Klopman2 = (Button) findViewById(R.id.start_Klopman2);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        start_Klopman2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Klopman2.class);
                startActivity(intent);
            }
        });



        // give the app permissions to access the storage
        {
            if (ContextCompat.checkSelfPermission(MainActivity.this,
                    Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
                if (ActivityCompat.shouldShowRequestPermissionRationale(MainActivity.this,
                        Manifest.permission.WRITE_EXTERNAL_STORAGE)) {
                    ActivityCompat.requestPermissions(MainActivity.this,
                            new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, MY_PERMISSION_REQUEST_STORAGE);

                } else {
                    ActivityCompat.requestPermissions(MainActivity.this,
                            new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, MY_PERMISSION_REQUEST_STORAGE);
                }
                ;
            } else {
                // do nothing
            }
            ;
        }


        SharedPreferences wmbPreference = PreferenceManager.getDefaultSharedPreferences(this);
        boolean isFirstRun = wmbPreference.getBoolean("FIRSTRUN", true);
        SharedPreferences.Editor editor = wmbPreference.edit();

        if (isFirstRun){



            progressDialog = new ProgressDialog(MainActivity.this);
            progressDialog.setTitle("Please wait...");
            progressDialog.setMessage("Installing JH-suite. It may take a while.");
//                progressDialog.setCancelable(false);
//                progressDialog.setButton(DialogInterface.BUTTON_NEGATIVE, "Cancel", new DialogInterface.OnClickListener() {
//                    @Override
//                    public void onClick(DialogInterface dialog, int which) {
//                        dialog.dismiss();
//                    }
//                });
            progressDialog.show();
            new Thread() {
                public void run() {

                    // Code to run once

                    exec("mkdir "+Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite");

                    copyFromAssetsToInternalStorage("assets.zip");
                    String zipFilePath = getFilesDir()+"/assets.zip";
                    String destDir = getFilesDir()+"/" ;
                    try {
                        unzip(new File(zipFilePath),destDir);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    exec("rm "+getFilesDir()+"/assets.zip");
                    exec("chmod -R 755 "+getFilesDir()+"/");

                    onFinish();
                }
                public void onFinish(){
                    progressDialog.dismiss();
                }
            }.start();

            editor.putBoolean("FIRSTRUN", false);
            editor.apply();
        }
        // here it must not be!!! otherwise ShellTools crashes
//        onStart();


    }


    protected void copyFromAssetsToInternalStorage(String filename){
        AssetManager assetManager = getAssets();

        try {
            InputStream input = assetManager.open(filename);
            OutputStream output = openFileOutput(filename, Context.MODE_PRIVATE);

            copyFile(input, output);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void copyFile(InputStream in, OutputStream out) throws IOException {
        byte[] buffer = new byte[1024];
        int read;
        while ((read = in.read(buffer)) != -1){
            out.write(buffer, 0, read);
        }
    }

    public static void unzip(File source, String out) throws IOException {
        try (ZipInputStream zis = new ZipInputStream(new FileInputStream(source))) {

            ZipEntry entry = zis.getNextEntry();

            while (entry != null) {

                File file = new File(out, entry.getName());

                if (entry.isDirectory()) {
                    file.mkdirs();
                } else {
                    File parent = file.getParentFile();

                    if (!parent.exists()) {
                        parent.mkdirs();
                    }

                    try (BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(file))) {

                        int bufferSize = Math.toIntExact(entry.getSize());
                        byte[] buffer = new byte[bufferSize > 0 ? bufferSize : 1];
                        int location;

                        while ((location = zis.read(buffer)) != -1) {
                            bos.write(buffer, 0, location);
                        }
                    }
                }
                entry = zis.getNextEntry();
            }
        }
    }

    public void onStart()
    // definováno zobrazení obecného vzorového vstupního souboru
    {
        super.onStart();
    }

    private View.OnClickListener license_acpdfviewClick; {
        license_acpdfviewClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                alertpdf();
            }
        };
    }

    public void alertpdf() {
        new AlertDialog.Builder(MainActivity.this)
                .setTitle("LICENSE-ACPDFVIEW")
                .setMessage(exec("cat "+getFilesDir()+"/licenses/LICENSE-ACPDFVIEW.txt"))
                .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        dialog.cancel();
                    }
                }).show();
    }

    private View.OnClickListener license1_gmpClick; {
        license1_gmpClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                alert1gmp();
            }
        };
    }

    public void alert1gmp() {
        new AlertDialog.Builder(MainActivity.this)
                .setTitle("LICENSE1-GMP")
                .setMessage(exec("cat "+getFilesDir()+"/licenses/LICENSE1-GMP.txt"))
                .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        dialog.cancel();
                    }
                }).show();
    }

    private View.OnClickListener license2_gmpClick; {
        license2_gmpClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                alert2gmp();
            }
        };
    }

    public void alert2gmp() {
        new AlertDialog.Builder(MainActivity.this)
                .setTitle("LICENSE2-GMP")
                .setMessage(exec("cat "+getFilesDir()+"/licenses/LICENSE2-GMP.txt"))
                .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        dialog.cancel();
                    }
                }).show();
    }

    private View.OnClickListener license1_x11basicClick; {
        license1_x11basicClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                alert1x11();
            }
        };
    }

    public void alert1x11() {
        new AlertDialog.Builder(MainActivity.this)
                .setTitle("LICENSE1-X11_BASIC")
                .setMessage(exec("cat "+getFilesDir()+"/licenses/LICENSE-X11-BASIC.txt"))
                .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        dialog.cancel();
                    }
                }).show();
    }

    private View.OnClickListener license2_x11basicClick; {
        license2_x11basicClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                alert2x11();
            }
        };
    }

    public void alert2x11() {
        new AlertDialog.Builder(MainActivity.this)
                .setTitle("LICENSING TERMS-X11-BASIC")
                .setMessage(exec("cat "+getFilesDir()+"/licenses/LICENSING_TERMS-X11-BASIC.txt"))
                .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        dialog.cancel();
                    }
                }).show();
    }

    private View.OnClickListener licenseClick; {
        licenseClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                alert();
            }
        };
    }

    public void alert() {
        new AlertDialog.Builder(MainActivity.this)
                .setTitle("LICENSE-JH-SUITE")
                .setMessage(exec("cat "+getFilesDir()+"/licenses/LICENSE-JH-SUITE.txt"))
                .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        dialog.cancel();
                    }
                }).show();
    }

    private View.OnClickListener onAboutClick; {

        onAboutClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                alertAbout();
            }
        };
    }

    public void alertAbout() {

        new AlertDialog.Builder(MainActivity.this)
                .setTitle("About the JH SUITE app")
                .setMessage(exec("cat "+getFilesDir()+"/About.txt"))
                .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        dialog.cancel();
                    }
                }).show();
    }

    @Override
    protected void onResume() {
        super.onResume();

    }

    // Executes UNIX command.
    private String exec(String command) {
        try {
            Process process = Runtime.getRuntime().exec(command);
            BufferedReader reader = new BufferedReader(
                    new InputStreamReader(process.getInputStream()));
            int read;
            char[] buffer = new char[4096];
            StringBuffer output = new StringBuffer();
            while ((read = reader.read(buffer)) > 0) {
                output.append(buffer, 0, read);
            }
            reader.close();
            process.waitFor();
            return output.toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

}