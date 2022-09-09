CLS

DIM Dat$(200)
DIM Inp$(101)

Cum_mi = 0
Cum_bi = 0
Cum_sp3 = 0
Cum_sp2 = 0
Cum_n = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Simamora/JH-Simamora.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Simamora/JH-Simamora.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "=========================== * Procedure SIMAMORA * ============================="
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-03-27 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Simamora/JH-Simamora.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "=========================== * Procedure SIMAMORA * ============================="
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2018-03-27 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Simamora.inp and start the"
PRINT "program again. The results will appear in JH-Simamora.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT "    Boca Raton 2000."
PRINT "[2] Joseph F. Krzyzaniak, Paul B. Myrdal, Pahala Simamora, and Samuel H."
PRINT "    Yalkowsky, Ind. Eng. Chem. Res. 34 (1995) 2530-2535."
PRINT "[3] Pahala Simamora, Samuel H. Yalkowsky, Ind. Eng. Chem. Res. 33 (1994)"
PRINT "    1405-1409."
PRINT "[4] Pahala Simamora, Allan H. Miller, Samuel H. Yalkowsky, J. Chem. Inf."
PRINT "    Comput. Sci. 33 (1993) 437-440."
PRINT "[5] P. Simamora, S. H. Yalkowsky, SAR and QSAR in Environmental Research, Vol.1,"
PRINT "    pp. 293-300, Gordon and Breach Science Publishers S.A. 1993."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Simamora.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Simamora/JH-Simamora.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Simamora.inp and start the"
PRINT #2, "program again. The results will appear in JH-Simamora.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT #2, "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT #2, "    Boca Raton 2000."
PRINT #2, "[2] Joseph F. Krzyzaniak, Paul B. Myrdal, Pahala Simamora, and Samuel H."
PRINT #2, "    Yalkowsky, Ind. Eng. Chem. Res. 34 (1995) 2530-2535."
PRINT #2, "[3] Pahala Simamora, Samuel H. Yalkowsky, Ind. Eng. Chem. Res. 33 (1994)"
PRINT #2, "    1405-1409."
PRINT #2, "[4] Pahala Simamora, Allan H. Miller, Samuel H. Yalkowsky, J. Chem. Inf."
PRINT #2, "    Comput. Sci. 33 (1993) 437-440."
PRINT #2, "[5] P. Simamora, S. H. Yalkowsky, SAR and QSAR in Environmental Research, Vol.1,"
PRINT #2, "    pp. 293-300, Gordon and Breach Science Publishers S.A. 1993."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Simamora.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Simamora/JH-Simamora.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "Group", "Number of groups"
PRINT #2, "=====", "================"
CLOSE #2

I% = 0

DO

INPUT #1, Item$

Length% = LEN(Item$)
Dat$(I%) = Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)

Symbol$ = MID$(Item$, 1, Delim1%-1)
mi$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
bi$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
SP3$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
SP2$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
n$ = MID$(Item$, Delim5%+1, Length%-Delim5%)

mi = VAL(mi$)
bi = VAL(bi$)
SP3 = VAL(SP3$)
SP2 = VAL(SP2$)
n = VAL(n$)

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Simamora/JH-Simamora.inp"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LenghtReq% = LEN(Request$)
Lim% = INSTR(Request$, ";")
Atom$ = LEFT$(Request$, Lim%-1)
Count$ = MID$(Request$, Lim%+1, LenghtReq%)

IF J% = 0 THEN
RING = VAL(Atom$)
Sigma = VAL(Count$)
ENDIF

IF (Symbol$ = Atom$ OR Atom$ = Symbol$) AND (Symbol$ <> "" OR Atom$ <> "") THEN 
Stoich$ = Count$

Cum_mi = Cum_mi + mi * VAL(Stoich$)
Cum_bi = Cum_bi + bi * VAL(Stoich$)
Cum_sp3 = Cum_sp3 + SP3 * VAL(Stoich$)
Cum_sp2 = Cum_sp2 + SP2 * VAL(Stoich$)
Cum_n = Cum_n + n * VAL(Stoich$)

IF J% <> 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Simamora/JH-Simamora.out"
PRINT #2, Symbol$, 
PRINT #2, Stoich$
CLOSE #2
ENDIF
ENDIF

J% = J% + 1
EXIT IF (J% = 100 OR Atom$ = "")
LOOP

CLOSE #3

I% = I% + 1

EXIT IF (I% = 200 OR Symbol$ = "")

LOOP

OPEN "I", #4, "/data/data/cz.jh.suite/files/Simamora/JH-Simamora.par"
INPUT #4, AA, AB, AC, AD, AE, AF, AG, AH
CLOSE #4

IF Cum_bi = 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Simamora/JH-Simamora.out"
PRINT #2, "No atoms / groups identified. Please check your input."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT #2, "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT #2, "    Boca Raton 2000."
PRINT #2, "[2] Joseph F. Krzyzaniak, Paul B. Myrdal, Pahala Simamora, and Samuel H."
PRINT #2, "    Yalkowsky, Ind. Eng. Chem. Res. 34 (1995) 2530-2535."
PRINT #2, "[3] Pahala Simamora, Samuel H. Yalkowsky, Ind. Eng. Chem. Res. 33 (1994)"
PRINT #2, "    1405-1409."
PRINT #2, "[4] Pahala Simamora, Allan H. Miller, Samuel H. Yalkowsky, J. Chem. Inf."
PRINT #2, "    Comput. Sci. 33 (1993) 437-440."
PRINT #2, "[5] P. Simamora, S. H. Yalkowsky, SAR and QSAR in Environmental Research, Vol.1,"
PRINT #2, "    pp. 293-300, Gordon and Breach Science Publishers S.A. 1993."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Simamora.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

tau = Cum_sp3+0.5*Cum_sp2+0.5*RING-1
phi = 3^tau

Sm = AF+AG*LOG10(Sigma)+AH*LOG10(phi)

Tm = Cum_mi*1000/Sm

Sb1 = AA
Sb2 = AB+AC*(n-5)
Sb3 = AD+AE*tau

Tb1 = Cum_bi*1000/Sb1
Tb2 = Cum_bi*1000/Sb2
Tb3 = Cum_bi*1000/Sb3

OPEN "A", #2, "/data/data/cz.jh.suite/files/Simamora/JH-Simamora.out"
PRINT #2, ""
PRINT #2, "Number of aliphatic carbon atoms = "; n
PRINT #2, "Number of non-ring and non-terminal sp3 atoms = "; Cum_sp3
PRINT #2, "Number of non-ring and non-terminal sp2 atoms = "; Cum_sp2
PRINT #2, "Effective number of torsional angles = "; tau
PRINT #2, "Number of stable conformations = "; phi
PRINT #2, "Rotational symmetry number = "; Sigma
PRINT #2, ""
PRINT #2, "*Melting point*"
PRINT #2, ""
PRINT #2, "Molar enthalpy of melting = "; Cum_mi USING "###.##"; " kJ.mol-1"
PRINT #2, "Molar entropy of melting = "; Sm USING "###.##"; " J.K-1.mol-1"
PRINT #2, "Melting point = "; Tm-273.15 USING "###.##"; " �C"
PRINT #2, ""
PRINT #2, "*Boiling point*"
PRINT #2, ""
PRINT #2, "Molar enthalpy of evaporation = "; Cum_bi USING "###.##"; " kJ.mol-1"
PRINT #2, ""
PRINT #2, "Molar entropy of evaporation = "; Sb1 USING "###.##"; " J.K-1.mol-1 (Trouton)"
PRINT #2, "Normal boiling point = "; Tb1-273.15 USING "###.##"; " �C (Trouton)"
PRINT #2, ""
PRINT #2, "Molar entropy of evaporation = "; Sb2 USING "###.##"; " J.K-1.mol-1 (Mishra, Yalkowsky)"
PRINT #2, "Normal boiling point = "; Tb2-273.15 USING "###.##"; " �C (Mishra, Yalkowsky)"
PRINT #2, ""
PRINT #2, "Molar entropy of evaporation = "; Sb3 USING "###.##"; " J.K-1.mol-1 (mod. Walden)"
PRINT #2, "Normal boiling point = "; Tb3-273.15 USING "###.##"; " �C (mod. Walden)"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT #2, "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT #2, "    Boca Raton 2000."
PRINT #2, "[2] Joseph F. Krzyzaniak, Paul B. Myrdal, Pahala Simamora, and Samuel H."
PRINT #2, "    Yalkowsky, Ind. Eng. Chem. Res. 34 (1995) 2530-2535."
PRINT #2, "[3] Pahala Simamora, Samuel H. Yalkowsky, Ind. Eng. Chem. Res. 33 (1994)"
PRINT #2, "    1405-1409."
PRINT #2, "[4] Pahala Simamora, Allan H. Miller, Samuel H. Yalkowsky, J. Chem. Inf."
PRINT #2, "    Comput. Sci. 33 (1993) 437-440."
PRINT #2, "[5] P. Simamora, S. H. Yalkowsky, SAR and QSAR in Environmental Research, Vol.1,"
PRINT #2, "    pp. 293-300, Gordon and Breach Science Publishers S.A. 1993."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Simamora.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
