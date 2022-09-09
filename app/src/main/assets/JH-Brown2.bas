CLS

OPEN "I", #1, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.inp"
INPUT #1, A$, B$, C$, D$, E$, F$, G$
CLOSE #1
OPEN "O", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "=========================== * JH PROGRAM SUITE * ==============================="
PRINT #2, "========================= * Procedure BROWN-SYLVA * ============================"
PRINT #2, "Version 1.01 for Android"
#PRINT #2, "Compiled 2018-02-17 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #2, "================================================================================"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Brown2/JH-Brown2.inp")
IF ExistInput <> -1 THEN
PRINT "Missing the input file."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT " 723-730."
PRINT "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT " Wiley-VCH, Weinheim 2016."
PRINT "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT " Gruyter, Berlin 2007."
PRINT "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Missing the input file."
GOTO Error
ENDIF

CNc = VAL(B$)
q = VAL(E$)
ThetaM = VAL(G$)

IF CNc < 1 OR q < 1 OR ThetaM < 1 THEN
PRINT "Wrong set of input parameters."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT " 723-730."
PRINT "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT " Wiley-VCH, Weinheim 2016."
PRINT "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT " Gruyter, Berlin 2007."
PRINT "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Wrong set of input parameters."
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

IF C$ = "Stockar" THEN

DIM StockarText$(200)
OPEN "I", #5, "/data/data/cz.jh.suite/files/Brown2/JH-Radii_Stockar.dat"
FOR K% = 0 TO 199
INPUT #5, StockarRadii$
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
CLOSE #5

IF rM = 0 THEN
PRINT "Element and/or its charge not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT " 723-730."
PRINT "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT " Wiley-VCH, Weinheim 2016."
PRINT "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT " Gruyter, Berlin 2007."
PRINT "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF C$ = "Shannon-CR" THEN

DIM ShannonText$(500)
OPEN "I", #6, "/data/data/cz.jh.suite/files/Brown2/JH-Radii_Shannon.dat"
FOR L% = 0 TO 499
INPUT #6, ShannonRadii$
ShannonText$(L%) = ShannonRadii$
LengthShannon = LEN(ShannonRadii$)
Delim31% = INSTR(ShannonRadii$, ";")
Delim32% = INSTR(ShannonRadii$, ";", Delim31%+1)
Delim33% = INSTR(ShannonRadii$, ";", Delim32%+1)
Atom$ = MID$(ShannonRadii$, 1, Delim31%-1)
CoordNum$ = MID$(ShannonRadii$, Delim31%+1, Delim32%-Delim31%-1)
rCR$ = MID$(ShannonRadii$, Delim32%+1, Delim33%-Delim32%-1)
rEIR$ = MID$(ShannonRadii$, Delim33%+1, LengthShannon-Delim33%)
CoordNum = VAL(CoordNum$)
rCR = VAL(rCR$)
rEIR = VAL(rEIR$)
IF Atom$ = A$ AND CoordNum$ = B$ THEN
rM = rCR
ENDIF
EXIT IF ShannonRadii$ = ""
NEXT L%
CLOSE #6

IF rM = 0 THEN
PRINT "Element and/or its charge not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT " 723-730."
PRINT "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT " Wiley-VCH, Weinheim 2016."
PRINT "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT " Gruyter, Berlin 2007."
PRINT "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF C$ = "Shannon-IR" THEN

DIM ShannonText$(500)
OPEN "I", #6, "/data/data/cz.jh.suite/files/Brown2/JH-Radii_Shannon.dat"
FOR L% = 0 TO 499
INPUT #6, ShannonRadii$
ShannonText$(L%) = ShannonRadii$
LengthShannon = LEN(ShannonRadii$)
Delim31% = INSTR(ShannonRadii$, ";")
Delim32% = INSTR(ShannonRadii$, ";", Delim31%+1)
Delim33% = INSTR(ShannonRadii$, ";", Delim32%+1)
Atom$ = MID$(ShannonRadii$, 1, Delim31%-1)
CoordNum$ = MID$(ShannonRadii$, Delim31%+1, Delim32%-Delim31%-1)
rCR$ = MID$(ShannonRadii$, Delim32%+1, Delim33%-Delim32%-1)
rEIR$ = MID$(ShannonRadii$, Delim33%+1, LengthShannon-Delim33%)
rCR = VAL(rCR$)
rEIR = VAL(rEIR$)
IF Atom$ = A$ AND CoordNum$ = B$ THEN
rM = rEIR
ENDIF
EXIT IF ShannonRadii$ = ""
NEXT L%
CLOSE #6

IF rM = 0 THEN
PRINT "Element and/or its charge not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT " 723-730."
PRINT "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT " Wiley-VCH, Weinheim 2016."
PRINT "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT " Gruyter, Berlin 2007."
PRINT "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF C$ <> "Stockar" AND C$ <> "Shannon-CR" AND C$ <> "Shannon-IR" THEN
PRINT "Type of lewis acid radii not recognized."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT " 723-730."
PRINT "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT " Wiley-VCH, Weinheim 2016."
PRINT "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT " Gruyter, Berlin 2007."
PRINT "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Type of lewis acid radii not recognized."
GOTO Error
ENDIF

AnLength = LEN(D$)
AnChargePos = INSTR(D$, "-")
IF AnChargePos = 0 THEN
AnCharge = 0
Element1$ = MID$(D$, 1, CatChargePos-1)
ELSE IF AnChargePos = AnLength THEN
AnCharge = -1
Element1$ = MID$(D$, 1, CatChargePos-1)
ELSE
AnCharge$ = MID$(D$, AnChargePos+1, AnLength-AnChargePos)
AnCharge1 = VAL(AnCharge$)
AnCharge = -AnCharge1
Element1$ = MID$(D$, 1, CatChargePos-1)
ENDIF

zL = AnCharge

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "INPUT"
PRINT #2, "================================================================================"
CLOSE #2

IF F$ <> "Brown" AND F$ <> "Parr" AND F$ <> "Klopman" THEN
PRINT "Type of electronicity calculation scheme not recognized."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT " 723-730."
PRINT "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT " Wiley-VCH, Weinheim 2016."
PRINT "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT " Gruyter, Berlin 2007."
PRINT "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Type of electronicity calculation scheme not recognized."
GOTO Error
ENDIF

Brown1:

DIM AcidText$(200)

OPEN "I", #3, "/data/data/cz.jh.suite/files/Brown2/JH-Acids_Brown2.dat"

FOR I% = 0 TO 199

INPUT #3, AcidsBrown$
AcidText$(I%) = AcidsBrown$
LengthAcid = LEN(AcidsBrown$)
Delim1% = INSTR(AcidsBrown$, ";")
Delim2% = INSTR(AcidsBrown$, ";", Delim1%+1)
Delim3% = INSTR(AcidsBrown$, ";", Delim2%+1)
Delim4% = INSTR(AcidsBrown$, ";", Delim3%+1)
Delim5% = INSTR(AcidsBrown$, ";", Delim4%+1)
Delim6% = INSTR(AcidsBrown$, ";", Delim5%+1)
Acid$ = MID$(AcidsBrown$, 1, Delim1%-1)
AcidElectr$ = MID$(AcidsBrown$, Delim1%+1, Delim2%-Delim1%-1)
AcidDel$ = MID$(AcidsBrown$, Delim2%+1, Delim3%-Delim2%-1)
AcidS$ = MID$(AcidsBrown$, Delim3%+1, Delim4%-Delim3%-1)
Acidn$ = MID$(AcidsBrown$, Delim4%+1, Delim5%-Delim4%-1)
Acidg_n$ = MID$(AcidsBrown$, Delim5%+1, Delim6%-Delim5%-1)
Acidd$ = MID$(AcidsBrown$, Delim6%+1, LengthAcid-Delim6%)
AcidElectr = VAL(AcidElectr$)
AcidDel = VAL(AcidDel$)
AcidS = VAL(AcidS$)
Acidn = VAL(Acidn$)
Acidg_n = VAL(Acidg_n$)
Acidd = VAL(Acidd$)
IF Acid$ = A$ THEN
AEl = AcidElectr
Del = AcidDel
S = AcidS
n = Acidn
g_n = Acidg_n
d = Acidd
ENDIF

EXIT IF Acid$ = ""
NEXT I%

CLOSE #3

IF F$ = "Brown" THEN
GOTO Query
ELSE IF F$ = "Parr" THEN
GOTO Parr1
ELSE IF F$ = "Klopman" THEN
GOTO Klopman1
ENDIF

Parr1:

OPEN "I", #10, "/data/data/cz.jh.suite/files/Brown2/JH-Parr.par"
INPUT #10, Parrpar$
LengthParr3 = LEN(Parrpar$)
Delim71% = INSTR(Parrpar$, ";")
Delim72% = INSTR(Parrpar$, ";", Delim71%+1)
Delim73% = INSTR(Parrpar$, ";", Delim72%+1)
Delim74% = INSTR(Parrpar$, ";", Delim73%+1)
HardCoeff$ = MID$(Parrpar$, 1, Delim71%-1)
IonizCoeff$ = MID$(Parrpar$, Delim71%+1, Delim72%-Delim71%-1)
AffinCoeff$ = MID$(Parrpar$, Delim72%+1, Delim73%-Delim72%-1)
ElCoeff1$ = MID$(Parrpar$, Delim73%+1, Delim74%-Delim73%-1)
ElCoeff2$ = MID$(Parrpar$, Delim74%+1, LengthParr3-Delim74%)
HardCoeff = VAL(HardCoeff$)
IonizCoeff = VAL(IonizCoeff$)
AffinCoeff = VAL(AffinCoeff$)
ElCoeff1 = VAL(ElCoeff1$)
ElCoeff2 = VAL(ElCoeff2$)
CLOSE #10

DIM ParrText$(200)
OPEN "I", #8, "/data/data/cz.jh.suite/files/Brown2/JH-Acids_Parr.dat"
FOR M% = 0 TO 199
INPUT #8, AcidsParr$
ParrText$(M%) = AcidsParr$
LengthParr = LEN(AcidsParr$)
Delim51% = INSTR(AcidsParr$, ";")
Delim52% = INSTR(AcidsParr$, ";", Delim51%+1)
Atom$ = MID$(AcidsParr$, 1, Delim51%-1)
I1$ = MID$(AcidsParr$, Delim51%+1, Delim52%-Delim51%-1)
Aff$ = MID$(AcidsParr$, Delim52%+1, LengthParr-Delim52%)
I1 = VAL(I1$)
A = VAL(Aff$)
IF Atom$ = A$
AcidIoniz1 = I1
AcidAffinity = A
ENDIF
EXIT IF AcidsParr$ = ""
NEXT M%

CLOSE #8

IF AcidIoniz1 = 0 AND AcidAffinity = 0 THEN
PRINT "Element not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT " 723-730."
PRINT "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT " Wiley-VCH, Weinheim 2016."
PRINT "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT " Gruyter, Berlin 2007."
PRINT "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Element not found."
GOTO Error
ENDIF

HardnessAcid = HardCoeff * (IonizCoeff * AcidIoniz1 + AffinCoeff * AcidAffinity)
AEl = ElCoeff1 + ElCoeff2 * HardnessAcid
GOTO Query

Klopman1:

OPEN "I", #11, "/data/data/cz.jh.suite/files/Brown2/JH-Klopman.par"
INPUT #11, Klopmanpar$
LengthKlopman = LEN(Klopmanpar$)
Delim101% = INSTR(Klopmanpar$, ";")
Delim102% = INSTR(Klopmanpar$, ";", Delim101%+1)
Delim103% = INSTR(Klopmanpar$, ";", Delim102%+1)
Delim104% = INSTR(Klopmanpar$, ";", Delim103%+1)
Delim105% = INSTR(Klopmanpar$, ";", Delim104%+1)
Delim106% = INSTR(Klopmanpar$, ";", Delim105%+1)
Delim107% = INSTR(Klopmanpar$, ";", Delim106%+1)
Delim108% = INSTR(Klopmanpar$, ";", Delim107%+1)
Delim109% = INSTR(Klopmanpar$, ";", Delim108%+1)
a2$ = MID$(Klopmanpar$, 1, Delim101%-1)
b2$ = MID$(Klopmanpar$, Delim101%+1, Delim102%-Delim101%-1)
csm2$ = MID$(Klopmanpar$, Delim102%+1, Delim103%-Delim102%-1)
csn2$ = MID$(Klopmanpar$, Delim103%+1, Delim104%-Delim103%-1)
kappa$ = MID$(Klopmanpar$, Delim104%+1, Delim105%-Delim104%-1)
Cat$ = MID$(Klopmanpar$, Delim105%+1, Delim106%-Delim105%-1)
An$ = MID$(Klopmanpar$, Delim106%+1, Delim107%-Delim106%-1)
eps$ = MID$(Klopmanpar$, Delim107%+1, Delim108%-Delim107%-1)
ElCoeff1$ = MID$(Klopmanpar$, Delim108%+1, Delim109%-Delim108%-1)
ElCoeff2$ = MID$(Klopmanpar$, Delim109%+1, LengthKlopman-Delim109%)
a2 = VAL(a2$)
b2 = VAL(b2$)
csm2 = VAL(csm2$)
csn2 = VAL(csn2$)
kappa = VAL(kappa$)
Cat = VAL(Cat$)
Ani = VAL(An$)
eps = VAL(eps$)
ElCoeff1 = VAL(ElCoeff1$)
ElCoeff2 = VAL(ElCoeff2$)
CLOSE #11

DIM KlopmanText$(200)
OPEN "I", #11, "/data/data/cz.jh.suite/files/Brown2/JH-AtomData_Brown2.dat"
FOR O% = 0 TO 199
INPUT #11, KlopmanBlock$
KlopmanText$(O%) = KlopmanBlock$
LengthKlopman = LEN(KlopmanBlock$)
Delim91% = INSTR(KlopmanBlock$, ";")
Delim92% = INSTR(KlopmanBlock$, ";", Delim91%+1)
Delim93% = INSTR(KlopmanBlock$, ";", Delim92%+1)
Delim94% = INSTR(KlopmanBlock$, ";", Delim93%+1)
Delim95% = INSTR(KlopmanBlock$, ";", Delim94%+1)
Delim96% = INSTR(KlopmanBlock$, ";", Delim95%+1)
Delim97% = INSTR(KlopmanBlock$, ";", Delim96%+1)
Delim98% = INSTR(KlopmanBlock$, ";", Delim97%+1)
Delim99% = INSTR(KlopmanBlock$, ";", Delim98%+1)
Atom$ = MID$(KlopmanBlock$, 1, Delim91%-1)
EA$ = MID$(KlopmanBlock$, Delim91%+1, Delim92%-Delim91%-1)
IE1$ = MID$(KlopmanBlock$, Delim92%+1, Delim93%-Delim92%-1)
IE2$ = MID$(KlopmanBlock$, Delim93%+1, Delim94%-Delim93%-1)
IE3$ = MID$(KlopmanBlock$, Delim94%+1, Delim95%-Delim94%-1)
IE4$ = MID$(KlopmanBlock$, Delim95%+1, Delim96%-Delim95%-1)
IE5$ = MID$(KlopmanBlock$, Delim96%+1, Delim97%-Delim96%-1)
IE6$ = MID$(KlopmanBlock$, Delim97%+1, Delim98%-Delim97%-1)
IE7$ = MID$(KlopmanBlock$, Delim98%+1, Delim99%-Delim98%-1)
IE8$ = MID$(KlopmanBlock$, Delim99%+1, LengthKlopman-Delim99%)
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
An = -EA
ELSE IF Atom$ = Element$ AND zM = 2 THEN
In = IE2
An = IE1
ELSE IF Atom$ = Element$ AND zM = 3 THEN
In = IE3
An = IE2
ELSE IF Atom$ = Element$ AND zM = 4 THEN
In = IE4
An = IE3
ELSE IF Atom$ = Element$ AND zM = 5 THEN
In = IE5
An = IE4
ELSE IF Atom$ = Element$ AND zM = 6 THEN
In = IE6
An = IE5
ELSE IF Atom$ = Element$ AND zM = 7 THEN
In = IE7
An = IE6
ELSE IF Atom$ = Element$ AND zM = 8 THEN
In = IE8
An = IE7
ENDIF
EXIT IF KlopmanBlock$ = ""
NEXT O%
CLOSE #11

IF In = 0 AND An = 0 THEN
PRINT "Element not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT " 723-730."
PRINT "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT " Wiley-VCH, Weinheim 2016."
PRINT "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT " Gruyter, Berlin 2007."
PRINT "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Element not found."
GOTO Error
ENDIF

Rs = rM + Cat
xs = zM - (zM-1) * SQR(kappa)
OrbA = In - b2 * (In - An)
DesolvA = 14.40 * ((xs * csn2) / Rs) * (1 - 1/eps) * (zM - 2 * b2 * xs * csn2)
En = -OrbA + DesolvA
AEl = ElCoeff1 + ElCoeff2 * En
GOTO Query

Query:

Brown2:

DIM BaseText$(200)

OPEN "I", #4, "/data/data/cz.jh.suite/files/Brown2/JH-Bases_Brown2.dat"

FOR J% = 0 TO 199

INPUT #4, BasesBrown$
BaseText$(J%) = BasesBrown$
LengthBase = LEN(BasesBrown$)
Delim11% = INSTR(BasesBrown$, ";")
Delim12% = INSTR(BasesBrown$, ";", Delim11%+1)
Delim13% = INSTR(BasesBrown$, ";", Delim12%+1)
Delim14% = INSTR(BasesBrown$, ";", Delim13%+1)
Delim15% = INSTR(BasesBrown$, ";", Delim14%+1)
Base$ = MID$(BasesBrown$, 1, Delim11%-1)
NumCOO$ = MID$(BasesBrown$, Delim11%+1, Delim12%-Delim11%-1)
pKaCOO$ = MID$(BasesBrown$, Delim12%+1, Delim13%-Delim12%-1)
NumNH$ = MID$(BasesBrown$, Delim13%+1, Delim14%-Delim13%-1)
pKaNH$ = MID$(BasesBrown$, Delim14%+1, Delim15%-Delim14%-1)
Gamma$ = MID$(BasesBrown$, Delim15%+1, LengthBase-Delim15%)
NumCOO = VAL(NumCOO$)
pKaCOO = VAL(pKaCOO$)
NumNH = VAL(NumNH$)
pKaNH = VAL(pKaNH$)
BaseGamma = VAL(Gamma$)
IF Base$ = D$ THEN
NumC = NumCOO
pKaC = pKaCOO
NumN = NumNH
pKaN = pKaNH
Gamma = BaseGamma
ENDIF

EXIT IF Base$ = ""
NEXT J%

CLOSE #4

IF NumC = 0 AND NumN = 0 THEN
PRINT "Lewis base not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT " 723-730."
PRINT "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT " Wiley-VCH, Weinheim 2016."
PRINT "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT " Gruyter, Berlin 2007."
PRINT "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Lewis base not found."
GOTO Error
ENDIF

General:

OPEN "I", #7, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.par"
INPUT #7, Brown1par$
LengthBrown = LEN(Brown1par$)
Delim41% = INSTR(Brown1par$, ";")
Delim42% = INSTR(Brown1par$, ";", Delim41%+1)
Delim43% = INSTR(Brown1par$, ";", Delim42%+1)
Delim44% = INSTR(Brown1par$, ";", Delim43%+1)
Delim45% = INSTR(Brown1par$, ";", Delim44%+1)
Delim46% = INSTR(Brown1par$, ";", Delim45%+1)
BP1$ = MID$(Brown1par$, 1, Delim41%-1)
BP2$ = MID$(Brown1par$, Delim41%+1, Delim42%-Delim41%-1)
BP3$ = MID$(Brown1par$, Delim42%+1, Delim43%-Delim42%-1)
BP4$ = MID$(Brown1par$, Delim43%+1, Delim44%-Delim43%-1)
BP5$ = MID$(Brown1par$, Delim44%+1, Delim45%-Delim44%-1)
BP6$ = MID$(Brown1par$, Delim45%+1, Delim46%-Delim45%-1)
BP7$ = MID$(Brown1par$, Delim46%+1, LengthBrown-Delim46%)
BP1 = VAL(BP1$)
BP2 = VAL(BP2$)
BP3 = VAL(BP3$)
BP4 = VAL(BP4$)
BP5 = VAL(BP5$)
BP6 = VAL(BP6$)
BP7 = VAL(BP7$)
CLOSE #7

zLC = -1
zLN = 0

Slope1C = BP1 + BP2 * pKaC
Intercept1C = BP3 + BP4 * (1 + (3 - zLC) * (zLC + 1)) * Slope1C

Slope1N = BP1 + BP2 * pKaN
Intercept1N = BP3 + BP4 * (1 + (3 - zLN) * (zLN + 1)) * Slope1N

g1C = (1 + Del + BP6^2 * S) * (zM + 2)
g1N = (1 + Del + BP7^2 * S) * (zM + 2)

GammaC = 1
GammaN = 0

g2C = g_n * (zM - 1) + BP5 * d * ((GammaC - 1) * (BP6^4 - 3) - 1) * (n - (3 + 2 * GammaC))^2 * (1 - GammaC * zM) * (1 - S)
g2N = g_n * (zM - 1) + BP5 * d * ((GammaN - 1) * (BP7^4 - 3) - 1) * (n - (3 + 2 * GammaN))^2 * (1 - GammaN * zM) * (1 - S)

PhiCOO = -EXP(-(AEl-BP6)^2)
PhiNH = -EXP(-(AEl-BP7)^2)
PhirCOO = PhiCOO / (NumC * PhiCOO + NumN * PhiNH)
PhirNH = PhiNH / (NumC * PhiCOO + NumN * PhiNH)
cn = NumC + NumN

Interior1 = NumN * PhirNH * Intercept1N + NumC * PhirCOO * Intercept1C
Interior2 = NumN * PhirNH * Slope1N + NumC * PhirCOO * Slope1C
Interior3 = NumN * PhirNH * g1N * (zM / (rM^2) + g2N) + NumC * PhirCOO * g1C * (zM / (rM^2) + g2C)

log_beta11 = Interior1 + Interior2 * Interior3 * cn

IF q > 1 THEN
t = 2
logbeta = log_beta11
REPEAT
Sum1 = 1
Y% = 1
REPEAT
Incr1 = Y%+cn*(t-1)
Sum1 = Sum1*Incr1
Y% = Y%+1
UNTIL Y% = cn+1
logK = log_beta11 - (NumN * PhirNH * (1+GammaN) * LOG10(Sum1*(cn+cn*(t-1))) + NumC * PhirCOO * (1+GammaC) * LOG10(Sum1*(cn+cn*(t-1)))) - (t - 1) * (2 - ThetaM) * (NumN * PhirNH * PhiNH + NumC * PhirCOO * PhiCOO)
logbeta = logbeta+logK
t = t+1
UNTIL t = q+1
ELSE
logbeta = log_beta11
ENDIF

IF NumC >= 1 AND NumN >=1 THEN
log_kcorr = (q-1) * EXP(-(BP6-BP7)^2)
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Lewis acid: "; A$
PRINT #2, "Lewis acid charge = "; zM
IF D$ = "Stockar" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Stockar)"
ELSE IF D$ = "Shannon-CR" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Shannon-crystal radius)"
ELSE IF D$ = "Shannon-IR" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Shannon-effective ion radius)"
ENDIF
IF I$ = "Brown" THEN
PRINT #2, "Electronicity = "; AEl USING "##.##"
ENDIF
PRINT #2, "d-orbitals parameter = "; Del
PRINT #2, "s-orbitals parameter = "; S
PRINT #2, "d-orbitals principal quantum number = "; n
PRINT #2, "Slater function = "; g_n
PRINT #2, "d-electrons = "; d
PRINT #2, ""
CLOSE #2

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "Lewis base: "; D$
PRINT #2, "Lewis base charge = "; zL
PRINT #2, "Coordination number of desired ligand = "; cn
PRINT #2, ""

IF NumC > 0 THEN
PRINT #2, "Number of carboxylate groups = "; NumC
PRINT #2, "Electronicity of carboxylate group = "; BP6 USING "###.##"; " eV"
PRINT #2, "Absolute metal-carboxylate group affinity = "; PhiCOO USING "##.###"
PRINT #2, "Relative metal-carboxylate group affinity = "; PhirCOO USING "##.###"
PRINT #2, "Donor group type parameter = "; GammaC
PRINT #2, "Acid ionization constant = "; pKaC USING "##.###"
PRINT #2, ""
ENDIF
IF NumN > 0 THEN
PRINT #2, "Number of amino groups = "; NumN
PRINT #2, "Electronicity of amino group = "; BP7 USING "###.##"; " eV"
PRINT #2, "Absolute metal-amino group affinity = "; PhiNH USING "##.###"
PRINT #2, "Relative metal-amino group affinity = "; PhirNH USING "##.###"
PRINT #2, "Donor group type parameter = "; GammaN
PRINT #2, "Base ionization constant = "; pKaN USING "##.###"
ENDIF

PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "Lewis acid"
PRINT #2, "=========="
PRINT #2, "Model of calculation: "; F$
PRINT #2, ""
IF F$ = "Parr" THEN
PRINT #2, "Ionization potential = "; AcidIoniz1 USING "###.##"; " eV"
PRINT #2, "Electron affinity = "; AcidAffinity USING "###.##"; " eV"
PRINT #2, "Hardness = "; HardnessAcid USING "###.##"; " eV"
PRINT #2, "Electronicity = "; AEl USING "###.##"; " eV"
PRINT #2, ""
ENDIF
IF F$ = "Klopman" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm ("; C$; ")"
PRINT #2, "Used ion radius = "; Rs * 100 USING "###.#"; " pm"
PRINT #2, "Ionization potential = "; In USING "###.##"; " eV"
PRINT #2, "Electron affinity = "; An USING "###.##"; " eV"
PRINT #2, "Interaction coefficients:"
PRINT #2, "b2 = "; b2 USING "#.##"
PRINT #2, "csn2 = "; csn2 USING "#.##"
PRINT #2, "kappa = "; kappa USING "#.##"
PRINT #2, "Solvent dielectric constant = "; eps USING "###.##"
PRINT #2, "Orbital energy = "; OrbA USING "###.##"; " eV"
PRINT #2, "Desolvation energy = "; DesolvA USING "###.##"; " eV"
PRINT #2, "Orbital electronegativity in solution state = "; En USING "###.##"; " eV"
PRINT #2, "Electronicity = "; AEl USING "###.##"; " eV"
PRINT #2, ""
ENDIF
PRINT #2, "Lewis base"
PRINT #2, "=========="
PRINT #2, "Model of calculation: Brown"
PRINT #2, ""
CLOSE #2

z = zM + q * zL

Amodif$ = MID$(A$, 2, CatLength-1)
Emodif$ = MID$(D$, 2, AnLength-1)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown2/JH-Brown2.out"
PRINT #2, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #2, ""
PRINT #2, A$;
IF q = 1 THEN
PRINT #2, " + " + D$;
ELSE IF q > 1 THEN
PRINT #2, " + " + E$ + " " + D$;
ENDIF
PRINT #2, " = ";
PRINT #2, Element$;
IF q > 1 THEN
PRINT #2, "(";
ENDIF
IF zL < 0 THEN
MinusSign = INSTR(D$, "-")
AnionKern$ = MID$(D$, 1, MinusSign-1)
PRINT #2, AnionKern$;
ELSE IF zL = 0 THEN
PRINT #2, D$;
ENDIF
IF q > 1 THEN
PRINT #2, ")";
ENDIF
IF q > 1 THEN
PRINT #2, E$;
ENDIF
IF z = 0 THEN
PRINT #2, ""
ELSE IF z = 1 THEN
PRINT #2, "+"
ELSE IF z = -1 THEN
PRINT #2, "-"
ELSE IF z > 1 THEN
PRINT #2, "+" + STR$(z)
ELSE IF z < -1 THEN
PRINT #2, STR$(z)
ENDIF

PRINT #2, "     log_k  "; logbeta+log_kcorr USING "###.##"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT #2, "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT #2, " 723-730."
PRINT #2, "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT #2, " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT #2, " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT #2, "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT #2, " Wiley-VCH, Weinheim 2016."
PRINT #2, "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT #2, "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT #2, " Gruyter, Berlin 2007."
PRINT #2, "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT #2, "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT #2, "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT #2, "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #2, " Chemistry. Springer, Dordrecht 2012."
PRINT #2, "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT #2, " Praha 1985."
PRINT #2, "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT #2, " Berlin 1956."
PRINT #2, "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT #2, " New York 1963."
PRINT #2, "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT #2, " Version 8.0, NIST, Gaithersburg 2004."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Brown2.b terminated NORMALLY, "; DATE$; "; "; TIME$; "."
CLOSE #2
EXIT
END

Error:

PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Paul Leslie Brown, Ronald N. Sylva, AAEC/E656 1987 (patent)."
PRINT #2, "[2] Paul Leslie Brown, Ronald N. Sylva, J. Chem. Soc., Dalton Trans. 4 (1985)"
PRINT #2, " 723-730."
PRINT #2, "[3] Paul Leslie Brown, Heinz Wanner: Predicted formation constants using the"
PRINT #2, " unified theory of metal ion complexation. Organisation for Economic Co-"
PRINT #2, " operation and Development, Nuclear Energy Agency, Paris 1987."
PRINT #2, "[4] Paul Leslie Brown, Christian Ekberg: Hydrolysis of Metal Ions, Volume 1-2."
PRINT #2, " Wiley-VCH, Weinheim 2016."
PRINT #2, "[5] R. D. Shannon, Acta Cryst. A32 (1976) 751-767."
PRINT #2, "[6] Nils Wiberg: Lehrbuch der Anorganischen Chemie, 102. Auflage. Walter de"
PRINT #2, " Gruyter, Berlin 2007."
PRINT #2, "[7] Klaus Stockar, Helvetica Chimica Acta 33(6) (1950) 1409-1420."
PRINT #2, "[8] Robert G. Parr, Ralph G. Pearson, J. Am. Chem. Soc. 105 (1983) 7512-7516."
PRINT #2, "[9] G. Klopman, J. Am. Chem. Soc. 90(2) (1968) 223-234."
PRINT #2, "[10] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #2, " Chemistry. Springer, Dordrecht 2012."
PRINT #2, "[11] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT #2, " Praha 1985."
PRINT #2, "[12] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[13] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT #2, " Berlin 1956."
PRINT #2, "[14] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT #2, " New York 1963."
PRINT #2, "[15] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT #2, " Version 8.0, NIST, Gaithersburg 2004."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Brown2.b terminated ABNORMALLY, "; DATE$; "; "; TIME$; "."
CLOSE #2

END
