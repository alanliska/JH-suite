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


public class ParmsBrown3 extends Brown3 {



    private Button Quit;
    private Button saveFile;
    private TextView Par1Label;
    private EditText Par1Content;
    private TextView Par2Label;
    private EditText Par2Content;
    private TextView Par3Label;
    private EditText Par3Content;
    private TextView Dat1Label;
    private EditText Dat1Content;
    private TextView Dat2Label;
    private EditText Dat2Content;
    private TextView Dat3Label;
    private EditText Dat3Content;
    private TextView Dat4Label;
    private EditText Dat4Content;
    private TextView Dat5Label;
    private EditText Dat5Content;
    private TextView Dat6Label;
    private EditText Dat6Content;
    private TextView Dat7Label;
    private EditText Dat7Content;
    private TextView Dat8Label;
    private EditText Dat8Content;
    private Handler handler = new Handler();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.parmsbrown3);

        Quit = (Button) findViewById(R.id.Quit);
        Quit.setOnClickListener(QuitClick);
        saveFile = (Button) findViewById(R.id.saveFile);
        saveFile.setOnClickListener(saveFileClick);
        Par1Label = (TextView) findViewById(R.id.Par1Label);
        Par1Content = (EditText) findViewById(R.id.Par1Content);
        Par2Label = (TextView) findViewById(R.id.Par2Label);
        Par2Content = (EditText) findViewById(R.id.Par2Content);
        Par3Label = (TextView) findViewById(R.id.Par3Label);
        Par3Content = (EditText) findViewById(R.id.Par3Content);
        Dat1Label = (TextView) findViewById(R.id.Dat1Label);
        Dat1Content = (EditText) findViewById(R.id.Dat1Content);
        Dat2Label = (TextView) findViewById(R.id.Dat2Label);
        Dat2Content = (EditText) findViewById(R.id.Dat2Content);
        Dat3Label = (TextView) findViewById(R.id.Dat3Label);
        Dat3Content = (EditText) findViewById(R.id.Dat3Content);
        Dat4Label = (TextView) findViewById(R.id.Dat4Label);
        Dat4Content = (EditText) findViewById(R.id.Dat4Content);
        Dat5Label = (TextView) findViewById(R.id.Dat5Label);
        Dat5Content = (EditText) findViewById(R.id.Dat5Content);
        Dat6Label = (TextView) findViewById(R.id.Dat6Label);
        Dat6Content = (EditText) findViewById(R.id.Dat6Content);
        Dat7Label = (TextView) findViewById(R.id.Dat7Label);
        Dat7Content = (EditText) findViewById(R.id.Dat7Content);
        Dat8Label = (TextView) findViewById(R.id.Dat8Label);
        Dat8Content = (EditText) findViewById(R.id.Dat8Content);

    }






    public void onStart()
    // definováno zobrazení obecného vzorového vstupního souboru
    {
        super.onStart();
        Par1Display(exec("cat "+getFilesDir()+"/Brown3/JH-Brown3.par"));
        Par2Display(exec("cat "+getFilesDir()+"/Brown3/JH-Klopman.par"));
        Par3Display(exec("cat "+getFilesDir()+"/Brown3/JH-Parr.par"));
        Dat1Display(exec("cat "+getFilesDir()+"/Brown3/JH-Acids_Brown3.dat"));
        Dat2Display(exec("cat "+getFilesDir()+"/Brown3/JH-Acids_Parr.dat"));
        Dat3Display(exec("cat "+getFilesDir()+"/Brown3/JH-AtomData_Brown3.dat"));
        Dat4Display(exec("cat "+getFilesDir()+"/Brown3/JH-Bases_Brown3.dat"));
        Dat5Display(exec("cat "+getFilesDir()+"/Brown3/JH-Bases_Parr.dat"));
        Dat6Display(exec("cat "+getFilesDir()+"/Brown3/JH-Klopman.dat"));
        Dat7Display(exec("cat "+getFilesDir()+"/Brown3/JH-Radii_Shannon.dat"));
        Dat8Display(exec("cat "+getFilesDir()+"/Brown3/JH-Radii_Stockar.dat"));
    }

    private View.OnClickListener saveFileClick; {
        saveFileClick = new View.OnClickListener() {
            public void onClick(View v) {
                String Par1File = Par1Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout10 = openFileOutput("JH-Brown3.par", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout10);
                    outputWriter.write(Par1File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Brown3.par "+getFilesDir()+"/Brown3");

                String Par2File = Par2Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout20 = openFileOutput("JH-Klopman.par", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout20);
                    outputWriter.write(Par2File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Klopman.par "+getFilesDir()+"/Brown3");

                String Par3File = Par3Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout30 = openFileOutput("JH-Parr.par", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout30);
                    outputWriter.write(Par3File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Parr.par "+getFilesDir()+"/Brown3");

                String Dat1File = Dat1Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout40 = openFileOutput("JH-Acids_Brown3.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout40);
                    outputWriter.write(Dat1File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Acids_Brown3.dat "+getFilesDir()+"/Brown3");

                String Dat2File = Dat2Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout50 = openFileOutput("JH-Acids_Parr.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout50);
                    outputWriter.write(Dat2File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Acids_Parr.dat "+getFilesDir()+"/Brown3");

                String Dat3File = Dat3Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout60 = openFileOutput("JH-AtomData_Brown3.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout60);
                    outputWriter.write(Dat3File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-AtomData_Brown3.dat "+getFilesDir()+"/Brown3");

                String Dat4File = Dat4Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout70 = openFileOutput("JH-Bases_Brown3.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout70);
                    outputWriter.write(Dat4File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Bases_Brown3.dat "+getFilesDir()+"/Brown3");

                String Dat5File = Dat5Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout80 = openFileOutput("JH-Bases_Parr.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout80);
                    outputWriter.write(Dat5File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Bases_Parr.dat "+getFilesDir()+"/Brown3");

                String Dat6File = Dat6Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout90 = openFileOutput("JH-Klopman.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout90);
                    outputWriter.write(Dat6File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Klopman.dat "+getFilesDir()+"/Brown3");

                String Dat7File = Dat7Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout100 = openFileOutput("JH-Radii_Shannon.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout100);
                    outputWriter.write(Dat7File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Radii_Shannon.dat "+getFilesDir()+"/Brown3");

                String Dat8File = Dat8Content.getText().toString();
                // TODO Auto-generated method stub //
                try {
                    FileOutputStream fileout110 = openFileOutput("JH-Radii_Stockar.dat", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout110);
                    outputWriter.write(Dat8File);
                    outputWriter.close();
                } catch (Exception e) {
                }
                exec("mv "+getFilesDir()+"/JH-Radii_Stockar.dat "+getFilesDir()+"/Brown3");
            }
        };
    }

    private View.OnClickListener QuitClick; {
        QuitClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                Intent intent = new Intent(ParmsBrown3.this, Brown3.class);
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


    private void Par1Display(final String str1) {
        Runnable proc1 = new Runnable() {
            public void run() {
                Par1Content.setText(str1);
            }
        };
        handler.post(proc1);
    }

    private void Par2Display(final String str2) {
        Runnable proc2 = new Runnable() {
            public void run() {
                Par2Content.setText(str2);
            }
        };
        handler.post(proc2);
    }

    private void Par3Display(final String str3) {
        Runnable proc3 = new Runnable() {
            public void run() {
                Par3Content.setText(str3);
            }
        };
        handler.post(proc3);
    }

    private void Dat1Display(final String str4) {
        Runnable proc4 = new Runnable() {
            public void run() {
                Dat1Content.setText(str4);
            }
        };
        handler.post(proc4);
    }

    private void Dat2Display(final String str5) {
        Runnable proc5 = new Runnable() {
            public void run() {
                Dat2Content.setText(str5);
            }
        };
        handler.post(proc5);
    }

    private void Dat3Display(final String str6) {
        Runnable proc6 = new Runnable() {
            public void run() {
                Dat3Content.setText(str6);
            }
        };
        handler.post(proc6);
    }

    private void Dat4Display(final String str7) {
        Runnable proc7 = new Runnable() {
            public void run() {
                Dat4Content.setText(str7);
            }
        };
        handler.post(proc7);
    }

    private void Dat5Display(final String str8) {
        Runnable proc8 = new Runnable() {
            public void run() {
                Dat5Content.setText(str8);
            }
        };
        handler.post(proc8);
    }

    private void Dat6Display(final String str9) {
        Runnable proc9 = new Runnable() {
            public void run() {
                Dat6Content.setText(str9);
            }
        };
        handler.post(proc9);
    }

    private void Dat7Display(final String str10) {
        Runnable proc10 = new Runnable() {
            public void run() {
                Dat1Content.setText(str10);
            }
        };
        handler.post(proc10);
    }

    private void Dat8Display(final String str11) {
        Runnable proc11 = new Runnable() {
            public void run() {
                Dat8Content.setText(str11);
            }
        };
        handler.post(proc11);
    }

}
