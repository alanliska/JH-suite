CLS

DIM Dat$(200)
DIM Inp$(101)

Cum_W = 0
Cum_M = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Banks-Burnop/JH-Banks-Burnop.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Banks-Burnop/JH-Banks-Burnop.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "========================= * Procedure BANKS-BURNOP * ==========================="
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-03-27 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Banks-Burnop/JH-Banks-Burnop.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================= * Procedure BANKS-BURNOP * ==========================="
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2018-03-27 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Banks-Burnop.inp and start the"
PRINT "program again. The results will appear in JH-Banks-Burnop.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT "    Boca Raton 2000."
PRINT "[2] W. H. Banks, J. Chem. Soc. (1939) 292-295."
PRINT "[3] V. C. E. Burnop, J. Chem. Soc. (1938) 826-829."
PRINT "[4] P. I. Gold, G. J. Ogle, Chemical Engineering 76(1) (1969) 119."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Banks-Burnop.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Banks-Burnop/JH-Banks-Burnop.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Banks-Burnop.inp and start the"
PRINT #2, "program again. The results will appear in JH-Banks-Burnop.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT #2, "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT #2, "    Boca Raton 2000."
PRINT #2, "[2] W. H. Banks, J. Chem. Soc. (1939) 292-295."
PRINT #2, "[3] V. C. E. Burnop, J. Chem. Soc. (1938) 826-829."
PRINT #2, "[4] P. I. Gold, G. J. Ogle, Chemical Engineering 76(1) (1969) 119."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Banks-Burnop.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Banks-Burnop/JH-Banks-Burnop.out"
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

Symbol$ = MID$(Item$, 1, Delim1%-1)
W$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
M$ = MID$(Item$, Delim2%+1, Length%-Delim2%)

W = VAL(W$)
M = VAL(M$)

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Banks-Burnop/JH-Banks-Burnop.inp"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LenghtReq% = LEN(Request$)
Lim% = INSTR(Request$, ";")
Atom$ = LEFT$(Request$, Lim%-1)
Count$ = MID$(Request$, Lim%+1, LenghtReq%)

IF (Symbol$ = Atom$ OR Atom$ = Symbol$) AND (Symbol$ <> "" OR Atom$ <> "") THEN 
Stoich$ = Count$

Cum_W = Cum_W + W * VAL(Stoich$)
Cum_M = Cum_M + M * VAL(Stoich$)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Banks-Burnop/JH-Banks-Burnop.out"
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

OPEN "I", #4, "/data/data/cz.jh.suite/files/Banks-Burnop/JH-Banks-Burnop.par"
INPUT #4, AA, AB, AC
CLOSE #4

IF Cum_M = 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Banks-Burnop/JH-Banks-Burnop.out"
PRINT #2, "No atoms / groups identified. Please check your input."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT #2, "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT #2, "    Boca Raton 2000."
PRINT #2, "[2] W. H. Banks, J. Chem. Soc. (1939) 292-295."
PRINT #2, "[3] V. C. E. Burnop, J. Chem. Soc. (1938) 826-829."
PRINT #2, "[4] P. I. Gold, G. J. Ogle, Chemical Engineering 76(1) (1969) 119."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Banks-Burnop.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

Banks = AA+AB/(SQRT(Cum_M))
TBanks = 10^Banks
Burnop = (Cum_W/Cum_M)+AC/(SQRT(Cum_M))
TBurnop = 10^Burnop

OPEN "A", #2, "/data/data/cz.jh.suite/files/Banks-Burnop/JH-Banks-Burnop.out"
PRINT #2, ""
PRINT #2, "Normal boiling point = "; TBanks-273.15 USING "###.##"; " °C (Banks)"
PRINT #2, "Normal boiling point = "; TBurnop-273.15 USING "###.##"; " °C (Burnop, Gold, Ogle)"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Robert S. Boethling (Ed.) et al: Handbook of Property Estimation Methods"
PRINT #2, "    for Chemicals: Environmental and Health Sciences. CRC Press LLC,"
PRINT #2, "    Boca Raton 2000."
PRINT #2, "[2] W. H. Banks, J. Chem. Soc. (1939) 292-295."
PRINT #2, "[3] V. C. E. Burnop, J. Chem. Soc. (1938) 826-829."
PRINT #2, "[4] P. I. Gold, G. J. Ogle, Chemical Engineering 76(1) (1969) 119."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Banks-Burnop.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
