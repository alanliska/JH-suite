CLS

DIM Dat$(200)
DIM Inp$(101)

Cum_G = 0
Cum_H = 0
Cum_S = 0
Cum_NA = 0
Cum_NAplus = 0
Cum_NAminus = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Dick/JH-Dick.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Dick/JH-Dick.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "============================= * PROCEDURE DICK * ==============================="
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-02-17 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Dick/JH-Dick.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "============================= * PROCEDURE DICK * ==============================="
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Dick.inp and start the program"
PRINT "again. The results will appear in JH-Dick.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] J. M. Dick, D. E. LaRowe, H.C. Helgeson, Biogeosciences 3 (2006) 311-336."
PRINT "[2] J. M. Dick, D. E. LaRowe, H. C. Helgeson, Biogeosciences Discussions 2"
PRINT " (2005) 1515-1615."
PRINT "[3] Jan P. Amend, Harold C. Helgeson, Biophysical Chemistry 84 (2000) 105-136." 
PRINT "[4] Allen J. Bard, Roger Parsons, Joseph Jordan: Standard Potentials in Aqueous"
PRINT " Solution. Marcel Dekker, New York and Basel 1985."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Dick.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Dick/JH-Dick.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Dick.inp and start the program again."
PRINT #2, "The results will appear in JH-Dick.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] J. M. Dick, D. E. LaRowe, H.C. Helgeson, Biogeosciences 3 (2006) 311-336."
PRINT #2, "[2] J. M. Dick, D. E. LaRowe, H. C. Helgeson, Biogeosciences Discussions 2"
PRINT #2, " (2005) 1515-1615."
PRINT #2, "[3] Jan P. Amend, Harold C. Helgeson, Biophysical Chemistry 84 (2000) 105-136." 
PRINT #2, "[4] Allen J. Bard, Roger Parsons, Joseph Jordan: Standard Potentials in Aqueous"
PRINT #2, " Solution. Marcel Dekker, New York and Basel 1985."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Dick.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Dick/JH-Dick.out"
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
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)

Symbol$ = MID$(Item$, 1, Delim1%-1)
G$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
H$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
S$ = MID$(Item$, Delim3%+1, Lenght%-Delim3%)

G = VAL(G$)
H = VAL(H$)
S = VAL(S$)

IF Symbol$ = "AABB" THEN 
G_AABB = G
H_AABB = H
S_AABB = S
ENDIF

IF Symbol$ = "AABB+" THEN 
G_AABBplus = G
H_AABBplus = H
S_AABBplus = S
ENDIF

IF Symbol$ = "AABB-" THEN 
G_AABBminus = G
H_AABBminus = H
S_AABBminus = S
ENDIF

IF Symbol$ = "PBB" THEN 
G_PBB = G
H_PBB = H
S_PBB = S
ENDIF

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Dick/JH-Dick.inp"

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
Cum_H = Cum_H + H * VAL(Stoich$)
Cum_S = Cum_S + S * VAL(Stoich$)
Cum_NA = Cum_NA + VAL(Stoich$)

IF INSTR(Symbol$, "+") = 1 THEN
Stoich$ = Count$
Cum_NAplus = Cum_NAplus + VAL(Stoich$)
ENDIF

IF INSTR(Symbol$, "-") = 1 THEN
Stoich$ = Count$
Cum_NAminus = Cum_NAminus + VAL(Stoich$)
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Dick/JH-Dick.out"
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
OPEN "A", #2, "/data/data/cz.jh.suite/files/Dick/JH-Dick.out"
PRINT #2, "No atoms / groups identified. Please check your input."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] J. M. Dick, D. E. LaRowe, H.C. Helgeson, Biogeosciences 3 (2006) 311-336."
PRINT #2, "[2] J. M. Dick, D. E. LaRowe, H. C. Helgeson, Biogeosciences Discussions 2"
PRINT #2, " (2005) 1515-1615."
PRINT #2, "[3] Jan P. Amend, Harold C. Helgeson, Biophysical Chemistry 84 (2000) 105-136." 
PRINT #2, "[4] Allen J. Bard, Roger Parsons, Joseph Jordan: Standard Potentials in Aqueous"
PRINT #2, " Solution. Marcel Dekker, New York and Basel 1985."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Dick.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

Number = Cum_NA
Numberplus = Cum_NAplus
Numberminus = Cum_NAminus

Charge = Cum_NAplus-Cum_NAminus

IF Charge = 0 THEN
G0 = Cum_G + (Cum_NA-1)*G_PBB + G_AABB
H0 = Cum_H + (Cum_NA-1)*H_PBB + H_AABB
S0 = Cum_S + (Cum_NA-1)*S_PBB + S_AABB
ELSE IF Charge > 0 THEN
G0 = Cum_G + (Cum_NA-1)*G_PBB + G_AABBplus
H0 = Cum_H + (Cum_NA-1)*H_PBB + H_AABBplus
S0 = Cum_S + (Cum_NA-1)*S_PBB + S_AABBplus
ELSE IF Charge < 0 THEN
G0 = Cum_G + (Cum_NA-1)*G_PBB + G_AABBminus
H0 = Cum_H + (Cum_NA-1)*H_PBB + H_AABBminus
S0 = Cum_S + (Cum_NA-1)*S_PBB + S_AABBminus
ENDIF

Gwater = (Number-1)*(-237.178/4.184)
Hwater = (Number-1)*(-285.830/4.184)
Swater = (Number-1)*(69.91/4.184)

Gamk = Cum_G + Numberplus*G_AABBplus + Numberminus*G_AABBminus + (Number-Numberplus-Numberminus)*G_AABB
Hamk = Cum_H + Numberplus*H_AABBplus + Numberminus*H_AABBminus + (Number-Numberplus-Numberminus)*H_AABB
Samk = Cum_S + Numberplus*S_AABBplus + Numberminus*S_AABBminus + (Number-Numberplus-Numberminus)*S_AABB

TotalG = G0+Gwater-Gamk
TotalH = H0+Hwater-Hamk
TotalS = S0+Swater-Samk

logK = TotalG*4.184*(-0.175)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Dick/JH-Dick.out"
PRINT #2, ""
PRINT #2, "Number of amino acid fragments: "; Cum_NA USING "###"
PRINT #2, "Number of positive amino acid fragments: "; Cum_NAplus USING "###"
PRINT #2, "Number of negative amino acid fragments: "; Cum_NAminus USING "###"
PRINT #2, ""
PRINT #2, "Standard formation Gibbs energy, G°(f,aq) = "; G0*4.184 USING "#####.##"; " kJ.mol-1"
PRINT #2, "Standard formation enthalpy, H°(f,aq) = "; H0*4.184 USING "#####.##"; " kJ.mol-1"
PRINT #2, "Standard formation entropy, S°(f,aq) = "; S0*4.184 USING "#####.##"; " J.K-1.mol-1"
PRINT #2, ""
PRINT #2, "Equilibrium constant (formation of polypeptide from amino acids),"
PRINT #2, "                            log K = "; logK USING "####.##"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] J. M. Dick, D. E. LaRowe, H.C. Helgeson, Biogeosciences 3 (2006) 311-336."
PRINT #2, "[2] J. M. Dick, D. E. LaRowe, H. C. Helgeson, Biogeosciences Discussions 2"
PRINT #2, " (2005) 1515-1615."
PRINT #2, "[3] Jan P. Amend, Harold C. Helgeson, Biophysical Chemistry 84 (2000) 105-136." 
PRINT #2, "[4] Allen J. Bard, Roger Parsons, Joseph Jordan: Standard Potentials in Aqueous"
PRINT #2, " Solution. Marcel Dekker, New York and Basel 1985."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Dick.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
