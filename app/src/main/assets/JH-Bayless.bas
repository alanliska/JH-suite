CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "=========================== * Procedure BAYLESS * =============================="
PRINT #1, "Version 1.01 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Bayless/JH-Bayless.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.inp"
INPUT #2, A$
CLOSE #2
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.out"
PRINT #1, "INPUT DATA"
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", A$
CLOSE #1
ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "=========================== * Procedure BAYLESS * =============================="
PRINT "Version 1.01"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "You are about to predict the ionization constant (pKa) of an acid "
PRINT "with general formula XHn(+/-q)."
PRINT "Available central atoms: "
DIM Atoms$(200)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.dat"
FOR I% = 0 TO 199
INPUT #4, Data_blockA$
Atoms$(I%) = Data_blockA$
Element$ = LEFTOF$(Data_blockA$, ";")
IF I% > 0 THEN
PRINT Element$ + " ",
ENDIF
IF Element$ = "" THEN
GOTO FinishA
ENDIF
NEXT I%
FinishA:
PRINT ""
CLOSE #4
PRINT "Input X: "
INPUT X$
PRINT "Input n: "
INPUT n
PRINT "Input q (positive, negative or zero): "
INPUT q
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.out"
PRINT #1, "INPUT DATA"
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", X$;
IF q = 0 AND n = 1 THEN
PRINT #1, "H"
ELSE
PRINT #1, "H";
ENDIF
IF n > 1 AND q <> 0 THEN
PRINT #1, n;
ELSE IF n > 1 AND q = 0 THEN
PRINT #1, n
ENDIF
IF q = 1 THEN
PRINT #1, "+"
ELSE IF q = -1 THEN
PRINT #1, "-"
ELSE IF q > 1 THEN
PRINT #1, "+"; q
ELSE IF q < -1 THEN
PRINT #1, "-"; -q
ENDIF
CLOSE #1

IF n <= 0 THEN
PRINT "Coefficient n must be positive."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.25, 1997-2017, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Bayless.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Coefficient n must be positive."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.25, 1997-2017, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
GOTO Calculation
ENDIF

Length% = LEN(A$)
Delim1% = INSTR(A$, "H")
Delim2% = INSTR(A$, "+")
Delim3% = INSTR(A$, "-")
X$ = MID$(A$, 1, Delim1%-1)
IF Length% = Delim1% THEN
q = 0
ELSE IF Length% = Delim2% THEN
q = 1
ELSE IF Length% = Delim3% THEN
q = -1
ELSE IF Delim2% <> 0 AND Delim2% <> Length% THEN
q$ = MID$(A$, Delim2%+1, Length%-Delim2%)
q = VAL(q$)
ELSE IF Delim3% <> 0 AND Delim3% <> Length% THEN
q$ = MID$(A$, Delim3%+1, Length%-Delim3%)
q = -VAL(q$)
ENDIF

IF Length% = Delim1% THEN
n = 1
ELSE IF Length% <> Delim1% AND Delim2% <> 0 THEN
IF Delim2%-Delim1% > 1 THEN
n$ = MID$(A$, Delim1%+1, Delim2%-Delim1%-1)
n = VAL(n$)
ELSE
n = 1
ENDIF
ELSE IF Length% <> Delim1% AND Delim3% <> 0 THEN
IF Delim3%-Delim1% > 1 THEN
n$ = MID$(A$, Delim1%+1, Delim3%-Delim1%-1)
n = VAL(n$)
ELSE
n = 1
ENDIF
ELSE IF Length% <> Delim1% AND Delim2% = 0 AND Delim3% = 0 THEN
n$ = MID$(A$, Delim1%+1, Length%-Delim1%)
n = VAL(n$)
ENDIF

IF n <= 0 THEN
PRINT "Coefficient n must be positive."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.25, 1997-2017, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Bayless.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Coefficient n must be positive."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.25, 1997-2017, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

Calculation:

DIM Atoms$(200)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.dat"
FOR I% = 0 TO 199
INPUT #4, Data_blockA$
Atoms$(I%) = Data_blockA$
LengthA = LEN(Data_blockA$)
Element$ = LEFTOF$(Data_blockA$, ";")
Delim11% = INSTR(Data_blockA$, ";")
Delim12% = INSTR(Data_blockA$, ";", Delim11%+1)
p_value$ = MID$(Data_blockA$, Delim11%+1, Delim12%-Delim11%-1)
p_value = VAL(p_value$)
g_value$ = MID$(Data_blockA$, Delim12%+1, LengthA-Delim12%)
g_value = VAL(g_value$)
IF X$ = Element$ THEN
p = p_value
g = g_value
ENDIF
IF Element$ = "" THEN
GOTO FinishB
ENDIF
NEXT I%
FinishB:
CLOSE #4

IF p = 0 OR g = 0 THEN
PRINT "Incorrect central atom."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.25, 1997-2017, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Bayless.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect central atom."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.25, 1997-2017, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "I", #3, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.par"
INPUT #3, a, b, c, d
CLOSE #3

OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.out"
PRINT #1, "Equation coefficients: "; a; ", "; b; ", "; c; " and "; d
CLOSE #1

pKa = a+b*g+c*g*n+d*(q-1)/(g*p*p)

IF ExistInput <> -1 THEN
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "For viewing the output protocol, please open the file JH-Bayless.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.25, 1997-2017, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Bayless.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"

 IF g >= 6 THEN

PRINT #1, "H";
IF n > 1 THEN
PRINT #1, n;
ENDIF
IF q = 0 THEN
PRINT #1, X$;
PRINT #1, " ";
ELSE IF q = 1 THEN
PRINT #1, X$;
PRINT #1, "+";
PRINT #1, " ";
ELSE IF q > 1 THEN
PRINT #1, X$;
PRINT #1, "+";
PRINT #1, q;
PRINT #1, " ";
ELSE IF q = -1 THEN
PRINT #1, X$;
PRINT #1, "-";
PRINT #1, " ";
ELSE IF q < -1 THEN
PRINT #1, X$;
PRINT #1, "-";
PRINT #1, -q;
PRINT #1, " ";
ENDIF

 ELSE

IF q = 0 THEN
PRINT #1, X$;
IF n = 1 THEN
PRINT #1, "H";
ELSE
PRINT #1, "H";
PRINT #1, n;
ENDIF
PRINT #1, " ";
ELSE IF q = 1 THEN
PRINT #1, X$;
IF n = 1 THEN
PRINT #1, "H";
ELSE
PRINT #1, "H";
PRINT #1, n;
ENDIF
PRINT #1, "+";
PRINT #1, " ";
ELSE IF q > 1 THEN
PRINT #1, X$;
IF n = 1 THEN
PRINT #1, "H";
ELSE
PRINT #1, "H";
PRINT #1, n;
ENDIF
PRINT #1, "+";
PRINT #1, q;
PRINT #1, " ";
ELSE IF q = -1 THEN
PRINT #1, X$;
IF n = 1 THEN
PRINT #1, "H";
ELSE
PRINT #1, "H";
PRINT #1, n;
ENDIF
PRINT #1, "-";
PRINT #1, " ";
ELSE IF q < -1 THEN
PRINT #1, X$;
IF n = 1 THEN
PRINT #1, "H";
ELSE
PRINT #1, "H";
PRINT #1, n;
ENDIF
PRINT #1, "-";
PRINT #1, -q;
PRINT #1, " ";
ENDIF

 ENDIF

PRINT #1, "= H+ + ";

 IF g >= 6 THEN

IF n-1 > 0 THEN
PRINT #1, "H";
ENDIF
IF n-1 > 1 THEN
PRINT #1, n-1;
ENDIF
IF q-1 = 0 THEN
PRINT #1, X$
ELSE IF q-1 = 1 THEN
PRINT #1, X$;
PRINT #1, "+"
ELSE IF q-1 > 1 THEN
PRINT #1, X$;
PRINT #1, "+";
PRINT #1, q-1
ELSE IF q-1 = -1 THEN
PRINT #1, X$;
PRINT #1, "-"
ELSE IF q-1 < -1 THEN
PRINT #1, X$;
PRINT #1, "-";
PRINT #1, -(q-1)
ENDIF

 ELSE

IF q-1 = 0 THEN
PRINT #1, X$;
IF n-1 = 1 THEN
PRINT #1, "H"
ELSE IF n-1 > 1
PRINT #1, "H";
PRINT #1, n-1
ENDIF
ELSE IF q-1 = 1 THEN
PRINT #1, X$;
IF n-1 = 1 THEN
PRINT #1, "H";
ELSE IF n-1 > 1
PRINT #1, "H";
PRINT #1, n-1;
ENDIF
PRINT #1, "+"
ELSE IF q-1 > 1 THEN
PRINT #1, X$;
IF n-1 = 1 THEN
PRINT #1, "H";
ELSE IF n-1 > 1
PRINT #1, "H";
PRINT #1, n-1;
ENDIF
PRINT #1, "+";
PRINT #1, q-1
ELSE IF q-1 = -1 THEN
PRINT #1, X$;
IF n-1 = 1 THEN
PRINT #1, "H";
ELSE IF n-1 > 1
PRINT #1, "H";
PRINT #1, n-1;
ENDIF
PRINT #1, "-"
ELSE IF q-1 < -1 THEN
PRINT #1, X$;
IF n-1 = 1 THEN
PRINT #1, "H";
ELSE IF n-1 > 1
PRINT #1, "H";
PRINT #1, n-1;
ENDIF
PRINT #1, "-";
PRINT #1, -(q-1)
ENDIF

 ENDIF

PRINT #1, "     log_k  "; -pKa USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.25, 1997-2017, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
ELSE
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless/JH-Bayless.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"

 IF g >= 6 THEN

PRINT #1, "H";
IF n > 1 THEN
PRINT #1, n;
ENDIF
IF q = 0 THEN
PRINT #1, X$;
PRINT #1, " ";
ELSE IF q = 1 THEN
PRINT #1, X$;
PRINT #1, "+";
PRINT #1, " ";
ELSE IF q > 1 THEN
PRINT #1, X$;
PRINT #1, "+";
PRINT #1, q;
PRINT #1, " ";
ELSE IF q = -1 THEN
PRINT #1, X$;
PRINT #1, "-";
PRINT #1, " ";
ELSE IF q < -1 THEN
PRINT #1, X$;
PRINT #1, "-";
PRINT #1, -q;
PRINT #1, " ";
ENDIF

 ELSE

IF q = 0 THEN
PRINT #1, X$;
IF n = 1 THEN
PRINT #1, "H";
ELSE
PRINT #1, "H";
PRINT #1, n;
ENDIF
PRINT #1, " ";
ELSE IF q = 1 THEN
PRINT #1, X$;
IF n = 1 THEN
PRINT #1, "H";
ELSE
PRINT #1, "H";
PRINT #1, n;
ENDIF
PRINT #1, "+";
PRINT #1, " ";
ELSE IF q > 1 THEN
PRINT #1, X$;
IF n = 1 THEN
PRINT #1, "H";
ELSE
PRINT #1, "H";
PRINT #1, n;
ENDIF
PRINT #1, "+";
PRINT #1, q;
PRINT #1, " ";
ELSE IF q = -1 THEN
PRINT #1, X$;
IF n = 1 THEN
PRINT #1, "H";
ELSE
PRINT #1, "H";
PRINT #1, n;
ENDIF
PRINT #1, "-";
PRINT #1, " ";
ELSE IF q < -1 THEN
PRINT #1, X$;
IF n = 1 THEN
PRINT #1, "H";
ELSE
PRINT #1, "H";
PRINT #1, n;
ENDIF
PRINT #1, "-";
PRINT #1, -q;
PRINT #1, " ";
ENDIF

 ENDIF

PRINT #1, "= H+ + ";

 IF g >= 6 THEN
IF n-1 > 0 THEN
PRINT #1, "H";
ENDIF
IF n-1 > 1 THEN
PRINT #1, n-1;
ENDIF
IF q-1 = 0 THEN
PRINT #1, X$
ELSE IF q-1 = 1 THEN
PRINT #1, X$;
PRINT #1, "+"
ELSE IF q-1 > 1 THEN
PRINT #1, X$;
PRINT #1, "+";
PRINT #1, q-1
ELSE IF q-1 = -1 THEN
PRINT #1, X$;
PRINT #1, "-"
ELSE IF q-1 < -1 THEN
PRINT #1, X$;
PRINT #1, "-";
PRINT #1, -(q-1)
ENDIF

 ELSE

IF q-1 = 0 THEN
PRINT #1, X$;
IF n-1 = 1 THEN
PRINT #1, "H"
ELSE IF n-1 > 1
PRINT #1, "H";
PRINT #1, n-1
ENDIF
ELSE IF q-1 = 1 THEN
PRINT #1, X$;
IF n-1 = 1 THEN
PRINT #1, "H";
ELSE IF n-1 > 1
PRINT #1, "H";
PRINT #1, n-1;
ENDIF
PRINT #1, "+"
ELSE IF q-1 > 1 THEN
PRINT #1, X$;
IF n-1 = 1 THEN
PRINT #1, "H";
ELSE IF n-1 > 1
PRINT #1, "H";
PRINT #1, n-1;
ENDIF
PRINT #1, "+";
PRINT #1, q-1
ELSE IF q-1 = -1 THEN
PRINT #1, X$;
IF n-1 = 1 THEN
PRINT #1, "H";
ELSE IF n-1 > 1
PRINT #1, "H";
PRINT #1, n-1;
ENDIF
PRINT #1, "-"
ELSE IF q-1 < -1 THEN
PRINT #1, X$;
IF n-1 = 1 THEN
PRINT #1, "H";
ELSE IF n-1 > 1
PRINT #1, "H";
PRINT #1, n-1;
ENDIF
PRINT #1, "-";
PRINT #1, -(q-1)
ENDIF

 ENDIF

PRINT #1, "     log_k  "; -pKa USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.25, 1997-2017, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

END
