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

import cz.suite.R;


public class ParmsBrownStein extends BrownStein {



    private Button Quit;
    private Button saveFile;
    private TextView ParLabel;
    private EditText ParContent;
    private TextView DatLabel;
    private EditText DatContent;
    private Handler handler = new Handler();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.parmsbrownstein);

        Quit = (Button) findViewById(R.id.Quit);
        Quit.setOnClickListener(QuitClick);
        saveFile = (Button) findViewById(R.id.saveFile);
        saveFile.setOnClickListener(saveFileClick);
        ParLabel = (TextView) findViewById(R.id.ParLabel);
        ParContent = (EditText) findViewById(R.id.ParContent);
        DatLabel = (TextView) findViewById(R.id.DatLabel);
        DatContent = (EditText) findViewById(R.id.DatContent);

    }






    public void onStart()
    // definováno zobrazení obecného vzorového vstupního souboru
    {
        super.onStart();
        ParDisplay(exec("cat "+getFilesDir()+"/Brown-Stein/JH-Brown-Stein.par"));
        DatDisplay(exec("cat "+getFilesDir()+"/Brown-Stein/JH-Brown-Stein.dat"));
    }

    private View.OnClickListener saveFileClick; {
        saveFileClick = new View.OnClickListener() {
            public void onClick(View v) {
                String ParFile = ParContent.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout10 = openFileOutput("JH-Brown-Stein.par", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout10);
                    outputWriter.write(ParFile);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Brown-Stein.par "+getFilesDir()+"/Brown-Stein");

                String DatFile = DatContent.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout20 = openFileOutput("JH-Brown-Stein.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout20);
                    outputWriter.write(DatFile);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Brown-Stein.dat "+getFilesDir()+"/Brown-Stein");
            }
        };
    }

    private View.OnClickListener QuitClick; {
        QuitClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                Intent intent = new Intent(ParmsBrownStein.this, BrownStein.class);
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


    private void ParDisplay(final String str) {
        Runnable proc = new Runnable() {
            public void run() {
                ParContent.setText(str);
            }
        };
        handler.post(proc);
    }

    private void DatDisplay(final String str2) {
        Runnable proc2 = new Runnable() {
            public void run() {
                DatContent.setText(str2);
            }
        };
        handler.post(proc2);
    }

}
