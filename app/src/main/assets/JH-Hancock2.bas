CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "===================== * Procedure HANCOCK-MARSICANO II * ======================="
PRINT #1, "Version 1.01 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1

ExistInput = EXIST("/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.inp")
IF ExistInput = -1 THEN
 OPEN "I", #2, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.inp"
 INPUT #2, A$, B$, Carbox%, Amino%
 CLOSE # 2
 OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
 PRINT #1, "INPUT DATA"
 PRINT #1, "================================================================================"
 PRINT #1, "Lewis acid: ", A$,
 PRINT #1 ,
 IF (B$ = "L" AND Carbox% = 0) THEN
  PRINT #1, "Lewis base: Polyamine, H(NHCH2CH2)"; Amino% - 1; "NH2"
 ELSE IF (B$ = "L" AND Carbox% <> 0) THEN
  PRINT #1, "Lewis base: Polyaminocarboxylate, charge =  "; - Carbox%
 ELSE IF B$ <> "L" THEN
  PRINT #1, "Lewis base: ", B$
 ENDIF
 CLOSE #1
ELSE
 PRINT "============================ * JH PROGRAM SUITE * =============================="
 PRINT "===================== * Procedure HANCOCK-MARSICANO II * ======================="
 PRINT "Version 1.01"
 #PRINT "Compiled 2018-02-17 using X11-BASIC"
 PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
 PRINT "================================================================================"
 PRINT "Available metal ions: "
 DIM Acids$(100)
 OPEN "I",#3,"/data/data/cz.jh.suite/files/Hancock2/Acids_JH-Hancock2.dat"
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
 OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
 PRINT #1, "INPUT DATA"
 PRINT #1, "================================================================================"
 PRINT #1, "Lewis acid: ", A$,
 PRINT #1 ,
 CLOSE #1
 PRINT "Would you like to consider polyamine as the ligand? (Y/N)"
 INPUT Ans_I$
 IF Ans_I$ = "Y" THEN
  B$ = "L"
  Carbox% = 0
  PRINT "Enter the coefficient n in the formula H(NHCH2CH2)n-1NH2"
  INPUT Amino%
  OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
  PRINT #1, "Lewis base: Polyamine, H(NHCH2CH2)"; Amino% - 1; "NH2"
  CLOSE #1
  GOTO Polyamine
 ELSE IF Ans_I$ = "N" THEN
  PRINT "Would you like to consider polyaminocarboxylate as the ligand? (Y/N)"
  INPUT Ans_II$ 
  IF Ans_II$ = "Y" THEN
   B$ = "L"
   PRINT "Enter the number of carboxylate groups: "
   INPUT Carbox%
   PRINT "Enter the number of amino groups: "
   INPUT Amino%
   OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
   PRINT #1, "Lewis base: Polyaminocarboxylate, charge =  "; - Carbox%
   CLOSE #1
   GOTO Polyamine
  ELSE IF Ans_II$ = "N" THEN
   PRINT "Available ligands: "
   DIM Bases$(100)
   OPEN "I",#4,"/data/data/cz.jh.suite/files/Hancock2/Bases_JH-Hancock2.dat"
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
   PRINT ""
   PRINT "Input the ligand: "
   INPUT B$
  ENDIF
 ENDIF
 OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
 PRINT #1, "Lewis base: ", B$
 PRINT #1 ,
 CLOSE #1
ENDIF

Polyamine:

DIM Acids$(100)
OPEN "I",#3,"/data/data/cz.jh.suite/files/Hancock2/Acids_JH-Hancock2.dat"
FOR I% = 0 TO 99
INPUT #3, Data_blockA$
Acids$(I%) = Data_blockA$
M = LEN(Data_blockA$)
Acid$ = LEFTOF$(Data_blockA$, ";")
PA1 = INSTR(Data_blockA$, ";")
PA2 = INSTR(Data_blockA$, ";", PA1 + 1)
PA3 = INSTR(Data_blockA$, ";", PA2 + 1)
Block_EA$ = MID$(Data_blockA$, PA1 + 1, PA2 - PA1 - 1)
EA_val = VAL(Block_EA$)
Block_CA$ = MID$(Data_blockA$, PA2 + 1, M)
CA_val = VAL(Block_CA$)
Block_DA$ = MID$(Data_blockA$, PA3 + 1, M)
DA_val = VAL(Block_DA$)
IF Acid$ = A$ THEN
EA = EA_val
CA = CA_val
DA = DA_val
ENDIF
IF Acid$ = A$ THEN
GOTO Finish_Acids
ENDIF
NEXT I%
CLOSE #3

Finish_Acids:

IF ExistInput <> -1 AND (CA = 0 AND EA = 0 AND DA = 0) THEN
PRINT "Incorrect metal ion, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Hancock2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF ExistInput <> -1 AND (B$ = "L" AND Carbox% > 0 AND Amino% = 0) THEN
PRINT "Only carboxylate, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Hancock2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF ExistInput <> -1 AND (B$ <> "L" AND (Carbox% > 0 OR Amino% > 0)) THEN
PRINT "Mixed complex, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Hancock2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF ExistInput <> -1 AND (B$ = "L" AND (Carbox% = 0 AND Amino% = 0)) THEN
PRINT "Neither polyamine nor polyaminocarboxylate, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Hancock2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF (CA = 0 AND EA = 0 AND DA = 0) THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect metal ion, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

IF (B$ = "L" AND Carbox% > 0 AND Amino% = 0) THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Only carboxylate, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

IF (B$ <> "L" AND (Carbox% > 0 OR Amino% > 0)) THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Mixed complex, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

IF (B$ = "L" AND (Carbox% = 0 AND Amino% = 0)) THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Neither polyamine nor polyaminocarboxylate, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
PRINT #1, "Lewis acid parameters: "
PRINT #1, "EA = "; EA USING "##.##"
PRINT #1, "CA = "; CA USING "##.##"
PRINT #1, "DA = "; DA USING "##.##"
CLOSE #1

DIM Bases$(100)
OPEN "I",#4,"/data/data/cz.jh.suite/files/Hancock2/Bases_JH-Hancock2.dat"
FOR I% = 0 TO 99
INPUT #4, Data_blockB$
Bases$(I%) = Data_blockB$
N = LEN(Data_blockB$)
Base$ = LEFTOF$(Data_blockB$, ";")
PB1 = INSTR(Data_blockB$, ";")
PB2 = INSTR(Data_blockB$, ";", PB1 + 1)
PB3 = INSTR(Data_blockB$, ";", PB2 + 1)
Block_EB$ = MID$(Data_blockB$, PB1 + 1, PB2 - PB1 - 1)
EB_val = VAL(Block_EB$)
Block_CB$ = MID$(Data_blockB$, PB2 + 1, N)
CB_val = VAL(Block_CB$)
Block_DB$ = MID$(Data_blockB$, PB3 + 1, N)
DB_val = VAL(Block_DB$)
IF (B$ <> "L" AND Base$ = B$) THEN
EB = EB_val
CB = CB_val
DB = DB_val
ELSE IF (B$ = "L" AND Carbox% = 0 AND Amino% > 0 AND Base$ = "NH3") THEN
EBa = EB_val
CBa = CB_val
DBa = DB_val
ELSE IF (B$ = "L" AND Carbox% > 0 AND Amino% > 0) THEN
IF Base$ = "NH3" THEN
EBa = EB_val
CBa = CB_val
DBa = DB_val
ELSE IF Base$ = "CH3COO-" THEN
EBc = EB_val
CBc = CB_val
DBc = DB_val
ENDIF
ENDIF
IF (B$ <> "L" AND Base$ = B$) THEN
GOTO Finish_Bases
ENDIF
NEXT I%
CLOSE #4

Finish_Bases:

IF ExistInput <> -1 AND (B$ <> "L" AND CB = 0 AND EB = 0 AND DB = 0) THEN
PRINT "Incorrect ligand, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Hancock2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF (B$ <> "L" AND CB = 0 AND EB = 0 AND DB = 0) THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect ligand, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
IF B$ <> "L" THEN
 PRINT #1, "Lewis base parameters: "
 PRINT #1, "EB = "; EB USING "##.##"
 PRINT #1, "CB = "; CB USING "##.##"
 PRINT #1, "DB = "; DB USING "##.##"
ELSE IF (B$ = "L" AND Carbox% = 0)
 PRINT #1, "Lewis base parameters: "
 PRINT #1, "EBa = "; EBa USING "##.##"
 PRINT #1, "CBa = "; CBa USING "##.##"
 PRINT #1, "DBa = "; DBa USING "##.##"
ELSE IF (B$ = "L" AND Carbox% > 0)
 PRINT #1, "Lewis base parameters: "
 PRINT #1, "EBa = "; EBa USING "##.##"
 PRINT #1, "CBa = "; CBa USING "##.##"
 PRINT #1, "DBa = "; DBa USING "##.##"
 PRINT #1, "EBc = "; EBc USING "##.##"
 PRINT #1, "CBc = "; CBc USING "##.##"
 PRINT #1, "DBc = "; DBc USING "##.##"
ENDIF
CLOSE #1

IF B$ <> "L" THEN 

log_k = CA * CB + EA * EB + DA * DB

ELSE IF (B$ = "L" AND Carbox% = 0)

log_ka = CA * CBa + EA * EBa + DA * DBa
Count_a = 0
FOR I% = 1 TO (Amino% - 1)
Count_a = Count_a + I%
NEXT I%
log_k = 1.152 * Amino% * log_ka - 0.5 * Count_a + (Amino% - 1) * LOG(55.55)

ELSE IF (B$ = "L" AND Carbox% > 0)

log_ka = CA * CBa + EA * EBa + DA * DBa
log_kc = CA * CBc + EA * EBc + DA * DBc
Count_a = 0
FOR I% = 1 TO (Amino% - 1)
Count_a = Count_a + I%
NEXT I%
Count_b = 0
FOR I% = 1 TO Carbox%
Count_a = Count_a + I%
NEXT I%
log_k = 1.152 * Amino% * log_ka - 0.5 * Count_a + Carbox% * log_kc - Count_b * (0.26 * log_kc - 0.19) + (Amino% + Carbox% - 1) * LOG(55.55)

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

IF (B$ = "L" AND Carbox% = 0) THEN
 Anion$ = "L"
ELSE IF (B$ = "L" AND Carbox% > 0)
 ZB = - Carbox%
 B$ = "L" + STR$(ZB)
ENDIF
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

IF B$ <> "L" THEN
SignB = LenB - SeekB + 1
ChargeB$ = RIGHT$(B$,SignB)
IF ChargeB$ = "-" THEN
ZB = -1
ELSE
ZB = VAL(ChargeB$)
ENDIF
ELSE IF B$ = "L" AND Carbox% = 0 THEN
ZB = 0
ELSE IF B$ = "L" AND Carbox% > 0 THEN
ZB = - Carbox%
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
PRINT "For viewing the output protocol, please open the file JH-Hancock2.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Hancock2.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
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
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock2.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
ELSE
OPEN "A", #1, "/data/data/cz.jh.suite/files/Hancock2/JH-Hancock2.out"
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
PRINT #1, "[1] Robert D. Hancock, Fabrizio Marsicano, Inorganic Chemistry 19(9) (1980) 2709"
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Hancock2.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

END
