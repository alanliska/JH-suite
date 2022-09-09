CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "========================== * Procedure CLIFFORD I * ============================"
PRINT #1, "Version 1.00 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2018"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.inp"
INPUT #2, Cation$, NCat%, Anion$, NAni%
CLOSE #2
GOTO Common
ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure CLIFFORD I * ============================"
PRINT "Version 1.00"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2018"
PRINT "================================================================================"

OPEN "O", #1, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "========================== * Procedure CLIFFORD I * ============================"
PRINT #1, "Version 1.00"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2018"
PRINT #1, "================================================================================"
CLOSE #1

PRINT "You are about to predict the solubility product (pKs) of a compound "
PRINT "with general formula AaBb"
PRINT ""
PRINT "Note that the calculation leads to incorrect results if a > 2."
PRINT "The coefficients a and b must be input in such way that the compound"
PRINT "is electroneutral."
PRINT ""
PRINT "Available cations A+b: "
DIM Atoms1$(100)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.dat"
FOR I% = 0 TO 99
INPUT #4, Data_blockA$
Atoms1$(I%) = Data_blockA$
Element1$ = LEFTOF$(Data_blockA$, ";")
Sign1% = INSTR(Element1$, "+")
IF I% > 0 AND Sign1% > 0 THEN
PRINT Element1$ + " ",
ENDIF
IF Element1$ = "" THEN
GOTO FinishA
ENDIF
NEXT I%
FinishA:
PRINT ""
CLOSE #4
PRINT "Input A+b: "
INPUT Cation$
PRINT "Input a: "
INPUT NCat%
PRINT ""
PRINT "Available anions B-a: "
DIM Atoms2$(100)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.dat"
FOR J% = 0 TO 99
INPUT #4, Data_blockB$
Atoms2$(J%) = Data_blockB$
Element2$ = LEFTOF$(Data_blockB$, ";")
Sign2% = INSTR(Element2$, "-")
IF J% > 0 AND Sign2% > 0 AND (Element2$ <> "OH_1-" AND Element2$ <> "OH_2-" AND Element2$ <> "OH_3-" AND Element2$ <> "OH_4-") THEN
PRINT Element2$ + " ",
ELSE IF J% > 0 AND Sign2% > 0 AND (Element2$ = "OH_1-" AND Element2$ <> "OH_2-" AND Element2$ <> "OH_3-" AND Element2$ <> "OH_4-") THEN
PRINT "OH- ",
ENDIF
IF Element2$ = "" THEN
GOTO FinishB
ENDIF
NEXT J%
FinishB:
PRINT ""
CLOSE #4
PRINT "Input B-a: "
INPUT Anion$
PRINT "Input b: "
INPUT NAni%

ENDIF

Common:

DIM Atoms1$(100)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.dat"
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

DIM Atoms2$(100)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.dat"
FOR J% = 0 TO 99
INPUT #4, Data_blockB$
Atoms2$(J%) = Data_blockB$
Element2$ = LEFTOF$(Data_blockB$, ";")
DelimB1% = INSTR(Data_blockB$, ";")
Length21% = LEN(Data_blockB$)
ElngAni$ = MID$(Data_blockB$, DelimB1%+1, Length21%-DelimB1%)
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

IF Anion$ = "OH-" THEN
Anion$ = "OH_" + STR$(NAni%) + "-"
ENDIF

IF Element2$ = Anion$ THEN
AniCount% = 1
ElngB = ElngAni
zAni = zB
RootAni$ = Root2$
ENDIF

NEXT J%

IF Anion$ = "OH_" + STR$(NAni%) + "-" THEN
RootAni$ = "OH"
ENDIF

IF CatCount% = 0 THEN
PRINT "Cation not recognized in the database file."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Clifford1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Cation not recognized in the database file."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

IF AniCount% = 0 THEN
PRINT "Anion not recognized in the database file."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Clifford1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Anion not recognized in the database file."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

IF zCat*NCat%+zAni*NAni% <> 0 THEN
PRINT "The compound is not charge balanced."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Clifford1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "The compound is not charge balanced."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

DIM Parameters$(100)
OPEN "I", #3, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.par"
FOR K% = 0 TO 99
INPUT #3, ParmBlock$
Parameters$(K%) = ParmBlock$
ParmDelim1% = INSTR(ParmBlock$, ";")
ParmDelim2% = INSTR(ParmBlock$, ";", ParmDelim1%+1)
ParmLength% = LEN(ParmBlock$)
a$ = MID$(ParmBlock$, 1, ParmDelim1%-1)
a = VAL(a$)
Coeff1$ = MID$(ParmBlock$, ParmDelim1%+1, ParmDelim2%-ParmDelim1%-1)
Coeff1 = VAL(Coeff1$)
Coeff2$ = MID$(ParmBlock$, ParmDelim2%+1, ParmLength%-ParmDelim2%)
Coeff2 = VAL(Coeff2$)

IF a = NCat% THEN
c1 = Coeff1
c2 = Coeff2
ParmCount% = 1
ENDIF

NEXT K%
CLOSE #3

IF ParmCount% = 0 THEN
PRINT "Stoichiometry not parametrized."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Clifford1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Stoichiometry not parametrized."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

pKs = (NCat%+NAni%) * c1 + c2 * ABS(ElngB-ElngA)

IF ExistInput <> -1 THEN
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "For viewing the output protocol, please open the file JH-Clifford1.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Clifford1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.out"
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

IF Anion$ = "OH_" + STR$(NAni%) + "-" THEN
PRINT #1, "OH-"
ELSE
PRINT #1, Anion$
ENDIF

PRINT #1, "     log_k  "; -pKs USING "###.##"

IF NCat% > 2 THEN
PRINT #1, ""
PRINT #1, "WARNING! The original model does not consider salts other than ABb and A2Bb!"
ENDIF

PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

ELSE

OPEN "A", #1, "/data/data/cz.jh.suite/files/Clifford1/JH-Clifford1.out"
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

IF Anion$ = "OH_" + STR$(NAni%) + "-" THEN
PRINT #1, "OH-"
ELSE
PRINT #1, Anion$
ENDIF

PRINT #1, "     log_k  "; -pKs USING "###.##"

IF NCat% > 2 THEN
PRINT #1, ""
PRINT #1, "WARNING! The original model does not consider salts other than ABb and A2Bb!"
ENDIF

PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] A. F. Clifford, J. Phys. Chem. 63(8) (1959) 1227-1231."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Clifford1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

EXIT

ENDIF

END
