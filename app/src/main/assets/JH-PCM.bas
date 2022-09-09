CLS

DIM Dat$(200)
DIM Inp$(101)

Cumul_Elng = 0
Recipr_Elng = 0
Cumul_Stoich = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/PCM/JH-PCM.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/PCM/JH-PCM.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "================== * Procedure PCM (PARTIAL CHARGE MODEL) * ===================="
PRINT #2, "Version 1.01 for Android"
#PRINT #2, "Compiled 2018-02-17 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/PCM/JH-PCM.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "================== * Procedure PCM (PARTIAL CHARGE MODEL) * ===================="
PRINT "Version 1.01 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-PCM.inp and start the program again."
PRINT "The results will appear in JH-PCM.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Marc Henry, Jean Pierre Jolivet, Jacques Livage, in Chemistry, Spectroscopy"
PRINT " and Applications of Sol-Gel Glasses, Springer, Berlin Heidelberg 1992, 153-206."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-PCM.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/PCM/JH-PCM.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-PCM.inp and start the program again."
PRINT #2, "The results will appear in JH-PCM.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Marc Henry, Jean Pierre Jolivet, Jacques Livage, in Chemistry, Spectroscopy"
PRINT #2, " and Applications of Sol-Gel Glasses, Springer, Berlin Heidelberg 1992, 153-206."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-PCM.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
GOTO Finish
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/PCM/JH-PCM.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
CLOSE #2

I% = 0

DO

INPUT #1, Item$

Lenght% = LEN(Item$)
Dat$(I%) = Item$
Delim% = INSTR(Item$, ";")
Symbol$ = LEFT$(Item$, Delim%-1)
Number$ = MID$(Item$, Delim%+1, Lenght%)

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/PCM/JH-PCM.inp"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LenghtReq% = LEN(Request$)
Lim% = INSTR(Request$, ";")
Atom$ = LEFT$(Request$, Lim%-1)
Count$ = MID$(Request$, Lim%+1, LenghtReq%)

IF I% = 0 AND J% = 0 THEN
Z = VAL(Atom$)
ENDIF

IF I% = 0 AND J% = 0 AND Z = 0 AND Atom$ <> "0" THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "================== * Procedure PCM (PARTIAL CHARGE MODEL) * ===================="
PRINT "Version 1.01 for Windows (32 bit)"
#PRINT "Compiled 2017-10-12 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2017"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "Wrong charge of the species. Please check the first line in JH-PCM.inp."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Marc Henry, Jean Pierre Jolivet, Jacques Livage, in Chemistry, Spectroscopy"
PRINT " and Applications of Sol-Gel Glasses, Springer, Berlin Heidelberg 1992, 153-206."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-PCM.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/PCM/JH-PCM.out"
PRINT #2, "Wrong charge of the species. Please check the first line in JH-PCM.inp."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Marc Henry, Jean Pierre Jolivet, Jacques Livage, in Chemistry, Spectroscopy"
PRINT #2, " and Applications of Sol-Gel Glasses, Springer, Berlin Heidelberg 1992, 153-206."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-PCM.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
GOTO Finish
ENDIF

IF Symbol$ = Atom$ OR Atom$ = Symbol$ THEN 
G$ = Number$
Stoich$ = Count$
IF VAL(G$) <> 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/PCM/JH-PCM.out"
PRINT #2, "Element "; Symbol$,
PRINT #2, "Number of atoms "; Stoich$,
PRINT #2, "Electronegativity "; VAL(G$) USING "###.##"
CLOSE #2
ENDIF
ELSE
G$ = "*"
Stoich$ = "0"
ENDIF

IF VAL(G$) <> 0 THEN
Elng = SQRT(VAL(G$))
RE = 1 / (SQRT(VAL(G$)))

Stoich = VAL(Stoich$)
Cumul_Stoich = Cumul_Stoich + Stoich

Cumul_Elng = Cumul_Elng + (Elng * Stoich)

Recipr_Elng = Recipr_Elng + (RE * Stoich)

ENDIF

J% = J% + 1
EXIT IF (J% = 100 OR Atom$ = "")
LOOP

CLOSE #3

I% = I% + 1

EXIT IF (I% = 200 OR Symbol$ = "")

LOOP

IF Cumul_Elng = 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "================== * Procedure PCM (PARTIAL CHARGE MODEL) * ===================="
PRINT "Version 1.01 for Windows (32 bit)"
#PRINT "Compiled 2017-10-12 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2017"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "Element error. Please check JH-PCM.inp."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Marc Henry, Jean Pierre Jolivet, Jacques Livage, in Chemistry, Spectroscopy"
PRINT " and Applications of Sol-Gel Glasses, Springer, Berlin Heidelberg 1992, 153-206."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-PCM.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/PCM/JH-PCM.out"
PRINT #2, "Element error. Please check JH-PCM.inp."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Marc Henry, Jean Pierre Jolivet, Jacques Livage, in Chemistry, Spectroscopy"
PRINT #2, " and Applications of Sol-Gel Glasses, Springer, Berlin Heidelberg 1992, 153-206."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-PCM.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
GOTO Finish
ENDIF

Elng_species = (Cumul_Elng + 1.36 * Z)/Recipr_Elng

CLOSE #1

OPEN "A", #2, "/data/data/cz.jh.suite/files/PCM/JH-PCM.out"
PRINT #2, "Input overall charge "; Z
PRINT #2, "Electronegativity of the species: "; Elng_species USING "###.##"
CLOSE #2

! SECOND PART

OPEN "A", #2, "/data/data/cz.jh.suite/files/PCM/JH-PCM.out"
PRINT #2, "Atom", "Atomic charge"
CLOSE #2

delta = 0
Charge = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/PCM/JH-PCM.dat"

DIM Dat$(200)
DIM Inp$(101)

K% = 0

DO

INPUT #1, Item$

Lenght% = LEN(Item$)
Dat$(K%) = Item$
Delim% = INSTR(Item$, ";")
Symbol$ = LEFT$(Item$, Delim%-1)
Number$ = MID$(Item$, Delim%+1, Lenght%)

L% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/PCM/JH-PCM.inp"

DO

INPUT #3, Request$
Inp$(L%) = Request$
LenghtReq% = LEN(Request$)
Lim% = INSTR(Request$, ";")
Atom$ = LEFT$(Request$, Lim%-1)
Count$ = MID$(Request$, Lim%+1, LenghtReq%)

IF Symbol$ = Atom$ OR Atom$ = Symbol$ THEN 
G$ = Number$
Stoich$ = Count$
ELSE
G$ = "*"
Stoich$ = "0"
ENDIF

IF VAL(G$) <> 0 THEN
delta = (Elng_species - VAL(G$))/(1.36 * SQRT(VAL(G$)))
Abbr$ = Atom$

OPEN "A", #2, "/data/data/cz.jh.suite/files/PCM/JH-PCM.out"
PRINT #2, Abbr$, 
PRINT #2, delta USING "###.##"
CLOSE #2
ENDIF

IF Symbol$ = Atom$ OR Atom$ = Symbol$ THEN
Charge = Charge + delta * VAL(Count$)
ENDIF


L% = L% + 1
EXIT IF (L% = 100 OR Atom$ = "")
LOOP

CLOSE #3

K% = K% + 1
EXIT IF (K% = 200 OR Symbol$ = "")
LOOP

OPEN "A", #2, "/data/data/cz.jh.suite/files/PCM/JH-PCM.out"
PRINT #2, "Sum of atomic charges "; Charge USING "###.##"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Marc Henry, Jean Pierre Jolivet, Jacques Livage, in Chemistry, Spectroscopy"
PRINT #2, " and Applications of Sol-Gel Glasses, Springer, Berlin Heidelberg 1992, 153-206."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-PCM.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
Finish:
EXIT
END
