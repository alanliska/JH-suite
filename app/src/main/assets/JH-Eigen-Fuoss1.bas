CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "========================= * Procedure EIGEN-FUOSS I * =========================="
PRINT #1, "Version 1.01 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.inp"
INPUT #2, Cation$, Anion$, Dist
CLOSE #2

GOTO Calculation

ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================= * Procedure EIGEN-FUOSS I * =========================="
PRINT "Version 1.01"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"

OPEN "O", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "========================= * Procedure EIGEN-FUOSS I * =========================="
PRINT #1, "Version 1.01"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1

PRINT "Input the cation and anion in the format Element+charge or Element-charge, e.g."
PRINT "Na+, Cl-, Mg+2, SO4-2 etc. The ligand can be also an electroneutral molecule."
PRINT "Input cation: "
INPUT Cation$
PRINT "Input anion: "
INPUT Anion$
PRINT "Do you want to approximate the cation-anion distance by simple charge model? (Y/N)"
INPUT Model1$

IF Model1$ = "Y" THEN
Dist = 0
ELSE IF Model1$ = "N" THEN

PRINT "Enter your custom value of cation-anion separation distance (in pm): "
INPUT Model2$

Model2 = VAL(Model2$)
Dist = Model2

ELSE IF Model1$ <> "Y" AND Model1$ <> "N" THEN
PRINT "Wrong answer."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Manfred Eigen, Z. Phys. Chem. 1 (1954) 176-200."
PRINT "[2] Manfred Eigen, Z. Electrochem. 64 (1960) 115-130."
PRINT "[3] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT "[4] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Eigen-Fuoss1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Wrong answer."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Manfred Eigen, Z. Phys. Chem. 1 (1954) 176-200."
PRINT #1, "[2] Manfred Eigen, Z. Electrochem. 64 (1960) 115-130."
PRINT #1, "[3] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT #1, "[4] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Eigen-Fuoss1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

ENDIF

Calculation:

OPEN "I", #3, "/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.par"
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
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Eigen-Fuoss1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.out"
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
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Eigen-Fuoss1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
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
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Eigen-Fuoss1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.out"
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
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Eigen-Fuoss1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

Theta = SQRT((8*PI*6.022e23*(4.80e-10)^2*b)/(e*c*1.38e-16*d))

Ua = (zCat*ZAn*(4.80e-10)^2/(Distance*c)) - (zCat*zAn*(4.80e-10)^2*Theta/(c*(1+Distance*Theta)))

Kos = (4*PI*6.022e23*(Distance)^3/a) * EXP(-Ua / (1.38e-16*d))

log_k = LOG10(Kos)

OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.out"
PRINT #1, "INPUT"
PRINT #1, "================================================================================"
PRINT #1, "Cation: "; Cation$
PRINT #1, ""
PRINT #1, "Anion: "; Anion$
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

IF ExistInput <> -1 THEN
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "For viewing the output protocol, please open the file JH-Eigen-Fuoss1.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Manfred Eigen, Z. Phys. Chem. 1 (1954) 176-200."
PRINT "[2] Manfred Eigen, Z. Electrochem. 64 (1960) 115-130."
PRINT "[3] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT "[4] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT " Sydney, Tokyo, Toronto 1988."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Eigen-Fuoss1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"

PRINT #1, Cation$;
PRINT #1, " + ";
PRINT #1, Anion$;
PRINT #1, " = ";
PRINT #1, CatWord$;
PRINT #1, AnWord$;
z = zCat+zAn
IF z = 0 THEN
PRINT #1, ""
ELSE IF z = 1 THEN
PRINT #1, "+"
ELSE IF z > 1 THEN
PRINT #1, "+";
PRINT #1, z
ELSE IF z = -1 THEN
PRINT #1, "-"
ELSE IF z < -1 THEN
PRINT #1, "-";
PRINT #1, -z
ENDIF

PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Manfred Eigen, Z. Phys. Chem. 1 (1954) 176-200."
PRINT #1, "[2] Manfred Eigen, Z. Electrochem. 64 (1960) 115-130."
PRINT #1, "[3] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT #1, "[4] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Eigen-Fuoss1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

ELSE

OPEN "A", #1, "/data/data/cz.jh.suite/files/Eigen-Fuoss1/JH-Eigen-Fuoss1.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"

PRINT #1, Cation$;
PRINT #1, " + ";
PRINT #1, Anion$;
PRINT #1, " = ";
PRINT #1, CatWord$;
PRINT #1, AnWord$;
z = zCat+zAn
IF z = 0 THEN
PRINT #1, ""
ELSE IF z = 1 THEN
PRINT #1, "+"
ELSE IF z > 1 THEN
PRINT #1, "+";
PRINT #1, z
ELSE IF z = -1 THEN
PRINT #1, "-"
ELSE IF z < -1 THEN
PRINT #1, "-";
PRINT #1, -z
ENDIF

PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Manfred Eigen, Z. Phys. Chem. 1 (1954) 176-200."
PRINT #1, "[2] Manfred Eigen, Z. Electrochem. 64 (1960) 115-130."
PRINT #1, "[3] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT #1, "[4] Itamar Bodek, Warren J. Lyman, William F. Reehl, David H. Rosenblatt (Eds.):"
PRINT #1, " Environmental Inorganic Chemistry. Properties, Processes, and Estimation"
PRINT #1, " Methods. Pergamon Press, New York, Oxford, Beijing, Frankfurt, Sao Paulo,"
PRINT #1, " Sydney, Tokyo, Toronto 1988."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Eigen-Fuoss1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

EXIT

ENDIF

END
