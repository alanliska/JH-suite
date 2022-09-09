CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Yingst/JH-Yingst.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "======================= * Procedure YINGST-MCDANIEL * =========================="
PRINT #1, "Version 1.02 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Yingst/JH-Yingst.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Yingst/JH-Yingst.inp"
INPUT #2, A$, B$
CLOSE # 2
OPEN "A", #1, "/data/data/cz.jh.suite/files/Yingst/JH-Yingst.out"
PRINT #1, "INPUT DATA"
PRINT #1, "================================================================================"
PRINT #1, "Lewis acid: ", A$,
PRINT #1 ,
PRINT #1, "Lewis base: ", B$
CLOSE #1
ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "======================= * Procedure YINGST-MCDANIEL * =========================="
PRINT "Version 1.02"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "Available metal ions: "
DIM Acids$(100)
OPEN "I",#3,"/data/data/cz.jh.suite/files/Yingst/Acids_JH-Yingst.dat"
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
PRINT ""
PRINT "Input the metal ion: "
INPUT A$
PRINT "Available ligands: "
DIM Bases$(100)
OPEN "I",#4,"/data/data/cz.jh.suite/files/Yingst/Bases_JH-Yingst.dat"
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

DIM Acids$(100)
OPEN "I",#3,"/data/data/cz.jh.suite/files/Yingst/Acids_JH-Yingst.dat"
FOR I% = 0 TO 99
INPUT #3, Data_blockA$
Acids$(I%) = Data_blockA$
M = LEN(Data_blockA$)
Acid$ = LEFTOF$(Data_blockA$, ";")
PA1 = INSTR(Data_blockA$, ";")
PA2 = INSTR(Data_blockA$, ";", PA1 + 1)
Block_alpha$ = MID$(Data_blockA$, PA1 + 1, PA2 - PA1 - 1)
alpha_val = VAL(Block_alpha$)
Block_beta$ = MID$(Data_blockA$, PA2 + 1, M)
beta_val = VAL(Block_beta$)
IF Acid$ = A$ THEN
alpha = alpha_val
beta = beta_val
ENDIF
IF Acid$ = A$ THEN
GOTO Finish_Acids
ENDIF
NEXT I%
CLOSE #3

Finish_Acids:

IF ExistInput <> -1 AND (alpha = 0 AND beta = 0) AND Acid$ <> "H+" THEN
PRINT "Incorrect metal ion, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Austin Yingst, Darl H. McDaniel, Inorganic Chemistry 6(5) (1967) 1067."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Yingst.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF alpha = 0 AND beta = 0 AND Acid$ <> "H+" THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Yingst/JH-Yingst.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect metal ion, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Austin Yingst, Darl H. McDaniel, Inorganic Chemistry 6(5) (1967) 1067."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Yingst.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Yingst/JH-Yingst.out"
PRINT #1, "Lewis acid parameters: "
PRINT #1, "alpha = "; alpha USING "##.##"
PRINT #1, "beta = "; beta USING "##.##"
CLOSE #1

DIM Bases$(100)
OPEN "I",#4,"/data/data/cz.jh.suite/files/Yingst/Bases_JH-Yingst.dat"
FOR I% = 0 TO 99
INPUT #4, Data_blockB$
Bases$(I%) = Data_blockB$
N = LEN(Data_blockB$)
Base$ = LEFTOF$(Data_blockB$, ";")
PB1 = INSTR(Data_blockB$, ";")
PB2 = INSTR(Data_blockB$, ";", PB1 + 1)
Block_En$ = MID$(Data_blockB$, PB1 + 1, PB2 - PB1 - 1)
En_val = VAL(Block_En$)
Block_H$ = MID$(Data_blockB$, PB2 + 1, N)
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

IF ExistInput <> -1 AND (En = 0 AND H = 0) AND Base$ <> "H2O" THEN
PRINT "Incorrect ligand, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Austin Yingst, Darl H. McDaniel, Inorganic Chemistry 6(5) (1967) 1067."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Yingst.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF En = 0 AND H = 0 AND Base$ <> "H2O" THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Yingst/JH-Yingst.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect ligand, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Austin Yingst, Darl H. McDaniel, Inorganic Chemistry 6(5) (1967) 1067."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Yingst.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Yingst/JH-Yingst.out"
PRINT #1, "Lewis base parameters: "
PRINT #1, "En = "; En USING "##.##"
PRINT #1, "H = "; H USING "##.##"
CLOSE #1

Logarithm = alpha * En + beta * H
Argument = 10^Logarithm
k = Argument - 1.74
log_k = LOG(k)

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

Charge$ = STR$(Z)

IF Z = 0 THEN
Complex$ = Cation$ + Anion$
ELSE IF Z > 0 THEN
Complex$ = Cation$ + Anion$ + "+" + Charge$
ELSE IF Z < 0 THEN
Complex$ = Cation$ + Anion$ + Charge$
ENDIF

LenComplex = LEN(Complex$)

IF RIGHT$(Complex$,1) = "1" THEN
Complex$ = LEFT$(Complex$,LenComplex - 1)
ELSE
Complex$ = Complex$
ENDIF

IF ExistInput <> -1 THEN
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "For viewing the output protocol, please open the file JH-Yingst.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Austin Yingst, Darl H. McDaniel, Inorganic Chemistry 6(5) (1967) 1067."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Yingst.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Yingst/JH-Yingst.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Stability constant, log K1 = "; log_k USING "###.##"
PRINT #1, " "
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
Equation$ = A$ + " + " + B$ + " = " + Complex$
PRINT #1, Equation$
PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Austin Yingst, Darl H. McDaniel, Inorganic Chemistry 6(5) (1967) 1067."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Yingst.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
ELSE
OPEN "A", #1, "/data/data/cz.jh.suite/files/Yingst/JH-Yingst.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Stability constant, log K1 = "; log_k USING "###.##"
PRINT #1, " "
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
Equation$ = A$ + " + " + B$ + " = " + Complex$
PRINT #1, Equation$
PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Austin Yingst, Darl H. McDaniel, Inorganic Chemistry 6(5) (1967) 1067."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Yingst.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

END
