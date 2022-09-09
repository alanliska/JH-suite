CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Hancock1/JH-Hancock1.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "===================== * Procedure HANCOCK-MARSICANO I * ========================"
PRINT #1, "Version 1.03 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Hancock1/JH-Hancock1.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Hancock1/JH-Hancock1.inp"
INPUT #2, A$, B$
CLOSE # 2
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock1/JH-Hancock1.out"
PRINT #1, "INPUT DATA"
PRINT #1, "================================================================================"
PRINT #1, "Lewis acid: ", A$,
PRINT #1 ,
PRINT #1, "Lewis base: ", B$
CLOSE #1
ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "===================== * Procedure HANCOCK-MARSICANO I * ========================"
PRINT "Version 1.03"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "Available metal ions: "
DIM Acids$(100)
OPEN "I",#3,"/data/data/cz.jh.suite/files/Hancock1/Acids_JH-Hancock1.dat"
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
PRINT "Input the metal ion: "
INPUT A$
PRINT "Available ligands: "
DIM Bases$(100)
OPEN "I",#4,"/data/data/cz.jh.suite/files/Hancock1/Bases_JH-Hancock1.dat"
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
OPEN "I",#3,"/data/data/cz.jh.suite/files/Hancock1/Acids_JH-Hancock1.dat"
FOR I% = 0 TO 99
INPUT #3, Data_blockA$
Acids$(I%) = Data_blockA$
M = LEN(Data_blockA$)
Acid$ = LEFTOF$(Data_blockA$, ";")
PA1 = INSTR(Data_blockA$, ";")
PA2 = INSTR(Data_blockA$, ";", PA1 + 1)
Block_EA$ = MID$(Data_blockA$, PA1 + 1, PA2 - PA1 - 1)
EA_val = VAL(Block_EA$)
Block_CA$ = MID$(Data_blockA$, PA2 + 1, M)
CA_val = VAL(Block_CA$)
IF Acid$ = A$ THEN
EA = EA_val
CA = CA_val
ENDIF
IF Acid$ = A$ THEN
GOTO Finish_Acids
ENDIF
NEXT I%
CLOSE #3

Finish_Acids:

IF ExistInput <> -1 AND (CA = 0 AND EA = 0) THEN
PRINT "Incorrect metal ion, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 17(3) (1978) 560"
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Hancock1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF CA = 0 AND EA = 0 THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock1/JH-Hancock1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect metal ion, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 17(3) (1978) 560"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock1/JH-Hancock1.out"
PRINT #1, "Lewis acid parameters: "
PRINT #1, "EA = "; EA USING "##.##"
PRINT #1, "CA = "; CA USING "##.##"
CLOSE #1

DIM Bases$(100)
OPEN "I",#4,"/data/data/cz.jh.suite/files/Hancock1/Bases_JH-Hancock1.dat"
FOR I% = 0 TO 99
INPUT #4, Data_blockB$
Bases$(I%) = Data_blockB$
N = LEN(Data_blockB$)
Base$ = LEFTOF$(Data_blockB$, ";")
PB1 = INSTR(Data_blockB$, ";")
PB2 = INSTR(Data_blockB$, ";", PB1 + 1)
Block_EB$ = MID$(Data_blockB$, PB1 + 1, PB2 - PB1 - 1)
EB_val = VAL(Block_EB$)
Block_CB$ = MID$(Data_blockB$, PB2 + 1, N)
CB_val = VAL(Block_CB$)
IF Base$ = B$ THEN
EB = EB_val
CB = CB_val
ENDIF
IF Base$ = B$ THEN
GOTO Finish_Bases
ENDIF
NEXT I%
CLOSE #4

Finish_Bases:

IF ExistInput <> -1 AND (CB = 0 AND EB = 0) THEN
PRINT "Incorrect ligand, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 17(3) (1978) 560"
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Hancock1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF CB = 0 AND EB = 0 THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock1/JH-Hancock1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect ligand, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 17(3) (1978) 560"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock1/JH-Hancock1.out"
PRINT #1, "Lewis base parameters: "
PRINT #1, "EB = "; EB USING "##.##"
PRINT #1, "CB = "; CB USING "##.##"
CLOSE #1

log_k = CA * CB + EA * EB

IF CA <> 0 THEN
Ionicity = EA / CA
ELSE
Ionicity = 0
ENDIF

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
PRINT "For viewing the output protocol, please open the file JH-Hancock1.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 17(3) (1978) 560"
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Hancock1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock1/JH-Hancock1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Stability constant, log K1 = "; log_k USING "###.##"
PRINT #1, "Metal-ligand bond ionicity, I = "; Ionicity USING "#.##"
PRINT #1, " "
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
Equation$ = A$ + " + " + B$ + " = " + Complex$
PRINT #1, Equation$
PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 17(3) (1978) 560"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
ELSE
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock1/JH-Hancock1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Stability constant, log K1 = "; log_k USING "###.##"
PRINT #1, "Metal-ligand bond ionicity, I = "; Ionicity USING "#.##"
PRINT #1, " "
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
Equation$ = A$ + " + " + B$ + " = " + Complex$
PRINT #1, Equation$
PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 17(3) (1978) 560"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

END
