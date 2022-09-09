CLS

DIM Dat$(200)
DIM Inp$(101)

Cum_Tb = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Brown-Stein/JH-Brown-Stein.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Brown-Stein/JH-Brown-Stein.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "========================== * Procedure BROWN-STEIN * ==========================="
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-03-27 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Brown-Stein/JH-Brown-Stein.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure BROWN-STEIN * ==========================="
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2018-03-27 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Brown-Stein.inp and start the"
PRINT "program again. The results will appear in JH-Brown-Stein.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] S. E. Stein, R. L. Brown: Estimation of Normal Boiling Points from Group"
PRINT "    Contributions. J. Chem. Inf. Comput. Sci. 34 (1994) 581-587."
PRINT "[2] John C. Dearden, Environmental Toxicology and Chemistry 22(8) (2003)"
PRINT "    1696-1709."
PRINT "[3] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT "    Boca Raton 2000."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown-Stein.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown-Stein/JH-Brown-Stein.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Brown-Stein.inp and start the"
PRINT #2, "program again. The results will appear in JH-Brown-Stein.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] S. E. Stein, R. L. Brown: Estimation of Normal Boiling Points from Group"
PRINT #2, "    Contributions. J. Chem. Inf. Comput. Sci. 34 (1994) 581-587."
PRINT #2, "[2] John C. Dearden, Environmental Toxicology and Chemistry 22(8) (2003)"
PRINT #2, "    1696-1709."
PRINT #2, "[3] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT #2, "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT #2, "    Boca Raton 2000."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Brown-Stein.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown-Stein/JH-Brown-Stein.out"
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

Symbol$ = MID$(Item$, 1, Delim1%-1)
Phi$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
Tc$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
Tb$ = MID$(Item$, Delim3%+1, Length%-Delim3%)

Phi = VAL(Phi$)
Tc = VAL(Tc$)
Tb = VAL(Tb$)

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Brown-Stein/JH-Brown-Stein.inp"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LenghtReq% = LEN(Request$)
Lim% = INSTR(Request$, ";")
Atom$ = LEFT$(Request$, Lim%-1)
Count$ = MID$(Request$, Lim%+1, LenghtReq%)

IF (Symbol$ = Atom$ OR Atom$ = Symbol$) AND (Symbol$ <> "" OR Atom$ <> "") THEN 
Stoich$ = Count$

Cum_Tb = Cum_Tb + Tb * VAL(Stoich$)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown-Stein/JH-Brown-Stein.out"
PRINT #2, Symbol$, 
PRINT #2, Stoich$
CLOSE #2
ENDIF

J% = J% + 1
EXIT IF (J% = 100 OR Atom$ = "")
LOOP

CLOSE #3

I% = I% + 1

EXIT IF (I% = 200 OR Symbol$ = "")

LOOP

OPEN "I", #4, "/data/data/cz.jh.suite/files/Brown-Stein/JH-Brown-Stein.par"
INPUT #4, AA, AB, AC, AD, AE, AF
CLOSE #4

IF Cum_Tb = 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown-Stein/JH-Brown-Stein.out"
PRINT #2, "No atoms / groups identified. Please check your input."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] S. E. Stein, R. L. Brown: Estimation of Normal Boiling Points from Group"
PRINT #2, "    Contributions. J. Chem. Inf. Comput. Sci. 34 (1994) 581-587."
PRINT #2, "[2] John C. Dearden, Environmental Toxicology and Chemistry 22(8) (2003)"
PRINT #2, "    1696-1709."
PRINT #2, "[3] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT #2, "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT #2, "    Boca Raton 2000."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Brown-Stein.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

Boil = AA + Cum_Tb
IF Boil <= 700 THEN
BoilCorr = Boil+AB+AC*Boil+AD*Boil^2
ELSE
BoilCorr = Boil+AE+AF*Boil
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown-Stein/JH-Brown-Stein.out"
PRINT #2, ""
PRINT #2, "Normal boiling point = "; Boil-273.15 USING "###.##"; " °C (Joback-Reid definition)"
PRINT #2, "Corrected boiling point = "; BoilCorr-273.15 USING "###.##"; " °C"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] S. E. Stein, R. L. Brown: Estimation of Normal Boiling Points from Group"
PRINT #2, "    Contributions. J. Chem. Inf. Comput. Sci. 34 (1994) 581-587."
PRINT #2, "[2] John C. Dearden, Environmental Toxicology and Chemistry 22(8) (2003)"
PRINT #2, "    1696-1709."
PRINT #2, "[3] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT #2, "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT #2, "    Boca Raton 2000."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Brown-Stein.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
