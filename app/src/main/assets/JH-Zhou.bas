CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Zhou/JH-Zhou.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "============================= * Procedure ZHOU * ==============================="
PRINT #1, "Version 1.00 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1

OPEN "I", #2, "/data/data/cz.jh.suite/files/Zhou/JH-Zhou.inp"
INPUT #2, Cation$, Anion$, Dist, Title1$, Title2$
CLOSE #2

OPEN "I", #3, "/data/data/cz.jh.suite/files/Zhou/JH-Zhou.par"
INPUT #3, a, b, c, d, e
CLOSE #3

SeekCation% = INSTR(Cation$, "+")
SeekAnion% = INSTR(Anion$, "-")
LengthCation% = LEN(Cation$)
LengthAnion% = LEN(Anion$)
CatWord$ = LEFTOF$(Cation$, "+")
AnWord$ = LEFTOF$(Anion$, "-")
IF SeekCation% = LengthCation% THEN
zCat = 1
ELSE IF SeekCation% < LengthCation% THEN
zCat$ = MID$(Cation$, SeekCation%+1, LengthCation%-SeekCation%)
zCat = VAL(zCat$)
ENDIF
IF SeekAnion% = LengthAnion% THEN
zAn = -1
ELSE IF SeekAnion% < LengthAnion% THEN
zAn$ = MID$(Anion$, SeekAnion%+1, LengthAnion%-SeekAnion%)
zAn = -VAL(zAn$)
ELSE IF SeekAnion% = 0 THEN
z = 0
ENDIF

IF SeekCation% = 0 THEN
PRINT "Cation must be written first, then anion."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Manfred Eigen, Z. Phys. Chem. 1 (1954) 176-200."
PRINT "[2] Manfred Eigen, Z. Electrochem. 64 (1960) 115-130."
PRINT "[3] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT "[4] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "[5] Ralph G. Wilkins: Kinetics and Mechanism of Reactions of Transition Metal"
PRINT " Complexes, 2nd Edition. Wiley-VCH, Weinheim 2002." 
PRINT "[6] G. Q. Zhou, W. Z. Zhong, Eur. J. Biochem. 128 (1982) 383."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Zhou.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Zhou/JH-Zhou.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Cation must be written first, then anion."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Manfred Eigen, Z. Phys. Chem. 1 (1954) 176-200."
PRINT #1, "[2] Manfred Eigen, Z. Electrochem. 64 (1960) 115-130."
PRINT #1, "[3] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT #1, "[4] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "[5] Ralph G. Wilkins: Kinetics and Mechanism of Reactions of Transition Metal"
PRINT #1, " Complexes, 2nd Edition. Wiley-VCH, Weinheim 2002." 
PRINT #1, "[6] G. Q. Zhou, W. Z. Zhong, Eur. J. Biochem. 128 (1982) 383."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Zhou.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

DIM TabulatedData$(200)

OPEN "I", #4, "/data/data/cz.jh.suite/files/Zhou/JH-Zhou.dat"

FOR I% = 0 TO 199

INPUT #4, LineText$
TabulatedData$(I%) = LineText$
DataLen% = LEN(LineText$)
Del1% = INSTR(LineText$, ";")
Del2% = INSTR(LineText$, ";", Del1%+1)

Species$ = MID$(LineText$, 1, Del1%-1)
Diffusion$ = MID$(LineText$, Del1%+1, Del2%-Del1%-1)
Diffusion = VAL(Diffusion$)
Kielland$ = MID$(LineText$, Del2%+1, DataLen%-Del2%)
Kielland = VAL(Kielland$)

IF Species$ = Cation$ THEN
Diff1 = Diffusion
a1 = Kielland*1e-7
ENDIF

IF Species$ = Anion$ THEN
Diff2 = Diffusion
a2 = Kielland*1e-7
ENDIF

EXIT IF Species$ = ""
NEXT I%

CLOSE #4

IF Dist = 0 THEN
Distance = a1+a2
ELSE IF Dist > 0 THEN
Distance = Dist*1e-10
ELSE IF Dist < 0 THEN
PRINT "Custom cation-anion separation distance must not be negative."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Manfred Eigen, Z. Phys. Chem. 1 (1954) 176-200."
PRINT "[2] Manfred Eigen, Z. Electrochem. 64 (1960) 115-130."
PRINT "[3] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT "[4] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "[5] Ralph G. Wilkins: Kinetics and Mechanism of Reactions of Transition Metal"
PRINT " Complexes, 2nd Edition. Wiley-VCH, Weinheim 2002." 
PRINT "[6] G. Q. Zhou, W. Z. Zhong, Eur. J. Biochem. 128 (1982) 383."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Zhou.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Zhou/JH-Zhou.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Custom cation-anion separation distance must not be negative."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Manfred Eigen, Z. Phys. Chem. 1 (1954) 176-200."
PRINT #1, "[2] Manfred Eigen, Z. Electrochem. 64 (1960) 115-130."
PRINT #1, "[3] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT #1, "[4] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "[5] Ralph G. Wilkins: Kinetics and Mechanism of Reactions of Transition Metal"
PRINT #1, " Complexes, 2nd Edition. Wiley-VCH, Weinheim 2002." 
PRINT #1, "[6] G. Q. Zhou, W. Z. Zhong, Eur. J. Biochem. 128 (1982) 383."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Zhou.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

Theta = SQRT((8*PI*6.022e23*(4.80e-10)^2*b)/(e*c*1.38e-16*d))
Ua = (zCat*ZAn*(4.80e-10)^2/(Distance*c)) - (zCat*zAn*(4.80e-10)^2*Theta/(c*(1+Distance*Theta)))
k1 = (4*PI*1e-3*6.022e23*(Diff1+Diff2)*Distance*Ua) / (1.38e-16*d*(EXP(Ua / (1.38e-16*d))-1))
Kos = (4*PI*6.022e23*(Distance)^3/a) * EXP(-Ua / (1.38e-16*d))
k_1 = k1/Kos

! k_1 = (3*(Diff1+Diff2)*Ua) / (1.38e-16*d*(EXP(Ua / (1.38e-16*d))-1)*Distance^2) * (EXP(Ua / 1.38e-16*d))
! Kos = k1/k_1

log_k = LOG10(Kos)

IF INSTR(Cation$, "+") > 0 THEN
SignA$ = MID$(Cation$, INSTR(Cation$, "+"), LEN(Cation$)-INSTR(Cation$, "+")+1)
ELSE IF INSTR(Cation$, "-") > 0 THEN
SignA$ = MID$(Cation$, INSTR(Cation$, "-"), LEN(Cation$)-INSTR(Cation$, "-")+1)
ELSE
SignA$ = ""
ENDIF

IF INSTR(Anion$, "+") > 0 THEN
SignB$ = MID$(Anion$, INSTR(Anion$, "+"), LEN(Anion$)-INSTR(Anion$, "+")+1)
ELSE IF INSTR(Anion$, "-") > 0 THEN
SignB$ = MID$(Anion$, INSTR(Anion$, "-"), LEN(Anion$)-INSTR(Anion$, "-")+1)
ELSE
SignB$ = ""
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

SignC = SignA+SignB
IF SignC = 0 THEN
SignC$ = ""
ELSE IF SignC = 1 THEN
SignC$ = "+"
ELSE IF SignC > 1 THEN
SignC$ = "+"+Str$(SignC)
ELSE IF SignC = -1 THEN
SignC$ = "-"
ELSE IF SignC < -1 THEN
SignC$ = Str$(SignC)
ENDIF

C$ = CatWord$+AnWord$+SignC$

OPEN "A", #1, "/data/data/cz.jh.suite/files/Zhou/JH-Zhou.out"
PRINT #1, "INPUT"
PRINT #1, "================================================================================"
PRINT #1, "Cationic reactant: "; Cation$
PRINT #1, "Diffusion coefficient: "; Diff1 USING "###.##"; "e-5 cm2.s-1"
PRINT #1, ""
PRINT #1, "Anionic reactant: "; Anion$
PRINT #1, "Diffusion coefficient: "; Diff2 USING "###.##"; "e-5 cm2.s-1"
PRINT #1, ""
IF Dist = 0 THEN
PRINT #1, "Distance of closest approach = "; Distance*1e10 USING "####.#"; " pm (charge approximated)"
ELSE IF Dist > 0 THEN
PRINT #1, "Distance of closest approach = "; Distance*1e10 USING "####.#"; " pm (custom value)"
ENDIF
PRINT #1, ""
PRINT #1, "Debye-Hueckel interionic potential = "; Ua*1e-10*6.022e23 USING "###.#"; " kJ/mol"
PRINT #1, ""
PRINT #1, "Temperature = "; d-273.15 USING "###.##"; " �C"
PRINT #1, "Solvent relative permittivity = "; c USING "###.##"
PRINT #1, "Ionic strength = "; b USING "##.###"; " mol/l"
CLOSE #1

OPEN "A", #1, "/data/data/cz.jh.suite/files/Zhou/JH-Zhou.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Forward rate constant, log k1: "; LOG10(k1) USING "###.##"; " (bimolecular)"
PRINT #1, "Backward rate constant, log k-1: "; LOG10(k_1) USING "###.##"; " (unimolecular)"
PRINT #1, "Outer-sphere association constant, log K(os): "; log_k USING "###.##"
PRINT #1, ""
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #1, ""
PRINT #1, "RATES"
PRINT #1, Title1$
PRINT #1, "-start"
PRINT #1, "10 if (MOL("+CHR$(34)+"["+Cation$+"]"+SignA$+CHR$(34)+") <= 1e-15) then goto 200"
PRINT #1, "20 if (MOL("+CHR$(34)+"["+Anion$+"]"+SignB$+CHR$(34)+") <= 1e-15) then goto 200"
PRINT #1, "100 moles = "+STR$(k1)+" * MOL("+CHR$(34)+"["+Cation$+"]"+SignA$+CHR$(34)+") * MOL("+CHR$(34)+"["+Anion$+"]"+SignB$+CHR$(34)+")"
PRINT #1, "200 SAVE moles"
PRINT #1, "-end"
PRINT #1, ""
PRINT #1, "KINETICS"
PRINT #1, Title1$
PRINT #1, "-formula ["+Cation$+"]"+SignA$+" -1 ["+Anion$+"]"+SignB$+" -1 ["+C$+"]"+SignC$+" 1"
PRINT #1, ""
PRINT #1, "RATES"
PRINT #1, Title2$
PRINT #1, "-start"
PRINT #1, "10 if (MOL("+CHR$(34)+"["+C$+"]"+SignC$+CHR$(34)+") <= 1e-15) then goto 200"
PRINT #1, "100 moles = "+STR$(k_1)+" * MOL("+CHR$(34)+"["+C$+"]"+SignC$+CHR$(34)+")"
PRINT #1, "200 SAVE moles"
PRINT #1, "-end"
PRINT #1, ""
PRINT #1, "KINETICS"
PRINT #1, Title2$
PRINT #1, "-formula ["+Cation$+"]"+SignA$+" 1 ["+Anion$+"]"+SignB$+" 1 ["+C$+"]"+SignC$+" -1"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Manfred Eigen, Z. Phys. Chem. 1 (1954) 176-200."
PRINT #1, "[2] Manfred Eigen, Z. Electrochem. 64 (1960) 115-130."
PRINT #1, "[3] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT #1, "[4] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "[5] Ralph G. Wilkins: Kinetics and Mechanism of Reactions of Transition Metal"
PRINT #1, " Complexes, 2nd Edition. Wiley-VCH, Weinheim 2002." 
PRINT #1, "[6] G. Q. Zhou, W. Z. Zhong, Eur. J. Biochem. 128 (1982) 383."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Zhou.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

EXIT

END
