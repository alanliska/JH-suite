CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Yamada/JH-Yamada.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "============================ * Procedure YAMADA * =============================="
PRINT #1, "Version 1.00 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Yamada/JH-Yamada.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Yamada/JH-Yamada.inp"
INPUT #2, A$, B$
CLOSE # 2
OPEN "A", #1, "/data/data/cz.jh.suite/files/Yamada/JH-Yamada.out"
PRINT #1, "INPUT DATA"
PRINT #1, "================================================================================"
PRINT #1, "Lewis acid: ", A$,
PRINT #1 ,
PRINT #1, "Lewis base: ", B$
CLOSE #1
ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "============================ * Procedure YAMADA * =============================="
PRINT "Version 1.00"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "Available metal ions: "
DIM Acids$(100)
OPEN "I",#3,"/data/data/cz.jh.suite/files/Yamada/Acids_JH-Yamada.dat"
FOR I% = 0 TO 99
INPUT #3, Data_blockA$
Acids$(I%) = Data_blockA$
Acid$ = LEFTOF$(Data_blockA$, ";")
PRINT Acid$ + " ",
IF Acid$ = "" THEN
GOTO FinishA
ENDIF
NEXT I%
FinishA:
CLOSE #3
PRINT " "
PRINT "Input the metal ion: "
INPUT A$
CLOSE #3
PRINT "Available ligands: "
DIM Bases$(100)
OPEN "I",#4,"/data/data/cz.jh.suite/files/Yamada/Bases_JH-Yamada.dat"
FOR I% = 0 TO 99
INPUT #4, Data_blockB$
Bases$(I%) = Data_blockB$
Base$ = LEFTOF$(Data_blockB$, ";")
PRINT Base$ + " ",
IF Base$ = "" THEN
GOTO FinishB
ENDIF
NEXT I%
FinishB:
CLOSE #4
Print ""
PRINT "Input the ligand: "
INPUT B$
ENDIF

CheckAcids = 0

DIM Acids$(100)
OPEN "I",#3,"/data/data/cz.jh.suite/files/Yamada/Acids_JH-Yamada.dat"
FOR I% = 0 TO 99
INPUT #3, Data_blockA$
Acids$(I%) = Data_blockA$
M = LEN(Data_blockA$)
Acid$ = LEFTOF$(Data_blockA$, ";")
PA1 = INSTR(Data_blockA$, ";")
PA2 = INSTR(Data_blockA$, ";", PA1 + 1)
Block_alpha$ = MID$(Data_blockA$, PA1 + 1, PA2 - PA1 - 1)
alpha_val = VAL(Block_alpha$)
Block_beta$ = MID$(Data_blockA$, PA2 + 1, M-PA2+1)
beta_val = VAL(Block_beta$)
IF Acid$ = A$ THEN
alpha = alpha_val
beta = beta_val
CheckAcids = CheckAcids+1
ENDIF
IF Acid$ = A$ THEN
GOTO Finish_Acids
ENDIF
NEXT I%
CLOSE #3

Finish_Acids:

IF ExistInput <> -1 AND CheckAcids = 0 THEN
PRINT "Incorrect metal ion and/or coordination number, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Shinkichi Yamada, Motoharu Tanaka, J. Inorg. Nucl. Chem. 37(2) (1975)"
PRINT " 587-589."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Yamada.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF CheckAcids = 0 THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Yamada/JH-Yamada.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect metal ion and/or coordination number, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Shinkichi Yamada, Motoharu Tanaka, J. Inorg. Nucl. Chem. 37(2) (1975)"
PRINT #1, " 587-589."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Yamada.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Yamada/JH-Yamada.out"
PRINT #1, "Lewis acid parameters: "
PRINT #1, "alpha = "; alpha USING "##.##"
PRINT #1, "beta = "; beta USING "##.##"
CLOSE #1

DIM Bases$(100)
OPEN "I",#4,"/data/data/cz.jh.suite/files/Yamada/Bases_JH-Yamada.dat"
FOR I% = 0 TO 99
INPUT #4, Data_blockB$
Bases$(I%) = Data_blockB$
N = LEN(Data_blockB$)
Base$ = LEFTOF$(Data_blockB$, ";")
PB1 = INSTR(Data_blockB$, ";")
PB2 = INSTR(Data_blockB$, ";", PB1 + 1)
Block_En$ = MID$(Data_blockB$, PB1 + 1, PB2 - PB1 - 1)
En_val = VAL(Block_En$)
Block_H$ = MID$(Data_blockB$, PB2 + 1, N-PB2+1)
H_val = VAL(Block_H$)
IF Base$ = B$ THEN
En = En_val
H = H_val
ENDIF
IF Base$ = B$ THEN
GOTO Finish_Bases
ENDIF
NEXT I%
CLOSE #4

Finish_Bases:

IF ExistInput <> -1 AND En = 0 AND H = 0 AND Base$ <> "H2O" THEN
PRINT "Incorrect ligand, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Shinkichi Yamada, Motoharu Tanaka, J. Inorg. Nucl. Chem. 37(2) (1975)"
PRINT " 587-589."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Yamada.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF En = 0 AND H = 0 AND Base$ <> "H2O" THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Yamada/JH-Yamada.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect ligand, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Shinkichi Yamada, Motoharu Tanaka, J. Inorg. Nucl. Chem. 37(2) (1975)"
PRINT #1, " 587-589."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Yamada.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Yamada/JH-Yamada.out"
PRINT #1, "Lewis base parameters: "
PRINT #1, "En = "; En USING "##.##"
PRINT #1, "H = "; H USING "##.##"
CLOSE #1

log_k = alpha * En + beta * H - 1.74

LenA = LEN(A$)
SeekA1 = INSTR(A$,"+")
IF SeekA1 <> 0 THEN
SeekA = SeekA1
ELSE
SeekA = 0
ENDIF
CutA = SeekA - 1
Cation$ = LEFT$(A$,CutA)

LenB = LEN(B$)
SeekB2 = INSTR(B$,"-")
IF SeekB2 <> 0 THEN
SeekB = SeekB2
ELSE
SeekB = 0
ENDIF
IF SeekB < 1 THEN
CutB = LenB
ELSE
CutB = SeekB - 1
ENDIF
Anion$ = LEFT$(B$,CutB)

SignA = LenA - SeekA + 1
ChargeA$ = RIGHT$(A$,SignA)
IF ChargeA$ = "+" THEN
ZA = 1
ELSE
ZA = VAL(ChargeA$)
ENDIF

SignB = LenB - SeekB + 1
ChargeB$ = RIGHT$(B$,SignB)
IF ChargeB$ = "-" THEN
ZB = -1
ELSE
ZB = VAL(ChargeB$)
ENDIF

Z = ZA + ZB

IF ExistInput <> -1 THEN
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "For viewing the output protocol, please open the file JH-Yamada.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Shinkichi Yamada, Motoharu Tanaka, J. Inorg. Nucl. Chem. 37(2) (1975)"
PRINT " 587-589."
PRINT "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Yamada.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Yamada/JH-Yamada.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Stability constant, log K1 = "; log_k USING "###.##"; " (inner sphere complex)"
PRINT #1, ""
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #1, A$;
PRINT #1, " + ";
PRINT #1, B$;
PRINT #1, " = ";
PRINT #1, Cation$;
IF Z = 0 THEN
PRINT #1, Anion$
ELSE IF Z = 1
PRINT #1, Anion$ + "+"
ELSE IF Z > 1 THEN
PRINT #1, Anion$ + "+" + STR$(Z)
ELSE IF Z = -1 THEN
PRINT #1, Anion$ + "-"
ELSE IF Z < -1 THEN
PRINT #1, Anion$ + STR$(Z)
ENDIF
PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Shinkichi Yamada, Motoharu Tanaka, J. Inorg. Nucl. Chem. 37(2) (1975)"
PRINT #1, " 587-589."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Yamada.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
ELSE
OPEN "A", #1, "/data/data/cz.jh.suite/files/Yamada/JH-Yamada.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Stability constant, log K1 = "; log_k USING "###.##"; " (inner sphere complex)"
PRINT #1, ""
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #1, A$;
PRINT #1, " + ";
PRINT #1, B$;
PRINT #1, " = ";
PRINT #1, Cation$;
IF Z = 0 THEN
PRINT #1, Anion$
ELSE IF Z = 1
PRINT #1, Anion$ + "+"
ELSE IF Z > 1 THEN
PRINT #1, Anion$ + "+" + STR$(Z)
ELSE IF Z = -1 THEN
PRINT #1, Anion$ + "-"
ELSE IF Z < -1 THEN
PRINT #1, Anion$ + STR$(Z)
ENDIF
PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Shinkichi Yamada, Motoharu Tanaka, J. Inorg. Nucl. Chem. 37(2) (1975)"
PRINT #1, " 587-589."
PRINT #1, "[2] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Yamada.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

END
