CLS

OPEN "O", #4, "/data/data/cz.jh.suite/files/Edwards2/JH-Edwards2.out"
PRINT #4, "============================ * JH PROGRAM SUITE * =============================="
PRINT #4, "========================== * Procedure EDWARDS II * ============================"
PRINT #4, "Version 1.00 for Android"
#PRINT #4, "Compiled 2018-02-17 using X11-BASIC"
PRINT #4, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #4, "================================================================================"
CLOSE #4

OPEN "I", #1, "/data/data/cz.jh.suite/files/Edwards2/JH-Edwards2.inp"
INPUT #1, PtCplx$, Lig$, Title$
CLOSE #1

DIM TabulatedData$(200)

OPEN "I", #2, "/data/data/cz.jh.suite/files/Edwards2/Complexes_JH-Edwards2.dat"

FOR I% = 0 TO 199

INPUT #2, LineText$
TabulatedData$(I%) = LineText$
Del1% = INSTR(LineText$, ";")
Del2% = INSTR(LineText$, ";", Del1%+1)
Del3% = INSTR(LineText$, ";", Del2%+1)

Cplx$ = MID$(LineText$, 1, Del1%-1)
NumS$ = MID$(LineText$, Del1%+1, Del2%-Del1%-1)
NumS = VAL(NumS$)
log_ks$ = MID$(LineText$, Del2%+1, Del3%-Del2%-1)
log_ks = VAL(log_ks$)

IF Cplx$ = PtCplx$ THEN
s = NumS
LogKs = log_ks
ENDIF

EXIT IF Cplx$ = ""
NEXT I%

CLOSE #2

DIM NextData$(200)

OPEN "I", #3, "/data/data/cz.jh.suite/files/Edwards2/Nucleophiles_JH-Edwards2.dat"

FOR J% = 0 TO 199

INPUT #3, Line$
NextData$(J%) = Line$
DataLen% = LEN(Line$)
Del4% = INSTR(Line$, ";")

Ligand$ = MID$(Line$, 1, Del4%-1)
Num$ = MID$(Line$, Del4%+1, DataLen%-Del4%)
Num = VAL(Num$)

IF Ligand$ = Lig$ THEN
n = Num
ENDIF

EXIT IF Ligand$ = ""
NEXT J%

CLOSE #3

IF s = 0 AND n = 0 THEN
PRINT "Missing data."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Umberto Belluco, Lucio Cattalini, Fried Basolo, Ralph G. Pearson, Aldo"
PRINT " Turco, J. Am. Chem. Soc. 87(2) (1965) 241-246."
PRINT "[2] Ralph G. Pearson, Harold Sobel, Jon Songstad, J. Am. Chem. Soc. 90(2)"
PRINT " (1968) 319-326."
PRINT "[3] Lucio Cattalini: "Mechanism of square planar substitution" in Inorganic"
PRINT " Chemistry Series One, MTP Series 9 (1972) 66."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Edwards2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #4, "/data/data/cz.jh.suite/files/Edwards2/JH-Edwards2.out"
PRINT #4, "RESULTS"
PRINT #4, "================================================================================"
PRINT #4, "Missing data."
PRINT #4, "================================================================================"
PRINT #4, "REFERENCES:"
PRINT #4, "[1] Umberto Belluco, Lucio Cattalini, Fried Basolo, Ralph G. Pearson, Aldo"
PRINT #4, " Turco, J. Am. Chem. Soc. 87(2) (1965) 241-246."
PRINT #4, "[2] Ralph G. Pearson, Harold Sobel, Jon Songstad, J. Am. Chem. Soc. 90(2)"
PRINT #4, " (1968) 319-326."
PRINT #4, "[3] Lucio Cattalini: "Mechanism of square planar substitution" in Inorganic"
PRINT #4, " Chemistry Series One, MTP Series 9 (1972) 66."
PRINT #4, "ACKNOWLEDGEMENTS"
PRINT #4, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #4, "(Interpreter & Compiler)"
PRINT #4, "================================================================================"
PRINT #4, "Execution of JH-Edwards2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #4
EXIT
ENDIF

log_k = LogKs + s*n
k = 10^log_k

IF INSTR(Lig$, "+") > 0 THEN
SignL$ = MID$(Lig$, INSTR(Lig$, "+"), LEN(Lig$)-INSTR(Lig$, "+")+1)
IF SignL$ = "+" THEN
SignL = 1
ELSE
SignL = VAL(SignL$)
ENDIF
ELSE IF INSTR(Lig$, "-") > 0 THEN
SignL$ = MID$(Lig$, INSTR(Lig$, "-"), LEN(Lig$)-INSTR(Lig$, "-")+1)
IF SignL$ = "-" THEN
SignL = -1
ELSE
SignL = VAL(SignL$)
ENDIF
ELSE IF (INSTR(Lig$, "+") = 0 AND INSTR(Lig$, "-") = 0) THEN
SignL$ = ""
SignL = 0
ENDIF

OPEN "A", #4, "/data/data/cz.jh.suite/files/Edwards2/JH-Edwards2.out"
PRINT #4, "RATES"
PRINT #4, Title$
PRINT #4, "-start"
PRINT #4, "10 if (MOL("+CHR$(34)+"["+PtCplx$+"]"+CHR$(34)+") <= 1e-15) then goto 200"
PRINT #4, "100 moles = "+STR$(k)+" * MOL("+CHR$(34)+"["+PtCplx$+"]"+CHR$(34)+") * MOL("+CHR$(34)+"["+Lig$+"]"+SignL$+CHR$(34)+")"
PRINT #4, "200 SAVE moles"
PRINT #4, "-end"
PRINT #4, ""
PRINT #4, "KINETICS"
PRINT #4, Title$
PRINT #4, "-formula ["+PtCplx$+"] -1 ["+Lig$+"]"+SignB$+" -1";

IF PtCplx$ = "PtCl2(PEt3)2" OR PtCplx$ = "PtCl2(AsEt3)2" OR PtCplx$ = "PtCl2(SeEt2)2" OR PtCplx$ = "PtCl2(pip)2" OR PtCplx$ = "PtCl2(en)" OR PtCplx$ = "PtCl(dien)" THEN
Leaving$ = "Cl-"
SignLeaving$ = "-"
SignLeaving = -1
ELSE IF PtCplx$ = "PtBr(dien)" THEN
Leaving$ = "Br-"
SignLeaving$ = "-"
SignLeaving = -1
ELSE IF PtClpx$ = "Pt(H2O)dien" THEN
Leaving$ = "H2O"
SignLeaving$ = ""
SignLeaving = 0
ENDIF

IF Leaving$ = Lig$ THEN
PRINT "Leaving group is identical to nucleophile."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Umberto Belluco, Lucio Cattalini, Fried Basolo, Ralph G. Pearson, Aldo"
PRINT " Turco, J. Am. Chem. Soc. 87(2) (1965) 241-246."
PRINT "[2] Ralph G. Pearson, Harold Sobel, Jon Songstad, J. Am. Chem. Soc. 90(2)"
PRINT " (1968) 319-326."
PRINT "[3] Lucio Cattalini: "Mechanism of square planar substitution" in Inorganic"
PRINT " Chemistry Series One, MTP Series 9 (1972) 66."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Edwards2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #4, "/data/data/cz.jh.suite/files/Edwards2/JH-Edwards2.out"
PRINT #4, "RESULTS"
PRINT #4, "================================================================================"
PRINT #4, "Leaving group is identical to nucleophile."
PRINT #4, "================================================================================"
PRINT #4, "REFERENCES:"
PRINT #4, "[1] Umberto Belluco, Lucio Cattalini, Fried Basolo, Ralph G. Pearson, Aldo"
PRINT #4, " Turco, J. Am. Chem. Soc. 87(2) (1965) 241-246."
PRINT #4, "[2] Ralph G. Pearson, Harold Sobel, Jon Songstad, J. Am. Chem. Soc. 90(2)"
PRINT #4, " (1968) 319-326."
PRINT #4, "[3] Lucio Cattalini: "Mechanism of square planar substitution" in Inorganic"
PRINT #4, " Chemistry Series One, MTP Series 9 (1972) 66."
PRINT #4, "ACKNOWLEDGEMENTS"
PRINT #4, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #4, "(Interpreter & Compiler)"
PRINT #4, "================================================================================"
PRINT #4, "Execution of JH-Edwards2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #4
EXIT
ENDIF

IF SignL > 0 THEN
LigName$ = MID$(Lig$, 1, INSTR(Lig$, "+")-1)
ELSE IF SignL < 0 THEN
LigName$ = MID$(Lig$, 1, INSTR(Lig$, "-")-1)
ELSE
LigName$ = Lig$
ENDIF

NewSign = SignL-SignLeaving
IF NewSign = 0 THEN
NewSign$ = ""
ELSE IF NewSign = 1 THEN
NewSign$ = "+"
ELSE IF NewSign > 1 THEN
NewSign$ = "+"+Str$(NewSign)
ELSE IF NewSign = -1 THEN
NewSign$ = "-"
ELSE IF NewSign < -1 THEN
NewSign$ = STR$(NewSign)
ENDIF

IF PtCplx$ = "PtCl2(PEt3)2" THEN
NewCplx$ = "PtCl(PEt3)2"+LigName$+NewSign$
ELSE IF PtCplx$ = "PtCl2(AsEt3)2" THEN
NewCplx$ = "PtCl(AsEt3)2"+LigName$+NewSign$
ELSE IF PtCplx$ = "PtCl2(SeEt2)2" THEN
NewCplx$ = "PtCl(SeEt2)2"+LigName$+NewSign$
ELSE IF PtCplx$ = "PtCl2(pip)2" THEN
NewCplx$ = "PtCl(pip)2"+LigName$+NewSign$
ELSE IF PtCplx$ = "PtCl2(en)" THEN
NewCplx$ = "PtCl(en)"+LigName$+NewSign$
ELSE IF PtCplx$ = "PtCl(dien)" THEN
NewCplx$ = "Pt(dien)"+LigName$+NewSign$
ELSE IF PtCplx$ = "PtBr(dien)" THEN
NewCplx$ = "Pt(dien)"+LigName$+NewSign$
ELSE IF PtClpx$ = "Pt(H2O)dien" THEN
NewCplx$ = "Pt(dien)"+LigName$+NewSign$
ENDIF

PRINT #4, " ["+NewCplx$+"]"+NewSign$+" 1 ["+Leaving$+"]"+SignLeaving$+" 1"
PRINT #4, "================================================================================"
PRINT #4, "REFERENCES:"
PRINT #4, "[1] Umberto Belluco, Lucio Cattalini, Fried Basolo, Ralph G. Pearson, Aldo"
PRINT #4, " Turco, J. Am. Chem. Soc. 87(2) (1965) 241-246."
PRINT #4, "[2] Ralph G. Pearson, Harold Sobel, Jon Songstad, J. Am. Chem. Soc. 90(2)"
PRINT #4, " (1968) 319-326."
PRINT #4, "[3] Lucio Cattalini: "Mechanism of square planar substitution" in Inorganic"
PRINT #4, " Chemistry Series One, MTP Series 9 (1972) 66."
PRINT #4, "ACKNOWLEDGEMENTS"
PRINT #4, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #4, "(Interpreter & Compiler)"
PRINT #4, "================================================================================"
PRINT #4, "Execution of JH-Edwards2.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #4
EXIT
END
