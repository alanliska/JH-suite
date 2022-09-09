CLS

OPEN "O", #4, "/data/data/cz.jh.suite/files/Marcus/JH-Marcus.out"
PRINT #4, "============================ * JH PROGRAM SUITE * =============================="
PRINT #4, "============================ * Procedure MARCUS * =============================="
PRINT #4, "Version 1.00 for Android"
#PRINT #4, "Compiled 2018-02-17 using X11-BASIC"
PRINT #4, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #4, "================================================================================"
CLOSE #4

OPEN "I", #1, "/data/data/cz.jh.suite/files/Marcus/JH-Marcus.inp"
INPUT #1, Text$
CLOSE #1

Del1% = INSTR(Text$, ";")
Del2% = INSTR(Text$, ";", Del1%+1)
Del3% = INSTR(Text$, ";", Del2%+1)
Del4% = INSTR(Text$, ";", Del3%+1)
Del5% = INSTR(Text$, ";", Del4%+1)
Del6% = INSTR(Text$, ";", Del5%+1)
Del7% = INSTR(Text$, ";", Del6%+1)
Del8% = INSTR(Text$, ";", Del7%+1)
Del9% = INSTR(Text$, ";", Del8%+1)
Del10% = INSTR(Text$, ";", Del9%+1)
Del11% = INSTR(Text$, ";", Del10%+1)
Del12% = INSTR(Text$, ";", Del11%+1)
Del13% = INSTR(Text$, ";", Del12%+1)

TextLen% = LEN(Text$)

A$ = MID$(Text$, 1, Del1%-1)
ca$ = MID$(Text$, Del1%+1, Del2%-Del1%-1)
ca = VAL(ca$)
B$ = MID$(Text$, Del2%+1, Del3%-Del2%-1)
cb$ = MID$(Text$, Del3%+1, Del4%-Del3%-1)
cb = VAL(cb$)
K$ = MID$(Text$, Del4%+1, Del5%-Del4%-1)
ck$ = MID$(Text$, Del5%+1, Del6%-Del5%-1)
ck = VAL(ck$)
C$ = MID$(Text$, Del6%+1, Del7%-Del6%-1)
cc$ = MID$(Text$, Del7%+1, Del8%-Del7%-1)
cc = VAL(cc$)
D$ = MID$(Text$, Del8%+1, Del9%-Del8%-1)
cd$ = MID$(Text$, Del9%+1, Del10%-Del9%-1)
cd = VAL(cd$)
L$ = MID$(Text$, Del10%+1, Del11%-Del10%-1)
cl$ = MID$(Text$, Del11%+1, Del12%-Del11%-1)
cl = VAL(cl$)
n$ = MID$(Text$, Del12%+1, Del13%-Del12%-1)
n = VAL(n$)
Title$ = MID$(Text$, Del13%+1, TextLen%-Del13%)

OPEN "I", #2, "/data/data/cz.jh.suite/files/Marcus/JH-Marcus.par"
INPUT #2, Z
CLOSE #2

DIM TabulatedData$(200)

OPEN "I", #3, "/data/data/cz.jh.suite/files/Marcus/JH-Marcus.dat"

FOR I% = 0 TO 199

INPUT #3, LineText$
TabulatedData$(I%) = LineText$
DataLen% = LEN(LineText$)
Del14% = INSTR(LineText$, ";")
Del15% = INSTR(LineText$, ";", Del14%+1)
Del16% = INSTR(LineText$, ";", Del15%+1)

Ox$ = MID$(LineText$, 1, Del14%-1)
Red$ = MID$(LineText$, Del14%+1, Del15%-Del14%-1)
log_k11$ = MID$(LineText$, Del15%+1, Del16%-Del15%-1)
log_k11 = VAL(log_k11$)
E0$ = MID$(LineText$, Del16%+1, DataLen%-Del16%)
E0 = VAL(E0$)

IF Ox$ = A$ THEN
k11 = 10^log_k11
E1 = E0
Oxid1$ = Ox$
ENDIF

IF Red$ = B$ THEN
k22 = 10^log_k11
E2 = E0
Reduc1$ = Red$
ENDIF

EXIT IF Ox$ = ""
NEXT I%

CLOSE #3

IF k11 = 0 OR k22 = 0 THEN
PRINT "Missing data."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "[2] Ralph G. Wilkins: Kinetics and Mechanism of Reactions of Transition Metal"
PRINT " Complexes, 2nd Edition. Wiley-VCH, Weinheim 2002." 
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Marcus.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #4, "/data/data/cz.jh.suite/files/Marcus/JH-Marcus.out"
PRINT #4, "RESULTS"
PRINT #4, "================================================================================"
PRINT #4, "Missing data."
PRINT #4, "================================================================================"
PRINT #4, "REFERENCES:"
PRINT #4, "[1] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #4, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #4, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #4, " Sydney, Tokyo, Toronto 1988."
PRINT #4, "[2] Ralph G. Wilkins: Kinetics and Mechanism of Reactions of Transition Metal"
PRINT #4, " Complexes, 2nd Edition. Wiley-VCH, Weinheim 2002." 
PRINT #4, "ACKNOWLEDGEMENTS"
PRINT #4, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #4, "(Interpreter & Compiler)"
PRINT #4, "================================================================================"
PRINT #4, "Execution of JH-Marcus.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #4
EXIT
ENDIF

E12 = E1-E2
log_K = 16.9*n*E12
K = 10^log_K
log_f = ((log_K)^2)/(4*LOG10(k11*k22/Z^2))
f = 10^log_f
k12 = (k11*k22*K*f)^0.5
k21 = k12/K

IF INSTR(A$, "+") > 0 THEN
SignA$ = MID$(A$, INSTR(A$, "+"), LEN(A$)-INSTR(A$, "+")+1)
ELSE IF INSTR(A$, "-") > 0 THEN
SignA$ = MID$(A$, INSTR(A$, "-"), LEN(A$)-INSTR(A$, "-")+1)
ELSE
SignA$ = ""
ENDIF

IF INSTR(B$, "+") > 0 THEN
SignB$ = MID$(B$, INSTR(B$, "+"), LEN(B$)-INSTR(B$, "+")+1)
ELSE IF INSTR(B$, "-") > 0 THEN
SignB$ = MID$(B$, INSTR(B$, "-"), LEN(B$)-INSTR(B$, "-")+1)
ELSE
SignB$ = ""
ENDIF

IF INSTR(K$, "+") > 0 THEN
SignK$ = MID$(K$, INSTR(K$, "+"), LEN(K$)-INSTR(K$, "+")+1)
ELSE IF INSTR(K$, "-") > 0 THEN
SignK$ = MID$(K$, INSTR(K$, "-"), LEN(K$)-INSTR(K$, "-")+1)
ELSE
SignK$ = ""
ENDIF

IF INSTR(C$, "+") > 0 THEN
SignC$ = MID$(C$, INSTR(C$, "+"), LEN(C$)-INSTR(C$, "+")+1)
ELSE IF INSTR(C$, "-") > 0 THEN
SignC$ = MID$(C$, INSTR(C$, "-"), LEN(C$)-INSTR(C$, "-")+1)
ELSE
SignC$ = ""
ENDIF

IF INSTR(D$, "+") > 0 THEN
SignD$ = MID$(D$, INSTR(D$, "+"), LEN(D$)-INSTR(D$, "+")+1)
ELSE IF INSTR(D$, "-") > 0 THEN
SignD$ = MID$(D$, INSTR(D$, "-"), LEN(D$)-INSTR(D$, "-")+1)
ELSE
SignD$ = ""
ENDIF

IF INSTR(L$, "+") > 0 THEN
SignL$ = MID$(L$, INSTR(L$, "+"), LEN(L$)-INSTR(L$, "+")+1)
ELSE IF INSTR(L$, "-") > 0 THEN
SignL$ = MID$(L$, INSTR(L$, "-"), LEN(L$)-INSTR(L$, "-")+1)
ELSE IF (INSTR(L$, "+") = 0 AND INSTR(L$, "-") = 0) THEN
SignL$ = ""
ENDIF

IF SignA$ = "+" THEN
SignA = 1
ELSE IF SignA$ = "-" THEN
SignA = -1
ELSE
SignA = VAL(SignA$)
ENDIF

IF SignB$ = "+" THEN
SignB = 1
ELSE IF SignB$ = "-" THEN
SignB = -1
ELSE
SignB = VAL(SignB$)
ENDIF

IF SignC$ = "+" THEN
SignC = 1
ELSE IF SignC$ = "-" THEN
SignC = -1
ELSE
SignC = VAL(SignC$)
ENDIF

IF SignD$ = "+" THEN
SignD = 1
ELSE IF SignD$ = "-" THEN
SignD = -1
ELSE
SignD = VAL(SignD$)
ENDIF

IF SignK$ = "+" THEN
SignK = 1
ELSE IF SignK$ = "-" THEN
SignK = -1
ELSE
SignK = VAL(SignK$)
ENDIF

IF SignL$ = "+" THEN
SignL = 1
ELSE IF SignL$ = "-" THEN
SignL = -1
ELSE
SignL = VAL(SignL$)
ENDIF

IF SignA * ca + SignB * cb - SignC * cc - SignD * cd + SignK * ck - SignL * cl <> 0 THEN
PRINT "Equation is not charge balanced."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "[2] Ralph G. Wilkins: Kinetics and Mechanism of Reactions of Transition Metal"
PRINT " Complexes, 2nd Edition. Wiley-VCH, Weinheim 2002." 
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Marcus.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #4, "/data/data/cz.jh.suite/files/Marcus/JH-Marcus.out"
PRINT #4, "RESULTS"
PRINT #4, "================================================================================"
PRINT #4, "Equation is not charge balanced."
PRINT #4, "================================================================================"
PRINT #4, "REFERENCES:"
PRINT #4, "[1] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #4, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #4, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #4, " Sydney, Tokyo, Toronto 1988."
PRINT #4, "[2] Ralph G. Wilkins: Kinetics and Mechanism of Reactions of Transition Metal"
PRINT #4, " Complexes, 2nd Edition. Wiley-VCH, Weinheim 2002." 
PRINT #4, "ACKNOWLEDGEMENTS"
PRINT #4, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #4, "(Interpreter & Compiler)"
PRINT #4, "================================================================================"
PRINT #4, "Execution of JH-Marcus.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #4
EXIT
ENDIF

OPEN "A", #4, "/data/data/cz.jh.suite/files/Marcus/JH-Marcus.out"

PRINT #4, "INPUT"
PRINT #4, "================================================================================"
PRINT #4, "Oxidation agent: "; Oxid1$
PRINT #4, "Self electron exchange rate constant, log k11: "; LOG10(k11) USING "###.##"
PRINT #4, "Redox potential, E�: "; E1 USING "###.##"; " V"
PRINT #4, ""
PRINT #4, "Reduction agent: "; Reduc1$
PRINT #4, "Self electron exchange rate constant, log k22: "; LOG10(k22) USING "###.##"
PRINT #4, "Redox potential, E�: "; E2 USING "###.##"; " V"
PRINT #4, ""
PRINT #4, "Frequency factor, Z: "; Z/1e11 USING "###.##"; "e11"
PRINT #4, "Transmission coefficient, f: "; f USING "###.##"
PRINT #4, "================================================================================"
PRINT #4, "RESULTS"
PRINT #4, "================================================================================"
PRINT #4, "Forward rate constant, log k12: "; LOG10(k12) USING "###.##"; " (bimolecular)"
PRINT #4, "Backward rate constant, log k21: "; LOG10(k21) USING "###.##"; " (bimolecular)"
PRINT #4, "Equilibrium constant, log K: "; log_K USING "###.##"
PRINT #4, ""
PRINT #4, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #4, ""
PRINT #4, "RATES"
PRINT #4, Title$
PRINT #4, "-start"
PRINT #4, "10 if (MOL("+CHR$(34)+"["+A$+"]"+SignA$+CHR$(34)+") <= 1e-15) then goto 200"
PRINT #4, "20 if (MOL("+CHR$(34)+"["+B$+"]"+SignB$+CHR$(34)+") <= 1e-15) then goto 200"
IF K$ <> "0" THEN
PRINT #4, "30 if (MOL("+CHR$(34)+"["+K$+"]"+SignK$+CHR$(34)+") <= 1e-15) then goto 200"
ENDIF
PRINT #4, "100 moles = "+STR$(k12)+" * MOL("+CHR$(34)+"["+A$+"]"+SignA$+CHR$(34)+") * MOL("+CHR$(34)+"["+B$+"]"+SignB$+CHR$(34)+")"
PRINT #4, "200 SAVE moles"
PRINT #4, "-end"
PRINT #4, ""
PRINT #4, "KINETICS"
PRINT #4, Title$
PRINT #4, "-formula ["+A$+"]"+SignA$+" "+STR$(-ca)+" ["+B$+"]"+SignB$+" "+STR$(-cb);
IF ck <> 0 THEN
PRINT #4, " ["+K$+"]"+SignK$+" "+STR$(-ck);
ENDIF
IF cl <> 0 THEN
PRINT #4, " ["+C$+"]"+SignC$+" "+STR$(cc)+" ["+D$+"]"+SignD$+" "+STR$(cd);
PRINT #4, " ["+L$+"]"+SignL$+" "+STR$(cl)
ELSE
PRINT #4, " ["+C$+"]"+SignC$+" "+STR$(cc)+" ["+D$+"]"+SignD$+" "+STR$(cd)
ENDIF
PRINT #4, "================================================================================"
PRINT #4, "REFERENCES:"
PRINT #4, "[1] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #4, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #4, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #4, " Sydney, Tokyo, Toronto 1988."
PRINT #4, "[2] Ralph G. Wilkins: Kinetics and Mechanism of Reactions of Transition Metal"
PRINT #4, " Complexes, 2nd Edition. Wiley-VCH, Weinheim 2002." 
PRINT #4, "ACKNOWLEDGEMENTS"
PRINT #4, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #4, "(Interpreter & Compiler)"
PRINT #4, "================================================================================"
PRINT #4, "Execution of JH-Marcus.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #4

EXIT

END
