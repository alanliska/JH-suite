package cz.jh.suite;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

import cz.suite.R;

public class Edwards1 extends MainActivity {

    private Handler handler = new Handler();
    private TextView Description;
    private TextView InputLabel;
    private EditText Input;
    Button OpenInputFile;
    Button SaveInputFile;
    Button Run;
    Button SaveOutputFile;
    Button Highlight;
    Button Parameters;
    Button Code;
    Button Quit;
    private TextView OutputLabel;
    private EditText Output;
    private static final int READ_FILE = 1;
    private Uri documentUri;
    private ProgressDialog progressDialog;

    /**
     * Colorize a specific substring in a string for TextView. Use it like this: <pre>
     * textView.setText(
     *     Strings.colorized("The some words are black some are the default.","black", Color.BLACK),
     *     TextView.BufferType.SPANNABLE
     * );
     * </pre>
     * @param text Text that contains a substring to colorize
     * @param word0 The substring to colorize
     * @param word1 The substring to colorize
     * @param word2 The substring to colorize
     * @param word3 The substring to colorize
     * @param word4 The substring to colorize
     * @param word5 The substring to colorize
     * @param word6 The substring to colorize
     * @param word7 The substring to colorize
     * @param word8 The substring to colorize
     * @param word9 The substring to colorize
     * @param word10 The substring to colorize
     * @param word11 The substring to colorize
     * @param word12 The substring to colorize
     * @param argb The color
     * @return the Spannable for TextView's consumption
     */
    public static Spannable colorized(final String text, final String word0, final String word1, final String word2, final String word3, final String word4, final String word5, final String word6, final String word7, final String word8, final String word9, final String word10, final String word11, final String word12, final int argb) {
        final Spannable spannable = new SpannableString(text);
        int substringStart0=0;
        int substringStart1=0;
        int substringStart2=0;
        int substringStart3=0;
        int substringStart4=0;
        int substringStart5=0;
        int substringStart6=0;
        int substringStart7=0;
        int substringStart8=0;
        int substringStart9=0;
        int substringStart10=0;
        int substringStart11=0;
        int substringStart12=0;
        int start0;
        int start1;
        int start2;
        int start3;
        int start4;
        int start5;
        int start6;
        int start7;
        int start8;
        int start9;
        int start10;
        int start11;
        int start12;
        while((start0=text.indexOf(word0,substringStart0))>=0){
            spannable.setSpan(
                    new ForegroundColorSpan(argb),start0,start0+word0.length(),
                    Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
            );
            while((start1=text.indexOf(word1,substringStart1))>=0) {
                spannable.setSpan(
                        new ForegroundColorSpan(argb), start1, start1 + word1.length(),
                        Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                );
                while((start2=text.indexOf(word2,substringStart2))>=0) {
                    spannable.setSpan(
                            new ForegroundColorSpan(argb), start2, start2 + word2.length(),
                            Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                    );
                    while((start3=text.indexOf(word3,substringStart3))>=0) {
                        spannable.setSpan(
                                new ForegroundColorSpan(argb), start3, start3 + word3.length(),
                                Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                        );
                        while((start4=text.indexOf(word4,substringStart4))>=0) {
                            spannable.setSpan(
                                    new ForegroundColorSpan(argb), start4, start4 + word4.length(),
                                    Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                            );
                            while((start5=text.indexOf(word5,substringStart5))>=0) {
                                spannable.setSpan(
                                        new ForegroundColorSpan(argb), start5, start5 + word5.length(),
                                        Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                                );
                                while((start6=text.indexOf(word6,substringStart6))>=0) {
                                    spannable.setSpan(
                                            new ForegroundColorSpan(argb), start6, start6 + word6.length(),
                                            Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                                    );
                                    while((start7=text.indexOf(word7,substringStart7))>=0) {
                                        spannable.setSpan(
                                                new ForegroundColorSpan(argb), start7, start7 + word7.length(),
                                                Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                                        );
                                        while((start8=text.indexOf(word8,substringStart8))>=0) {
                                            spannable.setSpan(
                                                    new ForegroundColorSpan(argb), start8, start8 + word8.length(),
                                                    Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                                            );
                                            while((start9=text.indexOf(word9,substringStart9))>=0) {
                                                spannable.setSpan(
                                                        new ForegroundColorSpan(argb), start9, start9 + word9.length(),
                                                        Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                                                );
                                                while((start10=text.indexOf(word10,substringStart10))>=0) {
                                                    spannable.setSpan(
                                                            new ForegroundColorSpan(argb), start10, start10 + word10.length(),
                                                            Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                                                    );
                                                    while((start11=text.indexOf(word11,substringStart11))>=0) {
                                                        spannable.setSpan(
                                                                new ForegroundColorSpan(argb), start11, start11 + word11.length(),
                                                                Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                                                        );
                                                        while((start12=text.indexOf(word12,substringStart12))>=0) {
                                                            spannable.setSpan(
                                                                    new ForegroundColorSpan(argb), start12, start12 + word12.length(),
                                                                    Spannable.SPAN_EXCLUSIVE_EXCLUSIVE
                                                            );
                                                            substringStart12 = start12 + word12.length();
                                                        }
                                                        substringStart11 = start11 + word11.length();
                                                    }
                                                    substringStart10 = start10 + word10.length();
                                                }
                                                substringStart9 = start9 + word9.length();
                                            }
                                            substringStart8 = start8+word8.length();
                                        }
                                        substringStart7 = start7+word7.length();
                                    }
                                    substringStart6 = start6+word6.length();
                                }
                                substringStart5 = start5+word5.length();
                            }
                            substringStart4 = start4+word4.length();
                        }
                        substringStart3 = start3+word3.length();
                    }
                    substringStart2 = start2+word2.length();
                }
                substringStart1 = start1+word1.length();
            }
            substringStart0 = start0+word0.length();
        }
        return spannable;
    }
    /**
     * Called when the activity is first created.
     */
    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.edwards1);

        Description = (TextView) findViewById(R.id.Description);
        InputLabel = (TextView) findViewById(R.id.InputLabel);
        Input = (EditText) findViewById(R.id.Input);
        OpenInputFile = (Button) findViewById(R.id.OpenInputFile);
        OpenInputFile.setOnClickListener(openInputfileClick);
        SaveInputFile = (Button) findViewById(R.id.SaveInputFile);
        SaveInputFile.setOnClickListener(saveInputfileClick);
        Run = (Button) findViewById(R.id.Run);
        Run.setOnClickListener(RunClick);
        SaveOutputFile = (Button) findViewById(R.id.SaveOutputFile);
        SaveOutputFile.setOnClickListener(saveOutputfileClick);
        Highlight = (Button) findViewById(R.id.Highlight);
        Highlight.setOnClickListener(HighlightClick);
        Quit = (Button) findViewById(R.id.Quit);
        Quit.setOnClickListener(QuitClick);
        OutputLabel = (TextView) findViewById(R.id.OutputLabel);
        Output = (EditText) findViewById(R.id.Output);

        // definice tlačítka jako obvykle, ale...
        Parameters = (Button) findViewById(R.id.Parameters);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        Parameters.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(Edwards1.this, ParmsEdwards1.class);
                startActivity(intent);
            }
        });

        // definice tlačítka jako obvykle, ale...
        Code = (Button) findViewById(R.id.Code);
        // ...tady se nadefinuje návaznost na další intent - přesměruje do druhé aktivity, nastaví druhé rozložení obsahu
        Code.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(Edwards1.this, CodeEdwards1.class);
                startActivity(intent);
            }
        });

    }


    public void onStart()
    // definováno zobrazení obecného vzorového vstupního souboru
    {
        super.onStart();
        InputField(exec("cat "+getFilesDir()+"/Edwards1/JH-Edwards1.inp"));
    }


    private View.OnClickListener openInputfileClick; {

        openInputfileClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                read(getApplicationContext());
                InputField(exec("cat "+getFilesDir()+"/Edwards1/JH-Edwards1.inp"));
            }
        };
    }

    private void read(Context context) {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("text/plain");
        startActivityForResult(intent, READ_FILE);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == READ_FILE && data != null) {
            // select database
            try {
                documentUri = data.getData();
                String myData = "";
                ParcelFileDescriptor pfd = getContentResolver().openFileDescriptor(data.getData(), "r");
                FileInputStream fileInputStream = new FileInputStream(pfd.getFileDescriptor());
                DataInputStream inp = new DataInputStream(fileInputStream);
                BufferedReader br = new BufferedReader(new InputStreamReader(inp));
                String strLine;
                while ((strLine = br.readLine()) != null) {
                    myData = myData + strLine + "\n";
                }
                inp.close();

                FileOutputStream fileout = openFileOutput("Input.txt", MODE_PRIVATE);
                OutputStreamWriter outputWriter = new OutputStreamWriter(fileout);
                outputWriter.write(myData);
                outputWriter.close();
                fileInputStream.close();
                pfd.close();

                exec("cp "+getFilesDir()+"/Input.txt "+getFilesDir()+"/Edwards1/JH-Edwards1.inp");

            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(getApplicationContext(), "File not read", Toast.LENGTH_SHORT).show();
            }
        }

    }

    private View.OnClickListener saveInputfileClick; {

        saveInputfileClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                String Inputfile = Input.getText().toString();
                try {
                    FileOutputStream fileout = openFileOutput("Input.txt", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout);
                    outputWriter.write(Inputfile);
                    outputWriter.close();
                    exec("cp "+getFilesDir()+"/Input.txt "+getFilesDir()+"/Edwards1/JH-Edwards1.inp");
                } catch (Exception e) {
                    e.printStackTrace();
                }
                alertSaveInput();
                InputField(exec("cat "+getFilesDir()+"/Edwards1/JH-Edwards1.inp"));
            }
        };
    }


    public void alertSaveInput(){
        // creating the EditText widget programatically
        EditText editText = new EditText(Edwards1.this);
        // create the AlertDialog as final
        final AlertDialog dialog = new AlertDialog.Builder(Edwards1.this)
                .setMessage("The file will be saved in the folder /storage/emulated/0/Documents/jh-suite/work/Edwards1")
                .setTitle("Please write the desired filename (if already present, it will be overwritten)")
                .setView(editText)

                // Set the action buttons
                .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int id) {
                        String Inputfile = Input.getText().toString();
                        String SaveInputName = editText.getText().toString();
                        try {
                            FileOutputStream fileout = openFileOutput(SaveInputName, MODE_PRIVATE);
                            OutputStreamWriter outputWriter = new OutputStreamWriter(fileout);
                            outputWriter.write(Inputfile);
                            outputWriter.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        exec("mv "+getFilesDir()+"/"+SaveInputName+" "+Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Edwards1");
                    }
                })

                .setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int id) {
                        // removes the AlertDialog in the screen
                    }
                })
                .create();

        // set the focus change listener of the EditText10
        // this part will make the soft keyboard automaticall visible
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    dialog.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE);
                }
            }
        });

        dialog.show();

    }


    private View.OnClickListener RunClick; {

        RunClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                String Inputfile = Input.getText().toString();
                try {
                    FileOutputStream fileout = openFileOutput("Input.txt", MODE_PRIVATE);
                    OutputStreamWriter outputWriter = new OutputStreamWriter(fileout);
                    outputWriter.write(Inputfile);
                    outputWriter.close();
                    exec("cp "+getFilesDir()+"/Input.txt "+getFilesDir()+"/Edwards1/JH-Edwards1.inp");
                } catch (Exception e) {
                    e.printStackTrace();
                }

                // TODO Auto-generated method stub //
                openprogressdialog();
            }
        };
    }

    private void openprogressdialog() {
        // TODO Auto-generated method stub //
        progressDialog = new ProgressDialog(Edwards1.this);
        progressDialog.setTitle("Please wait...");
        progressDialog.setMessage("Calculation is running...");
        progressDialog.setCancelable(false);
        progressDialog.setButton(DialogInterface.BUTTON_NEGATIVE, "Cancel", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        progressDialog.show();
        new Thread() {
            public void run() {
                try {
                    exec("chmod 755 -R "+getFilesDir());
                    exec(getApplicationInfo().nativeLibraryDir+"/libxbbc.so -o "+getFilesDir()+"/Edwards1/JH-Edwards1.b "+getFilesDir()+"/Edwards1/JH-Edwards1.bas");
                    exec("chmod -R 755 "+getFilesDir()+"/Edwards1/JH-Edwards1.b");
                    exec(getApplicationInfo().nativeLibraryDir+"/libxbvm.so "+getFilesDir()+"/Edwards1/JH-Edwards1.b");
                    exec("chmod 755 "+getFilesDir()+"/Edwards1/JH-Edwards1.out");
                    try {
                        OutputField(exec("cat "+getFilesDir()+"/Edwards1/JH-Edwards1.out"));
                        InputField(exec("cat "+getFilesDir()+"/Edwards1/JH-Edwards1.inp"));
                        Toast.makeText(getApplicationContext(), "Calculation finished", Toast.LENGTH_SHORT).show();
                    } catch (Exception e) {
                    }
                } catch (Exception e) {
                }
                onFinish();
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



            public void onFinish() {
                progressDialog.dismiss();
            }
        }.start();
    }


    // for displaying the output in the second TextView there must be different output2 than output, including the str2/proc2 variables
    public void OutputField(final String strOut) {
        Runnable procOut = new Runnable() {
            public void run() {
                Output.setText(strOut);
            }
        };
        handler.post(procOut);
    }

    private View.OnClickListener saveOutputfileClick; {

        saveOutputfileClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                alertSaveOutput();
                OutputField(exec("cat "+getFilesDir()+"/Edwards1/JH-Edwards1.out"));
                InputField(exec("cat "+getFilesDir()+"/Edwards1/JH-Edwards1.inp"));
            }
        };
    }


    public void alertSaveOutput(){
        // creating the EditText widget programatically
        EditText editText15 = new EditText(Edwards1.this);
        // create the AlertDialog as final
        final AlertDialog dialog = new AlertDialog.Builder(Edwards1.this)
                .setMessage("The file will be saved in the folder /storage/emulated/0/Documents/jh-suite/work/Edwards1")
                .setTitle("Please write the desired filename (if already present, it will be overwritten)")
                .setView(editText15)

                // Set the action buttons
                .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int id) {
                        String OutputProtocol = Output.getText().toString();
                        String SaveOutputName = editText15.getText().toString();
                        try {
                            FileOutputStream fileout = openFileOutput(SaveOutputName, MODE_PRIVATE);
                            OutputStreamWriter outputWriter = new OutputStreamWriter(fileout);
                            outputWriter.write(OutputProtocol);
                            outputWriter.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        exec("mv "+getFilesDir()+"/"+SaveOutputName+" "+Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)+"/jh-suite/work/Edwards1");
                    }
                })

                .setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int id) {
                        // removes the AlertDialog in the screen
                    }
                })
                .create();

        // set the focus change listener of the EditText10
        // this part will make the soft keyboard automaticall visible
        editText15.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    dialog.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE);
                }
            }
        });

        dialog.show();

    }

    private View.OnClickListener HighlightClick; {

        HighlightClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                openhighlightdialog();
            }
        };
    }


    private void openhighlightdialog() {
        // TODO Auto-generated method stub //
        progressDialog = new ProgressDialog(Edwards1.this);
        progressDialog.setTitle("Please wait...");
        progressDialog.setMessage("Highlighting numbers is in progress...");
        progressDialog.setCancelable(false);
        progressDialog.setButton(DialogInterface.BUTTON_NEGATIVE, "Cancel", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        progressDialog.show();

        new Thread() {
            public void run() {
//                String Inputfile = outputView2.getText().toString();
                try {
                    OutputFieldHighlighted(exec("cat "+getFilesDir()+"/Edwards1/JH-Edwards1.out"));
                    InputField(exec("cat "+getFilesDir()+"/Edwards1/JH-Edwards1.inp"));
                    Toast.makeText(getApplicationContext(), "Numbers highlighted.", Toast.LENGTH_SHORT).show();
                } catch (Exception e) {
                }

                onFinish();
            }

            // for displaying the output in the second TextView there must be different output2 than output, including the str2/proc2 variables
            public void OutputFieldHighlighted(final String strX) {
                Runnable procX = new Runnable() {
                    public void run() {
//                        outputView4.setText(strX);
                        Output.setText(colorized(strX, "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "+", "-", Color.RED));
                    }
                };
                handler.post(procX);
            }

            public void onFinish() {
                progressDialog.dismiss();
            }
        }.start();
    }



    private View.OnClickListener QuitClick; {

        QuitClick = new View.OnClickListener() {
            public void onClick(View v) {
                // TODO Auto-generated method stub //
                Intent intent = new Intent(Edwards1.this, MainActivity.class);
                startActivity(intent);
            }
        };
    }


    @Override
    protected void onResume() {
        super.onResume();
        InputField(exec("cat "+getFilesDir()+"/Edwards1/JH-Edwards1.inp"));
    }

    // for displaying the output in the second TextView there must be different output3 than output, including the str3/proc3 variables
    public void InputField(final String str) {
        Runnable proc = new Runnable() {
            public void run() {
                Input.setText(str);
            }
        };
        handler.post(proc);
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
