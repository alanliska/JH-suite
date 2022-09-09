CLS

DIM Dat$(200)
DIM Inp$(101)

Cum_Hf = 0
Cum_U = 0
Cum_Count = 0
Mark_Unc = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Pedley/JH-Pedley.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Pedley/JH-Pedley.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "============================ * Procedure PEDLEY * =============================="
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-03-27 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Pedley/JH-Pedley.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "============================ * Procedure PEDLEY * =============================="
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2018-03-27 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Pedley.inp and start the program"
PRINT "again. The results will appear in JH-Pedley.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] J.B. Pedley, R.D. Naylor, S.P. Kirby: Thermochemical Data of Organic"
PRINT "    Compounds, Second Edition. Chapman and Hall, London and New York 1986."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Pedley.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Pedley/JH-Pedley.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Pedley.inp and start the program"
PRINT #2, "again. The results will appear in JH-Pedley.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] J.B. Pedley, R.D. Naylor, S.P. Kirby: Thermochemical Data of Organic"
PRINT #2, "    Compounds, Second Edition. Chapman and Hall, London and New York 1986."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Pedley.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Pedley/JH-Pedley.out"
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
Code$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
H$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
Unc$ = MID$(Item$, Delim3%+1, Length%-Delim3%)

H = VAL(H$)
Unc = VAL(Unc$)

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Pedley/JH-Pedley.inp"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LenghtReq% = LEN(Request$)
Lim% = INSTR(Request$, ";")
Atom$ = LEFT$(Request$, Lim%-1)
Count$ = MID$(Request$, Lim%+1, LenghtReq%)

IF (Symbol$ = Atom$ OR Atom$ = Symbol$) AND (Symbol$ <> "" OR Atom$ <> "") THEN 
Stoich$ = Count$

Cum_Hf = Cum_Hf + H * VAL(Stoich$)
Cum_U = Cum_U + Unc * VAL(Stoich$)
Cum_Count = Cum_Count + VAL(Stoich$)

IF Unc <> 0 THEN
Mark_Unc = Mark_Unc + VAL(Stoich$)
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Pedley/JH-Pedley.out"
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

IF Cum_Hf = 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Pedley/JH-Pedley.out"
PRINT #2, "No atoms / groups identified. Please check your input."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] J.B. Pedley, R.D. Naylor, S.P. Kirby: Thermochemical Data of Organic"
PRINT #2, "    Compounds, Second Edition. Chapman and Hall, London and New York 1986."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Pedley.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Pedley/JH-Pedley.out"
PRINT #2, ""
PRINT #2, "Standard enthalpy of fusion = "; Cum_Hf USING "####.#"; " kJ.mol-1"
PRINT #2, "Standard error = "; Cum_U USING "####.#"; " kJ.mol-1"
IF Mark_Unc < Cum_Count THEN
PRINT #2, ""
PRINT #2, "WARNING"
PRINT #2, "======="
PRINT #2, "The standard error was not given for all groups, the real error may be"
PRINT #2, "higher."
ENDIF
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] J.B. Pedley, R.D. Naylor, S.P. Kirby: Thermochemical Data of Organic"
PRINT #2, "    Compounds, Second Edition. Chapman and Hall, London and New York 1986."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Pedley.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
