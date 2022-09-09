CLS

ExistInput = EXIST("/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Sanderson.inp and start the program"
PRINT "again. The results will appear in JH-Sanderson.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "O", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "============================ * JH PROGRAM SUITE * =============================="
PRINT #3, "========================== * Procedure SANDERSON * ============================="
PRINT #3, "Version 1.03 for Android"
#PRINT #3, "Compiled 2018-02-17 using X11-BASIC"
PRINT #3, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #3, "================================================================================"
PRINT #3, "No input file. Please, write the input in JH-Sanderson.inp and start the program"
PRINT #3, "again. The results will appear in JH-Sanderson.out."
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

! GENERAL DEFINITION

DIM Inp$(100)
OPEN "I", #1, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.inp"
INPUT #1, Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)
DatLen% = LEN(Item$)
Element1$ = MID$(Item$, 1, Delim1%-1)
ElementNum1$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
ElementNum1% = VAL(ElementNum1$)
BondOrder$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
BondOrder% = VAL(BondOrder$)
Element2$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
ElementNum2$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
ElementNum2% = VAL(ElementNum2$)
BondLength$ = MID$(Item$, Delim5%+1, DatLen%-Delim5%)
BondLength = VAL(BondLength$)

IF VAL(Element1$) <> 0 AND Element1$ <> "0" THEN
Z = VAL(Element1$)
ELSE IF VAL(Element1$) = 0 AND Element1$ = "0" THEN
Z = 0
ENDIF

IF ElementNum1$ <> "G" AND ElementNum1$ <> "S" THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "Physical state must be gaseous (G) or solid(S)."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "O", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "============================ * JH PROGRAM SUITE * =============================="
PRINT #3, "========================== * Procedure SANDERSON * ============================="
PRINT #3, "Version 1.03 for Android"
#PRINT #3, "Compiled 2018-02-17 using X11-BASIC"
PRINT #3, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #3, "================================================================================"
PRINT #3, "Physical state must be gaseous (G) or solid(S)."
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

IF ElementNum1$ = "S" AND Z <> 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "Solid state calculation can be carried out only with electroneutral molecules."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "O", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "============================ * JH PROGRAM SUITE * =============================="
PRINT #3, "========================== * Procedure SANDERSON * ============================="
PRINT #3, "Version 1.03 for Windows (32 bit)"
#PRINT #3, "Compiled 2018-02-13 using X11-BASIC"
PRINT #3, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #3, "================================================================================"
PRINT #3, "Solid state calculation can be carried out only with electroneutral molecules."
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

IF ElementNum1$ = "G" AND Z = 0 THEN
OPEN "O", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "============================ * JH PROGRAM SUITE * =============================="
PRINT #3, "========================== * Procedure SANDERSON * ============================="
PRINT #3, "Version 1.03 for Android"
#PRINT #3, "Compiled 2018-02-17 using X11-BASIC"
PRINT #3, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #3, "================================================================================"
PRINT #3, "INPUT"
PRINT #3, "================================================================================"
PRINT #3, "Gaseous state"
PRINT #3, ""
PRINT #3, "Overall charge = ";Z
PRINT #3, "================================================================================"
PRINT #3, "RESULTS"
PRINT #3, "================================================================================"
CLOSE #1
CLOSE #3
GOTO Gas0
ELSE IF ElementNum1$ = "G" AND Z > 0 THEN
OPEN "O", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "============================ * JH PROGRAM SUITE * =============================="
PRINT #3, "========================== * Procedure SANDERSON * ============================="
PRINT #3, "Version 1.03 for Android"
#PRINT #3, "Compiled 2018-02-17 using X11-BASIC"
PRINT #3, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #3, "================================================================================"
PRINT #3, "INPUT"
PRINT #3, "================================================================================"
PRINT #3, "Gaseous state"
PRINT #3, ""
PRINT #3, "Overall charge = ";Z
PRINT #3, "================================================================================"
PRINT #3, "RESULTS"
PRINT #3, "================================================================================"
CLOSE #1
CLOSE #3
GOTO Gas+
ELSE IF ElementNum1$ = "G" AND Z < 0 THEN
OPEN "O", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "============================ * JH PROGRAM SUITE * =============================="
PRINT #3, "========================== * Procedure SANDERSON * ============================="
PRINT #3, "Version 1.03 for Android"
#PRINT #3, "Compiled 2018-02-17 using X11-BASIC"
PRINT #3, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #3, "================================================================================"
PRINT #3, "INPUT"
PRINT #3, "================================================================================"
PRINT #3, "Gaseous state"
PRINT #3, ""
PRINT #3, "Overall charge = ";Z
PRINT #3, "================================================================================"
PRINT #3, "RESULTS"
PRINT #3, "================================================================================"
CLOSE #1
CLOSE #3
GOTO Gas-
ELSE IF ElementNum1$ = "S" AND Z = 0 THEN
OPEN "O", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "============================ * JH PROGRAM SUITE * =============================="
PRINT #3, "========================== * Procedure SANDERSON * ============================="
PRINT #3, "Version 1.03 for Android"
#PRINT #3, "Compiled 2018-02-17 using X11-BASIC"
PRINT #3, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #3, "================================================================================"
PRINT #3, "INPUT"
PRINT #3, "================================================================================"
PRINT #3, "Solid (crystalline) state"
PRINT #3, ""
PRINT #3, "Overall charge = ";Z
PRINT #3, "================================================================================"
PRINT #3, "RESULTS"
PRINT #3, "================================================================================"
CLOSE #1
CLOSE #3
GOTO Solid
ENDIF

Gas0:

! I. GASEOUS STATE, ELECTRONEUTRAL MOLECULES

! FIRST PART

DIM Dat$(200)
DIM Inp$(100)

CumulElng = 1
Pow = 0
EnthalpyAtomization = 0
H = 0

I% = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.inp"

DO

INPUT #1, Item$

Inp$(I%) = Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)
DatLen% = LEN(Item$)
Element1$ = MID$(Item$, 1, Delim1%-1)
ElementNum1$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
ElementNum1% = VAL(ElementNum1$)
BondOrder$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
BondOrder% = VAL(BondOrder$)
Element2$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
ElementNum2$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
ElementNum2% = VAL(ElementNum2$)
BondLength$ = MID$(Item$, Delim5%+1, DatLen%-Delim5%)
BondLength = VAL(BondLength$)

J% = 0

OPEN "I", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.dat"
OPEN "I", #4, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.par"

INPUT #4, Parameters$

ParmLength% = LEN(Parameters$)
Delim13% = INSTR(Parameters$, ";")
Delim14% = INSTR(Parameters$, ";", Delim13%+1)
Delim15% = INSTR(Parameters$, ";", Delim14%+1)
Delim16% = INSTR(Parameters$, ";", Delim15%+1)
Delim17% = INSTR(Parameters$, ";", Delim16%+1)
Coef$ = MID$(Parameters$, 1, Delim13%-1)
Coef = VAL(Coef$)
Cation$ = MID$(Parameters$, Delim13%+1, Delim14%-Delim13%-1)
Anion$ = MID$(Parameters$, Delim14%+1, Delim15%-Delim14%-1)
Single$ = MID$(Parameters$, Delim15%+1, Delim16%-Delim15%-1)
Single = VAL(Single$)
Double$ = MID$(Parameters$, Delim16%+1, Delim17%-Delim16%-1)
Double = VAL(Double$)
Triple$ = MID$(Parameters$, Delim17%+1, ParmLength%-Delim17%)
Triple = VAL(Triple$)

CLOSE #4

DO

INPUT #2, AtomLine$

Dat$(J%) = AtomLine$
Delim6% = INSTR(AtomLine$, ";")
Delim7% = INSTR(AtomLine$, ";", Delim6%+1)
Delim8% = INSTR(AtomLine$, ";", Delim7%+1)
Delim9% = INSTR(AtomLine$, ";", Delim8%+1)
Delim10% = INSTR(AtomLine$, ";", Delim9%+1)
LineLenght% = LEN(AtomLine$)
Atom$ = MID$(AtomLine$, 1, Delim6%-1)
RadiusAtom$ = MID$(AtomLine$, Delim6%+1, Delim7%-Delim6%-1)
RadiusAtom = VAL(RadiusAtom$)
Electronegativity$ = MID$(AtomLine$, Delim7%+1, Delim8%-Delim7%-1)
Electronegativity = VAL(Electronegativity$)
AtomEnthalpy$ = MID$(AtomLine$, Delim8%+1, Delim9%-Delim8%-1)
AtomEnthalpy = VAL(AtomEnthalpy$)
E$ = MID$(AtomLine$, Delim9%+1, Delim10%-Delim9%-1)
E = VAL(E$)
n$ = MID$(AtomLine$, Delim10%+1, LineLenght%-Delim10%)
n = VAL(n$)

IF Element1$ = Atom$ THEN
Elng1 = Electronegativity
CumulElng = CumulElng * (Elng1 ^ ElementNum1%)
Num1 = ElementNum1%
Pow = Pow + Num1
ENDIF

IF Element2$ = Atom$ THEN
Elng2 = Electronegativity
CumulElng = CumulElng * (Elng2 ^ ElementNum2%)
Num2 = ElementNum2%
Pow = Pow + Num2
ENDIF

J% = J%+1
EXIT IF (J% = 200 OR Atom$ = "")
LOOP

CLOSE #2

IF (Num1 = 0 OR Num2 = 0) AND I% = 2 AND Item$ = "" THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

I% = I%+1
EXIT IF (I% = 200 OR Element1$ = "")
LOOP

IF Elng1 = 0 OR Elng2 = 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

IF Num1 = 0 AND Num2 = 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

CLOSE #1

Root = 1/Pow
TotElng = CumulElng ^ Root

OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "Electronegativity of the species = ";TotElng USING "###.###"
PRINT #3, ""
PRINT #3, "Atom", "Atomic charge", "Atomization enthalpy"
PRINT #3, "====", "=============", "===================="
CLOSE #3

! SECOND PART

DIM Dat$(200)
DIM Inp$(100)

OPEN "O", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
CLOSE #7

K% = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.inp"

DO

INPUT #1, Item$

Inp$(K%) = Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)
DatLen% = LEN(Item$)
Element1$ = MID$(Item$, 1, Delim1%-1)
ElementNum1$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
ElementNum1% = VAL(ElementNum1$)
BondOrder$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
BondOrder% = VAL(BondOrder$)
Element2$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
ElementNum2$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
ElementNum2% = VAL(ElementNum2$)
BondLength$ = MID$(Item$, Delim5%+1, DatLen%-Delim5%)
BondLength = VAL(BondLength$)

L% = 0

OPEN "I", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.dat"

DO

INPUT #2, AtomLine$

Dat$(L%) = AtomLine$
Delim6% = INSTR(AtomLine$, ";")
Delim7% = INSTR(AtomLine$, ";", Delim6%+1)
Delim8% = INSTR(AtomLine$, ";", Delim7%+1)
Delim9% = INSTR(AtomLine$, ";", Delim8%+1)
Delim10% = INSTR(AtomLine$, ";", Delim9%+1)
LineLength% = LEN(AtomLine$)
Atom$ = MID$(AtomLine$, 1, Delim6%-1)
RadiusAtom$ = MID$(AtomLine$, Delim6%+1, Delim7%-Delim6%-1)
RadiusAtom = VAL(RadiusAtom$)
Electronegativity$ = MID$(AtomLine$, Delim7%+1, Delim8%-Delim7%-1)
Electronegativity = VAL(Electronegativity$)
AtomEnthalpy$ = MID$(AtomLine$, Delim8%+1, Delim9%-Delim8%-1)
AtomEnthalpy = VAL(AtomEnthalpy$)
E$ = MID$(AtomLine$, Delim9%+1, Delim10%-Delim9%-1)
E = VAL(E$)
n$ = MID$(AtomLine$, Delim10%+1, LineLength%-Delim10%)
n = VAL(n$)

IF Element1$ = Atom$ AND ElementNum1% <> 0 THEN
Norm1 = Coef * SQRT(Electronegativity)
Elng1 = Electronegativity
delta1 = (TotElng - Elng1) / Norm1
EA1 = AtomEnthalpy
EnthalpyAtomization = EnthalpyAtomization + EA1
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, Atom$, delta1 USING "###.###", "", EA1 USING "###.#"
CLOSE #3
ENDIF

IF Element2$ = Atom$ AND ElementNum2% <> 0 THEN
Norm2 = Coef * SQRT(Electronegativity)
Elng2 = Electronegativity
delta2 = (TotElng - Elng2) / Norm2
EA2 = AtomEnthalpy
EnthalpyAtomization = EnthalpyAtomization + EA2
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, Atom$, delta2 USING "###.###", "", EA2 USING "###.#"
CLOSE #3
ENDIF

IF K% <> 0 AND Element1$ = Atom$ THEN
N1 = Coef * SQRT(Electronegativity)
r1 = RadiusAtom
E1 = E
d1 = (TotElng - Electronegativity) / N1
ENDIF

IF K% <> 0 AND Element2$ = Atom$ THEN
N2 = Coef * SQRT(Electronegativity)
r2 = RadiusAtom
E2 = E
d2 = (TotElng - Electronegativity) / N2
ENDIF

L% = L%+1
EXIT IF (L% = 200 OR Atom$ = "")
LOOP

H = H - Etot	! must be before declaring next Etot, otherwise the last one will be counted again despite the data line is empty

ti = 0.5 * ABS(d1-d2)
tc = 1 - ti

IF BondOrder% = 1 THEN
f = Single
ELSE IF BondOrder% = 2 THEN
f = Double
ELSE IF BondOrder% = 3 THEN
f = Triple
ENDIF

IF K% <> 0 AND BondLength$ <> "R" THEN
r = BondLength * 100
ELSE IF K% <> 0 AND BondLength$ = "R" THEN
r = r1+r2
ENDIF

IF Element1$ <> "0" AND Element1$ <> "" THEN
Ec = (r1+r2) * SQRT(E1 * E2) * f / r
Ei = 138909 * f / r
ENDIF

Etot = tc * Ec + ti * Ei

OPEN "A", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
IF Element1$ <> "0" AND Element1$ <> "" THEN
PRINT #7, Element1$; "-"; Element2$, BondOrder%, f USING "#.###", r * 0.01 USING "#.###", tc USING "#.###", ti USING "#.###", Ec USING "####.#", Ei USING "####.#", Etot USING "####.#"
ENDIF
CLOSE #7

CLOSE #2

K% = K%+1
EXIT IF (K% = 200 OR Element1$ = "")
LOOP

CLOSE #1

DIM Results$(200)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #2, ""
PRINT #2, "Bond   ", "Order", "Coef.", "d (pm)", "tc", "ti", "Ec", "Ei", "Etot"
PRINT #2, "=======", "=====", "=====", "======", "=====", "=====", "======", "======", "======"
OPEN "I", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
FOR Y% = 0 TO 199
INPUT #7, ResultLine$
Results$(Y%) = ResultLine$
PRINT #2, ResultLine$
EXIT IF ResultLine$ = ""
NEXT Y%
PRINT #2, "All energy values are in kJ.mol-1."
PRINT #2, ""

H = H + EnthalpyAtomization

PRINT #2, "Enthalpy of formation = "; H USING "#####.#"; " kJ.mol-1"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #2, " Inc., New York 1971."
PRINT #2, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #2, " Academic Press, Inc., New York 1976."
PRINT #2, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #2, " 1983."
PRINT #2, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #2, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #2, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #2, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #2, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #2, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #2, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #2, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #2, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #2, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #2, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #2, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #2, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #2, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #2, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #2, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Sanderson.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
CLOSE #7

KILL "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
EXIT
END

Gas+:

! II. GASEOUS SPECIES, POLYATOMIC CATIONS

! FIRST PART

DIM Dat$(200)
DIM Inp$(100)

CumulElng = 1
Pow = 0
EnthalpyAtomization = 0
H = 0

I% = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.inp"

DO

INPUT #1, Item$

Inp$(I%) = Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)
DatLen% = LEN(Item$)
Element1$ = MID$(Item$, 1, Delim1%-1)
ElementNum1$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
ElementNum1% = VAL(ElementNum1$)
BondOrder$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
BondOrder% = VAL(BondOrder$)
Element2$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
ElementNum2$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
ElementNum2% = VAL(ElementNum2$)
BondLength$ = MID$(Item$, Delim5%+1, DatLen%-Delim5%)
BondLength = VAL(BondLength$)

J% = 0

OPEN "I", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.dat"
OPEN "I", #4, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.par"

INPUT #4, Parameters$

ParmLength% = LEN(Parameters$)
Delim13% = INSTR(Parameters$, ";")
Delim14% = INSTR(Parameters$, ";", Delim13%+1)
Delim15% = INSTR(Parameters$, ";", Delim14%+1)
Delim16% = INSTR(Parameters$, ";", Delim15%+1)
Delim17% = INSTR(Parameters$, ";", Delim16%+1)
Coef$ = MID$(Parameters$, 1, Delim13%-1)
Coef = VAL(Coef$)
Cation$ = MID$(Parameters$, Delim13%+1, Delim14%-Delim13%-1)
Anion$ = MID$(Parameters$, Delim14%+1, Delim15%-Delim14%-1)
Single$ = MID$(Parameters$, Delim15%+1, Delim16%-Delim15%-1)
Single = VAL(Single$)
Double$ = MID$(Parameters$, Delim16%+1, Delim17%-Delim16%-1)
Double = VAL(Double$)
Triple$ = MID$(Parameters$, Delim17%+1, ParmLength%-Delim17%)
Triple = VAL(Triple$)

CLOSE #4

DO

INPUT #2, AtomLine$

Dat$(J%) = AtomLine$
Delim6% = INSTR(AtomLine$, ";")
Delim7% = INSTR(AtomLine$, ";", Delim6%+1)
Delim8% = INSTR(AtomLine$, ";", Delim7%+1)
Delim9% = INSTR(AtomLine$, ";", Delim8%+1)
Delim10% = INSTR(AtomLine$, ";", Delim9%+1)
LineLength% = LEN(AtomLine$)
Atom$ = MID$(AtomLine$, 1, Delim6%-1)
RadiusAtom$ = MID$(AtomLine$, Delim6%+1, Delim7%-Delim6%-1)
RadiusAtom = VAL(RadiusAtom$)
Electronegativity$ = MID$(AtomLine$, Delim7%+1, Delim8%-Delim7%-1)
Electronegativity = VAL(Electronegativity$)
AtomEnthalpy$ = MID$(AtomLine$, Delim8%+1, Delim9%-Delim8%-1)
AtomEnthalpy = VAL(AtomEnthalpy$)
E$ = MID$(AtomLine$, Delim9%+1, Delim10%-Delim9%-1)
E = VAL(E$)
n$ = MID$(AtomLine$, Delim10%+1, LineLength%-Delim10%)
n = VAL(n$)

IF Element1$ = Atom$ THEN
Elng1 = Electronegativity
CumulElng = CumulElng * (Elng1 ^ ElementNum1%)
Num1 = ElementNum1%
Pow = Pow + Num1
ENDIF

IF Element2$ = Atom$ THEN
Elng2 = Electronegativity
CumulElng = CumulElng * (Elng2 ^ ElementNum2%)
Num2 = ElementNum2%
Pow = Pow + Num2
ENDIF

IF Anion$ = Atom$ THEN
ElngRef = Electronegativity
PowRef = Z
ENDIF

J% = J%+1
EXIT IF (J% = 200 OR Atom$ = "")
LOOP

CLOSE #2

IF (Num1 = 0 OR Num2 = 0) AND I% = 2 AND Item$ = "" THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

I% = I%+1
EXIT IF (I% = 200 OR Element1$ = "")
LOOP

CLOSE #1

IF Elng1 = 0 OR Elng2 = 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

IF Num1 = 0 AND Num2 = 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

Root = 1/Pow
TotElng = CumulElng ^ Root

RootRef = 1/(Pow+PowRef)
CumulElngRef = (TotElng ^ Pow) * (ElngRef ^ PowRef)
TotElngRef = CumulElngRef ^ RootRef

DeltaElngRef = Coef * SQR(ElngRef)

tsalt = ABS((ElngRef-TotElngRef)/DeltaElngRef)

ElngCation = TotElng + (1/tsalt) * (TotElngRef-TotElng)

OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "Electronegativity of the species = ";ElngCation USING "###.###"
PRINT #3, "Used anion = ";Anion$
PRINT #3, ""
PRINT #3, "Atom", "Atomic charge", "Atomization enthalpy"
PRINT #3, "====", "=============", "===================="
CLOSE #3

! SECOND PART

DIM Dat$(200)
DIM Inp$(100)

OPEN "O", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
CLOSE #7

K% = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.inp"

DO

INPUT #1, Item$

Inp$(K%) = Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)
DatLen% = LEN(Item$)
Element1$ = MID$(Item$, 1, Delim1%-1)
ElementNum1$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
ElementNum1% = VAL(ElementNum1$)
BondOrder$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
BondOrder% = VAL(BondOrder$)
Element2$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
ElementNum2$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
ElementNum2% = VAL(ElementNum2$)
BondLength$ = MID$(Item$, Delim5%+1, DatLen%-Delim5%)
BondLength = VAL(BondLength$)

L% = 0

OPEN "I", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.dat"

DO

INPUT #2, AtomLine$

Dat$(L%) = AtomLine$
Delim6% = INSTR(AtomLine$, ";")
Delim7% = INSTR(AtomLine$, ";", Delim6%+1)
Delim8% = INSTR(AtomLine$, ";", Delim7%+1)
Delim9% = INSTR(AtomLine$, ";", Delim8%+1)
Delim10% = INSTR(AtomLine$, ";", Delim9%+1)
LineLength% = LEN(AtomLine$)
Atom$ = MID$(AtomLine$, 1, Delim6%-1)
RadiusAtom$ = MID$(AtomLine$, Delim6%+1, Delim7%-Delim6%-1)
RadiusAtom = VAL(RadiusAtom$)
Electronegativity$ = MID$(AtomLine$, Delim7%+1, Delim8%-Delim7%-1)
Electronegativity = VAL(Electronegativity$)
AtomEnthalpy$ = MID$(AtomLine$, Delim8%+1, Delim9%-Delim8%-1)
AtomEnthalpy = VAL(AtomEnthalpy$)
E$ = MID$(AtomLine$, Delim9%+1, Delim10%-Delim9%-1)
E = VAL(E$)
n$ = MID$(AtomLine$, Delim10%+1, LineLength%-Delim10%)
n = VAL(n$)

IF Element1$ = Atom$ AND ElementNum1% <> 0 THEN
Norm1 = Coef * SQRT(Electronegativity)
Elng1 = Electronegativity
delta1 = (ElngCation - Elng1) / Norm1
EA1 = AtomEnthalpy
EnthalpyAtomization = EnthalpyAtomization + EA1
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, Atom$, delta1 USING "###.###", "", EA1 USING "###.#"
CLOSE #3
ENDIF

IF Element2$ = Atom$ AND ElementNum2% <> 0 THEN
Norm2 = Coef * SQRT(Electronegativity)
Elng2 = Electronegativity
delta2 = (ElngCation - Elng2) / Norm2
EA2 = AtomEnthalpy
EnthalpyAtomization = EnthalpyAtomization + EA2
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, Atom$, delta2 USING "###.###", "", EA2 USING "###.#"
CLOSE #3
ENDIF

IF K% <> 0 AND Element1$ = Atom$ THEN
N1 = Coef * SQRT(Electronegativity)
r1 = RadiusAtom
E1 = E
d1 = (ElngCation - Electronegativity) / N1
ENDIF

IF K% <> 0 AND Element2$ = Atom$ THEN
N2 = Coef * SQRT(Electronegativity)
r2 = RadiusAtom
E2 = E
d2 = (ElngCation - Electronegativity) / N2
ENDIF

L% = L%+1
EXIT IF (L% = 200 OR Atom$ = "")
LOOP

H = H - Etot	! must be before declaring next Etot, otherwise the last one will be counted again despite the data line is empty

ti = 0.5 * ABS(d1-d2)
tc = 1 - ti

IF BondOrder% = 1 THEN
f = Single
ELSE IF BondOrder% = 2 THEN
f = Double
ELSE IF BondOrder% = 3 THEN
f = Triple
ENDIF

IF K% <> 0 AND BondLength$ <> "R" THEN
r = BondLength * 100
ELSE IF K% <> 0 AND BondLength$ = "R" THEN
r = r1+r2
ENDIF

IF K% <> 0 AND Element1$ <> "" THEN
Ec = (r1+r2) * SQRT(E1 * E2) * f / r
Ei = 138909 * f / r
ENDIF

Etot = tc * Ec + ti * Ei

OPEN "A", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
IF K% <> 0 AND Element1$ <> "" THEN
PRINT #7, Element1$; "-"; Element2$, BondOrder%, f USING "#.###", r * 0.01 USING "#.###", tc USING "#.###", ti USING "#.###", Ec USING "####.#", Ei USING "####.#", Etot USING "####.#"
ENDIF
CLOSE #7

CLOSE #2

K% = K%+1
EXIT IF (K% = 200 OR Element1$ = "")
LOOP

CLOSE #1

DIM Results$(200)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #2, ""
PRINT #2, "Bond   ", "Order", "Coef.", "d (pm)", "tc", "ti", "Ec", "Ei", "Etot"
PRINT #2, "=======", "=====", "=====", "======", "=====", "=====", "======", "======", "======"
OPEN "I", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
FOR Y% = 0 TO 199
INPUT #7, ResultLine$
Results$(Y%) = ResultLine$
PRINT #2, ResultLine$
EXIT IF ResultLine$ = ""
NEXT Y%
PRINT #2, "All energy values are in kJ.mol-1."
PRINT #2, ""

H = H + EnthalpyAtomization

PRINT #2, "Enthalpy of formation = "; H USING "#####.#"; " kJ.mol-1"
PRINT #2, ""
PRINT #2, "WARNING!"
PRINT #2, "Procedure for bond energy calculations was parametrized for uncharged"
PRINT #2, "uncharged species only."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #2, " Inc., New York 1971."
PRINT #2, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #2, " Academic Press, Inc., New York 1976."
PRINT #2, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #2, " 1983."
PRINT #2, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #2, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #2, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #2, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #2, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #2, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #2, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #2, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #2, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #2, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #2, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #2, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #2, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #2, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #2, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #2, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Sanderson.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
CLOSE #7

KILL "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
EXIT
END

Gas-:

! III. GASEOUS SPECIES, POLYATOMIC ANIONS

! FIRST PART

DIM Dat$(200)
DIM Inp$(100)

CumulElng = 1
Pow = 0
EnthalpyAtomization = 0
H = 0

I% = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.inp"

DO

INPUT #1, Item$

Inp$(I%) = Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)
DatLen% = LEN(Item$)
Element1$ = MID$(Item$, 1, Delim1%-1)
ElementNum1$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
ElementNum1% = VAL(ElementNum1$)
BondOrder$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
BondOrder% = VAL(BondOrder$)
Element2$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
ElementNum2$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
ElementNum2% = VAL(ElementNum2$)
BondLength$ = MID$(Item$, Delim5%+1, DatLen%-Delim5%)
BondLength = VAL(BondLength$)

J% = 0

OPEN "I", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.dat"
OPEN "I", #4, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.par"

INPUT #4, Parameters$

ParmLength% = LEN(Parameters$)
Delim13% = INSTR(Parameters$, ";")
Delim14% = INSTR(Parameters$, ";", Delim13%+1)
Delim15% = INSTR(Parameters$, ";", Delim14%+1)
Delim16% = INSTR(Parameters$, ";", Delim15%+1)
Delim17% = INSTR(Parameters$, ";", Delim16%+1)
Coef$ = MID$(Parameters$, 1, Delim13%-1)
Coef = VAL(Coef$)
Cation$ = MID$(Parameters$, Delim13%+1, Delim14%-Delim13%-1)
Anion$ = MID$(Parameters$, Delim14%+1, Delim15%-Delim14%-1)
Single$ = MID$(Parameters$, Delim15%+1, Delim16%-Delim15%-1)
Single = VAL(Single$)
Double$ = MID$(Parameters$, Delim16%+1, Delim17%-Delim16%-1)
Double = VAL(Double$)
Triple$ = MID$(Parameters$, Delim17%+1, ParmLength%-Delim17%)
Triple = VAL(Triple$)

CLOSE #4

DO

INPUT #2, AtomLine$

Dat$(J%) = AtomLine$
Delim6% = INSTR(AtomLine$, ";")
Delim7% = INSTR(AtomLine$, ";", Delim6%+1)
Delim8% = INSTR(AtomLine$, ";", Delim7%+1)
Delim9% = INSTR(AtomLine$, ";", Delim8%+1)
Delim10% = INSTR(AtomLine$, ";", Delim9%+1)
LineLength% = LEN(AtomLine$)
Atom$ = MID$(AtomLine$, 1, Delim6%-1)
RadiusAtom$ = MID$(AtomLine$, Delim6%+1, Delim7%-Delim6%-1)
RadiusAtom = VAL(RadiusAtom$)
Electronegativity$ = MID$(AtomLine$, Delim7%+1, Delim8%-Delim7%-1)
Electronegativity = VAL(Electronegativity$)
AtomEnthalpy$ = MID$(AtomLine$, Delim8%+1, Delim9%-Delim8%-1)
AtomEnthalpy = VAL(AtomEnthalpy$)
E$ = MID$(AtomLine$, Delim9%+1, Delim10%-Delim9%-1)
E = VAL(E$)
n$ = MID$(AtomLine$, Delim10%+1, LineLength%-Delim10%)
n = VAL(n$)

IF Element1$ = Atom$ THEN
Elng1 = Electronegativity
CumulElng = CumulElng * (Elng1 ^ ElementNum1%)
Num1 = ElementNum1%
Pow = Pow + Num1
ENDIF

IF Element2$ = Atom$ THEN
Elng2 = Electronegativity
CumulElng = CumulElng * (Elng2 ^ ElementNum2%)
Num2 = ElementNum2%
Pow = Pow + Num2
ENDIF

IF Cation$ = Atom$ THEN
ElngRef = Electronegativity
PowRef = -Z
ENDIF

J% = J%+1
EXIT IF (J% = 200 OR Atom$ = "")
LOOP

CLOSE #2

IF (Num1 = 0 OR Num2 = 0) AND I% = 2 AND Item$ = "" THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

I% = I%+1
EXIT IF (I% = 200 OR Element1$ = "")
LOOP

CLOSE #1

IF Elng1 = 0 OR Elng2 = 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

IF Num1 = 0 AND Num2 = 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

Root = 1/Pow
TotElng = CumulElng ^ Root

RootRef = 1/(Pow+PowRef)
CumulElngRef = (TotElng ^ Pow) * (ElngRef ^ PowRef)
TotElngRef = CumulElngRef ^ RootRef

DeltaElngRef = Coef * SQR(ElngRef)

tsalt = ABS((ElngRef-TotElngRef)/DeltaElngRef)

ElngAnion = TotElng + (1/tsalt) * (TotElngRef-TotElng)

OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "Electronegativity of the species = ";ElngAnion USING "###.###"
PRINT #3, "Used cation = ";Cation$
PRINT #3, ""
PRINT #3, "Atom", "Atomic charge", "Atomization enthalpy"
PRINT #3, "====", "=============", "===================="
CLOSE #3

! SECOND PART

DIM Dat$(200)
DIM Inp$(100)

OPEN "O", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
CLOSE #7

K% = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.inp"

DO

INPUT #1, Item$

Inp$(K%) = Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)
DatLen% = LEN(Item$)
Element1$ = MID$(Item$, 1, Delim1%-1)
ElementNum1$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
ElementNum1% = VAL(ElementNum1$)
BondOrder$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
BondOrder% = VAL(BondOrder$)
Element2$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
ElementNum2$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
ElementNum2% = VAL(ElementNum2$)
BondLength$ = MID$(Item$, Delim5%+1, DatLen%-Delim5%)
BondLength = VAL(BondLength$)

L% = 0

OPEN "I", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.dat"

DO

INPUT #2, AtomLine$

Dat$(L%) = AtomLine$
Delim6% = INSTR(AtomLine$, ";")
Delim7% = INSTR(AtomLine$, ";", Delim6%+1)
Delim8% = INSTR(AtomLine$, ";", Delim7%+1)
Delim9% = INSTR(AtomLine$, ";", Delim8%+1)
Delim10% = INSTR(AtomLine$, ";", Delim9%+1)
LineLength% = LEN(AtomLine$)
Atom$ = MID$(AtomLine$, 1, Delim6%-1)
RadiusAtom$ = MID$(AtomLine$, Delim6%+1, Delim7%-Delim6%-1)
RadiusAtom = VAL(RadiusAtom$)
Electronegativity$ = MID$(AtomLine$, Delim7%+1, Delim8%-Delim7%-1)
Electronegativity = VAL(Electronegativity$)
AtomEnthalpy$ = MID$(AtomLine$, Delim8%+1, Delim9%-Delim8%-1)
AtomEnthalpy = VAL(AtomEnthalpy$)
E$ = MID$(AtomLine$, Delim9%+1, Delim10%-Delim9%-1)
E = VAL(E$)
n$ = MID$(AtomLine$, Delim10%+1, LineLength%-Delim10%)
n = VAL(n$)

IF Element1$ = Atom$ AND ElementNum1% <> 0 THEN
Norm1 = Coef * SQRT(Electronegativity)
Elng1 = Electronegativity
delta1 = (ElngAnion - Elng1) / Norm1
EA1 = AtomEnthalpy
EnthalpyAtomization = EnthalpyAtomization + EA1
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, Atom$, delta1 USING "###.###", "", EA1 USING "###.#"
CLOSE #3
ENDIF

IF Element2$ = Atom$ AND ElementNum2% <> 0 THEN
Norm2 = Coef * SQRT(Electronegativity)
Elng2 = Electronegativity
delta2 = (ElngAnion - Elng2) / Norm2
EA2 = AtomEnthalpy
EnthalpyAtomization = EnthalpyAtomization + EA2
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, Atom$, delta2 USING "###.###", "", EA2 USING "###.#"
CLOSE #3
ENDIF

IF K% <> 0 AND Element1$ = Atom$ THEN
N1 = Coef * SQRT(Electronegativity)
r1 = RadiusAtom
E1 = E
d1 = (ElngAnion - Electronegativity) / N1
ENDIF

IF K% <> 0 AND Element2$ = Atom$ THEN
N2 = Coef * SQRT(Electronegativity)
r2 = RadiusAtom
E2 = E
d2 = (ElngAnion - Electronegativity) / N2
ENDIF

L% = L%+1
EXIT IF (L% = 200 OR Atom$ = "")
LOOP

H = H - Etot	! must be before declaring next Etot, otherwise the last one will be counted again despite the data line is empty

ti = 0.5 * ABS(d1-d2)
tc = 1 - ti

IF BondOrder% = 1 THEN
f = Single
ELSE IF BondOrder% = 2 THEN
f = Double
ELSE IF BondOrder% = 3 THEN
f = Triple
ENDIF

IF K% <> 0 AND BondLength$ <> "R" THEN
r = BondLength * 100
ELSE IF K% <> 0 AND BondLength$ = "R" THEN
r = r1+r2
ENDIF

IF K% <> 0 AND Element1$ <> "" THEN
Ec = (r1+r2) * SQRT(E1 * E2) * f / r
Ei = 138909 * f / r
ENDIF

Etot = tc * Ec + ti * Ei

OPEN "A", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
IF K% <> 0 AND Element1$ <> "" THEN
PRINT #7, Element1$; "-"; Element2$, BondOrder%, f USING "#.###", r * 0.01 USING "#.###", tc USING "#.###", ti USING "#.###", Ec USING "####.#", Ei USING "####.#", Etot USING "####.#"
ENDIF
CLOSE #7

CLOSE #2

K% = K%+1
EXIT IF (K% = 200 OR Element1$ = "")
LOOP

CLOSE #1

DIM Results$(200)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #2, ""
PRINT #2, "Bond   ", "Order", "Coef.", "d (pm)", "tc", "ti", "Ec", "Ei", "Etot"
PRINT #2, "=======", "=====", "=====", "======", "=====", "=====", "======", "======", "======"
OPEN "I", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
FOR Y% = 0 TO 199
INPUT #7, ResultLine$
Results$(Y%) = ResultLine$
PRINT #2, ResultLine$
EXIT IF ResultLine$ = ""
NEXT Y%
PRINT #2, "All energy values are in kJ.mol-1."
PRINT #2, ""

H = H + EnthalpyAtomization

PRINT #2, "Enthalpy of formation = "; H USING "#####.#"; " kJ.mol-1"
PRINT #2, ""
PRINT #2, "WARNING!"
PRINT #2, "Procedure for bond energy calculations was parametrized for uncharged"
PRINT #2, "uncharged species only." 
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #2, " Inc., New York 1971."
PRINT #2, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #2, " Academic Press, Inc., New York 1976."
PRINT #2, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #2, " 1983."
PRINT #2, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #2, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #2, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #2, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #2, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #2, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #2, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #2, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #2, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #2, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #2, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #2, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #2, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #2, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #2, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #2, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Sanderson.b terminated NORMALLY, "; DATE$; ", "; TIME$; "." 
CLOSE #2
CLOSE #7

KILL "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
EXIT
END

Solid:

! IV. CRYSTALLINE STATE

! FIRST PART

DIM Dat$(200)
DIM Inp$(100)
DIM Madel$(100)

CumulElng = 1
Pow = 0
EnthalpyAtomization = 0
H = 0

I% = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.inp"

DO

INPUT #1, Item$

Inp$(I%) = Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)
Delim6% = INSTR(Item$, ";", Delim5%+1)
Delim7% = INSTR(Item$, ";", Delim6%+1)
DatLen% = LEN(Item$)
Element1$ = MID$(Item$, 1, Delim1%-1)
ElementNum1$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
ElementNum1% = VAL(ElementNum1$)
BondOrder$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
BondOrder% = VAL(BondOrder$)
Element2$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
ElementNum2$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
ElementNum2% = VAL(ElementNum2$)
BondLength$ = MID$(Item$, Delim5%+1, Delim6%-Delim5%-1)
BondLength = VAL(BondLength$)
LatticeType$ = MID$(Item$, Delim6%+1, Delim7%-Delim6%-1)
NumberPairs$ = MID$(Item$, Delim7%+1, DatLen%-Delim7%)
NumberPairs% = VAL(NumberPairs$)

J% = 0

OPEN "I", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.dat"
OPEN "I", #4, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.par"
OPEN "I", #5, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.mad"

INPUT #4, Parameters$

ParmLength% = LEN(Parameters$)
Delim13% = INSTR(Parameters$, ";")
Delim14% = INSTR(Parameters$, ";", Delim13%+1)
Delim15% = INSTR(Parameters$, ";", Delim14%+1)
Delim16% = INSTR(Parameters$, ";", Delim15%+1)
Delim17% = INSTR(Parameters$, ";", Delim16%+1)
Coef$ = MID$(Parameters$, 1, Delim13%-1)
Coef = VAL(Coef$)
Cation$ = MID$(Parameters$, Delim13%+1, Delim14%-Delim13%-1)
Anion$ = MID$(Parameters$, Delim14%+1, Delim15%-Delim14%-1)
Single$ = MID$(Parameters$, Delim15%+1, Delim16%-Delim15%-1)
Single = VAL(Single$)
Double$ = MID$(Parameters$, Delim16%+1, Delim17%-Delim16%-1)
Double = VAL(Double$)
Triple$ = MID$(Parameters$, Delim17%+1, ParmLength%-Delim17%)
Triple = VAL(Triple$)

CLOSE #4

DO

INPUT #2, AtomLine$

Dat$(J%) = AtomLine$
Delim6% = INSTR(AtomLine$, ";")
Delim7% = INSTR(AtomLine$, ";", Delim6%+1)
Delim8% = INSTR(AtomLine$, ";", Delim7%+1)
Delim9% = INSTR(AtomLine$, ";", Delim8%+1)
Delim10% = INSTR(AtomLine$, ";", Delim9%+1)
LineLength% = LEN(AtomLine$)
Atom$ = MID$(AtomLine$, 1, Delim6%-1)
RadiusAtom$ = MID$(AtomLine$, Delim6%+1, Delim7%-Delim6%-1)
RadiusAtom = VAL(RadiusAtom$)
Electronegativity$ = MID$(AtomLine$, Delim7%+1, Delim8%-Delim7%-1)
Electronegativity = VAL(Electronegativity$)
AtomEnthalpy$ = MID$(AtomLine$, Delim8%+1, Delim9%-Delim8%-1)
AtomEnthalpy = VAL(AtomEnthalpy$)
E$ = MID$(AtomLine$, Delim9%+1, Delim10%-Delim9%-1)
E = VAL(E$)
n$ = MID$(AtomLine$, Delim10%+1, LineLength%-Delim10%)
n = VAL(n$)

IF Element1$ = Atom$ THEN
Elng1 = Electronegativity
CumulElng = CumulElng * (Elng1 ^ ElementNum1%)
Num1 = ElementNum1%
Pow = Pow + Num1
ENDIF

IF Element2$ = Atom$ THEN
Elng2 = Electronegativity
CumulElng = CumulElng * (Elng2 ^ ElementNum2%)
Num2 = ElementNum2%
Pow = Pow + Num2
ENDIF

J% = J%+1
EXIT IF (J% = 200 OR Atom$ = "")
LOOP

CLOSE #2

X% = 1

DO

INPUT #5, Madelung$

Madel$(X%) = Madelung$
MadelungLength% = LEN(Madelung$)
Delim18% = INSTR(Madelung$, ";")
Type$ = MID$(Madelung$, 1, Delim18%-1)
Constant$ = MID$(Madelung$, Delim18%+1, MadelungLength%-Delim18%)
Constant = VAL(Constant$)

IF LatticeType$ = Type$ AND I% = 0 THEN
Lat$ = LatticeType$
MadelConst = Constant
Pairs% = NumberPairs%
ENDIF

X% = X%+1
EXIT IF (X% = 100 OR Madelung$ = "")
LOOP

IF MadelConst = 0 OR Pairs% <= 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "Wrong crystal definition."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "Wrong crystal definition."
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

CLOSE #5

IF (Num1 = 0 OR Num2 = 0) AND I% = 2 AND Item$ = "" THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

I% = I%+1
EXIT IF (I% = 200 OR Element1$ = "")
LOOP

CLOSE #1

IF Elng1 = 0 OR Elng2 = 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

IF Num1 = 0 AND Num2 = 0 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure SANDERSON * ============================="
PRINT "Version 1.03 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "There must be at least two elements in the considered species."
PRINT "(The electronegativity must not be zero or negative.)"
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT " Inc., New York 1971."
PRINT "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT " Academic Press, Inc., New York 1976."
PRINT "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT " 1983."
PRINT "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "There must be at least two elements in the considered species."
PRINT #3, "(The electronegativity must not be zero or negative.)"
PRINT #3, "================================================================================"
PRINT #3, "REFERENCES:"
PRINT #3, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #3, " Inc., New York 1971."
PRINT #3, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #3, " Academic Press, Inc., New York 1976."
PRINT #3, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #3, " 1983."
PRINT #3, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #3, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #3, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #3, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #3, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #3, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #3, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #3, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #3, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #3, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #3, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #3, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #3, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #3, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #3, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #3, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #3, "ACKNOWLEDGEMENTS"
PRINT #3, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #3, "(Interpreter & Compiler)"
PRINT #3, "================================================================================"
PRINT #3, "Execution of JH-Sanderson.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #3
END
ENDIF

Root = 1/Pow
TotElng = CumulElng ^ Root

OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, "Electronegativity of the species = ";TotElng USING "###.###"
PRINT #3, ""
PRINT #3, "Lattice type = ";Lat$
PRINT #3, "Madelung constant = ";MadelConst
PRINT #3, "Number of shared electron pairs = ";Pairs%
PRINT #3, ""
PRINT #3, "Atom", "Atomic charge", "Atomization enthalpy", "Born exp."
PRINT #3, "====", "=============", "====================", "========="
CLOSE #3

! SECOND PART

DIM Dat$(200)
DIM Inp$(100)
DIM Madel$(100)

OPEN "O", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
CLOSE #7

K% = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.inp"

DO

INPUT #1, Item$

Inp$(K%) = Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)
Delim6% = INSTR(Item$, ";", Delim5%+1)
Delim7% = INSTR(Item$, ";", Delim6%+1)
DatLen% = LEN(Item$)
Element1$ = MID$(Item$, 1, Delim1%-1)
ElementNum1$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
ElementNum1% = VAL(ElementNum1$)
BondOrder$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
BondOrder% = VAL(BondOrder$)
Element2$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
ElementNum2$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
ElementNum2% = VAL(ElementNum2$)
BondLength$ = MID$(Item$, Delim5%+1, Delim6%-Delim5%-1)
BondLength = VAL(BondLength$)
LatticeType$ = MID$(Item$, Delim6%+1, Delim7%-Delim6%-1)
NumberPairs$ = MID$(Item$, Delim7%+1, DatLen%-Delim7%)
NumberPairs% = VAL(NumberPairs$)

L% = 0

OPEN "I", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.dat"

DO

INPUT #2, AtomLine$

Dat$(L%) = AtomLine$
Delim6% = INSTR(AtomLine$, ";")
Delim7% = INSTR(AtomLine$, ";", Delim6%+1)
Delim8% = INSTR(AtomLine$, ";", Delim7%+1)
Delim9% = INSTR(AtomLine$, ";", Delim8%+1)
Delim10% = INSTR(AtomLine$, ";", Delim9%+1)
LineLength% = LEN(AtomLine$)
Atom$ = MID$(AtomLine$, 1, Delim6%-1)
RadiusAtom$ = MID$(AtomLine$, Delim6%+1, Delim7%-Delim6%-1)
RadiusAtom = VAL(RadiusAtom$)
Electronegativity$ = MID$(AtomLine$, Delim7%+1, Delim8%-Delim7%-1)
Electronegativity = VAL(Electronegativity$)
AtomEnthalpy$ = MID$(AtomLine$, Delim8%+1, Delim9%-Delim8%-1)
AtomEnthalpy = VAL(AtomEnthalpy$)
E$ = MID$(AtomLine$, Delim9%+1, Delim10%-Delim9%-1)
E = VAL(E$)
n$ = MID$(AtomLine$, Delim10%+1, LineLength%-Delim10%)
n = VAL(n$)

IF Element1$ = Atom$ AND ElementNum1% <> 0 THEN
Norm1 = Coef * SQRT(Electronegativity)
Elng1 = Electronegativity
delta1 = (TotElng - Elng1) / Norm1
EA1 = AtomEnthalpy
EnthalpyAtomization = EnthalpyAtomization + EA1
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, Atom$, delta1 USING "###.###", "", EA1 USING "###.#", "", "", Bornexp1
CLOSE #3
ENDIF

IF Element2$ = Atom$ AND ElementNum2% <> 0 THEN
Norm2 = Coef * SQRT(Electronegativity)
Elng2 = Electronegativity
delta2 = (TotElng - Elng2) / Norm2
EA2 = AtomEnthalpy
EnthalpyAtomization = EnthalpyAtomization + EA2
OPEN "A", #3, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #3, Atom$, delta2 USING "###.###", "", EA2 USING "###.#", "", "", Bornexp2
CLOSE #3
ENDIF

IF K% <> 0 AND Element1$ = Atom$ THEN
N1 = Coef * SQRT(Electronegativity)
r1 = RadiusAtom
E1 = E
d1 = (TotElng - Electronegativity) / N1
Bornexp1 = n
ENDIF

IF K% <> 0 AND Element2$ = Atom$ THEN
N2 = Coef * SQRT(Electronegativity)
r2 = RadiusAtom
E2 = E
d2 = (TotElng - Electronegativity) / N2
Bornexp2 = n
ENDIF

L% = L%+1
EXIT IF (L% = 200 OR Atom$ = "")
LOOP

H = H - Etot	! must be before declaring next Etot, otherwise the last one will be counted again despite the data line is empty

ti = 0.5 * ABS(d1-d2)
tc = 1 - ti

IF BondOrder% = 1 THEN
f = Single
ELSE IF BondOrder% = 2 THEN
f = Double
ELSE IF BondOrder% = 3 THEN
f = Triple
ENDIF

IF K% <> 0 AND BondLength$ <> "R" THEN
r = BondLength * 100
ELSE IF K% <> 0 AND BondLength$ = "R" THEN
r = r1+r2
ENDIF

IF Element1$ <> "0" AND Element1$ <> "" THEN
Ec = (r1+r2) * SQRT(E1 * E2) * f * Pairs% / r
MeanB = 0.5 * (Bornexp1 + Bornexp2)
k = 1-(1/MeanB)
Ei = 138909 * f * MadelConst * k / r
ENDIF

Etot = tc * Ec + ti * Ei

OPEN "A", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
IF Element1$ <> "0" AND Element1$ <> "" THEN
PRINT #7, Element1$; "-"; Element2$, BondOrder%, f USING "#.###", r * 0.01 USING "#.###", tc USING "#.###", ti USING "#.###", Ec USING "####.#", Ei USING "####.#", Etot USING "####.#"
ENDIF
CLOSE #7

CLOSE #2

K% = K%+1
EXIT IF (K% = 200 OR Element1$ = "")
LOOP

CLOSE #1

DIM Results$(200)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Sanderson/JH-Sanderson.out"
PRINT #2, ""
PRINT #2, "Bond   ", "Order", "Coef.", "d (pm)", "tc", "ti", "Ec", "Ei", "Etot"
PRINT #2, "=======", "=====", "=====", "======", "=====", "=====", "======", "======", "======"
OPEN "I", #7, "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
FOR Y% = 0 TO 199
INPUT #7, ResultLine$
Results$(Y%) = ResultLine$
PRINT #2, ResultLine$
EXIT IF ResultLine$ = ""
NEXT Y%
PRINT #2, "All energy values are in kJ.mol-1."
PRINT #2, ""

H = H + EnthalpyAtomization

PRINT #2, "Enthalpy of formation = "; H USING "#####.#"; " kJ.mol-1"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Robert Thomas Sanderson: Chemical Bonds and Bond Energy. Academic Press,"
PRINT #2, " Inc., New York 1971."
PRINT #2, "[2] Robert Thomas Sanderson: Chemical Bonds and Bond Energy, Second Edition."
PRINT #2, " Academic Press, Inc., New York 1976."
PRINT #2, "[3] Robert Thomas Sanderson: Polar Covalence. Academic Press, Inc., New York"
PRINT #2, " 1983."
PRINT #2, "[4] Robert Thomas Sanderson, J. Chem. Educ. 29(11) (1952) 539-544."
PRINT #2, "[5] Robert Thomas Sanderson, J. Chem. Educ. 31(1) (1954) 2-7."
PRINT #2, "[6] Robert Thomas Sanderson, J. Chem. Educ. 31(5) (1954) 238-245."
PRINT #2, "[7] Robert Thomas Sanderson, J. Chem. Educ. 32(3) (1955) 140-141."
PRINT #2, "[8] Robert Thomas Sanderson, J. Chem. Educ. 41(6) (1964) 331-333."
PRINT #2, "[9] Robert Thomas Sanderson, J. Chem. Educ. 41(7) (1964) 361-366."
PRINT #2, "[10] Robert Thomas Sanderson, J. Inorg. Nucl. Chem. 27 (1965) 989-992."
PRINT #2, "[11] Robert Thomas Sanderson, J. Am. Chem. Soc. 79(6) (1975) 1367-1372."
PRINT #2, "[12] Robert Thomas Sanderson, J. Org. Chem. 47 (1982) 3835-3839."
PRINT #2, "[13] Robert Thomas Sanderson, J. Am. Chem. Soc. 105 (1983) 2259-2261."
PRINT #2, "[14] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 1856-1858."
PRINT #2, "[15] Robert Thomas Sanderson, Inorg. Chem. 25 (1986) 3518-3522."
PRINT #2, "[16] Robert Thomas Sanderson, J. Chem. Educ. 65(2) (1988) 112-118."
PRINT #2, "[17] Robert Thomas Sanderson, J. Chem. Educ. 65(3) (1988) 227-231."
PRINT #2, "[18] Stepan S. Batsanov, Andrei S. Batsanov: Introduction to Structural"
PRINT #2, " Chemistry. Springer Science+Business Media, Dordrecht 2012."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Sanderson.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
CLOSE #7

KILL "/data/data/cz.jh.suite/files/Sanderson/SandersonTemp"
EXIT
END
