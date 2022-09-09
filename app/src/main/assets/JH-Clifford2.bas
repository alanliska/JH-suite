CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Clifford2/JH-Clifford2.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "========================= * Procedure CLIFFORD II * ============================"
PRINT #1, "Version 1.00 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2018"
PRINT #1, "================================================================================"
CLOSE #1

OPEN "I", #2, "/data/data/cz.jh.suite/files/Clifford2/JH-Clifford2.inp"
INPUT #2, Cation$, NCat%, Anion$, NAni%
CLOSE #2

DIM Atoms1$(100)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Clifford2/JH-Clifford2.dat"
FOR I% = 0 TO 99
INPUT #4, Data_blockA$
Atoms1$(I%) = Data_blockA$
Element1$ = LEFTOF$(Data_blockA$, ";")
DelimA1% = INSTR(Data_blockA$, ";")
Length11% = LEN(Data_blockA$)
ElngCat$ = MID$(Data_blockA$, DelimA1%+1, Length11%-DelimA1%)
ElngCat = VAL(ElngCat$)
Sign1% = INSTR(Element1$, "+")
Length1% = LEN(Element1$)
Root1$ = MID$(Element1$, 1, Sign1%-1)
Back1$ = MID$(Element1$, Sign1%+1, Length1%-Sign1%)
IF Back1$ = "" THEN
zA = 1
ELSE
zA = VAL(Back1$)
ENDIF

IF Element1$ = Cation$ THEN
CatCount% = 1
ElngA = ElngCat
zCat = zA
RootCat$ = Root1$
ENDIF

NEXT I%

CLOSE #4

DIM Parameters$(100)
OPEN "I", #3, "/data/data/cz.jh.suite/files/Clifford2/JH-Clifford2.par"
FOR K% = 0 TO 99
INPUT #3, ParmBlock$
Parameters$(K%) = ParmBlock$
ParmDelim1% = INSTR(ParmBlock$, ";")
ParmDelim2% = INSTR(ParmBlock$, ";", ParmDelim1%+1)
ParmDelim3% = INSTR(ParmBlock$, ";", ParmDelim2%+1)
ParmDelim4% = INSTR(ParmBlock$, ";", ParmDelim3%+1)
ParmDelim5% = INSTR(ParmBlock$, ";", ParmDelim4%+1)
ParmLength% = LEN(ParmBlock$)
a$ = MID$(ParmBlock$, 1, ParmDelim1%-1)
a = VAL(a$)
b$ = MID$(ParmBlock$, ParmDelim1%+1, ParmDelim2%-ParmDelim1%-1)
b = VAL(b$)
Coeff1$ = MID$(ParmBlock$, ParmDelim2%+1, ParmDelim3%-ParmDelim2%-1)
Coeff1 = VAL(Coeff1$)
Coeff2$ = MID$(ParmBlock$, ParmDelim3%+1, ParmDelim4%-ParmDelim3%-1)
Coeff2 = VAL(Coeff2$)
Element2$ = MID$(ParmBlock$, ParmDelim4%+1, ParmDelim5%-ParmDelim4%-1)
ElngAni$ = MID$(ParmBlock$, ParmDelim5%+1, ParmLength%-ParmDelim5%)
ElngAni = VAL(ElngAni$)

Sign2% = INSTR(Element2$, "-")
Length2% = LEN(Element2$)
Root2$ = MID$(Element2$, 1, Sign2%-1)
Back2$ = MID$(Element2$, Sign2%+1, Length2%-Sign2%)
IF Back2$ = "" THEN
zB = -1
ELSE
zB = -VAL(Back2$)
ENDIF

IF a = NCat% AND b = NAni% AND Element2$ = Anion$ THEN
c1 = Coeff1
c2 = Coeff2
AniCount% = 1
ElngB = ElngAni
zAni = zB
RootAni$ = Root2$
ParmCount% = 1
ENDIF

NEXT K%
CLOSE #3

IF Anion$ = "OH_" + STR$(NAni%) + "-" THEN
RootAni$ = "OH"
ENDIF

IF zCat*NCat%+zAni*NAni% <> 0 THEN
PRINT "The compound is not charge balanced."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT "[2] Bacanov, S.S.: Elektronegativita prvkù a chemická vazba. SNTL, Praha 1965."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Clifford2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford2/JH-Clifford2.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "The compound is not charge balanced."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "[2] Bacanov, S.S.: Elektronegativita prvkù a chemická vazba. SNTL, Praha 1965."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

IF CatCount% = 0 THEN
PRINT "Cation not recognized in the database file."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT "[2] Bacanov, S.S.: Elektronegativita prvkù a chemická vazba. SNTL, Praha 1965."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Clifford2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford2/JH-Clifford2.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Cation not recognized in the database file."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "[2] Bacanov, S.S.: Elektronegativita prvkù a chemická vazba. SNTL, Praha 1965."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

IF AniCount% = 0 THEN
PRINT "Anion not recognized in the database file."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT "[2] Bacanov, S.S.: Elektronegativita prvkù a chemická vazba. SNTL, Praha 1965."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Clifford2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford2/JH-Clifford2.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Anion not recognized in the database file."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "[2] Bacanov, S.S.: Elektronegativita prvkù a chemická vazba. SNTL, Praha 1965."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

IF ParmCount% = 0 THEN
PRINT "Stoichiometry not parametrized."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT "[2] Bacanov, S.S.: Elektronegativita prvkù a chemická vazba. SNTL, Praha 1965."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Clifford2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford2/JH-Clifford2.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Stoichiometry not parametrized."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "[2] Bacanov, S.S.: Elektronegativita prvkù a chemická vazba. SNTL, Praha 1965."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

pKs = c1 + c2 * ABS(ElngB-ElngA)


OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford2/JH-Clifford2.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Solubility product, pKs = "; pKs USING "###.##"
PRINT #1, ""
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"
PRINT #1, ""

CatLength = LEN(RootCat$)
Catmodif$ = MID$(RootCat$, 2, CatLength-1)
AniLength = LEN(RootAni$)
Animodif$ = MID$(RootAni$, 2, AniLength-1)

Cattest = MAX(INSTR(Catmodif$, "A"), INSTR(Catmodif$, "B"), INSTR(Catmodif$, "C"), INSTR(Catmodif$, "D"), INSTR(Catmodif$, "E"), INSTR(Catmodif$, "F"), INSTR(Catmodif$, "G"), INSTR(Catmodif$, "H"), INSTR(Catmodif$, "I"), INSTR(Catmodif$, "J"), INSTR(Catmodif$, "K"), INSTR(Catmodif$, "L"), INSTR(Catmodif$, "M"), INSTR(Catmodif$, "N"), INSTR(Catmodif$, "O"), INSTR(Catmodif$, "P"), INSTR(Catmodif$, "Q"), INSTR(Catmodif$, "R"), INSTR(Catmodif$, "S"), INSTR(Catmodif$, "T"), INSTR(Catmodif$, "U"), INSTR(Catmodif$, "V"), INSTR(Catmodif$, "W"), INSTR(Catmodif$, "X"), INSTR(Catmodif$, "Y"), INSTR(Catmodif$, "Z"), INSTR(Catmodif$, "0"), INSTR(Catmodif$, "1"), INSTR(Catmodif$, "2"), INSTR(Catmodif$, "3"), INSTR(Catmodif$, "4"), INSTR(Catmodif$, "5"), INSTR(Catmodif$, "6"), INSTR(Catmodif$, "7"), INSTR(Catmodif$, "8"), INSTR(Catmodif$, "9"))
Anitest = MAX(INSTR(Animodif$, "A"), INSTR(Animodif$, "B"), INSTR(Animodif$, "C"), INSTR(Animodif$, "D"), INSTR(Animodif$, "E"), INSTR(Animodif$, "F"), INSTR(Animodif$, "G"), INSTR(Animodif$, "H"), INSTR(Animodif$, "I"), INSTR(Animodif$, "J"), INSTR(Animodif$, "K"), INSTR(Animodif$, "L"), INSTR(Animodif$, "M"), INSTR(Animodif$, "N"), INSTR(Animodif$, "O"), INSTR(Animodif$, "P"), INSTR(Animodif$, "Q"), INSTR(Animodif$, "R"), INSTR(Animodif$, "S"), INSTR(Animodif$, "T"), INSTR(Animodif$, "U"), INSTR(Animodif$, "V"), INSTR(Animodif$, "W"), INSTR(Animodif$, "X"), INSTR(Animodif$, "Y"), INSTR(Animodif$, "Z"), INSTR(Animodif$, "0"), INSTR(Animodif$, "1"), INSTR(Animodif$, "2"), INSTR(Animodif$, "3"), INSTR(Animodif$, "4"), INSTR(Animodif$, "5"), INSTR(Animodif$, "6"), INSTR(Animodif$, "7"), INSTR(Animodif$, "8"), INSTR(Animodif$, "9"))

IF Cattest <> 0 AND NCat% > 1 THEN
PRINT #1, "(";
PRINT #1, RootCat$;
PRINT #1, ")";
ELSE
PRINT #1, RootCat$;
ENDIF

IF NCat% > 1 THEN
PRINT #1, NCat%;
ENDIF

If Anitest <> 0 AND NAni% > 1 THEN
PRINT #1, "(";
PRINT #1, RootAni$;
PRINT #1, ")";
ELSE
PRINT #1, RootAni$;
ENDIF

IF NAni% > 1 THEN
PRINT #1, NAni%
ELSE
PRINT #1, ""
ENDIF

IF Cattest <> 0 AND NCat% > 1 THEN
PRINT #1, "(";
PRINT #1, RootCat$;
PRINT #1, ")";
ELSE
PRINT #1, RootCat$;
ENDIF

IF NCat% > 1 THEN
PRINT #1, NCat%;
ENDIF

If Anitest <> 0 AND NAni% > 1 THEN
PRINT #1, "(";
PRINT #1, RootAni$;
PRINT #1, ")";
ELSE
PRINT #1, RootAni$;
ENDIF

IF NAni% > 1 THEN
PRINT #1, NAni%;
ENDIF

PRINT #1, " = ";

IF NCat% > 1 THEN
PRINT #1, NCat%;
PRINT #1, " ";
ENDIF

PRINT #1, Cation$;
PRINT #1, " + ";

IF NAni% > 1 THEN
PRINT #1, NAni%;
PRINT #1, " ";
ENDIF

PRINT #1, Anion$

PRINT #1, "     log_k  "; -pKs USING "####.##"

PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "[2] Bacanov, S.S.: Elektronegativita prvkù a chemická vazba. SNTL, Praha 1965."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford2.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

EXIT

END
