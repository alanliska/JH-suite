package cz.jh.suite;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import org.w3c.dom.Text;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

import cz.jh.suite.R;


public class ParmsMisono2 extends Misono2 {



    private Button Quit;
    private Button saveFile;
    private TextView Dat1Label;
    private EditText Dat1Content;
    private TextView Dat2Label;
    private EditText Dat2Content;
    private TextView Dat3Label;
    private EditText Dat3Content;
    private TextView Dat4Label;
    private EditText Dat4Content;
    private Handler handler = new Handler();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.parmsmisono2);

        Quit = (Button) findViewById(R.id.Quit);
        Quit.setOnClickListener(QuitClick);
        saveFile = (Button) findViewById(R.id.saveFile);
        saveFile.setOnClickListener(saveFileClick);
        Dat1Label = (TextView) findViewById(R.id.Dat1Label);
        Dat1Content = (EditText) findViewById(R.id.Dat1Content);
        Dat2Label = (TextView) findViewById(R.id.Dat2Label);
        Dat2Content = (EditText) findViewById(R.id.Dat2Content);
        Dat3Label = (TextView) findViewById(R.id.Dat3Label);
        Dat3Content = (EditText) findViewById(R.id.Dat3Content);
        Dat4Label = (TextView) findViewById(R.id.Dat4Label);
        Dat4Content = (EditText) findViewById(R.id.Dat4Content);
    }






    public void onStart()
    // definováno zobrazení obecného vzorového vstupního souboru
    {
        super.onStart();
        Dat1Display(exec("cat "+getFilesDir()+"/Misono2/JH-Misono2.dat"));
        Dat2Display(exec("cat "+getFilesDir()+"/Misono2/JH-AtomData_Misono2.dat"));
        Dat3Display(exec("cat "+getFilesDir()+"/Misono2/JH-Electronegativity_Misono2.dat"));
        Dat4Display(exec("cat "+getFilesDir()+"/Misono2/JH-Radii_Stockar.dat"));
    }

    private View.OnClickListener saveFileClick; {
        saveFileClick = new View.OnClickListener() {
            public void onClick(View v) {
                String Dat1File = Dat1Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout10 = openFileOutput("JH-Misono2.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout10);
                    outputWriter.write(Dat1File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Misono2.dat "+getFilesDir()+"/Misono2");

                String Dat2File = Dat2Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout20 = openFileOutput("JH-AtomData_Misono2.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout20);
                    outputWriter.write(Dat2File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-AtomData_Misono2.dat "+getFilesDir()+"/Misono2");

                String Dat3File = Dat3Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout30 = openFileOutput("JH-Electronegativity_Misono2.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout30);
                    outputWriter.write(Dat3File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Electronegativity_Misono2.dat "+getFilesDir()+"/Misono2");

                String Dat4File = Dat4Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout40 = openFileOutput("JH-Radii_Stockar.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout40);
                    outputWriter.write(Dat4File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Radii_Stockar.dat "+getFilesDir()+"/Misono2");
            }
        };
    }

    private View.OnClickListener QuitClick; {
        QuitClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                Intent intent = new Intent(ParmsMisono2.this, Misono2.class);
                startActivity(intent);
            }
        };
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


    private void Dat1Display(final String str) {
        Runnable proc = new Runnable() {
            public void run() {
                Dat1Content.setText(str);
            }
        };
        handler.post(proc);
    }

    private void Dat2Display(final String str2) {
        Runnable proc2 = new Runnable() {
            public void run() {
                Dat2Content.setText(str2);
            }
        };
        handler.post(proc2);
    }

    private void Dat3Display(final String str3) {
        Runnable proc3 = new Runnable() {
            public void run() {
                Dat3Content.setText(str3);
            }
        };
        handler.post(proc3);
    }

    private void Dat4Display(final String str4) {
        Runnable proc4 = new Runnable() {
            public void run() {
                Dat4Content.setText(str4);
            }
        };
        handler.post(proc4);
    }

}
