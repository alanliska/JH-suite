package cz.jh.suite;

import android.Manifest;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Handler;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

import android.net.Uri;
import android.os.Environment;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import cz.suite.R;

public class MainActivity extends AppCompatActivity {

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
    Button About;

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

        About = (Button) findViewById(R.id.About);
        About.setOnClickListener(onAboutClick);

        File filePath1 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work");
        File filePath2 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Banks-Burnop");
        File filePath3 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Bayless");
        File filePath4 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Bayless-Ricci");
        File filePath5 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Bell");
        File filePath6 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Brown1");
        File filePath7 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Brown2");
        File filePath8 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Brown3");
        File filePath9 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Brown4");
        File filePath10 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Brown-Stein");
        File filePath11 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Clifford1");
        File filePath12 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Clifford2");
        File filePath13 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Dick");
        File filePath14 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Edwards1");
        File filePath15 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Edwards2");
        File filePath16 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Eigen-Fuoss1");
        File filePath17 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Eigen-Fuoss2");
        File filePath18 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Fuoss");
        File filePath19 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Hammett1");
        File filePath20 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Hammett2");
        File filePath21 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Hancock1");
        File filePath22 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Hancock2");
        File filePath23 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Joback");
        File filePath24 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Marcus");
        File filePath25 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Mavrovouniotis");
        File filePath26 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Misono1");
        File filePath27 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Misono2");
        File filePath28 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Pauling1");
        File filePath29 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Pauling2");
        File filePath30 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/PCM");
        File filePath31 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Pedley");
        File filePath32 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Polymer");
        File filePath33 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Ricci");
        File filePath34 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Sanderson");
        File filePath35 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Simamora");
        File filePath36 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Yamada");
        File filePath37 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Yingst");
        File filePath38 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Zhou");
        File filePath39 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Zuman1");
        File filePath40 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Zuman2");
        File filePath41 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Zuman3");
        File filePath42 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Zuman4");
        File filePath43 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Zuman5");
        File filePath44 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Zuman6");
        File filePath45 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Cabani");
        File filePath46 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Jankowski");
        File filePath47 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Zuman7");
        File filePath48 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Klopman1");
        File filePath49 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Klopman2");
        try {
            if (!filePath1.exists()) {
                filePath1.mkdirs();
            }
            if (!filePath2.exists()) {
                filePath2.mkdirs();
            }
            if (!filePath3.exists()) {
                filePath3.mkdirs();
            }
            if (!filePath4.exists()) {
                filePath4.mkdirs();
            }
            if (!filePath5.exists()) {
                filePath5.mkdirs();
            }
            if (!filePath6.exists()) {
                filePath6.mkdirs();
            }
            if (!filePath7.exists()) {
                filePath7.mkdirs();
            }
            if (!filePath8.exists()) {
                filePath8.mkdirs();
            }
            if (!filePath9.exists()) {
                filePath9.mkdirs();
            }
            if (!filePath10.exists()) {
                filePath10.mkdirs();
            }
            if (!filePath11.exists()) {
                filePath11.mkdirs();
            }
            if (!filePath12.exists()) {
                filePath12.mkdirs();
            }
            if (!filePath13.exists()) {
                filePath13.mkdirs();
            }
            if (!filePath14.exists()) {
                filePath14.mkdirs();
            }
            if (!filePath15.exists()) {
                filePath15.mkdirs();
            }
            if (!filePath16.exists()) {
                filePath16.mkdirs();
            }
            if (!filePath17.exists()) {
                filePath17.mkdirs();
            }
            if (!filePath18.exists()) {
                filePath18.mkdirs();
            }
            if (!filePath19.exists()) {
                filePath19.mkdirs();
            }
            if (!filePath20.exists()) {
                filePath20.mkdirs();
            }
            if (!filePath21.exists()) {
                filePath21.mkdirs();
            }
            if (!filePath22.exists()) {
                filePath22.mkdirs();
            }
            if (!filePath23.exists()) {
                filePath23.mkdirs();
            }
            if (!filePath24.exists()) {
                filePath24.mkdirs();
            }
            if (!filePath25.exists()) {
                filePath25.mkdirs();
            }
            if (!filePath26.exists()) {
                filePath26.mkdirs();
            }
            if (!filePath27.exists()) {
                filePath27.mkdirs();
            }
            if (!filePath28.exists()) {
                filePath28.mkdirs();
            }
            if (!filePath29.exists()) {
                filePath29.mkdirs();
            }
            if (!filePath30.exists()) {
                filePath30.mkdirs();
            }
            if (!filePath31.exists()) {
                filePath31.mkdirs();
            }
            if (!filePath32.exists()) {
                filePath32.mkdirs();
            }
            if (!filePath33.exists()) {
                filePath33.mkdirs();
            }
            if (!filePath34.exists()) {
                filePath34.mkdirs();
            }
            if (!filePath35.exists()) {
                filePath35.mkdirs();
            }
            if (!filePath36.exists()) {
                filePath36.mkdirs();
            }
            if (!filePath37.exists()) {
                filePath37.mkdirs();
            }
            if (!filePath38.exists()) {
                filePath38.mkdirs();
            }
            if (!filePath39.exists()) {
                filePath39.mkdirs();
            }
            if (!filePath40.exists()) {
                filePath40.mkdirs();
            }
            if (!filePath41.exists()) {
                filePath41.mkdirs();
            }
            if (!filePath42.exists()) {
                filePath42.mkdirs();
            }
            if (!filePath43.exists()) {
                filePath43.mkdirs();
            }
            if (!filePath44.exists()) {
                filePath44.mkdirs();
            }
            if (!filePath45.exists()) {
                filePath45.mkdirs();
            }
            if (!filePath46.exists()) {
                filePath46.mkdirs();
            }
            if (!filePath47.exists()) {
                filePath47.mkdirs();
            }
            if (!filePath48.exists()) {
                filePath48.mkdirs();
            }
            if (!filePath49.exists()) {
                filePath49.mkdirs();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

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

//        copyAsset("a.mop");copyAsset("iupac.txt");copyAsset("method.txt");copyAsset("smiles.txt");

        copyAssetBB("JH-Banks-Burnop.bas");
        copyAssetBB("JH-Banks-Burnop.dat");
        copyAssetBB("JH-Banks-Burnop.inp");
        copyAssetBB("JH-Banks-Burnop.par");

        copyAssetBa("JH-Bayless.bas");
        copyAssetBa("JH-Bayless.dat");
        copyAssetBa("JH-Bayless.inp");
        copyAssetBa("JH-Bayless.par");

        copyAssetBR("JH-Bayless-Ricci.bas");
        copyAssetBR("JH-Bayless-Ricci.dat");
        copyAssetBR("JH-Bayless-Ricci.inp");
        copyAssetBR("JH-Bayless-Ricci.par");

        copyAssetBe("JH-Bell.bas");
        copyAssetBe("JH-Bell.inp");
        copyAssetBe("JH-Bell.par");

        copyAssetB1("JH-Brown1.bas");
        copyAssetB1("JH-Brown1.inp");
        copyAssetB1("JH-Brown1.par");
        copyAssetB1("JH-Acids_Brown1.dat");
        copyAssetB1("JH-Acids_Parr.dat");
        copyAssetB1("JH-AtomData_Brown1.dat");
        copyAssetB1("JH-Bases_Brown1.dat");
        copyAssetB1("JH-Bases_Parr.dat");
        copyAssetB1("JH-Klopman.dat");
        copyAssetB1("JH-Klopman.par");
        copyAssetB1("JH-Parr.par");
        copyAssetB1("JH-Radii_Shannon.dat");
        copyAssetB1("JH-Radii_Stockar.dat");

        copyAssetB2("JH-Acids_Brown2.dat");
        copyAssetB2("JH-Acids_Parr.dat");
        copyAssetB2("JH-AtomData_Brown2.dat");
        copyAssetB2("JH-Bases_Brown2.dat");
        copyAssetB2("JH-Brown2.bas");
        copyAssetB2("JH-Brown2.inp");
        copyAssetB2("JH-Brown2.par");
        copyAssetB2("JH-Klopman.par");
        copyAssetB2("JH-Parr.par");
        copyAssetB2("JH-Radii_Shannon.dat");
        copyAssetB2("JH-Radii_Stockar.dat");

        copyAssetB3("JH-Acids_Brown3.dat");
        copyAssetB3("JH-Acids_Parr.dat");
        copyAssetB3("JH-AtomData_Brown3.dat");
        copyAssetB3("JH-Bases_Brown3.dat");
        copyAssetB3("JH-Bases_Parr.dat");
        copyAssetB3("JH-Brown3.bas");
        copyAssetB3("JH-Brown3.inp");
        copyAssetB3("JH-Brown3.par");
        copyAssetB3("JH-Klopman.dat");
        copyAssetB3("JH-Klopman.par");
        copyAssetB3("JH-Parr.par");
        copyAssetB3("JH-Radii_Shannon.dat");
        copyAssetB3("JH-Radii_Stockar.dat");

        copyAssetB4("JH-AcidBase_Brown4.dat");
        copyAssetB4("JH-AtomData_Brown4.dat");
        copyAssetB4("JH-Brown4.bas");
        copyAssetB4("JH-Brown4.inp");
        copyAssetB4("JH-Brown4.par");
        copyAssetB4("JH-Klopman.dat");
        copyAssetB4("JH-Klopman.par");
        copyAssetB4("JH-Parr.dat");
        copyAssetB4("JH-Parr.par");
        copyAssetB4("JH-Radii_Shannon.dat");
        copyAssetB4("JH-Radii_Stockar.dat");

        copyAssetBS("JH-Brown-Stein.bas");
        copyAssetBS("JH-Brown-Stein.dat");
        copyAssetBS("JH-Brown-Stein.inp");
        copyAssetBS("JH-Brown-Stein.par");

        copyAssetC1("JH-Clifford1.bas");
        copyAssetC1("JH-Clifford1.dat");
        copyAssetC1("JH-Clifford1.inp");
        copyAssetC1("JH-Clifford1.par");

        copyAssetC2("JH-Clifford2.bas");
        copyAssetC2("JH-Clifford2.dat");
        copyAssetC2("JH-Clifford2.inp");
        copyAssetC2("JH-Clifford2.par");
        copyAssetC2("Acids_JH-Clifford2.dat");

        copyAssetCa("JH-Cabani.bas");
        copyAssetCa("JH-Cabani.dat");
        copyAssetCa("JH-Cabani.inp");

        copyAssetD("JH-Dick.bas");
        copyAssetD("JH-Dick.dat");
        copyAssetD("JH-Dick.inp");

        copyAssetE1("Acids_JH-Edwards1.dat");
        copyAssetE1("Bases_JH-Edwards1.dat");
        copyAssetE1("JH-Edwards1.bas");
        copyAssetE1("JH-Edwards1.inp");

        copyAssetE2("Complexes_JH-Edwards2.dat");
        copyAssetE2("JH-Edwards2.bas");
        copyAssetE2("JH-Edwards2.inp");
        copyAssetE2("Nucleophiles_JH-Edwards2.dat");

        copyAssetEF1("JH-Eigen-Fuoss1.bas");
        copyAssetEF1("JH-Eigen-Fuoss1.inp");
        copyAssetEF1("JH-Eigen-Fuoss1.par");

        copyAssetEF2("JH-Eigen-Fuoss2.bas");
        copyAssetEF2("JH-Eigen-Fuoss2.dat");
        copyAssetEF2("JH-Eigen-Fuoss2.inp");
        copyAssetEF2("JH-Eigen-Fuoss2.par");

        copyAssetF("JH-Fuoss.bas");
        copyAssetF("JH-Fuoss.dat");
        copyAssetF("JH-Fuoss.inp");
        copyAssetF("JH-Fuoss.par");

        copyAssetH1("JH-Hammett1.bas");
        copyAssetH1("JH-Hammett1.inp");
        copyAssetH1("JH-Hammett1-Rho.dat");
        copyAssetH1("JH-Hammett1-Sigma.dat");

        copyAssetH2("JH-Hammett2.bas");
        copyAssetH2("JH-Hammett2.inp");
        copyAssetH2("JH-Hammett2-Rho.dat");
        copyAssetH2("JH-Hammett2-Sigma.dat");

        copyAssetHa1("Acids_JH-Hancock1.dat");
        copyAssetHa1("Bases_JH-Hancock1.dat");
        copyAssetHa1("JH-Hancock1.bas");
        copyAssetHa1("JH-Hancock1.inp");

        copyAssetHa2("Acids_JH-Hancock2.dat");
        copyAssetHa2("Bases_JH-Hancock2.dat");
        copyAssetHa2("JH-Hancock2.bas");
        copyAssetHa2("JH-Hancock2.inp");

        copyAssetJa("JH-Jankowski.bas");
        copyAssetJa("JH-Jankowski.dat");
        copyAssetJa("JH-Jankowski.inp");

        copyAssetJ("JH-Joback.bas");
        copyAssetJ("JH-Joback.dat");
        copyAssetJ("JH-Joback.inp");
        copyAssetJ("JH-Joback.par");

        copyAssetK1("JH-Klopman1.bas");
        copyAssetK1("JH-Klopman1.dat");
        copyAssetK1("JH-Klopman1.inp");

        copyAssetK2("JH-Klopman2.bas");
        copyAssetK2("JH-Klopman2.dat");
        copyAssetK2("JH-Klopman2.inp");

        copyAssetM("JH-Marcus.bas");
        copyAssetM("JH-Marcus.dat");
        copyAssetM("JH-Marcus.inp");
        copyAssetM("JH-Marcus.par");

        copyAssetMv("JH-Mavrovouniotis.bas");
        copyAssetMv("JH-Mavrovouniotis.dat");
        copyAssetMv("JH-Mavrovouniotis.inp");

        copyAssetM1("JH-AtomData_Misono1.dat");
        copyAssetM1("JH-Electronegativity_Misono1.dat");
        copyAssetM1("JH-Misono1.bas");
        copyAssetM1("JH-Misono1.dat");
        copyAssetM1("JH-Misono1.inp");
        copyAssetM1("JH-Radii_Stockar.dat");

        copyAssetM2("JH-AtomData_Misono2.dat");
        copyAssetM2("JH-Electronegativity_Misono2.dat");
        copyAssetM2("JH-Misono2.bas");
        copyAssetM2("JH-Misono2.dat");
        copyAssetM2("JH-Misono2.inp");
        copyAssetM2("JH-Radii_Stockar.dat");

        copyAssetP1("JH-Pauling1.bas");
        copyAssetP1("JH-Pauling1.dat");
        copyAssetP1("JH-Pauling1.inp");

        copyAssetP2("JH-Pauling2.bas");
        copyAssetP2("JH-Pauling2.dat");
        copyAssetP2("JH-Pauling2.inp");
        copyAssetP2("JH-Pauling2.par");

        copyAssetP("JH-PCM.bas");
        copyAssetP("JH-PCM.dat");
        copyAssetP("JH-PCM.inp");

        copyAssetPe("JH-Pedley.bas");
        copyAssetPe("JH-Pedley.dat");
        copyAssetPe("JH-Pedley.inp");

        copyAssetPo("JH-Polymer.bas");
        copyAssetPo("JH-Polymer.dat");
        copyAssetPo("JH-Polymer.inp");
        copyAssetPo("JH-Polymer.par");

        copyAssetR("JH-Ricci.bas");
        copyAssetR("JH-Ricci.par");
        copyAssetR("JH-Ricci.inp");

        copyAssetSa("JH-Sanderson.bas");
        copyAssetSa("JH-Sanderson.dat");
        copyAssetSa("JH-Sanderson.inp");
        copyAssetSa("JH-Sanderson.par");

        copyAssetSi("JH-Simamora.bas");
        copyAssetSi("JH-Simamora.dat");
        copyAssetSi("JH-Simamora.inp");
        copyAssetSi("JH-Simamora.par");

        copyAssetYa("Acids_JH-Yamada.dat");
        copyAssetYa("Bases_JH-Yamada.dat");
        copyAssetYa("JH-Yamada.bas");
        copyAssetYa("JH-Yamada.inp");

        copyAssetYi("Acids_JH-Yingst.dat");
        copyAssetYi("Bases_JH-Yingst.dat");
        copyAssetYi("JH-Yingst.bas");
        copyAssetYi("JH-Yingst.inp");

        copyAssetZ("JH-Zhou.bas");
        copyAssetZ("JH-Zhou.dat");
        copyAssetZ("JH-Zhou.inp");
        copyAssetZ("JH-Zhou.par");

        copyAssetZ1("JH-Zuman1.bas");
        copyAssetZ1("JH-Zuman1.inp");
        copyAssetZ1("JH-Zuman1-Rho.dat");
        copyAssetZ1("JH-Zuman1-Sigma.dat");

        copyAssetZ2("JH-Zuman2.bas");
        copyAssetZ2("JH-Zuman2.inp");
        copyAssetZ2("JH-Zuman2-Rho.dat");
        copyAssetZ2("JH-Zuman2-Sigma.dat");

        copyAssetZ3("JH-Zuman3.bas");
        copyAssetZ3("JH-Zuman3.inp");
        copyAssetZ3("JH-Zuman3-Rho.dat");
        copyAssetZ3("JH-Zuman3-Sigma.dat");

        copyAssetZ4("JH-Zuman4.bas");
        copyAssetZ4("JH-Zuman4.inp");
        copyAssetZ4("JH-Zuman4-Rho.dat");
        copyAssetZ4("JH-Zuman4-Sigma.dat");

        copyAssetZ5("JH-Zuman5.bas");
        copyAssetZ5("JH-Zuman5.inp");
        copyAssetZ5("JH-Zuman5-Rho.dat");
        copyAssetZ5("JH-Zuman5-Sigma.dat");

        copyAssetZ6("JH-Zuman6.bas");
        copyAssetZ6("JH-Zuman6.inp");
        copyAssetZ6("JH-Zuman6-Rho.dat");
        copyAssetZ6("JH-Zuman6-Sigma.dat");

        copyAssetZ7("JH-Zuman7.bas");
        copyAssetZ7("JH-Zuman7.inp");
        copyAssetZ7("JH-Zuman7-Rho.dat");
        copyAssetZ7("JH-Zuman7-Sigma.dat");

        copyAssetMAN("JH-Banks-Burnop-MANUAL.txt");
        copyAssetMAN("JH-Bayless-MANUAL.txt");
        copyAssetMAN("JH-Bayless-Ricci-MANUAL.txt");
        copyAssetMAN("JH-Bell-MANUAL.txt");
        copyAssetMAN("JH-Brown1-MANUAL.txt");
        copyAssetMAN("JH-Brown2-MANUAL.txt");
        copyAssetMAN("JH-Brown3-MANUAL.txt");
        copyAssetMAN("JH-Brown4-MANUAL.txt");
        copyAssetMAN("JH-Brown-Stein-MANUAL.txt");
        copyAssetMAN("JH-Clifford1-MANUAL.txt");
        copyAssetMAN("JH-Clifford2-MANUAL.txt");
        copyAssetMAN("JH-Dick-MANUAL.txt");
        copyAssetMAN("JH-Edwards1-MANUAL.txt");
        copyAssetMAN("JH-Edwards2-MANUAL.txt");
        copyAssetMAN("JH-Eigen-Fuoss1-MANUAL.txt");
        copyAssetMAN("JH-Eigen-Fuoss2-MANUAL.txt");
        copyAssetMAN("JH-Fuoss-MANUAL.txt");
        copyAssetMAN("JH-Hammett1-MANUAL.txt");
        copyAssetMAN("JH-Hammett2-MANUAL.txt");
        copyAssetMAN("JH-Hancock1-MANUAL.txt");
        copyAssetMAN("JH-Hancock2-MANUAL.txt");
        copyAssetMAN("JH-Joback-MANUAL.txt");
        copyAssetMAN("JH-Marcus-MANUAL.txt");
        copyAssetMAN("JH-Mavrovouniotis-MANUAL.txt");
        copyAssetMAN("JH-Misono1-MANUAL.txt");
        copyAssetMAN("JH-Misono2-MANUAL.txt");
        copyAssetMAN("JH-Pauling1-MANUAL.txt");
        copyAssetMAN("JH-Pauling2-MANUAL.txt");
        copyAssetMAN("JH-PCM-MANUAL.txt");
        copyAssetMAN("JH-Pedley-MANUAL.txt");
        copyAssetMAN("JH-Polymer-MANUAL.txt");
        copyAssetMAN("JH-Ricci-MANUAL.txt");
        copyAssetMAN("JH-Sanderson-MANUAL.txt");
        copyAssetMAN("JH-Simamora-MANUAL.txt");
        copyAssetMAN("JH-Yamada-MANUAL.txt");
        copyAssetMAN("JH-Yingst-MANUAL.txt");
        copyAssetMAN("JH-Zhou-MANUAL.txt");
        copyAssetMAN("JH-Zuman1-MANUAL.txt");
        copyAssetMAN("JH-Zuman2-MANUAL.txt");
        copyAssetMAN("JH-Zuman3-MANUAL.txt");
        copyAssetMAN("JH-Zuman4-MANUAL.txt");
        copyAssetMAN("Zuman1-4formulas.pdf");
        copyAssetMAN("JH-Zuman5-MANUAL.txt");
        copyAssetMAN("JH-Zuman6-MANUAL.txt");
        copyAssetMAN("JH-Jankowski-MANUAL.txt");
        copyAssetMAN("JH-Cabani-MANUAL.txt");
        copyAssetMAN("JH-Zuman7-MANUAL.txt");
        copyAssetMAN("JH-Klopman1-MANUAL.txt");
        copyAssetMAN("JH-Klopman2-MANUAL.txt");

        copyAsset("About.txt");

        copyAsset0("LICENSE1-GMP.txt");copyAsset0("LICENSE2-GMP.txt");copyAsset0("LICENSE-X11-BASIC.txt");
        copyAsset0("LICENSING_TERMS-X11-BASIC.txt");

        {
            copyAssetX("LICENSE.txt");
        }

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
    }


    private void copyAsset(String filename) {
        File filePath = new File(getFilesDir()+"");
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        if (!check.exists()) {
            if (!filePath.exists()) {
                filePath.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(filePath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetBB(String filename) {
        String dirPath = getFilesDir()+"/Banks-Burnop";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetBa(String filename) {
        String dirPath = getFilesDir()+"/Bayless";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetBR(String filename) {
        String dirPath = getFilesDir()+"/Bayless-Ricci";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetBe(String filename) {
        String dirPath = getFilesDir()+"/Bell";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetB1(String filename) {
        String dirPath = getFilesDir()+"/Brown1";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetB2(String filename) {
        String dirPath = getFilesDir()+"/Brown2";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetB3(String filename) {
        String dirPath = getFilesDir()+"/Brown3";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetB4(String filename) {
        String dirPath = getFilesDir()+"/Brown4";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetBS(String filename) {
        String dirPath = getFilesDir()+"/Brown-Stein";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetC1(String filename) {
        String dirPath = getFilesDir()+"/Clifford1";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetC2(String filename) {
        String dirPath = getFilesDir()+"/Clifford2";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetCa(String filename) {
        String dirPath = getFilesDir()+"/Cabani";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetD(String filename) {
        String dirPath = getFilesDir()+"/Dick";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetE1(String filename) {
        String dirPath = getFilesDir()+"/Edwards1";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetE2(String filename) {
        String dirPath = getFilesDir()+"/Edwards2";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetEF1(String filename) {
        String dirPath = getFilesDir()+"/Eigen-Fuoss1";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetEF2(String filename) {
        String dirPath = getFilesDir()+"/Eigen-Fuoss2";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetF(String filename) {
        String dirPath = getFilesDir()+"/Fuoss";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetH1(String filename) {
        String dirPath = getFilesDir()+"/Hammett1";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetH2(String filename) {
        String dirPath = getFilesDir()+"/Hammett2";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetHa1(String filename) {
        String dirPath = getFilesDir()+"/Hancock1";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetHa2(String filename) {
        String dirPath = getFilesDir()+"/Hancock2";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetJa(String filename) {
        String dirPath = getFilesDir()+"/Jankowski";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetJ(String filename) {
        String dirPath = getFilesDir()+"/Joback";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetK1(String filename) {
        String dirPath = getFilesDir()+"/Klopman1";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetK2(String filename) {
        String dirPath = getFilesDir()+"/Klopman2";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetM(String filename) {
        String dirPath = getFilesDir()+"/Marcus";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetMv(String filename) {
        String dirPath = getFilesDir()+"/Mavrovouniotis";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetM1(String filename) {
        String dirPath = getFilesDir()+"/Misono1";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetM2(String filename) {
        String dirPath = getFilesDir()+"/Misono2";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetP1(String filename) {
        String dirPath = getFilesDir()+"/Pauling1";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetP2(String filename) {
        String dirPath = getFilesDir()+"/Pauling2";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetP(String filename) {
        String dirPath = getFilesDir()+"/PCM";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetPo(String filename) {
        String dirPath = getFilesDir()+"/Polymer";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetPe(String filename) {
        String dirPath = getFilesDir()+"/Pedley";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetR(String filename) {
        String dirPath = getFilesDir()+"/Ricci";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetSa(String filename) {
        String dirPath = getFilesDir()+"/Sanderson";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetSi(String filename) {
        String dirPath = getFilesDir()+"/Simamora";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetYa(String filename) {
        String dirPath = getFilesDir()+"/Yamada";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetYi(String filename) {
        String dirPath = getFilesDir()+"/Yingst";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetZ(String filename) {
        String dirPath = getFilesDir()+"/Zhou";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetZ1(String filename) {
        String dirPath = getFilesDir()+"/Zuman1";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetZ2(String filename) {
        String dirPath = getFilesDir()+"/Zuman2";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetZ3(String filename) {
        String dirPath = getFilesDir()+"/Zuman3";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetZ4(String filename) {
        String dirPath = getFilesDir()+"/Zuman4";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetZ5(String filename) {
        String dirPath = getFilesDir()+"/Zuman5";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetZ6(String filename) {
        String dirPath = getFilesDir()+"/Zuman6";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetZ7(String filename) {
        String dirPath = getFilesDir()+"/Zuman7";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetMAN(String filename) {
        String dirPath = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/doc";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAsset0(String filename) {
        String dirPath = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite";
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/LICENSE.txt";
        File check = new File(path);
        File dir = new File(dirPath);
        if (!check.exists()) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(dirPath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyAssetX(String filename) {
//        String dirPath = getFilesDir()+"/doc";
//        String path = getFilesDir()+"/doc/README.pdf";
        //tohle funguje i na API 14
        File filePath = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite");
        String path = filePath+"/LICENSE.txt";
        // tohle už ne - min. je 19, takže kdyby bylo potřebovat zajistit kompatibilitu s nižšími verzemi Androidu, tady přdělat zpátky
        File check = new File(path);
        if (!check.exists()) {
            if (!filePath.exists()) {
                filePath.mkdirs();
            }
            AssetManager assetManager = getAssets();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = assetManager.open(filename);
                File outFile = new File(filePath, filename);
                out = new FileOutputStream(outFile);
                copyFile(in, out);
                Toast.makeText(this, "Installing, please wait...", Toast.LENGTH_SHORT).show();
                Toast.makeText(this, "App prepared!", Toast.LENGTH_SHORT).show();
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            // do nothing
        }
    }

    private void copyFile(InputStream in, OutputStream out) throws IOException {
        byte[] buffer = new byte[1024];
        int read;
        while ((read = in.read(buffer)) != -1){
            out.write(buffer, 0, read);
        }
    }

    public void onStart()
    // definováno zobrazení obecného vzorového vstupního souboru
    {
        super.onStart();
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