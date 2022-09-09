CLS

OPEN "I", #1, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.inp"
INPUT #1, A$, B$, C$, D$, E$, F$, G$, H$, I$, J$
CLOSE #1
OPEN "O", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "=========================== * JH PROGRAM SUITE * ==============================="
PRINT #2, "========================= * Procedure BROWN-SYLVA * ============================"
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-02-17 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #2, "================================================================================"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Brown4/JH-Brown4.inp")
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Missing the input file."
GOTO Error
ENDIF

CNox = VAL(B$)
n = VAL(E$)
CNred = VAL(G$)
Eredox = VAL(J$)

IF CNox < 1 OR CNred < 1 THEN
PRINT "Wrong coordination number(s)."
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Wrong coordination number(s)."
GOTO Error
ENDIF

OxLength = LEN(A$)
OxChargePos1 = INSTR(A$, "+")
OxChargePos2 = INSTR(A$, "-")
IF OxChargePos1 = 0 AND OxChargePos2 = 0 THEN
OxCharge = 0
Element$ = A$
ELSE IF OxChargePos1 = OxLength THEN
OxCharge = 1
Element$ = MID$(A$, 1, OxChargePos1-1)
ELSE IF OxChargePos2 = OxLength THEN
OxCharge = -1
Element$ = MID$(A$, 1, OxChargePos2-1)
ELSE IF OxChargePos1 < OxLength AND OxChargePos1 <> 0 THEN
OxCharge$ = MID$(A$, OxChargePos1+1, OxLength-OxChargePos1)
OxCharge = VAL(OxCharge$)
Element$ = MID$(A$, 1, OxChargePos1-1)
ELSE IF OxChargePos2 < OxLength AND OxChargePos2 <> 0 THEN
OxCharge$ = MID$(A$, OxChargePos2+1, OxLength-OxChargePos2)
OxCharge = -VAL(OxCharge$)
Element$ = MID$(A$, 1, OxChargePos2-1)
ENDIF

RedLength = LEN(F$)
RedChargePos1 = INSTR(F$, "+")
RedChargePos2 = INSTR(F$, "-")
IF RedChargePos1 = 0 AND RedChargePos2 = 0 THEN
RedCharge = 0
Element1$ = F$
ELSE IF RedChargePos1 = RedLength THEN
RedCharge = 1
Element1$ = MID$(F$, 1, RedChargePos1-1)
ELSE IF RedChargePos2 = RedLength THEN
RedCharge = -1
Element1$ = MID$(F$, 1, RedChargePos2-1)
ELSE IF RedChargePos1 < RedLength AND RedChargePos1 <> 0 THEN
RedCharge$ = MID$(F$, RedChargePos1+1, RedLength-RedChargePos1)
RedCharge = VAL(RedCharge$)
Element1$ = MID$(F$, 1, RedChargePos1-1)
ELSE IF RedChargePos2 < RedLength AND RedChargePos2 <> 0 THEN
RedCharge$ = MID$(F$, RedChargePos2+1, RedLength-RedChargePos2)
RedCharge = -VAL(RedCharge$)
Element1$ = MID$(F$, 1, RedChargePos2-1)
ENDIF

IF D$ = "Brown" THEN
GOTO BrownOx
ENDIF

IF D$ = "X" THEN
GOTO BrownOx
ENDIF

IF C$ = "Stockar" THEN

zM = OxCharge
DIM StockarText$(200)
OPEN "I", #5, "/data/data/cz.jh.suite/files/Brown4/JH-Radii_Stockar.dat"
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF C$ = "Shannon-CR" THEN

zM = OxCharge
DIM ShannonText$(500)
OPEN "I", #6, "/data/data/cz.jh.suite/files/Brown4/JH-Radii_Shannon.dat"
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF C$ = "Shannon-IR" THEN

zM = OxCharge
DIM ShannonText$(500)
OPEN "I", #6, "/data/data/cz.jh.suite/files/Brown4/JH-Radii_Shannon.dat"
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF C$ = "Jenkins" THEN

zM = OxCharge
DIM KlopmanText$(200)
OPEN "I", #12, "/data/data/cz.jh.suite/files/Brown4/JH-Klopman.dat"
FOR P% = 0 TO 199
INPUT #12, KlopmanBlock$
KlopmanText$(P%) = KlopmanBlock$
LengthKlopman = LEN(KlopmanBlock$)
Delim111% = INSTR(KlopmanBlock$, ";")
Delim112% = INSTR(KlopmanBlock$, ";", Delim111%+1)
Delim113% = INSTR(KlopmanBlock$, ";", Delim112%+1)
Delim114% = INSTR(KlopmanBlock$, ";", Delim113%+1)
Delim115% = INSTR(KlopmanBlock$, ";", Delim114%+1)
Delim116% = INSTR(KlopmanBlock$, ";", Delim115%+1)
Atom$ = MID$(KlopmanBlock$, 1, Delim111%-1)
Rad$ = MID$(KlopmanBlock$, Delim111%+1, Delim112%-Delim111%-1)
Af2$ = MID$(KlopmanBlock$, Delim112%+1, Delim113%-Delim112%-1)
Af1$ = MID$(KlopmanBlock$, Delim113%+1, Delim114%-Delim113%-1)
Io1$ = MID$(KlopmanBlock$, Delim114%+1, Delim115%-Delim114%-1)
Io2$ = MID$(KlopmanBlock$, Delim115%+1, Delim116%-Delim115%-1)
pKa$ = MID$(KlopmanBlock$, Delim116%+1, LengthKlopman-Delim116%)
Rad = VAL(Rad$)
Af2 = VAL(Af2$)
Af1 = VAL(Af1$)
Io1 = VAL(Io1$)
Io2 = VAL(Io2$)
pKa_val = VAL(pKa$)
IF Atom$ = Element$ THEN
rM = Rad
pKa = pKa_val
ENDIF
EXIT IF KlopmanBlock$ = ""
NEXT P%
CLOSE #12

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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF C$ <> "Stockar" AND C$ <> "Shannon-CR" AND C$ <> "Shannon-IR" AND C$ <> "Jenkins" THEN
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Type of lewis acid radii not recognized."
GOTO Error
ENDIF

IF D$ = "Parr" THEN
GOTO ParrOx
ELSE IF D$ = "Klopman" THEN
GOTO KlopmanOx
ENDIF

ParrOx:

OPEN "I", #10, "/data/data/cz.jh.suite/files/Brown4/JH-Parr.par"
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
OPEN "I", #8, "/data/data/cz.jh.suite/files/Brown4/JH-Parr.dat"
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element not found."
GOTO Error
ENDIF

HardnessAcid = HardCoeff * (IonizCoeff * AcidIoniz1 + AffinCoeff * AcidAffinity)
OEl = ElCoeff1 + ElCoeff2 * HardnessAcid

GOTO Query

KlopmanOx:

OPEN "I", #11, "/data/data/cz.jh.suite/files/Brown4/JH-Klopman.par"
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

zM = OxCharge

IF zM > 0 THEN

DIM KlopmanText$(200)
OPEN "I", #11, "/data/data/cz.jh.suite/files/Brown4/JH-AtomData_Brown4.dat"
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element not found."
GOTO Error
ENDIF

ELSE IF zM <= 0

DIM KlopmanText$(200)
OPEN "I", #12, "/data/data/cz.jh.suite/files/Brown4/JH-Klopman.dat"
FOR P% = 0 TO 199
INPUT #12, KlopmanBlock$
KlopmanText$(P%) = KlopmanBlock$
LengthKlopman = LEN(KlopmanBlock$)
Delim111% = INSTR(KlopmanBlock$, ";")
Delim112% = INSTR(KlopmanBlock$, ";", Delim111%+1)
Delim113% = INSTR(KlopmanBlock$, ";", Delim112%+1)
Delim114% = INSTR(KlopmanBlock$, ";", Delim113%+1)
Delim115% = INSTR(KlopmanBlock$, ";", Delim114%+1)
Delim116% = INSTR(KlopmanBlock$, ";", Delim115%+1)
Atom$ = MID$(KlopmanBlock$, 1, Delim111%-1)
Rad$ = MID$(KlopmanBlock$, Delim111%+1, Delim112%-Delim111%-1)
Af2$ = MID$(KlopmanBlock$, Delim112%+1, Delim113%-Delim112%-1)
Af1$ = MID$(KlopmanBlock$, Delim113%+1, Delim114%-Delim113%-1)
Io1$ = MID$(KlopmanBlock$, Delim114%+1, Delim115%-Delim114%-1)
Io2$ = MID$(KlopmanBlock$, Delim115%+1, Delim116%-Delim115%-1)
pKa$ = MID$(KlopmanBlock$, Delim116%+1, LengthKlopman-Delim116%)
Rad = VAL(Rad$)
Af2 = VAL(Af2$)
Af1 = VAL(Af1$)
Io1 = VAL(Io1$)
Io2 = VAL(Io2$)
pKa_val = VAL(pKa$)
IF Atom$ = Element1$ AND zM = 0 THEN
In = Io2
An = -Io1
IF H$ = "Jenkins" THEN
rM = Rad
ENDIF
pKa = pKa_val
ELSE IF Atom$ = Element1$ AND zM = -1 THEN
In = Io1
An = Af1
IF H$ = "Jenkins" THEN
rM = Rad
ENDIF
pKa = pKa_val
ELSE IF Atom$ = Element1$ AND zM = -2 THEN
In = -Af1
An = Af2
IF H$ = "Jenkins" THEN
rM = Rad
ENDIF
pKa = pKa_val
ENDIF
EXIT IF KlopmanBlock$ = ""
NEXT P%
CLOSE #12

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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element not found."
GOTO Error
ENDIF

ENDIF

IF zM > 0 THEN

Rs = rM + Cat
xs = zM - (zM-1) * SQR(kappa)
OrbA = In - b2 * (In - An)
DesolvA = 14.40 * ((xs * csn2) / Rs) * (1 - 1/eps) * (zM - 2 * b2 * xs * csn2)
En = -OrbA + DesolvA
OEl = ElCoeff1 + ElCoeff2 * En


ELSE IF zM <= 0 THEN

Rs = rM + Ani
xs = zM + kappa - (zM+kappa-1) * SQR(kappa)
OrbA = In - a2 * (In - An)
DesolvA = -14.40 * ((xs * csn2) / Rs) * (1 - 1/eps) * (zM + 2 * b2 * xs * csn2)
En = -OrbA - DesolvA
OEl = ElCoeff1 + ElCoeff2 * En

ENDIF

GOTO Query

BrownOx:

DIM AcidText$(200)

OPEN "I", #3, "/data/data/cz.jh.suite/files/Brown4/JH-AcidBase_Brown4.dat"

FOR I% = 0 TO 199

INPUT #3, AcidsBrown$
AcidText$(I%) = AcidsBrown$
LengthAcid = LEN(AcidsBrown$)
Delim1% = INSTR(AcidsBrown$, ";")
Acid$ = MID$(AcidsBrown$, 1, Delim1%-1)
AcidElectr$ = MID$(AcidsBrown$, Delim1%+1, LengthAcid-Delim1%)
AcidElectr = VAL(AcidElectr$)

IF Acid$ = A$ THEN
OEl = AcidElectr
ENDIF

EXIT IF Acid$ = ""
NEXT I%

CLOSE #3

IF OEl = 0 THEN
PRINT "Species not found."
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Species not found."
GOTO Error
ENDIF

GOTO Query

Query:

IF I$ = "Brown" THEN
GOTO BrownRed
ENDIF

IF H$ = "Stockar" THEN

zL = RedCharge
DIM StockarText$(200)
OPEN "I", #5, "/data/data/cz.jh.suite/files/Brown4/JH-Radii_Stockar.dat"
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
IF Atom$ = Element1$ AND zL = 1 THEN
rL = r1
ELSE IF Atom$ = Element1$ AND zL = 2 THEN
rL = r2
ELSE IF Atom$ = Element1$ AND zL = 3 THEN
rL = r3
ELSE IF Atom$ = Element1$ AND zL = 4 THEN
rL = r4
ELSE IF Atom$ = Element1$ AND zL = 5 THEN
rL = r5
ELSE IF Atom$ = Element1$ AND zL = 6 THEN
rL = r6
ELSE IF Atom$ = Element1$ AND zL = 7 THEN
rL = r7
ELSE IF Atom$ = Element1$ AND zL = 8 THEN
rL = r8
ENDIF
EXIT IF StockarRadii$ = ""
NEXT K%
CLOSE #5

IF rL = 0 THEN
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF H$ = "Shannon-CR" THEN

zL = RedCharge
DIM ShannonText$(500)
OPEN "I", #6, "/data/data/cz.jh.suite/files/Brown4/JH-Radii_Shannon.dat"
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
IF Atom$ = F$ AND CoordNum$ = G$ THEN
rL = rCR
ENDIF
EXIT IF ShannonRadii$ = ""
NEXT L%
CLOSE #6

IF rL = 0 THEN
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF H$ = "Shannon-IR" THEN

zL = RedCharge
DIM ShannonText$(500)
OPEN "I", #6, "/data/data/cz.jh.suite/files/Brown4/JH-Radii_Shannon.dat"
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
IF Atom$ = F$ AND CoordNum$ = G$ THEN
rL = rEIR
ENDIF
EXIT IF ShannonRadii$ = ""
NEXT L%
CLOSE #6

IF rL = 0 THEN
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF H$ = "Jenkins" THEN

zL = RedCharge
DIM KlopmanText$(200)
OPEN "I", #12, "/data/data/cz.jh.suite/files/Brown4/JH-Klopman.dat"
FOR P% = 0 TO 199
INPUT #12, KlopmanBlock$
KlopmanText$(P%) = KlopmanBlock$
LengthKlopman = LEN(KlopmanBlock$)
Delim111% = INSTR(KlopmanBlock$, ";")
Delim112% = INSTR(KlopmanBlock$, ";", Delim111%+1)
Delim113% = INSTR(KlopmanBlock$, ";", Delim112%+1)
Delim114% = INSTR(KlopmanBlock$, ";", Delim113%+1)
Delim115% = INSTR(KlopmanBlock$, ";", Delim114%+1)
Delim116% = INSTR(KlopmanBlock$, ";", Delim115%+1)
Atom$ = MID$(KlopmanBlock$, 1, Delim111%-1)
Rad$ = MID$(KlopmanBlock$, Delim111%+1, Delim112%-Delim111%-1)
Af2$ = MID$(KlopmanBlock$, Delim112%+1, Delim113%-Delim112%-1)
Af1$ = MID$(KlopmanBlock$, Delim113%+1, Delim114%-Delim113%-1)
Io1$ = MID$(KlopmanBlock$, Delim114%+1, Delim115%-Delim114%-1)
Io2$ = MID$(KlopmanBlock$, Delim115%+1, Delim116%-Delim115%-1)
pKa$ = MID$(KlopmanBlock$, Delim116%+1, LengthKlopman-Delim116%)
Rad = VAL(Rad$)
Af2 = VAL(Af2$)
Af1 = VAL(Af1$)
Io1 = VAL(Io1$)
Io2 = VAL(Io2$)
pKa_val = VAL(pKa$)
IF Atom$ = Element1$ THEN
rL = Rad
pKa1 = pKa_val
ENDIF
EXIT IF KlopmanBlock$ = ""
NEXT P%
CLOSE #12

IF rL = 0 THEN
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element and/or its charge not found."
GOTO Error
ENDIF

ELSE IF H$ <> "Stockar" AND H$ <> "Shannon-CR" AND H$ <> "Shannon-IR" AND H$ <> "Jenkins" THEN
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Type of lewis acid radii not recognized."
GOTO Error
ENDIF

IF I$ = "Parr" THEN
GOTO ParrRed
ELSE IF I$ = "Klopman" THEN
GOTO KlopmanRed
ENDIF

BrownRed:

DIM RedText$(200)

OPEN "I", #3, "/data/data/cz.jh.suite/files/Brown4/JH-AcidBase_Brown4.dat"

FOR I% = 0 TO 199

INPUT #3, RedBrown$
RedText$(I%) = RedBrown$
LengthRed = LEN(RedBrown$)
Delim1% = INSTR(RedBrown$, ";")
Acid$ = MID$(RedBrown$, 1, Delim1%-1)
RedElectr$ = MID$(RedBrown$, Delim1%+1, LengthRed-Delim1%)
RedElectr = VAL(RedElectr$)

IF Acid$ = F$ THEN
REl = RedElectr
ENDIF

EXIT IF Acid$ = ""
NEXT I%

CLOSE #3

IF REl = 0 THEN
PRINT "Species not found."
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Species not found."
GOTO Error
ENDIF

GOTO General

ParrRed:

OPEN "I", #10, "/data/data/cz.jh.suite/files/Brown4/JH-Parr.par"
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

DIM ParrText2$(200)
OPEN "I", #9, "/data/data/cz.jh.suite/files/Brown4/JH-Parr.dat"
FOR N% = 0 TO 199
INPUT #9, BasesParr$
ParrText2$(N%) = BasesParr$
LengthParr2 = LEN(BasesParr$)
Delim61% = INSTR(BasesParr$, ";")
Delim62% = INSTR(BasesParr$, ";", Delim61%+1)
Atom$ = MID$(BasesParr$, 1, Delim61%-1)
I11$ = MID$(BasesParr$, Delim61%+1, Delim62%-Delim61%-1)
A1$ = MID$(BasesParr$, Delim62%+1, LengthParr2-Delim62%)
I11 = VAL(I11$)
A1 = VAL(A1$)
IF Atom$ = F$
BaseIoniz1 = I11
BaseAffinity = A1
ENDIF
EXIT IF BasesParr$ = ""
NEXT M%
CLOSE #9

IF BaseIoniz1 = 0 AND BaseAffinity = 0 THEN
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element not found."
GOTO Error
ENDIF

HardnessBase = HardCoeff * (IonizCoeff * BaseIoniz1 + AffinCoeff * BaseAffinity)
REl = ElCoeff1 + ElCoeff2 * HardnessBase
GOTO General

KlopmanRed:

OPEN "I", #11, "/data/data/cz.jh.suite/files/Brown4/JH-Klopman.par"
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

zL = RedCharge

IF zL > 0 THEN

DIM KlopmanText$(200)
OPEN "I", #11, "/data/data/cz.jh.suite/files/Brown4/JH-AtomData_Brown4.dat"
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
IF Atom$ = Element$ AND zL = 1 THEN
Im = IE1
Am = -EA
ELSE IF Atom$ = Element$ AND zL = 2 THEN
Im = IE2
Am = IE1
ELSE IF Atom$ = Element$ AND zL = 3 THEN
Im = IE3
Am = IE2
ELSE IF Atom$ = Element$ AND zL = 4 THEN
Im = IE4
Am = IE3
ELSE IF Atom$ = Element$ AND zL = 5 THEN
Im = IE5
Am = IE4
ELSE IF Atom$ = Element$ AND zL = 6 THEN
Im = IE6
Am = IE5
ELSE IF Atom$ = Element$ AND zL = 7 THEN
Im = IE7
Am = IE6
ELSE IF Atom$ = Element$ AND zL = 8 THEN
Im = IE8
Am = IE7
ENDIF
EXIT IF KlopmanBlock$ = ""
NEXT O%
CLOSE #11

IF rL = 0 AND I$ <> "Brown" THEN
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element not found."
GOTO Error
ENDIF

ELSE IF zL <= 0 THEN

DIM KlopmanText$(200)
OPEN "I", #12, "/data/data/cz.jh.suite/files/Brown4/JH-Klopman.dat"
FOR P% = 0 TO 199
INPUT #12, KlopmanBlock$
KlopmanText$(P%) = KlopmanBlock$
LengthKlopman = LEN(KlopmanBlock$)
Delim111% = INSTR(KlopmanBlock$, ";")
Delim112% = INSTR(KlopmanBlock$, ";", Delim111%+1)
Delim113% = INSTR(KlopmanBlock$, ";", Delim112%+1)
Delim114% = INSTR(KlopmanBlock$, ";", Delim113%+1)
Delim115% = INSTR(KlopmanBlock$, ";", Delim114%+1)
Delim116% = INSTR(KlopmanBlock$, ";", Delim115%+1)
Atom$ = MID$(KlopmanBlock$, 1, Delim111%-1)
Rad$ = MID$(KlopmanBlock$, Delim111%+1, Delim112%-Delim111%-1)
Af2$ = MID$(KlopmanBlock$, Delim112%+1, Delim113%-Delim112%-1)
Af1$ = MID$(KlopmanBlock$, Delim113%+1, Delim114%-Delim113%-1)
Io1$ = MID$(KlopmanBlock$, Delim114%+1, Delim115%-Delim114%-1)
Io2$ = MID$(KlopmanBlock$, Delim115%+1, Delim116%-Delim115%-1)
pKa$ = MID$(KlopmanBlock$, Delim116%+1, LengthKlopman-Delim116%)
Rad = VAL(Rad$)
Af2 = VAL(Af2$)
Af1 = VAL(Af1$)
Io1 = VAL(Io1$)
Io2 = VAL(Io2$)
pKa_val = VAL(pKa$)
IF Atom$ = Element1$ AND zL = 0 THEN
Im = Io2
Am = -Io1
IF H$ = "Jenkins" THEN
rL = Rad
ENDIF
pKa = pKa_val
ELSE IF Atom$ = Element1$ AND zL = -1 THEN
Im = Io1
Am = Af1
IF H$ = "Jenkins" THEN
rL = Rad
ENDIF
pKa = pKa_val
ELSE IF Atom$ = Element1$ AND zL = -2 THEN
Im = -Af1
Am = Af2
IF H$ = "Jenkins" THEN
rL = Rad
ENDIF
pKa = pKa_val
ENDIF
EXIT IF KlopmanBlock$ = ""
NEXT P%
CLOSE #12

IF rL = 0 AND I$ <> "Brown" THEN
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element not found."
GOTO Error
ENDIF

ENDIF

IF zL > 0 THEN

Rr = rL + Cat
xr = zL - (zL-1) * SQR(kappa)
OrbB = Im - b2 * (Im - Am)
DesolvB = 14.40 * ((xr * csm2) / Rr) * (1 - 1/eps) * (zL - 2 * b2 * xr * csm2)
Em = -OrbB + DesolvB
REl = ElCoeff1 + ElCoeff2 * Em

ELSE IF zL <= 0 THEN

Rr = rL + Ani
xr = zL + kappa - (zL+kappa-1) * SQR(kappa)
OrbB = Im - a2 * (Im - Am)
DesolvB = -14.40 * ((xr * csm2) / Rr) * (1 - 1/eps) * (zL + 2 * b2 * xr * csm2)
Em = -OrbB - DesolvB
REl = ElCoeff1 + ElCoeff2 * Em

ENDIF

GOTO General

IF Im = 0 AND Am = 0 THEN
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Element not found."
GOTO Error
ENDIF

General:

PosOx = INSTR(Element$, "O")
PosRed = INSTR(Element1$, "O")
IF PosOx = 0 THEN
TestOx$ = "X"
ELSE
TestOx$ = "O"
ENDIF
IF PosRed = 0 THEN
TestRed$ = "X"
ELSE
TestRed$ = "O"
ENDIF

DIM Brownparameters$(200)
OPEN "I", #7, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.par"
FOR W% = 0 TO 199
INPUT #7, Brown1par$
Brownparameters$(W%) = Brown1par$
LengthBrown = LEN(Brown1par$)
Delim41% = INSTR(Brown1par$, ";")
Delim42% = INSTR(Brown1par$, ";", Delim41%+1)
Delim43% = INSTR(Brown1par$, ";", Delim42%+1)
BP1$ = MID$(Brown1par$, 1, Delim41%-1)
BP2$ = MID$(Brown1par$, Delim41%+1, Delim42%-Delim41%-1)
BP3$ = MID$(Brown1par$, Delim42%+1, Delim43%-Delim42%-1)
BP4$ = MID$(Brown1par$, Delim43%+1, LengthBrown-Delim43%)
BP2 = VAL(BP2$)
BP3 = VAL(BP3$)
BP4 = VAL(BP4$)
IF TestOx$ = BP1$ AND n = BP2 THEN
inter = BP3
slope = BP4
ENDIF
EXIT IF Brown1par$ = ""
NEXT W%
CLOSE #7

IF inter = 0 AND slope = 0 THEN
PRINT "Type of species and number of exchanged electrons not tabulated."
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Type of species and number of exchanged electrons not tabulated."
GOTO Error
ENDIF

IF D$ <> "X" AND I$ <> "X" AND J$ = "X" THEN

zM = OxCharge
zL = RedCharge

E = inter + slope * (OEl-REl)^2

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "INPUT"
PRINT #2, "================================================================================"
PRINT #2, "Oxidized species: "; A$
PRINT #2, "Charge = "; zM
IF C$ = "Stockar" AND D$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Stockar)"
ELSE IF C$ = "Shannon-CR" AND D$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Shannon-crystal radius)"
ELSE IF C$ = "Shannon-IR" AND D$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Shannon-effective ion radius)"
ELSE IF C$ = "Jenkins" AND D$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Jenkins radius)"
ENDIF
IF D$ = "Brown" THEN
PRINT #2, "Electronicity = "; OEl USING "##.##"
ENDIF
IF D$ = "Klopman" THEN
PRINT #2, "Ionization potential = "; In; " eV"
ENDIF
PRINT #2, ""
CLOSE #2

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Reduced species: "; F$
PRINT #2, "Charge = "; zL
IF H$ = "Stockar" AND I$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rL * 100 USING "###.#"; " pm (Stockar)"
ELSE IF H$ = "Shannon-CR" AND I$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rL * 100 USING "###.#"; " pm (Shannon-crystal radius)"
ELSE IF H$ = "Shannon-IR" AND I$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rL * 100 USING "###.#"; " pm (Shannon-effective ion radius)"
ELSE IF H$ = "Jenkins" AND I$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rL * 100 USING "###.#"; " pm (Jenkins radius)"
ENDIF
IF I$ = "Brown" THEN
PRINT #2, "Electronicity = "; REl USING "##.##"
ENDIF
IF I$ = "Klopman" THEN
PRINT #2, "Ionization potential = "; Im; " eV"
ENDIF

PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "Oxidized form"
PRINT #2, "============="
PRINT #2, "Model of calculation: "; D$
PRINT #2, ""
IF D$ = "Parr" THEN
PRINT #2, "Ionization potential = "; AcidIoniz1 USING "###.##"; " eV"
PRINT #2, "Electron affinity = "; AcidAffinity USING "###.##"; " eV"
PRINT #2, "Hardness = "; HardnessAcid USING "###.##"; " eV"
PRINT #2, "Electronicity = "; OEl USING "###.##"; " eV"
PRINT #2, ""
ENDIF
IF D$ = "Klopman" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm ("; C$; ")"
PRINT #2, "Used ion radius = "; Rs * 100 USING "###.#"; " pm"
PRINT #2, "Ionization potential = "; In USING "###.##"; " eV"
PRINT #2, "Electron affinity = "; An USING "###.##"; " eV"
PRINT #2, "Interaction coefficients:"
PRINT #2, "a2 = "; a2 USING "#.##"
PRINT #2, "b2 = "; b2 USING "#.##"
PRINT #2, "csm2 = "; csm2 USING "#.##"
PRINT #2, "csn2 = "; csn2 USING "#.##"
PRINT #2, "kappa = "; kappa USING "#.##"
PRINT #2, "Solvent dielectric constant = "; eps USING "###.##"
PRINT #2, "Orbital energy = "; OrbA USING "###.##"; " eV"
PRINT #2, "Desolvation energy = "; DesolvA USING "###.##"; " eV"
PRINT #2, "Orbital electronegativity in solution state = "; En USING "###.##"; " eV"
PRINT #2, "Electronicity = "; OEl USING "###.##"; " eV"
PRINT #2, ""
ENDIF
PRINT #2, "Reduced form"
PRINT #2, "============"
PRINT #2, "Model of calculation: "; I$
PRINT #2, ""
IF I$ = "Parr" THEN
PRINT #2, "Ionization potential = "; BaseIoniz1 USING "###.##"; " eV"
PRINT #2, "Electron affinity = "; BaseAffinity USING "###.##"; " eV"
PRINT #2, "Hardness = "; HardnessBase USING "###.##"; " eV"
PRINT #2, "Electronicity = "; REl USING "###.##"; " eV"
PRINT #2, ""
ENDIF
IF I$ = "Klopman" THEN
PRINT #2, "Ion radius = "; rL * 100 USING "###.#"; " pm ("; H$; ")"
PRINT #2, "Used ion radius = "; Rr * 100 USING "###.#"; " pm"
PRINT #2, "Ionization potential = "; Im USING "###.##"; " eV"
PRINT #2, "Electron affinity = "; Am USING "###.##"; " eV"
PRINT #2, "Interaction coefficients:"
PRINT #2, "a2 = "; a2 USING "#.##"
PRINT #2, "b2 = "; b2 USING "#.##"
PRINT #2, "csm2 = "; csm2 USING "#.##"
PRINT #2, "csn2 = "; csn2 USING "#.##"
PRINT #2, "kappa = "; kappa USING "#.##"
PRINT #2, "Solvent dielectric constant = "; eps USING "###.##"
PRINT #2, "Orbital energy = "; OrbB USING "###.##"; " eV"
PRINT #2, "Desolvation energy = "; DesolvB USING "###.##"; " eV"
PRINT #2, "Orbital electronegativity in solution state = "; Em USING "###.##"; " eV"
PRINT #2, "Electronicity = "; REl USING "###.##"; " eV"
PRINT #2, ""
ENDIF
CLOSE #2

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Redox equilibrium"
PRINT #2, "================="
PRINT #2, "Number of exchanged electrons: "; n
PRINT #2, "Regression slope = "; slope USING "##.####"
PRINT #2, "Regression intercept = "; inter USING "##.####"
PRINT #2, "Standard redox potential = "; E USING "##.###"; " V"
PRINT #2, ""
CLOSE #2

ELSE IF D$ <> "X" AND I$ = "X" AND J$ <> "X" THEN

zM = OxCharge
zL = RedCharge

E = VAL(J$)
IF (E-inter > 0 AND slope > 0) OR (E-inter < 0 AND slope < 0) THEN
REl = OEl + SQR((E-inter)/slope)
RElAlt = OEl - SQR((E-inter)/slope)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "INPUT"
PRINT #2, "================================================================================"
PRINT #2, "Oxidized species: "; A$
PRINT #2, "Charge = "; zM
IF C$ = "Stockar" AND D$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Stockar)"
ELSE IF C$ = "Shannon-CR" AND D$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Shannon-crystal radius)"
ELSE IF C$ = "Shannon-IR" AND D$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Shannon-effective ion radius)"
ELSE IF C$ = "Jenkins" AND D$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm (Jenkins radius)"
ENDIF
IF D$ = "Brown" THEN
PRINT #2, "Electronicity = "; OEl USING "##.##"
ENDIF
IF D$ = "Klopman" THEN
PRINT #2, "Ionization potential = "; In; " eV"
ENDIF
PRINT #2, ""
CLOSE #2

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Standard redox potential = "; E USING "##.###"; " V"

PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "Oxidized form"
PRINT #2, "============="
PRINT #2, "Model of calculation: "; D$
PRINT #2, ""
IF D$ = "Parr" THEN
PRINT #2, "Ionization potential = "; AcidIoniz1 USING "###.##"; " eV"
PRINT #2, "Electron affinity = "; AcidAffinity USING "###.##"; " eV"
PRINT #2, "Hardness = "; HardnessAcid USING "###.##"; " eV"
PRINT #2, "Electronicity = "; OEl USING "###.##"; " eV"
PRINT #2, ""
ENDIF
IF D$ = "Klopman" THEN
PRINT #2, "Ion radius = "; rM * 100 USING "###.#"; " pm ("; C$; ")"
PRINT #2, "Used ion radius = "; Rs * 100 USING "###.#"; " pm"
PRINT #2, "Ionization potential = "; In USING "###.##"; " eV"
PRINT #2, "Electron affinity = "; An USING "###.##"; " eV"
PRINT #2, "Interaction coefficients:"
PRINT #2, "a2 = "; a2 USING "#.##"
PRINT #2, "b2 = "; b2 USING "#.##"
PRINT #2, "csm2 = "; csm2 USING "#.##"
PRINT #2, "csn2 = "; csn2 USING "#.##"
PRINT #2, "kappa = "; kappa USING "#.##"
PRINT #2, "Solvent dielectric constant = "; eps USING "###.##"
PRINT #2, "Orbital energy = "; OrbA USING "###.##"; " eV"
PRINT #2, "Desolvation energy = "; DesolvA USING "###.##"; " eV"
PRINT #2, "Orbital electronegativity in solution state = "; En USING "###.##"; " eV"
PRINT #2, "Electronicity = "; OEl USING "###.##"; " eV"
PRINT #2, ""
ENDIF
PRINT #2, "Reduced form"
PRINT #2, "============"
PRINT #2, ""
PRINT #2, "Electronicity = "; REl USING "###.##"; " eV"
PRINT #2, "Alternative electronicity value = "; RElAlt USING "###.##"; " eV (less probable)"
PRINT #2, ""
CLOSE #2
OPEN "A", #2, "JH-Brown4.out"
PRINT #2, "Redox equilibrium"
PRINT #2, "================="
PRINT #2, "Number of exchanged electrons: "; n
PRINT #2, "Regression slope = "; slope USING "##.####"
PRINT #2, "Regression intercept = "; inter USING "##.####"
PRINT #2, ""
CLOSE #2

ELSE
PRINT "Numeric error, imaginary number."
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Numeric error, imaginary number."
GOTO Error
ENDIF

ELSE IF D$ = "X" AND I$ <> "X" AND J$ <> "X" THEN

E = VAL(J$)
IF (E-inter > 0 AND slope > 0) OR (E-inter < 0 AND slope < 0) THEN
OEl = REl - SQR((E-inter)/slope)
OElAlt = REl + SQR((E-inter)/slope)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "INPUT"
PRINT #2, "================================================================================"
PRINT #2, "Reduced species: "; F$
PRINT #2, "Charge = "; zL
IF H$ = "Stockar" AND I$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rL * 100 USING "###.#"; " pm (Stockar)"
ELSE IF H$ = "Shannon-CR" AND I$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rL * 100 USING "###.#"; " pm (Shannon-crystal radius)"
ELSE IF H$ = "Shannon-IR" AND I$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rL * 100 USING "###.#"; " pm (Shannon-effective ion radius)"
ELSE IF H$ = "Jenkins" AND I$ <> "Brown" THEN
PRINT #2, "Ion radius = "; rL * 100 USING "###.#"; " pm (Jenkins radius)"
ENDIF
IF I$ = "Brown" THEN
PRINT #2, "Electronicity = "; REl USING "##.##"
ENDIF
IF I$ = "Klopman" THEN
PRINT #2, "Ionization potential = "; Im; " eV"
ENDIF
PRINT #2, "Standard redox potential = "; E USING "##.###"; " V"

PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "Oxidized form"
PRINT #2, "============="
PRINT #2, ""
PRINT #2, "Electronicity = "; OEl USING "###.##"; " eV"
PRINT #2, "Alternative electronicity value = "; OElAlt USING "###.##"; " eV (less probable)"
PRINT #2, ""

PRINT #2, "Reduced form"
PRINT #2, "============"
PRINT #2, "Model of calculation: "; I$
PRINT #2, ""
IF I$ = "Parr" THEN
PRINT #2, "Ionization potential = "; BaseIoniz1 USING "###.##"; " eV"
PRINT #2, "Electron affinity = "; BaseAffinity USING "###.##"; " eV"
PRINT #2, "Hardness = "; HardnessBase USING "###.##"; " eV"
PRINT #2, "Electronicity = "; REl USING "###.##"; " eV"
PRINT #2, ""
ENDIF
IF I$ = "Klopman" THEN
PRINT #2, "Ion radius = "; rL * 100 USING "###.#"; " pm ("; H$; ")"
PRINT #2, "Used ion radius = "; Rr * 100 USING "###.#"; " pm"
PRINT #2, "Ionization potential = "; Im USING "###.##"; " eV"
PRINT #2, "Electron affinity = "; Am USING "###.##"; " eV"
PRINT #2, "Interaction coefficients:"
PRINT #2, "a2 = "; a2 USING "#.##"
PRINT #2, "b2 = "; b2 USING "#.##"
PRINT #2, "csm2 = "; csm2 USING "#.##"
PRINT #2, "csn2 = "; csn2 USING "#.##"
PRINT #2, "kappa = "; kappa USING "#.##"
PRINT #2, "Solvent dielectric constant = "; eps USING "###.##"
PRINT #2, "Orbital energy = "; OrbB USING "###.##"; " eV"
PRINT #2, "Desolvation energy = "; DesolvB USING "###.##"; " eV"
PRINT #2, "Orbital electronegativity in solution state = "; Em USING "###.##"; " eV"
PRINT #2, "Electronicity = "; REl USING "###.##"; " eV"
PRINT #2, ""
ENDIF
CLOSE #2

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Redox equilibrium"
PRINT #2, "================="
PRINT #2, "Number of exchanged electrons: "; n
PRINT #2, "Regression slope = "; slope USING "##.####"
PRINT #2, "Regression intercept = "; inter USING "##.####"
PRINT #2, ""
CLOSE #2

ELSE
PRINT "Numeric error, imaginary number."
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Numeric error, imaginary number."
GOTO Error
ENDIF

ELSE
PRINT "Only one electronicity value / redox potential can be an unknown quantity."
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Only one electronicity value / redox potential can be an unknown quantity."
GOTO Error
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #2, ""
PRINT #2, A$;
PRINT #2, " + ";

PosOLeft = INSTR(A$, "O")
PosSignLeft1 = INSTR(A$, "+")
PosSignLeft2 = INSTR(A$, "-")
PosSignLeft = MAX(PosSignLeft1, PosSignLeft2)
LengthLeft = LEN(A$)
IF PosSignLeft > 0 THEN
NumOLeft$ = MID$(A$, PosOLeft+1, PosSignLeft-PosOLeft-1)
NumOLeft = VAL(NumOLeft$)
ELSE IF PosSignLeft = 0 THEN
NumOLeft$ = MID$(A$, PosOLeft+1, LengthLeft-PosOLeft)
NumOLeft = VAL(NumOLeft$)
ENDIF

x = NumOLeft

PosORight = INSTR(F$, "O")
PosSignRight1 = INSTR(F$, "+")
PosSignRight2 = INSTR(F$, "-")
PosSignRight = MAX(PosSignRight1, PosSignRight2)
LengthRight = LEN(F$)
IF PosSignRight > 0 THEN
NumORight$ = MID$(F$, PosORight+1, PosSignRight-PosORight-1)
NumORight = VAL(NumORight$)
ELSE IF PosSignRight = 0 THEN
NumORight$ = MID$(F$, PosORight+1, LengthRight-PosORight)
NumORight = VAL(NumORight$)
ENDIF

y = NumORight

IF 2*(x-y) > 1 THEN
PRINT #2, 2*(x-y);
PRINT #2, " ";
ENDIF

IF 2*(x-y) > 0 THEN
PRINT #2, "H+ ";
ENDIF

IF n > 1 THEN
PRINT #2, n;
PRINT #2, " ";
ENDIF

PRINT #2, "e-";
PRINT #2, " = ";

IF x-y > 1 THEN
PRINT #2, F$;
ELSE IF x-y = 0 THEN
PRINT #2, F$
ENDIF

IF x-y > 1 THEN
PRINT #2, " + ";
PRINT #2, x-y;
ENDIF

IF x-y > 0 THEN
PRINT #2, " H2O"
ENDIF

CLOSE #2

log_k = 16.9*n*E

OxNumberLeft = 2*x+zM
OxNumberRight = 2*y+zL

IF zM + 2*x - 2*y - n <> zL THEN
PRINT "Chemical equation not balanced."
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Chemical equation not balanced."
GOTO Error
ENDIF

IF OxNumberRight > OxNumberLeft THEN
PRINT "Oxidized species must be on the left side of the equation."
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
PRINT "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT " House, London 1965."
PRINT "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer, Dordrecht 2012."
PRINT "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT " Praha 1985."
PRINT "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT " Berlin 1956."
PRINT "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT " Inorg. Chem. 38 (1999) 3609-3620."
PRINT "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT " New York 1963."
PRINT "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT " Version 8.0, NIST, Gaithersburg 2004."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "Oxidized species must be on the left side of the equation."
GOTO Error
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Brown4/JH-Brown4.out"
PRINT #2, "     log_k  "; log_k USING "###.##"
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
PRINT #2, "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT #2, " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT #2, "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT #2, " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT #2, "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT #2, " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT #2, " House, London 1965."
PRINT #2, "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #2, " Chemistry. Springer, Dordrecht 2012."
PRINT #2, "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT #2, " Praha 1985."
PRINT #2, "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT #2, " Berlin 1956."
PRINT #2, "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT #2, " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT #2, "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT #2, " Inorg. Chem. 38 (1999) 3609-3620."
PRINT #2, "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT #2, " New York 1963."
PRINT #2, "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT #2, "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT #2, "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT #2, " Version 8.0, NIST, Gaithersburg 2004."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Brown4.b terminated NORMALLY, "; DATE$; "; "; TIME$; "."
CLOSE #2
EXIT

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
PRINT #2, "[10] Lars Gunnar Sillen, Arthur E. Martell: Stability Constants of Metal-Ion"
PRINT #2, " Complexes. The Chemical Society, Burlington House W.1, London 1964."
PRINT #2, "[11] H. J. M. Bowen et al.: Tables of Interatomic Distances and Configuration"
PRINT #2, " in Molecules and Ions. The Chemical Society, Burlington House, London 1958."
PRINT #2, "[12] L. E. Sutton et al.: Tables of Interatomic Distances and Configuration in"
PRINT #2, " Molecules and Ions, Supplement 1956-1959. The Chemical Society, Burlington"
PRINT #2, " House, London 1965."
PRINT #2, "[13] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #2, " Chemistry. Springer, Dordrecht 2012."
PRINT #2, "[14] V. A. Rabinovic, Z. Ja. Chavin: Strucna chemicka prirucka. SNTL,"
PRINT #2, " Praha 1985."
PRINT #2, "[15] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[16] B. P. Nikolski: Handbuch des Chemikers, Band I. VEB Verlag Technik,"
PRINT #2, " Berlin 1956."
PRINT #2, "[17] Helen K. Roobottom, H. Donald B. Jenkins, Jack Passmore, Leslie Glasser,"
PRINT #2, " J. Chem. Ed. 76(11) (1999) 1570-1573."
PRINT #2, "[18] H. Donald B. Jenkins, Helen K. Roobottom, Jack Passmore, Leslie Glasser,"
PRINT #2, " Inorg. Chem. 38 (1999) 3609-3620."
PRINT #2, "[19] M. J. Sienko, R. A. Plane: Physical Inorganic Chemistry. W. A. Benjamin,"
PRINT #2, " New York 1963."
PRINT #2, "[20] Tae Bum Lee, Michael L. McKee, Inorganic Chemistry 50 (2011) 11412-11422."
PRINT #2, "[21] Michael L. McKee, J. Phys. Chem. 100 (1996) 3473-3481."
PRINT #2, "[22] Arthur E. Martell, Robert M. Smith: NIST Standard Reference Database 46"
PRINT #2, " Version 8.0, NIST, Gaithersburg 2004."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Brown4.b terminated ABNORMALLY, "; DATE$; "; "; TIME$; "."
CLOSE #2

END
