CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "========================== * Procedure PAULING I * ============================="
PRINT #1, "Version 1.01 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.inp"
INPUT #2, A$
CLOSE # 2
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.out"
PRINT #1, "INPUT DATA"
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", A$
CLOSE #1
ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure PAULING I * ============================="
PRINT "Version 1.01"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "General formula of an acid: HpXOq-r"
PRINT "Input p: "
INPUT p$
PRINT "Input X: "
INPUT Element$
PRINT "Input q: "
INPUT q$
PRINT "Input r (including minus sign): "
INPUT r$
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.out"
PRINT #1, "INPUT DATA"
p = VAL(p$)
q = VAL(q$)
r = VAL(r$)
IF p > 1 AND p < 10 AND q > 1 AND r = -1 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + STR$(p) + Element$ + "O" + STR$(q) + "-"
ELSE IF p > 1 AND p < 10 AND q > 1 AND r < -1 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + STR$(p) + Element$ + "O" + STR$(q) + STR$(r)
ELSE IF p > 1 AND p < 10 AND q > 1 AND r = 0 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + STR$(p) + Element$ + "O" + STR$(q)
ELSE IF p = 1 AND p < 10 AND q > 1 AND r = -1 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + Element$ + "O" + STR$(q) + "-"
ELSE IF p = 1 AND p < 10 AND q > 1 AND r < -1 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + Element$ + "O" + STR$(q) + STR$(r)
ELSE IF p = 1 AND p < 10 AND q > 1 AND r = 0 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + Element$ + "O" + STR$(q)
ELSE IF p > 1 AND p < 10 AND q = 1 AND r = -1 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + STR$(p) + Element$ + "O" + "-"
ELSE IF p > 1 AND p < 10 AND q = 1 AND r < -1 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + STR$(p) + Element$ + "O" + STR$(r)
ELSE IF p > 1 AND p < 10 AND q = 1 AND r = 0 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + STR$(p) + Element$ + "O"
ELSE IF p = 1 AND p < 10 AND q = 1 AND r < -1 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + Element$ + "O" + STR$(r)
ELSE IF p = 1 AND p < 10 AND q = 1 AND r = 0 THEN
PRINT #1, "================================================================================"
PRINT #1, "Acid: ", "H" + Element$ + "O"
ENDIF
CLOSE #1
ENDIF

IF ExistInput = -1 THEN
N = LEN(A$)
P1 = INSTR(A$, "O")
P2 = INSTR(A$, "-")
p$ = MID$(A$, 2, 1)
hydrogen = VAL(p$)
IF hydrogen = 0 THEN
p = 1
ELSE IF hydrogen <> 0 THEN
p = hydrogen
ENDIF
IF hydrogen = 0 THEN
Element$ = MID$(A$, 2, P1-2)
ELSE IF hydrogen <> 0 THEN
Element$ = MID$(A$, 3, P1-3)
ENDIF
IF P2 > 0 THEN
q$ = MID$(A$, P1+1, P2-P1-1)
ELSE IF P2 = 0 AND P1 < N THEN
q$ = MID$(A$, P1+1, N-P1)
ELSE IF P2 = 0 AND P1 = N THEN
q$ = "1"
ENDIF
IF P2 > 0 AND N > P2
r$ = MID$(A$, P2, N-P2+1)
ELSE IF P2 > 0 AND N = P2 THEN
r$ = "-1"
ELSE IF P2 = 0 AND N = P2 THEN
r$ = "0"
ENDIF
q = VAL(q$)
r = VAL(r$)
ENDIF

DIM Acids$(200)
OPEN "I",#3,"/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.dat"
FOR I% = 0 TO 199
INPUT #3, Data_blockA$
Acids$(I%) = Data_blockA$
M = LEN(Data_blockA$)
Acid$ = LEFTOF$(Data_blockA$, ";")
PA1 = INSTR(Data_blockA$, ";")
Const$ = MID$(Data_blockA$, PA1 + 1, M-PA1)
IF Acid$ = Element$
C$ = Const$
ENDIF
IF Acid$ = Element$ THEN
GOTO Finish_Acids
ENDIF
NEXT I%
CLOSE #3

Finish_Acids:

C = VAL(C$)

OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.out"
PRINT #1, "C = ", C
CLOSE #1

IF ExistInput <> -1 AND (p = 0 OR p > 9) THEN
PRINT "Incorrect number of hydrogen atoms, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Ronald Rich: Periodic Correlations. W.A.Benjamin, Inc., New York, Amsterdam"
PRINT "    1965."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Pauling1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF p = 0 OR p > 9 THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect number of hydrogen atoms, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Ronald Rich: Periodic Correlations. W.A.Benjamin, Inc., New York, Amsterdam"
PRINT #1, "    1965."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Pauling1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

IF ExistInput <> -1 AND q = 0 THEN
PRINT "Incorrect number of oxygen atoms, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Ronald Rich: Periodic Correlations. W.A.Benjamin, Inc., New York, Amsterdam"
PRINT "    1965."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Pauling1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF q = 0 THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect number of oxygen atoms, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Ronald Rich: Periodic Correlations. W.A.Benjamin, Inc., New York, Amsterdam"
PRINT #1, "    1965."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Pauling1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

IF ExistInput <> -1 AND C = 0 THEN
PRINT "Incorrect central atom, polyacid or bare anion, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Ronald Rich: Periodic Correlations. W.A.Benjamin, Inc., New York, Amsterdam"
PRINT "    1965."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Pauling1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF C = 0 THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect central atom, polyacid or bare anion, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Ronald Rich: Periodic Correlations. W.A.Benjamin, Inc., New York, Amsterdam"
PRINT #1, "    1965."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Pauling1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

pKa = C + 5 * (p - q - 2 * r)
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "pKa = "; pKa USING "###.##"
CLOSE #1

IF ExistInput <> -1 THEN
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "For viewing the output protocol, please open the file JH-Pauling1.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Ronald Rich: Periodic Correlations. W.A.Benjamin, Inc., New York, Amsterdam"
PRINT "    1965."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Pauling1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.out"
PRINT #1, " "
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
IF p > 2 AND q > 1 AND r = 0 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + " = " + "H" + STR$(p-1) + Element$ + "O" + q$ + "- + H+"
ELSE IF p > 2 AND q > 1 AND r = -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + "- = " + "H" + STR$(p-1) + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p > 2 AND q > 1 AND r < -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + STR$(r) + " = " + "H" + STR$(p-1) + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ELSE IF p = 2 AND q > 1 AND r = 0 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + " = " + "H" + Element$ + "O" + q$ + "- + H+"
ELSE IF p = 2 AND q > 1 AND r = -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + "- = " + "H" + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p = 2 AND q > 1 AND r < -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + STR$(r) + " = " + "H" + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ELSE IF p > 2 AND q = 1 AND r = 0 THEN
Equation$ = "H" + p$ + Element$ + "O" + " = " + "H" + STR$(p-1) + Element$ + "O" + q$ + "- + H+"
ELSE IF p > 2 AND q = 1 AND r = -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + "- = " + "H" + STR$(p-1) + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p > 2 AND q = 1 AND r < -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + STR$(r) + " = " + "H" + STR$(p-1) + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ELSE IF p = 2 AND q = 1 AND r = 0 THEN
Equation$ = "H" + p$ + Element$ + "O" + " = " + "H" + Element$ + "O" + q$ + "- + H+"
ELSE IF p = 2 AND q = 1 AND r = -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + "- = " + "H" + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p = 2 AND q = 1 AND r < -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + STR$(r) + " = " + "H" + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ELSE IF p = 1 AND q > 1 AND r = 0 THEN
Equation$ = "H" + Element$ + "O" + q$ + " = " + Element$ + "O" + q$ + "- + H+"
ELSE IF p = 1 AND q > 1 AND r = -1 THEN
Equation$ = "H" + Element$ + "O" + q$ + "- = " + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p = 1 AND q > 1 AND r < -1 THEN
Equation$ = "H" + Element$ + "O" + q$ + STR$(r) + " = " + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ELSE IF p = 1 AND q = 1 AND r = 0 THEN
Equation$ = "H" + Element$ + "O" + " = " + Element$ + "O" + q$ + "- + H+"
ELSE IF p = 1 AND q = 1 AND r = -1 THEN
Equation$ = "H" + Element$ + "O" + "- = " + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p = 1 AND q = 1 AND r < -1 THEN
Equation$ = "H" + Element$ + "O" + STR$(r) + " = " + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ENDIF
PRINT #1, Equation$
PRINT #1, "     log_k  "; - pKa USING "###.##"
PRINT #1, " "
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Ronald Rich: Periodic Correlations. W.A.Benjamin, Inc., New York, Amsterdam"
PRINT #1, "    1965."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Pauling1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
ELSE
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling1/JH-Pauling1.out"
PRINT #1, " "
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
IF p > 2 AND q > 1 AND r = 0 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + " = " + "H" + STR$(p-1) + Element$ + "O" + q$ + "- + H+"
ELSE IF p > 2 AND q > 1 AND r = -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + "- = " + "H" + STR$(p-1) + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p > 2 AND q > 1 AND r < -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + STR$(r) + " = " + "H" + STR$(p-1) + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ELSE IF p = 2 AND q > 1 AND r = 0 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + " = " + "H" + Element$ + "O" + q$ + "- + H+"
ELSE IF p = 2 AND q > 1 AND r = -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + "- = " + "H" + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p = 2 AND q > 1 AND r < -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + q$ + STR$(r) + " = " + "H" + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ELSE IF p > 2 AND q = 1 AND r = 0 THEN
Equation$ = "H" + p$ + Element$ + "O" + " = " + "H" + STR$(p-1) + Element$ + "O" + q$ + "- + H+"
ELSE IF p > 2 AND q = 1 AND r = -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + "- = " + "H" + STR$(p-1) + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p > 2 AND q = 1 AND r < -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + STR$(r) + " = " + "H" + STR$(p-1) + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ELSE IF p = 2 AND q = 1 AND r = 0 THEN
Equation$ = "H" + p$ + Element$ + "O" + " = " + "H" + Element$ + "O" + q$ + "- + H+"
ELSE IF p = 2 AND q = 1 AND r = -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + "- = " + "H" + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p = 2 AND q = 1 AND r < -1 THEN
Equation$ = "H" + p$ + Element$ + "O" + STR$(r) + " = " + "H" + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ELSE IF p = 1 AND q > 1 AND r = 0 THEN
Equation$ = "H" + Element$ + "O" + q$ + " = " + Element$ + "O" + q$ + "- + H+"
ELSE IF p = 1 AND q > 1 AND r = -1 THEN
Equation$ = "H" + Element$ + "O" + q$ + "- = " + Element$ + "O" + q$ + "-2 + H+"
ELSE IF p = 1 AND q > 1 AND r < -1 THEN
Equation$ = "H" + Element$ + "O" + q$ + STR$(r) + " = " + Element$ + "O" + q$ + STR$(r-1) + " + H+"
ELSE IF p = 1 AND q = 1 AND r = 0 THEN
Equation$ = "H" + Element$ + "O" + " = " + Element$ + "O" + "- + H+"
ELSE IF p = 1 AND q = 1 AND r = -1 THEN
Equation$ = "H" + Element$ + "O" + "- = " + Element$ + "O" + "-2 + H+"
ELSE IF p = 1 AND q = 1 AND r < -1 THEN
Equation$ = "H" + Element$ + "O" + STR$(r) + " = " + Element$ + "O" + STR$(r-1) + " + H+"
ENDIF
PRINT #1, Equation$
PRINT #1, "     log_k  "; - pKa USING "###.##"
PRINT #1, " "
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Ronald Rich: Periodic Correlations. W.A.Benjamin, Inc., New York, Amsterdam"
PRINT #1, "    1965."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Pauling1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

END
