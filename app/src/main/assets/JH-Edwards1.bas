CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Edwards1/JH-Edwards1.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "========================== * Procedure EDWARDS I * ============================="
PRINT #1, "Version 1.02 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Edwards1/JH-Edwards1.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Edwards1/JH-Edwards1.inp"
INPUT #2, A$, B$, CN$
CN% = VAL(CN$)
CLOSE # 2
OPEN "A", #1, "/data/data/cz.jh.suite/files/Edwards1/JH-Edwards1.out"
PRINT #1, "INPUT DATA"
PRINT #1, "================================================================================"
PRINT #1, "Lewis acid: ", A$,
PRINT #1 ,
PRINT #1, "Lewis base: ", B$
PRINT #1 ,
PRINT #1, "Coordination number: ", CN$
CLOSE #1
ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure EDWARDS I * ============================="
PRINT "Version 1.02"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "Available metal ions: "
DIM Acids$(100)
OPEN "I",#3,"/data/data/cz.jh.suite/files/Edwards1/Acids_JH-Edwards1.dat"
FOR I% = 0 TO 99
INPUT #3, Data_blockA$
Acids$(I%) = Data_blockA$
Lim1% = INSTR(Data_blockA$, ";")
Lim2% = INSTR(Data_blockA$, ";", Lim1%+1)
Acid$ = LEFTOF$(Data_blockA$, ";")
CoordNum$ = MID$(Data_blockA$, Lim1%+1, Lim2%-Lim1%-1)
IF LEN(Acid$) > 0 THEN
PRINT Acid$ + "(" + CoordNum$ + ")" + " ",
ELSE 
GOTO FinishA
ENDIF
NEXT I%
FinishA:
CLOSE #3
PRINT " "
PRINT "Input the metal ion: "
INPUT A$
PRINT "Input the coordination number: "
INPUT CN$
CN% = VAL(CN$)
IF Acid$ = A$ AND CoordNum$ = CN$ THEN
GOTO FinishA2
ENDIF

FinishA2:
CLOSE #3
PRINT "Available ligands: "
DIM Bases$(100)
OPEN "I",#4,"/data/data/cz.jh.suite/files/Edwards1/Bases_JH-Edwards1.dat"
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
OPEN "I",#3,"/data/data/cz.jh.suite/files/Edwards1/Acids_JH-Edwards1.dat"
FOR I% = 0 TO 99
INPUT #3, Data_blockA$
Acids$(I%) = Data_blockA$
M = LEN(Data_blockA$)
Acid$ = LEFTOF$(Data_blockA$, ";")
PA1 = INSTR(Data_blockA$, ";")
PA2 = INSTR(Data_blockA$, ";", PA1 + 1)
PA3 = INSTR(Data_blockA$, ";", PA2 + 1)
CoordNum$ = MID$(Data_blockA$, PA1 + 1, PA2 - PA1 - 1)
CoordNum% = VAL(CoordNum$)
Block_alpha$ = MID$(Data_blockA$, PA2 + 1, PA3 - PA2 - 1)
alpha_val = VAL(Block_alpha$)
Block_beta$ = MID$(Data_blockA$, PA3 + 1, M)
beta_val = VAL(Block_beta$)
IF Acid$ = A$ AND CoordNum$ = CN$ THEN
alpha = alpha_val
beta = beta_val
ENDIF
IF Acid$ = A$ AND CoordNum$ = CN$ THEN
GOTO Finish_Acids
ENDIF
NEXT I%
CLOSE #3

Finish_Acids:

IF ExistInput <> -1 AND (alpha = 0 AND beta = 0) THEN
PRINT "Incorrect metal ion and/or coordination number, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John O. Edwards, J. Am. Chem. Soc. 76(6) (1954) 1540."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Edwards1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF alpha = 0 AND beta = 0 THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Edwards1/JH-Edwards1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect metal ion and/or coordination number, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John O. Edwards, J. Am. Chem. Soc. 76(6) (1954) 1540."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Edwards1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Edwards1/JH-Edwards1.out"
PRINT #1, "Lewis acid parameters: "
PRINT #1, "alpha = "; alpha USING "##.##"
PRINT #1, "beta = "; beta USING "##.##"
CLOSE #1

DIM Bases$(100)
OPEN "I",#4,"/data/data/cz.jh.suite/files/Edwards1/Bases_JH-Edwards1.dat"
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

IF ExistInput <> -1 AND En = 0 AND H = 0 AND Base$ <> "H2O" THEN
PRINT "Incorrect ligand, program terminated."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John O. Edwards, J. Am. Chem. Soc. 76(6) (1954) 1540."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Edwards1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
ENDIF

IF En = 0 AND H = 0 AND Base$ <> "H2O" THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Edwards1/JH-Edwards1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Incorrect ligand, program terminated."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John O. Edwards, J. Am. Chem. Soc. 76(6) (1954) 1540."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Edwards1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Edwards1/JH-Edwards1.out"
PRINT #1, "Lewis base parameters: "
PRINT #1, "En = "; En USING "##.##"
PRINT #1, "H = "; H USING "##.##"
CLOSE #1

log_k = alpha * En + beta * H

Edimer = En - 2.6

pKa = H - 1.74

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

Z = ZA + ZB * CN%

Charge$ = STR$(Z)

IF Z = 0  AND CN% = 1 THEN
Complex$ = Cation$ + Anion$
ELSE IF Z = 0  AND CN% > 1 AND LEN(Anion$) = 1
Complex$ = Cation$ + Anion$ + CN$
ELSE IF Z = 0  AND CN% > 1 AND LEN(Anion$) > 1
Complex$ = Cation$ + "(" + Anion$ + ")" + CN$
ELSE IF Z > 0  AND CN% = 1 THEN
Complex$ = Cation$ + Anion$ + "+" + Charge$
ELSE IF Z > 0  AND CN% > 1 AND LEN(Anion$) > 1 THEN
Complex$ = Cation$ + "(" + Anion$ + ")" + CN$ + Charge$
ELSE IF Z > 0  AND CN% > 1 AND LEN(Anion$) = 1 THEN
Complex$ = Cation$ + Anion$ + CN$ + Charge$
ELSE IF Z < 0 AND CN% = 1 AND LEN(Anion$) = 1 THEN
Complex$ = Cation$ + Anion$ + Charge$
ELSE IF Z < 0 AND CN% > 1 AND LEN(Anion$) > 1 THEN
Complex$ = Cation$ + "(" + Anion$ + ")" + CN$ + Charge$
ELSE IF Z < 0 AND CN% > 1 AND LEN(Anion$) = 1 THEN
Complex$ = Cation$ + Anion$ + CN$ + Charge$
ENDIF

LenComplex = LEN(Complex$)

IF RIGHT$(Complex$,1) = "1" THEN
Complex$ = LEFT$(Complex$,LenComplex - 1)
ELSE
Complex$ = Complex$
ENDIF

IF VAL(CN$) = 1 THEN
Coefficient$ = ""
ELSE
Coefficient$ = CN$ + " "
ENDIF

IF ExistInput <> -1 THEN
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "For viewing the output protocol, please open the file JH-Edwards1.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] John O. Edwards, J. Am. Chem. Soc. 76(6) (1954) 1540."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Edwards1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Edwards1/JH-Edwards1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Redox potential of oxidative anion-dimerization, E� = "; Edimer USING "###.##";
PRINT #1, " Volts"
PRINT #1, "Conjugated acid pKa = "; pKa USING "###.##"
PRINT #1, "Stability constant, log K" + CN$ + " = "; log_k USING "###.##"
PRINT #1, " "
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
Equation$ = A$ + " + " + Coefficient$ + B$ + " = " + Complex$
PRINT #1, Equation$
PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John O. Edwards, J. Am. Chem. Soc. 76(6) (1954) 1540."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Edwards1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
ELSE
OPEN "A", #1, "/data/data/cz.jh.suite/files/Edwards1/JH-Edwards1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Redox potential of oxidative anion-dimerization, E� = "; Edimer USING "###.##";
PRINT #1, " Volts"
PRINT #1, "Conjugated acid pKa = "; pKa USING "###.##"
PRINT #1, "Stability constant, log K1 = "; log_k USING "###.##"
PRINT #1, " "
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
Equation$ = A$ + " + " + Coefficient$ + B$ + " = " + Complex$
PRINT #1, Equation$
PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] John O. Edwards, J. Am. Chem. Soc. 76(6) (1954) 1540."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Edwards1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

END
