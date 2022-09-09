CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss2/JH-Eigen-Fuoss2.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "======================== * Procedure EIGEN-FUOSS II * =========================="
PRINT #1, "Version 1.00 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1

OPEN "I", #2, "/data/data/cz.jh.suite/files/Eigen-Fuoss2/JH-Eigen-Fuoss2.inp"
INPUT #2, Cation$, Anion$, Dist, Exchanged$, Leaving$, Title$
CLOSE #2

OPEN "I", #3, "/data/data/cz.jh.suite/files/Eigen-Fuoss2/JH-Eigen-Fuoss2.par"
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

IF Dist = 0 THEN
Distance = (ABS(zCat*zAn)*(4.80e-10)^2)/(3*c*1.38e-16*d)
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
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Eigen-Fuoss2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss2/JH-Eigen-Fuoss2.out"
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
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Eigen-Fuoss2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

Theta = SQRT((8*PI*6.022e23*(4.80e-10)^2*b)/(e*c*1.38e-16*d))

Ua = (zCat*ZAn*(4.80e-10)^2/(Distance*c)) - (zCat*zAn*(4.80e-10)^2*Theta/(c*(1+Distance*Theta)))

Kos = (4*PI*6.022e23*(Distance)^3/a) * EXP(-Ua / (1.38e-16*d))

log_k = LOG10(Kos)

DIM NextData$(200)

OPEN "I", #4, "/data/data/cz.jh.suite/files/Eigen-Fuoss2/JH-Eigen-Fuoss2.dat"

FOR I% = 0 TO 199
INPUT #4, Line$
NextData$(I%) = Line$
DataLen% = LEN(Line$)
Del1% = INSTR(Line$, ";")
Metal$ = MID$(Line$, 1, Del1%-1)
Num$ = MID$(Line$, Del1%+1, DataLen%-Del1%)
Num = VAL(Num$)

IF Metal$ = Cation$ THEN
log_kw = Num
ENDIF

EXIT IF Metal$ = ""
NEXT I%

CLOSE #4

kw = 10^log_kw

IF kw = 0 THEN
PRINT "Missing data."
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
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Eigen-Fuoss2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss2/JH-Eigen-Fuoss2.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Missing data."
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
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Eigen-Fuoss2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss2/JH-Eigen-Fuoss2.out"
PRINT #1, "INPUT"
PRINT #1, "================================================================================"
PRINT #1, "Central ion: "; Cation$
PRINT #1, "Ligand: "; Anion$
PRINT #1, ""
IF Dist = 0 THEN
PRINT #1, "Distance of closest approach = "; Distance*1e10 USING "####.#"; " pm (charge approximated)"
ELSE IF Dist > 0 THEN
PRINT #1, "Distance of closest approach = "; Distance*1e10 USING "####.#"; " pm (custom value)"
ENDIF
PRINT #1, ""
PRINT #1, "Debye-Hueckel interionic potential = "; Ua*1e-10*6.022e23 USING "###.#"; " kJ/mol"
PRINT #1, ""
PRINT #1, "Temperature = "; d-273.15 USING "###.##"; " °C"
PRINT #1, "Solvent relative permittivity = "; c USING "###.##"
PRINT #1, "Ionic strength = "; b USING "##.###"; " mol/l"
CLOSE #1

OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss2/JH-Eigen-Fuoss2.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
CLOSE #1

IF INSTR(Cation$, "+") <> 0 THEN
SignA$ = MID$(Cation$, INSTR(Cation$, "+"), LEN(Cation$)-INSTR(Cation$, "+")+1)
IF SignA$ = "+" THEN
SignA = 1
ELSE
SignA = VAL(SignA$)
ENDIF
ELSE
SignA = 0
ENDIF

IF INSTR(Anion$, "-") <> 0 THEN
SignB$ = MID$(Anion$, INSTR(Anion$, "-"), LEN(Anion$)-INSTR(Anion$, "-")+1)
IF SignB$ = "-" THEN
SignB = -1
ELSE
SignB = VAL(SignB$)
ENDIF
ELSE
SignB = 0
ENDIF

IF INSTR(Exchanged$, "+") <> 0 THEN
SignC$ = MID$(Exchanged$, INSTR(Exchanged$, "+"), LEN(Exchanged$)-INSTR(Exchanged$, "+")+1)
IF SignC$ = "+" THEN
SignC = 1
ELSE
SignC = VAL(SignC$)
ENDIF
ELSE IF INSTR(Exchanged$, "-") <> 0 THEN
SignC$ = MID$(Exchanged$, INSTR(Exchanged$, "-"), LEN(Exchanged$)-INSTR(Exchanged$, "-")+1)
IF SignC$ = "-" THEN
SignC = -1
ELSE
SignC = VAL(SignC$)
ENDIF
ELSE
SignC = 0
ENDIF

IF INSTR(Leaving$, "-") <> 0 THEN
SignD$ = MID$(Leaving$, INSTR(Leaving$, "-"), LEN(Leaving$)-INSTR(Leaving$, "-")+1)
IF SignD$ = "-" THEN
SignD = -1
ELSE
SignD = VAL(SignD$)
ENDIF
ELSE
SignD = 0
ENDIF

IF SignA+SignB-SignC-SignD <> 0 THEN
PRINT "Equation is not charge balanced."
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
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Eigen-Fuoss2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss2/JH-Eigen-Fuoss2.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Equation is not charge balanced."
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
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Eigen-Fuoss2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss2/JH-Eigen-Fuoss2.out"
PRINT #1, "Outer-sphere association constant, log K(os): "; log_k USING "###.##"
PRINT #1, "Ligand exchange rate constant, log k(L): "; log_kw USING "###.##"
PRINT #1, ""
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #1, ""
PRINT #1, "RATES"
PRINT #1, Title$
PRINT #1, "-start"
PRINT #1, "10 if (MOL("+CHR$(34)+"["+Cation$+"]"+SignA$+CHR$(34)+") <= 1e-15) then goto 200"
IF Anion$ <> "H2O" THEN
PRINT #1, "20 if (MOL("+CHR$(34)+"["+Anion$+"]"+SignB$+CHR$(34)+") <= 1e-15) then goto 200"
ENDIF
IF Anion$ <> "H2O" THEN
PRINT #1, "100 moles = "+STR$(kw)+" * "+STR$(Kos)+" * MOL("+CHR$(34)+"["+Cation$+"]"+SignA$+CHR$(34)+") * MOL("+CHR$(34)+"["+Anion$+"]"+SignB$+CHR$(34)+")"
ELSE
PRINT #1, "100 moles = "+STR$(kw)+" * "+STR$(Kos)+" * MOL("+CHR$(34)+"["+Cation$+"]"+SignA$+CHR$(34)+") * 55.5)"
ENDIF
PRINT #1, "200 SAVE moles"
PRINT #1, "-end"
PRINT #1, ""
PRINT #1, "KINETICS"
PRINT #1, Title$
PRINT #1, "-formula ["+Cation$+"]"+SignA$+" -1";
IF Anion$ <> "H2O" THEN
PRINT #1, " ["+Anion$+"]"+SignB$+" -1";
ENDIF
PRINT #1, " ["+Exchanged$+"]"+SignC$+" 1";
IF Leaving$ <> "H2O" THEN
PRINT #1, " ["+Leaving$+"]"+SignD$+" 1"
ELSE
PRINT #1, ""
ENDIF

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
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Eigen-Fuoss2.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

EXIT

END
