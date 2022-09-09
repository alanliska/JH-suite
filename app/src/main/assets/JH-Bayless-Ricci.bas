CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "======================== * Procedure BAYLESS-RICCI * ==========================="
PRINT #1, "Version 1.00 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.inp"
INPUT #2, Base$, z, t, qA, qX
CLOSE #2
GOTO Common
ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "======================== * Procedure BAYLESS-RICCI * ==========================="
PRINT "Version 1.00"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"

OPEN "O", #1, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "======================== * Procedure BAYLESS-RICCI * ==========================="
PRINT #1, "Version 1.00"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1

PRINT "You are about to predict the protonization constant (pKb) of an acid "
PRINT "with general formula (HA)nXBm(+/-q) or (A)nXBm(+/-q)"
PRINT ""
PRINT "Atoms A and X must be input while atom B does not need to be present."
PRINT "In such case, when prompted to input B, simply press enter. When asked"
PRINT "for the number of B atoms, enter 0."
PRINT ""
PRINT "Atom B must not be hydrogen."
PRINT ""
PRINT "Available atoms A, X and B: "
DIM Atoms$(300)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.dat"
FOR I% = 0 TO 299
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
PRINT "Input A: "
INPUT A$
PRINT "Input X: "
INPUT X$
PRINT "Input B: "
INPUT B$
PRINT "Input n: "
INPUT n
PRINT "Input m: "
INPUT m$
m = VAL(m$)
PRINT "Is (are) there hydrogen atom(s) included in the formula? (Y/N)"
INPUT Type$
PRINT "Input the number of A and B atoms capable being protonated: "
INPUT t
PRINT "Input the overall charge of the species: "
INPUT z
PRINT "Last necessary parameters are formal charges on atoms A and X."
PRINT "They can be read from the lewis structures of the considered base."
PRINT "Draw the resonance structures in a way achieving the most negative"
PRINT "formal charge on the A and B atoms (e.g. use single bonds to terminal"
PRINT "oxygen atoms instead of double bonds)."
PRINT "Input q(A) (positive, negative or zero): "
INPUT qA
PRINT "Input q(X) (positive, negative or zero): "
INPUT qX

IF Type$ <> "Y" AND Type$ <> "N" THEN
PRINT "Invalid structure type."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Bayless-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Invalid structure type."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

GOTO Calculation
ENDIF

Common:

Length% = LEN(Base$)
Delim0% = INSTR(Base$, "(H")
Delim1% = INSTR(Base$, ")")

IF Delim0% <> 0 THEN
A$ = MID$(Base$, 3, Delim1%-3)
ELSE
A$ = MID$(Base$, 2, Delim1%-2)
ENDIF

n_test$ = MID$(Base$, Delim1%+1, 1)
n_test% = VAL(n_test$)

IF n_test% = 0 THEN
n = 1
ENDIF

IF INSTR(Base$, "A", Delim1%) <> 0 THEN
SeekA = INSTR(Base$, "A", Delim1%)
ELSE
SeekA = 100
ENDIF

IF INSTR(Base$, "B", Delim1%) <> 0 THEN
SeekB = INSTR(Base$, "B", Delim1%)
ELSE
SeekB = 100
ENDIF

IF INSTR(Base$, "C", Delim1%) <> 0 THEN
SeekC = INSTR(Base$, "C", Delim1%)
ELSE
SeekC = 100
ENDIF

IF INSTR(Base$, "D", Delim1%) <> 0 THEN
SeekD = INSTR(Base$, "D", Delim1%)
ELSE
SeekD = 100
ENDIF

IF INSTR(Base$, "E", Delim1%) <> 0 THEN
SeekE = INSTR(Base$, "E", Delim1%)
ELSE
SeekE = 100
ENDIF

IF INSTR(Base$, "F", Delim1%) <> 0 THEN
SeekF = INSTR(Base$, "F", Delim1%)
ELSE
SeekF = 100
ENDIF

IF INSTR(Base$, "G", Delim1%) <> 0 THEN
SeekG = INSTR(Base$, "G", Delim1%)
ELSE
SeekG = 100
ENDIF

IF INSTR(Base$, "H", Delim1%) <> 0 THEN
SeekH = INSTR(Base$, "H", Delim1%)
ELSE
SeekH = 100
ENDIF

IF INSTR(Base$, "I", Delim1%) <> 0 THEN
SeekI = INSTR(Base$, "I", Delim1%)
ELSE
SeekI = 100
ENDIF

IF INSTR(Base$, "J", Delim1%) <> 0 THEN
SeekJ = INSTR(Base$, "J", Delim1%)
ELSE
SeekJ = 100
ENDIF

IF INSTR(Base$, "K", Delim1%) <> 0 THEN
SeekK = INSTR(Base$, "K", Delim1%)
ELSE
SeekK = 100
ENDIF

IF INSTR(Base$, "L", Delim1%) <> 0 THEN
SeekL = INSTR(Base$, "L", Delim1%)
ELSE
SeekL = 100
ENDIF

IF INSTR(Base$, "M", Delim1%) <> 0 THEN
SeekM = INSTR(Base$, "M", Delim1%)
ELSE
SeekM = 100
ENDIF

IF INSTR(Base$, "N", Delim1%) <> 0 THEN
SeekN = INSTR(Base$, "N", Delim1%)
ELSE
SeekN = 100
ENDIF

IF INSTR(Base$, "O", Delim1%) <> 0 THEN
SeekO = INSTR(Base$, "O", Delim1%)
ELSE
SeekO = 100
ENDIF

IF INSTR(Base$, "P", Delim1%) <> 0 THEN
SeekP = INSTR(Base$, "P", Delim1%)
ELSE
SeekP = 100
ENDIF

IF INSTR(Base$, "Q", Delim1%) <> 0 THEN
SeekQ = INSTR(Base$, "Q", Delim1%)
ELSE
SeekQ = 100
ENDIF

IF INSTR(Base$, "R", Delim1%) <> 0 THEN
SeekR = INSTR(Base$, "R", Delim1%)
ELSE
SeekR = 100
ENDIF

IF INSTR(Base$, "S", Delim1%) <> 0 THEN
SeekS = INSTR(Base$, "S", Delim1%)
ELSE
SeekS = 100
ENDIF

IF INSTR(Base$, "T", Delim1%) <> 0 THEN
SeekT = INSTR(Base$, "T", Delim1%)
ELSE
SeekT = 100
ENDIF

IF INSTR(Base$, "U", Delim1%) <> 0 THEN
SeekU = INSTR(Base$, "U", Delim1%)
ELSE
SeekU = 100
ENDIF

IF INSTR(Base$, "V", Delim1%) <> 0 THEN
SeekV = INSTR(Base$, "V", Delim1%)
ELSE
SeekV = 100
ENDIF

IF INSTR(Base$, "W", Delim1%) <> 0 THEN
SeekW = INSTR(Base$, "W", Delim1%)
ELSE
SeekW = 100
ENDIF

IF INSTR(Base$, "X", Delim1%) <> 0 THEN
SeekX = INSTR(Base$, "X", Delim1%)
ELSE
SeekX = 100
ENDIF

IF INSTR(Base$, "Y", Delim1%) <> 0 THEN
SeekY = INSTR(Base$, "Y", Delim1%)
ELSE
SeekY = 100
ENDIF

IF INSTR(Base$, "Z", Delim1%) <> 0 THEN
SeekZ = INSTR(Base$, "Z", Delim1%)
ELSE
SeekZ = 100
ENDIF

X_test% = MIN(SeekA, SeekB, SeekC, SeekD, SeekE, SeekF, SeekG, SeekH, SeekI, SeekJ, SeekK, SeekL, SeekM, SeekN, SeekO, SeekP, SeekQ, SeekR, SeekS, SeekT, SeekU, SeekV, SeekW, SeekX, SeekY, SeekZ)

IF X_test% > Delim1%+1
n$ = MID$(Base$, Delim1%+1, X_test%-Delim1%-1)
n = VAL(n$)
ENDIF

B_test% = MAX(INSTR(Base$, "A", X_test%+1), INSTR(Base$, "B", X_test%+1), INSTR(Base$, "C", X_test%+1), INSTR(Base$, "D", X_test%+1), INSTR(Base$, "E", X_test%+1), INSTR(Base$, "F", X_test%+1), INSTR(Base$, "G", X_test%+1), INSTR(Base$, "H", X_test%+1), INSTR(Base$, "I", X_test%+1), INSTR(Base$, "J", X_test%+1), INSTR(Base$, "K", X_test%+1), INSTR(Base$, "L", X_test%+1), INSTR(Base$, "M", X_test%+1), INSTR(Base$, "N", X_test%+1), INSTR(Base$, "O", X_test%+1), INSTR(Base$, "P", X_test%+1), INSTR(Base$, "Q", X_test%+1), INSTR(Base$, "R", X_test%+1), INSTR(Base$, "S", X_test%+1), INSTR(Base$, "T", X_test%+1), INSTR(Base$, "U", X_test%+1), INSTR(Base$, "V", X_test%+1), INSTR(Base$, "W", X_test%+1), INSTR(Base$, "X", X_test%+1), INSTR(Base$, "Y", X_test%+1), INSTR(Base$, "Z", X_test%+1))

IF B_test% <> 0 THEN
X$ = MID$(Base$, X_test%, B_test%-X_test%)
ELSE
X$ = MID$(Base$, X_test%, Length%-X_test%+1)
ENDIF

m_test% = MAX(INSTR(Base$, "0", X_test%), INSTR(Base$, "1", X_test%), INSTR(Base$, "2", X_test%), INSTR(Base$, "3", X_test%), INSTR(Base$, "4", X_test%), INSTR(Base$, "5", X_test%), INSTR(Base$, "6", X_test%), INSTR(Base$, "7", X_test%), INSTR(Base$, "8", X_test%), INSTR(Base$, "9", X_test%))

IF m_test% = 0 AND B_test% = 0 THEN
B$ = ""
m = 0
ELSE IF m_test% = 0 AND B_test% <> 0 THEN
B$ = MID$(Base$, B_test%, Length%-B_test%+1)
m = 1
ELSE IF m_test% <> 0 and B_test% <> 0 THEN
B$ = MID$(Base$, B_test%, m_test%-B_test%)
m$ = MID$(Base$, m_test%, Length%-m_test%+1)
m = VAL(m$)
ENDIF

Calculation:

IF n <= 0 THEN
PRINT "Coefficient n must be positive."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Bayless-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Coefficient n must be positive."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF
IF t < 1 THEN
PRINT "At least one site in the species must be protonizable."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Bayless-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "At least one site in the species must be protonizable."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

DIM Atoms$(300)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.dat"
FOR I% = 0 TO 299
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
IF A$ = Element$ THEN
p = p_value
g = g_value
ENDIF
IF Element$ = "" THEN
GOTO FinishB
ENDIF
NEXT I%
FinishB:
CLOSE #4

OPEN "I", #3, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.par"
INPUT #3, a, b, c, d, e, f
CLOSE #3

IF Delim0% <> 0 THEN
h = n
ELSE IF Delim0% = 0 THEN
h = 0
ENDIF

IF g = 0 OR p = 0 THEN
PRINT "Atom A not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Bayless-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Atom A not found."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless-Ricci.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

log_k = a+b*g+c*g*h+(d*qA+e*t*qA+f*qX)/(g*p*p)

OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.out"
PRINT #1, "INPUT"
PRINT #1, "================================================================================"
PRINT #1, "Base: ";
IF h > 0 THEN
PRINT #1, "H";
ENDIF
IF h > 1 THEN
PRINT #1, h;
ENDIF
PRINT #1, X$;
IF A$ <> X$ AND B$ <> X$ AND A$ <> B$ THEN
PRINT #1, A$;
IF n > 1 THEN
PRINT #1, n;
ENDIF
IF B$ <> "" THEN
PRINT #1, B$;
ENDIF
IF m > 1 THEN
PRINT #1, m;
ENDIF
ELSE IF A$ = X$ AND B$ <> X$ AND A$ <> B$ THEN
PRINT #1, n+1;
IF B$ <> "" THEN
PRINT #1, B$;
ENDIF
IF m > 1 THEN
PRINT #1, m;
ENDIF
ELSE IF A$ <> X$ AND B$ = X$ AND A$ <> B$ THEN
PRINT #1, m+1;
PRINT #1, A$;
IF n > 1 THEN
PRINT #1, n;
ENDIF
ELSE IF A$ = B$ AND A$ <> X$ AND B$ <> X$ THEN
PRINT #1, A$;
PRINT #1, m+n;
ELSE IF A$ = X$ AND B$ = X$ AND A$ = B$ THEN
PRINT #1, m+n+1;
ENDIF

IF z = 0 THEN
PRINT #1, ""
ELSE IF z = 1 THEN
PRINT #, "+"
ELSE IF z > 1 THEN
PRINT #1, "+";
PRINT #1, z
ELSE IF z = -1 THEN
PRINT #1, "-"
ELSE IF z < -1 THEN
PRINT #1, "-";
PRINT #1, -z
ENDIF
PRINT #1, "Atom A group and period: "; g; ", "; p
PRINT #1, "Formal charge of atom A: "; qA
PRINT #1, "Formal charge of atom X: "; qX
PRINT #1, "Number of atoms A and B capable of being protonized: "; t
PRINT #1, "Bayless-Ricci equation constants: "; a; ", "; b; ", "; c; ", "; d; ", "; e; " and "; f
CLOSE #1

IF ExistInput <> -1 THEN
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "For viewing the output protocol, please open the file JH-Bayless-Ricci.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Bayless-Ricci.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"

IF h > 0 THEN
PRINT #1, "H";
ENDIF
IF h > 1 THEN
PRINT #1, h;
ENDIF
PRINT #1, X$;
IF A$ <> X$ AND B$ <> X$ AND A$ <> B$ THEN
PRINT #1, A$;
IF n > 1 THEN
PRINT #1, n;
ENDIF
IF B$ <> "" THEN
PRINT #1, B$;
ENDIF
IF m > 1 THEN
PRINT #1, m;
ENDIF
ELSE IF A$ = X$ AND B$ <> X$ AND A$ <> B$ THEN
PRINT #1, n+1;
IF B$ <> "" THEN
PRINT #1, B$;
ENDIF
IF m > 1 THEN
PRINT #1, m;
ENDIF
ELSE IF A$ <> X$ AND B$ = X$ AND A$ <> B$ THEN
PRINT #1, m+1;
PRINT #1, A$;
IF n > 1 THEN
PRINT #1, n;
ENDIF
ELSE IF A$ = B$ AND A$ <> X$ AND B$ <> X$ THEN
PRINT #1, A$;
PRINT #1, m+n;
ELSE IF A$ = X$ AND B$ = X$ AND A$ = B$ THEN
PRINT #1, m+n+1;
ENDIF

IF z = 0 THEN
PRINT #1, "";
ELSE IF z = 1 THEN
PRINT #, "+";
ELSE IF z > 1 THEN
PRINT #1, "+";
PRINT #1, z;
ELSE IF z = -1 THEN
PRINT #1, "-";
ELSE IF z < -1 THEN
PRINT #1, "-";
PRINT #1, -z;
ENDIF

PRINT #1, " + H+ = ";

PRINT #1, "H";
IF h+1 > 1 THEN
PRINT #1, h+1;
ENDIF
PRINT #1, X$;
IF A$ <> X$ AND B$ <> X$ AND A$ <> B$ THEN
PRINT #1, A$;
IF n > 1 THEN
PRINT #1, n;
ENDIF
IF B$ <> "" THEN
PRINT #1, B$;
ENDIF
IF m > 1 THEN
PRINT #1, m;
ENDIF
ELSE IF A$ = X$ AND B$ <> X$ AND A$ <> B$ THEN
PRINT #1, n+1;
IF B$ <> "" THEN
PRINT #1, B$;
ENDIF
IF m > 1 THEN
PRINT #1, m;
ENDIF
ELSE IF A$ <> X$ AND B$ = X$ AND A$ <> B$ THEN
PRINT #1, m+1;
PRINT #1, A$;
IF n > 1 THEN
PRINT #1, n;
ENDIF
ELSE IF A$ = B$ AND A$ <> X$ AND B$ <> X$ THEN
PRINT #1, A$;
PRINT #1, m+n;
ELSE IF A$ = X$ AND B$ = X$ AND A$ = B$ THEN
PRINT #1, m+n+1;
ENDIF

IF z+1 = 0 THEN
PRINT #1, ""
ELSE IF z+1 = 1 THEN
PRINT #, "+"
ELSE IF z+1 > 1 THEN
PRINT #1, "+";
PRINT #1, z+1
ELSE IF z+1 = -1 THEN
PRINT #1, "-"
ELSE IF z+1 < -1 THEN
PRINT #1, "-";
PRINT #1, -(z+1)
ENDIF

PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless-Ricci.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

ELSE

OPEN "A", #1, "/data/data/cz.jh.suite/files/Bayless-Ricci/JH-Bayless-Ricci.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"

IF h > 0 THEN
PRINT #1, "H";
ENDIF
IF h > 1 THEN
PRINT #1, h;
ENDIF
PRINT #1, X$;
IF A$ <> X$ AND B$ <> X$ AND A$ <> B$ THEN
PRINT #1, A$;
IF n > 1 THEN
PRINT #1, n;
ENDIF
IF B$ <> "" THEN
PRINT #1, B$;
ENDIF
IF m > 1 THEN
PRINT #1, m;
ENDIF
ELSE IF A$ = X$ AND B$ <> X$ AND A$ <> B$ THEN
PRINT #1, n+1;
IF B$ <> "" THEN
PRINT #1, B$;
ENDIF
IF m > 1 THEN
PRINT #1, m;
ENDIF
ELSE IF A$ <> X$ AND B$ = X$ AND A$ <> B$ THEN
PRINT #1, m+1;
PRINT #1, A$;
IF n > 1 THEN
PRINT #1, n;
ENDIF
ELSE IF A$ = B$ AND A$ <> X$ AND B$ <> X$ THEN
PRINT #1, A$;
PRINT #1, m+n;
ELSE IF A$ = X$ AND B$ = X$ AND A$ = B$ THEN
PRINT #1, m+n+1;
ENDIF

IF z = 0 THEN
PRINT #1, "";
ELSE IF z = 1 THEN
PRINT #, "+";
ELSE IF z > 1 THEN
PRINT #1, "+";
PRINT #1, z;
ELSE IF z = -1 THEN
PRINT #1, "-";
ELSE IF z < -1 THEN
PRINT #1, "-";
PRINT #1, -z;
ENDIF

PRINT #1, " + H+ = ";

PRINT #1, "H";
IF h+1 > 1 THEN
PRINT #1, h+1;
ENDIF
PRINT #1, X$;
IF A$ <> X$ AND B$ <> X$ AND A$ <> B$ THEN
PRINT #1, A$;
IF n > 1 THEN
PRINT #1, n;
ENDIF
IF B$ <> "" THEN
PRINT #1, B$;
ENDIF
IF m > 1 THEN
PRINT #1, m;
ENDIF
ELSE IF A$ = X$ AND B$ <> X$ AND A$ <> B$ THEN
PRINT #1, n+1;
IF B$ <> "" THEN
PRINT #1, B$;
ENDIF
IF m > 1 THEN
PRINT #1, m;
ENDIF
ELSE IF A$ <> X$ AND B$ = X$ AND A$ <> B$ THEN
PRINT #1, m+1;
PRINT #1, A$;
IF n > 1 THEN
PRINT #1, n;
ENDIF
ELSE IF A$ = B$ AND A$ <> X$ AND B$ <> X$ THEN
PRINT #1, A$;
PRINT #1, m+n;
ELSE IF A$ = X$ AND B$ = X$ AND A$ = B$ THEN
PRINT #1, m+n+1;
ENDIF

IF z+1 = 0 THEN
PRINT #1, ""
ELSE IF z+1 = 1 THEN
PRINT #, "+"
ELSE IF z+1 > 1 THEN
PRINT #1, "+";
PRINT #1, z+1
ELSE IF z+1 = -1 THEN
PRINT #1, "-"
ELSE IF z+1 < -1 THEN
PRINT #1, "-";
PRINT #1, -(z+1)
ENDIF

PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Philip L. Bayless, J. Chem. Ed. 60 (1983) 546-547."
PRINT #1, "[2] John E. Ricci, J. Am. Chem. Soc. 70(1) (1948) 109-113."
PRINT #1, "[3] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Bayless-Ricci.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

EXIT

ENDIF

END
