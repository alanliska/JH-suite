CLS

OPEN "I", #1, "/data/data/cz.jh.suite/files/Misono1/JH-Misono1.inp"
INPUT #1, A$, B$
CLOSE #1

OPEN "O", #2, "/data/data/cz.jh.suite/files/Misono1/JH-Misono1.out"
PRINT #2, "=========================== * JH PROGRAM SUITE * ==============================="
PRINT #2, "========================== * Procedure MISONO I * =============================="
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-02-17 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #2, "================================================================================"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Misono1/JH-Misono1.inp")
IF ExistInput <> -1 THEN
PRINT "Missing the input file."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Makoto Misono, Ei´ichiro Ochiai, Yasukazu Saito, Yukio Yoneda, J. Inorg."
PRINT " Nucl. Chem. 29 (1967) 2685-2691."
PRINT "[2] Walter Gordy, WJ Orville Thomas, The Journal of Chemical Physics 24(2)"
PRINT " (1956) 439-444."
PRINT "[3] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Misono1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Misono1/JH-Misono1.out"
PRINT #2, "Missing the input file."
GOTO Error
ENDIF

CatLength = LEN(A$)
CatChargePos = INSTR(A$, "+")
IF CatChargePos = 0 THEN
CatCharge = 0
Element$ = MID$(A$, 1, CatChargePos-1)
ELSE IF CatChargePos = CatLength THEN
CatCharge = 1
Element$ = MID$(A$, 1, CatChargePos-1)
ELSE
CatCharge$ = MID$(A$, CatChargePos+1, CatLength-CatChargePos)
CatCharge = VAL(CatCharge$)
Element$ = MID$(A$, 1, CatChargePos-1)
ENDIF

zM = CatCharge

AnLength = LEN(B$)
AnChargePos = INSTR(B$, "-")
IF AnChargePos = 0 THEN
AnCharge = 0
Element1$ = MID$(B$, 1, CatChargePos-1)
ELSE IF AnChargePos = AnLength THEN
AnCharge = -1
Element1$ = MID$(B$, 1, CatChargePos-1)
ELSE
AnCharge$ = MID$(B$, AnChargePos+1, AnLength-AnChargePos)
AnCharge1 = VAL(AnCharge$)
AnCharge = -AnCharge1
Element1$ = MID$(B$, 1, CatChargePos-1)
ENDIF

zL = AnCharge

DIM StockarText$(200)
OPEN "I", #3, "/data/data/cz.jh.suite/files/Misono1/JH-Radii_Stockar.dat"
FOR K% = 0 TO 199
INPUT #3, StockarRadii$
StockarText$(K%) = StockarRadii$
LengthStockar = LEN(StockarRadii$)
Delim21% = INSTR(StockarRadii$, ";")
Delim22% = INSTR(StockarRadii$, ";", Delim21%+1)
Delim23% = INSTR(StockarRadii$, ";", Delim22%+1)
Delim24% = INSTR(StockarRadii$, ";", Delim23%+1)
Delim25% = INSTR(StockarRadii$, ";", Delim24%+1)
Delim26% = INSTR(StockarRadii$, ";", Delim25%+1)
Delim27% = INSTR(StockarRadii$, ";", Delim26%+1)
Delim28% = INSTR(StockarRadii$, ";", Delim27%+1)
Atom$ = MID$(StockarRadii$, 1, Delim21%-1)
r1$ = MID$(StockarRadii$, Delim21%+1, Delim22%-Delim21%-1)
r2$ = MID$(StockarRadii$, Delim22%+1, Delim23%-Delim22%-1)
r3$ = MID$(StockarRadii$, Delim23%+1, Delim24%-Delim23%-1)
r4$ = MID$(StockarRadii$, Delim24%+1, Delim25%-Delim24%-1)
r5$ = MID$(StockarRadii$, Delim25%+1, Delim26%-Delim25%-1)
r6$ = MID$(StockarRadii$, Delim26%+1, Delim27%-Delim26%-1)
r7$ = MID$(StockarRadii$, Delim27%+1, Delim28%-Delim27%-1)
r8$ = MID$(StockarRadii$, Delim28%+1, LengthStockar-Delim28%)
r1 = VAL(r1$)
r2 = VAL(r2$)
r3 = VAL(r3$)
r4 = VAL(r4$)
r5 = VAL(r5$)
r6 = VAL(r6$)
r7 = VAL(r7$)
r8 = VAL(r8$)
IF Atom$ = Element$ AND zM = 1 THEN
rM = r1
ELSE IF Atom$ = Element$ AND zM = 2 THEN
rM = r2
ELSE IF Atom$ = Element$ AND zM = 3 THEN
rM = r3
ELSE IF Atom$ = Element$ AND zM = 4 THEN
rM = r4
ELSE IF Atom$ = Element$ AND zM = 5 THEN
rM = r5
ELSE IF Atom$ = Element$ AND zM = 6 THEN
rM = r6
ELSE IF Atom$ = Element$ AND zM = 7 THEN
rM = r7
ELSE IF Atom$ = Element$ AND zM = 8 THEN
rM = r8
ENDIF
EXIT IF StockarRadii$ = ""
NEXT K%
CLOSE #3

IF rM = 0 THEN
PRINT "Element and/or its charge not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Makoto Misono, Ei´ichiro Ochiai, Yasukazu Saito, Yukio Yoneda, J. Inorg."
PRINT " Nucl. Chem. 29 (1967) 2685-2691."
PRINT "[2] Walter Gordy, WJ Orville Thomas, The Journal of Chemical Physics 24(2)"
PRINT " (1956) 439-444."
PRINT "[3] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Misono1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Misono1/JH-Misono1.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

DIM IText$(200)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Misono1/JH-AtomData_Misono1.dat"
FOR O% = 0 TO 199
INPUT #4, IBlock$
IText$(O%) = IBlock$
LengthI = LEN(IBlock$)
Delim91% = INSTR(IBlock$, ";")
Delim92% = INSTR(IBlock$, ";", Delim91%+1)
Delim93% = INSTR(IBlock$, ";", Delim92%+1)
Delim94% = INSTR(IBlock$, ";", Delim93%+1)
Delim95% = INSTR(IBlock$, ";", Delim94%+1)
Delim96% = INSTR(IBlock$, ";", Delim95%+1)
Delim97% = INSTR(IBlock$, ";", Delim96%+1)
Delim98% = INSTR(IBlock$, ";", Delim97%+1)
Delim99% = INSTR(IBlock$, ";", Delim98%+1)
Atom$ = MID$(IBlock$, 1, Delim91%-1)
EA$ = MID$(IBlock$, Delim91%+1, Delim92%-Delim91%-1)
IE1$ = MID$(IBlock$, Delim92%+1, Delim93%-Delim92%-1)
IE2$ = MID$(IBlock$, Delim93%+1, Delim94%-Delim93%-1)
IE3$ = MID$(IBlock$, Delim94%+1, Delim95%-Delim94%-1)
IE4$ = MID$(IBlock$, Delim95%+1, Delim96%-Delim95%-1)
IE5$ = MID$(IBlock$, Delim96%+1, Delim97%-Delim96%-1)
IE6$ = MID$(IBlock$, Delim97%+1, Delim98%-Delim97%-1)
IE7$ = MID$(IBlock$, Delim98%+1, Delim99%-Delim98%-1)
IE8$ = MID$(IBlock$, Delim99%+1, LengthI-Delim99%)
EA = VAL(EA$)
IE1 = VAL(IE1$)
IE2 = VAL(IE2$)
IE3 = VAL(IE3$)
IE4 = VAL(IE4$)
IE5 = VAL(IE5$)
IE6 = VAL(IE6$)
IE7 = VAL(IE7$)
IE8 = VAL(IE8$)
IF Atom$ = Element$ AND zM = 1 THEN
In = IE1
Im = IE2
SumIn = IE1
ELSE IF Atom$ = Element$ AND zM = 2 THEN
In = IE2
Im = IE3
SumIn = IE1+IE2
ELSE IF Atom$ = Element$ AND zM = 3 THEN
In = IE3
Im = IE4
SumIn = IE1+IE2+IE3
ELSE IF Atom$ = Element$ AND zM = 4 THEN
In = IE4
Im = IE5
SumIn = IE1+IE2+IE3+IE4
ELSE IF Atom$ = Element$ AND zM = 5 THEN
In = IE5
Im = IE6
SumIn = IE1+IE2+IE3+IE4+IE5
ELSE IF Atom$ = Element$ AND zM = 6 THEN
In = IE6
Im = IE7
SumIn = IE1+IE2+IE3+IE4+IE5+IE6
ELSE IF Atom$ = Element$ AND zM = 7 THEN
In = IE7
Im = IE8
SumIn = IE1+IE2+IE3+IE4+IE5+IE6+IE7
ENDIF
EXIT IF IBlock$ = ""
NEXT O%
CLOSE #4

IF In = 0 THEN
PRINT "Element not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Makoto Misono, Ei´ichiro Ochiai, Yasukazu Saito, Yukio Yoneda, J. Inorg."
PRINT " Nucl. Chem. 29 (1967) 2685-2691."
PRINT "[2] Walter Gordy, WJ Orville Thomas, The Journal of Chemical Physics 24(2)"
PRINT " (1956) 439-444."
PRINT "[3] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Misono1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Misono1/JH-Misono1.out"
PRINT #2, "Element not found."
GOTO Error
ENDIF

DIM Electroneg$(500)
OPEN "I", #5, "/data/data/cz.jh.suite/files/Misono1/JH-Electronegativity_Misono1.dat"
FOR L% = 0 TO 499
INPUT #5, Electronegativity$
Electroneg$(L%) = Electronegativity$
LengthElng = LEN(Electronegativity$)
Delim31% = INSTR(Electronegativity$, ";")
Atom$ = MID$(Electronegativity$, 1, Delim31%-1)
ElngX$ = MID$(Electronegativity$, Delim31%+1, LengthElng-Delim31%)
ElngX = VAL(ElngX$)

IF Atom$ = Element$ THEN
XM = ElngX
ENDIF
EXIT IF Electronegativity$ = ""
NEXT L%
CLOSE #5

IF XM = 0 THEN
PRINT "Element and/or its charge not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Makoto Misono, Ei´ichiro Ochiai, Yasukazu Saito, Yukio Yoneda, J. Inorg."
PRINT " Nucl. Chem. 29 (1967) 2685-2691."
PRINT "[2] Walter Gordy, WJ Orville Thomas, The Journal of Chemical Physics 24(2)"
PRINT " (1956) 439-444."
PRINT "[3] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Misono1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Misono1/JH-Misono1.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

DIM Parms$(500)
OPEN "I", #6, "/data/data/cz.jh.suite/files/Misono1/JH-Misono1.dat"
FOR L% = 0 TO 499
INPUT #6, ParmText$
Parms$(L%) = ParmText$
LengthPrm = LEN(ParmText$)
Delim131% = INSTR(ParmText$, ";")
Delim132% = INSTR(ParmText$, ";", Delim131%+1)
Delim133% = INSTR(ParmText$, ";", Delim132%+1)
Atom$ = MID$(ParmText$, 1, Delim131%-1)
Alpha$ = MID$(ParmText$, Delim131%+1, Delim132%-Delim131%-1)
Beta$ = MID$(ParmText$, Delim132%+1, Delim133%-Delim132%-1)
Gamma$ = MID$(ParmText$, Delim133%+1, LengthPrm-Delim33%)
Alpha_prm = VAL(Alpha$)
Beta_prm = VAL(Beta$)
Gamma_prm = VAL(Gamma$)
IF Atom$ = B$ THEN
alpha = Alpha_prm
beta = Beta_prm
gamma = Gamma_prm
ENDIF
EXIT IF ParmText$ = ""
NEXT L%
CLOSE #6

IF alpha = 0 AND beta = 0 AND gamma = 0 THEN
PRINT "Element and/or its charge not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Makoto Misono, Ei´ichiro Ochiai, Yasukazu Saito, Yukio Yoneda, J. Inorg."
PRINT " Nucl. Chem. 29 (1967) 2685-2691."
PRINT "[2] Walter Gordy, WJ Orville Thomas, The Journal of Chemical Physics 24(2)"
PRINT " (1956) 439-444."
PRINT "[3] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Misono1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Misono1/JH-Misono1.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

X = ((XM + SQRT(SumIn))^2/10)
Y = 10*(In/Im)*(rM/SQRT(zM))
logK = alpha*X + beta*Y + gamma

OPEN "A", #2, "/data/data/cz.jh.suite/files/Misono1/JH-Misono1.out"
PRINT #2, "Lewis acid: "; A$
PRINT #2, "Lewis acid charge = "; zM
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Stockar)"
PRINT #2, "Electronegativity of the neutral atom = "; XM USING "##.#"
PRINT #2, "Parameter X = "; X USING "##.###"
PRINT #2, "Ionization energy to the valence state = "; In USING "##.###"
PRINT #2, "Subsequent ionization energy = "; Im USING "##.###"
PRINT #2, "Parameter Y = "; Y USING "##.###"
PRINT #2, ""
CLOSE #2

OPEN "A", #2, "/data/data/cz.jh.suite/files/Misono1/JH-Misono1.out"
PRINT #2, "Lewis base: "; B$
PRINT #2, "Lewis base charge = "; zL
PRINT #2, "Parameter alpha = "; alpha USING "###.##"
PRINT #2, "Parameter beta = "; beta USING "###.##"
PRINT #2, "Parameter gamma = "; gamma USING "###.##"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "Formation constant, log K = "; logK USING "###.##"
PRINT #2, ""
PRINT #2, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #2, ""

z = zL+zM

PRINT #2, A$+" + "+B$+" = "+Element$+ELement1$;

IF z = 0 THEN
PRINT #2, ""
ELSE IF z = 1 THEN
PRINT #2, "+"
ELSE IF z > 1 THEN
PRINT #2, "+"+STR$(z)
ELSE IF z = -1 THEN
PRINT #2, "-"
ELSE IF z < -1 THEN
PRINT #2, STR$(z)
ENDIF

PRINT #2, "     log_k  "; logK USING "###.##"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Makoto Misono, Ei´ichiro Ochiai, Yasukazu Saito, Yukio Yoneda, J. Inorg."
PRINT #2, " Nucl. Chem. 29 (1967) 2685-2691."
PRINT #2, "[2] Walter Gordy, WJ Orville Thomas, The Journal of Chemical Physics 24(2)"
PRINT #2, " (1956) 439-444."
PRINT #2, "[3] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Misono1.b terminated NORMALLY, "; DATE$; "; "; TIME$; "."
CLOSE #2
EXIT
END

Error:

PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Makoto Misono, Ei´ichiro Ochiai, Yasukazu Saito, Yukio Yoneda, J. Inorg."
PRINT #2, " Nucl. Chem. 29 (1967) 2685-2691."
PRINT #2, "[2] Walter Gordy, WJ Orville Thomas, The Journal of Chemical Physics 24(2)"
PRINT #2, " (1956) 439-444."
PRINT #2, "[3] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Misono1.b terminated ABNORMALLY, "; DATE$; "; "; TIME$; "."
CLOSE #2
QUIT
END
