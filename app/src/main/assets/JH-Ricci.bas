CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "============================ * Procedure RICCI * ==============================="
PRINT #1, "Version 1.00 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Ricci/JH-Ricci.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.inp"
INPUT #2, A$, k%
CLOSE #2
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "INPUT DATA"
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", A$
PRINT #1, "Requested ionization process: ", k%
CLOSE #1
ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "============================ * Procedure RICCI * ==============================="
PRINT "Version 1.00"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "You are about to predict the ionization constant (pKa) of an acid "
PRINT "with general formula XOm(OH)n."
PRINT "Input X: "
INPUT X$
PRINT "Input m: "
INPUT m
PRINT "Input n: "
INPUT n
PRINT "Enter the requested ionization conatant number: "
INPUT k%
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "INPUT DATA"
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", X$;
PRINT #1, "O";
IF m > 1 THEN
PRINT #1, m;
ENDIF
IF n > 1 THEN
PRINT #1, "(OH)"; n
ELSE
PRINT #1, "(OH)"
ENDIF
PRINT #1, "Requested ionization process: ", k%
CLOSE #1
IF VAL(X$) <> 0 THEN
PRINT "Incorrect central atom."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect central atom."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
IF m < 0 THEN
PRINT "Coefficient m must not be negative."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Coefficient m must not be negative."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
IF n <= 0 THEN
PRINT "Coefficient n must be positive."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Coefficient n must be positive."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
IF k% < 1 THEN
PRINT "Wrong pKa number."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Wrong pKa number."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
IF n-k%+1 < 1 THEN
PRINT "Proton acid must contain at least one hydrogen atom."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Proton acid must contain at least one hydrogen atom."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
GOTO Calculation
ENDIF

Length% = LEN(A$)
Delim1% = INSTR(A$, "O")
Delim2% = INSTR(A$, "(")
Delim3% = INSTR(A$, ")")
Delim4% = INSTR(A$, "OH")
IF Delim1% <> Delim4% THEN
X$ = MID$(A$, 1, Delim1%-1)
ELSE IF Delim1% = Delim4% THEN
X$ = MID$(A$, 1, Delim2%-1)
ENDIF
m$ = MID$(A$, Delim1%+1, Delim2%-Delim1%-1)
n$ = MID$(A$, Delim3%+1, Length%-Delim3%)
m = VAL(m$)
IF Delim1% = 0 THEN
m = 0
ELSE IF Delim2%-Delim1% = 1 THEN
m = 1
ENDIF
n = VAL(n$)
IF Length%-Delim3% = 0 THEN
n = 1
ENDIF

IF VAL(X$) <> 0 THEN
PRINT "Incorrect central atom."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect central atom."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
IF m < 0 THEN
PRINT "Coefficient m must not be negative."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Coefficient m must not be negative."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
IF n <= 0 THEN
PRINT "Coefficient n must be positive."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Coefficient n must be positive."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
IF k% < 1 THEN
PRINT "Wrong pKa number."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Wrong pKa number."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
IF n-k%+1 < 1 THEN
PRINT "Proton acid must contain at least one hydrogen atom."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Proton acid must contain at least one hydrogen atom."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

Calculation:

OPEN "I", #3, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.par"
INPUT #3, a, b, c
CLOSE #3

OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "Linear equation coefficients: "; a; ", "; b; " and "; c
CLOSE #1

x = m+k%-1

pKa = a+b*m+c*x

IF ExistInput <> -1 THEN
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "For viewing the output protocol, please open the file JH-Ricci.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Ricci.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #1, "H";
IF n-k%+1 > 1 THEN
PRINT #1, n-k%+1;
ENDIF
PRINT #1, X$;
IF m+n > 1 THEN
PRINT #1, "O";
PRINT #1, m+n;
ELSE IF m+n = 1 THEN
PRINT #1, "O";
ENDIF
IF -(k%-1) < 0 THEN
PRINT #1, "-";
ELSE IF -(k%-1) < -1 THEN
PRINT #1, "-"; k%-1
ENDIF
PRINT #1, " = ";
IF n-k% >= 1 THEN
PRINT #1, "H";
ENDIF
IF n-k% > 1 THEN
PRINT #1, n-k%;
ENDIF
PRINT #1, X$;
IF m+n > 1 THEN
PRINT #1, "O";
PRINT #1, m+n;
ELSE IF m+n = 1 THEN
PRINT #1, "O";
ENDIF
PRINT #1, "-";
IF -k% < -1 THEN
PRINT #1, k%;
ENDIF
PRINT #1, " + H+"
PRINT #1, "     log_k  "; -pKa USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
ELSE
OPEN "A", #1, "/data/data/cz.jh.suite/files/Ricci/JH-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #1, "H";
IF n-k%+1 > 1 THEN
PRINT #1, n-k%+1;
ENDIF
PRINT #1, X$;
IF m+n > 1 THEN
PRINT #1, "O";
PRINT #1, m+n;
ELSE IF m+n = 1 THEN
PRINT #1, "O";
ENDIF
IF -(k%-1) < 0 THEN
PRINT #1, "-";
ELSE IF -(k%-1) < -1 THEN
PRINT #1, "-"; k%-1
ENDIF
PRINT #1, " = ";
IF n-k% >= 1 THEN
PRINT #1, "H";
ENDIF
IF n-k% > 1 THEN
PRINT #1, n-k%;
ENDIF
PRINT #1, X$;
IF m+n > 1 THEN
PRINT #1, "O";
PRINT #1, m+n;
ELSE IF m+n = 1 THEN
PRINT #1, "O";
ENDIF
PRINT #1, "-";
IF -k% < -1 THEN
PRINT #1, k%;
ENDIF
PRINT #1, " + H+"
PRINT #1, "     log_k  "; -pKa USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):" 
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Ricci.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

END
