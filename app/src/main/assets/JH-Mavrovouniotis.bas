CLS

DIM Dat$(200)
DIM Inp$(101)

Cum_G = 0
Cum_NA = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Mavrovouniotis/JH-Mavrovouniotis.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Mavrovouniotis/JH-Mavrovouniotis.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "============== * Procedure Mavrovouniotis (organic compounds) * ================"
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-02-17 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Mavrovouniotis/JH-Mavrovouniotis.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "============== * Procedure Mavrovouniotis (organic compounds) * ================"
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Mavrovouniotis.inp and start the"
PRINT "program again. The results will appear in JH-Mavrovouniotis.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Michael L. Mavrovouniotis, The Journal of Biological Chemistry 266(22)"
PRINT " (1991) 14440-14445."
PRINT "[2] Michael L. Mavrovouniotis, Patrick Bayol, Tu-Kien Michael Lam, George"
PRINT " Stephanopoulos, Gregory Stephanopoulos, Biotechnology Techniques 2(1) (1988)"
PRINT " 23-28." 
PRINT "[3] Michael L. Mavrovouniotis, Biotechnology and Bioengineering 36 (1990)"
PRINT " 1070-1082."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Mavrovouniotis.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Mavrovouniotis/JH-Mavrovouniotis.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Mavrovouniotis.inp and start the"
PRINT #2, "program again. The results will appear in JH-Mavrovouniotis.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Michael L. Mavrovouniotis, The Journal of Biological Chemistry 266(22)"
PRINT #2, " (1991) 14440-14445."
PRINT #2, "[2] Michael L. Mavrovouniotis, Patrick Bayol, Tu-Kien Michael Lam, George"
PRINT #2, " Stephanopoulos, Gregory Stephanopoulos, Biotechnology Techniques 2(1) (1988)"
PRINT #2, " 23-28." 
PRINT #2, "[3] Michael L. Mavrovouniotis, Biotechnology and Bioengineering 36 (1990)"
PRINT #2, " 1070-1082."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Mavrovouniotis.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Mavrovouniotis/JH-Mavrovouniotis.out"
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
G$ = MID$(Item$, Delim1%+1, Lenght%-Delim1%)
G = VAL(G$)

IF Symbol$ = "Origin" THEN 
Orig = G
ENDIF

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Mavrovouniotis/JH-Mavrovouniotis.inp"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LenghtReq% = LEN(Request$)
Lim% = INSTR(Request$, ";")
Atom$ = LEFT$(Request$, Lim%-1)
Count$ = MID$(Request$, Lim%+1, LenghtReq%)

IF (Symbol$ = Atom$ OR Atom$ = Symbol$) AND (Symbol$ <> "" OR Atom$ <> "") THEN 
Stoich$ = Count$

Cum_G = Cum_G + G * VAL(Stoich$)
Cum_NA = Cum_NA + VAL(Stoich$)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Mavrovouniotis/JH-Mavrovouniotis.out"
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
OPEN "A", #2, "/data/data/cz.jh.suite/files/Mavrovouniotis/JH-Mavrovouniotis.out"
PRINT #2, "No atoms / groups identified. Please check your input."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Michael L. Mavrovouniotis, The Journal of Biological Chemistry 266(22)"
PRINT #2, " (1991) 14440-14445."
PRINT #2, "[2] Michael L. Mavrovouniotis, Patrick Bayol, Tu-Kien Michael Lam, George"
PRINT #2, " Stephanopoulos, Gregory Stephanopoulos, Biotechnology Techniques 2(1) (1988)"
PRINT #2, " 23-28." 
PRINT #2, "[3] Michael L. Mavrovouniotis, Biotechnology and Bioengineering 36 (1990)"
PRINT #2, " 1070-1082."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Mavrovouniotis.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

Cum_G = Cum_G+Orig 

OPEN "A", #2, "/data/data/cz.jh.suite/files/Mavrovouniotis/JH-Mavrovouniotis.out"
PRINT #2, ""
PRINT #2, "Standard formation Gibbs energy, G°(f,aq) = "; Cum_G*4.184 USING "####.##"; " kJ.mol-1"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Michael L. Mavrovouniotis, The Journal of Biological Chemistry 266(22)"
PRINT #2, " (1991) 14440-14445."
PRINT #2, "[2] Michael L. Mavrovouniotis, Patrick Bayol, Tu-Kien Michael Lam, George"
PRINT #2, " Stephanopoulos, Gregory Stephanopoulos, Biotechnology Techniques 2(1) (1988)"
PRINT #2, " 23-28." 
PRINT #2, "[3] Michael L. Mavrovouniotis, Biotechnology and Bioengineering 36 (1990)"
PRINT #2, " 1070-1082."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Mavrovouniotis.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
