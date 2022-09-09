CLS

DIM Dat$(200)
DIM Inp$(101)

Cum_S = 0
Cum_NA = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Klopman2/JH-Klopman2.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Klopman2/JH-Klopman2.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "================ * Procedure Klopman II (organic compounds) * =================="
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2022-08-16 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Klopman2/JH-Klopman2.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "================ * Procedure Klopman II (organic compounds) * =================="
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2022-08-16 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Klopman2.inp and start the"
PRINT "program again. The results will appear in JH-Klopman2.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Gilles Klopman, Shaomeng Wang, Donald M. Balthasar, Journal of chemical"
PRINT " information and computer sciences 32(5) (1992) 474-482."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Klopman2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Klopman2/JH-Klopman2.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Klopman2.inp and start the"
PRINT #2, "program again. The results will appear in JH-Klopman2.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Gilles Klopman, Shaomeng Wang, Donald M. Balthasar, Journal of chemical"
PRINT #2, " information and computer sciences 32(5) (1992) 474-482."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Klopman2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Klopman2/JH-Klopman2.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "Group", "Number of groups"
PRINT #2, "=====", "================"
CLOSE #2

I% = 0

DO

INPUT #1, Item$

Lenght% = LEN(Item$)
Dat$(I%) = Item$
Delim1% = INSTR(Item$, ";")
Symbol$ = MID$(Item$, 1, Delim1%-1)
Ci$ = MID$(Item$, Delim1%+1, Lenght%-Delim1%)
Ci = VAL(Ci$)

IF Symbol$ = "C0" THEN 
const = Ci
ENDIF

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Klopman2/JH-Klopman2.inp"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LenghtReq% = LEN(Request$)
Lim% = INSTR(Request$, ";")
Atom$ = LEFT$(Request$, Lim%-1)
Count$ = MID$(Request$, Lim%+1, LenghtReq%)

IF (Symbol$ = Atom$ OR Atom$ = Symbol$) AND (Symbol$ <> "" OR Atom$ <> "") THEN 
Stoich$ = Count$

Cum_S = Cum_S + Ci * VAL(Stoich$)
Cum_NA = Cum_NA + VAL(Stoich$)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Klopman2/JH-Klopman2.out"
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

IF Cum_NA = 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Klopman2/JH-Klopman2.out"
PRINT #2, "No atoms / groups identified. Please check your input."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Gilles Klopman, Shaomeng Wang, Donald M. Balthasar, Journal of chemical"
PRINT #2, " information and computer sciences 32(5) (1992) 474-482."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Klopman2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

Cum_S = Cum_S+const

OPEN "A", #2, "/data/data/cz.jh.suite/files/Klopman2/JH-Klopman2.out"
PRINT #2, ""
PRINT #2, "Solubility of the compound in water, log S(mol.dm-3) = "; Cum_S-3 USING "####.##"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Gilles Klopman, Shaomeng Wang, Donald M. Balthasar, Journal of chemical"
PRINT #2, " information and computer sciences 32(5) (1992) 474-482."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Klopman2.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
