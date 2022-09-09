CLS

DIM Dat$(200)
DIM Inp$(101)

Cum_G = 0
Cum_NA = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Cabani/JH-Cabani.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Cabani/JH-Cabani.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "================== * Procedure Cabani (organic compounds) * ===================="
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2022-08-14 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Cabani/JH-Cabani.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "================== * Procedure Cabani (organic compounds) * ===================="
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2022-08-14 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Cabani.inp and start the"
PRINT "program again. The results will appear in JH-Cabani.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Sergio Cabani, Paolo Gianni, Vincenzo Mollica, Luciano Lepori, Journal"
PRINT " of Solution Chemistry 10 (1981) 563-595."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Cabani.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Cabani/JH-Cabani.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Cabani.inp and start the"
PRINT #2, "program again. The results will appear in JH-Cabani.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Sergio Cabani, Paolo Gianni, Vincenzo Mollica, Luciano Lepori, Journal"
PRINT #2, " of Solution Chemistry 10 (1981) 563-595."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Cabani.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Cabani/JH-Cabani.out"
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

IF Symbol$ = "AZ" THEN 
AZ = G
ENDIF

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Cabani/JH-Cabani.inp"

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

OPEN "A", #2, "/data/data/cz.jh.suite/files/Cabani/JH-Cabani.out"
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
OPEN "A", #2, "/data/data/cz.jh.suite/files/Cabani/JH-Cabani.out"
PRINT #2, "No atoms / groups identified. Please check your input."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Sergio Cabani, Paolo Gianni, Vincenzo Mollica, Luciano Lepori, Journal"
PRINT #2, " of Solution Chemistry 10 (1981) 563-595."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Cabani.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

Cum_G = Cum_G+AZ

OPEN "A", #2, "/data/data/cz.jh.suite/files/Cabani/JH-Cabani.out"
PRINT #2, ""
PRINT #2, "Standard hydration Gibbs energy, G�(hydr) = "; Cum_G USING "####.##"; " kJ.mol-1"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Sergio Cabani, Paolo Gianni, Vincenzo Mollica, Luciano Lepori, Journal"
PRINT #2, " of Solution Chemistry 10 (1981) 563-595."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Cabani.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
