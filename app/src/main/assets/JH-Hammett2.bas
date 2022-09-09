CLS

DIM Dat$(200)
DIM Inp$(101)

OPEN "I", #4, "/data/data/cz.jh.suite/files/Hammett2/JH-Hammett2.inp"
INPUT #4, Parameters$
LengthPar% = LEN(Parameters$)
DelimPar1% = INSTR(Parameters$, ";")
DelimPar2% = INSTR(Parameters$, ";", DelimPar1%+1)
DelimPar3% = INSTR(Parameters$, ";", DelimPar2%+1)
DelimPar4% = INSTR(Parameters$, ";", DelimPar3%+1)

Reactants$ = MID$(Parameters$, 1, DelimPar1%-1)
Med$ = MID$(Parameters$, DelimPar1%+1, DelimPar2%-DelimPar1%-1)
Meta1$ = MID$(Parameters$, DelimPar2%+1, DelimPar3%-DelimPar2%-1)
Meta2$ = MID$(Parameters$, DelimPar3%+1, DelimPar4%-DelimPar3%-1)
Para$ = MID$(Parameters$, DelimPar4%+1, LengthPar%-DelimPar4%)
CLOSE #4

OPEN "O", #2, "/data/data/cz.jh.suite/files/Hammett2/JH-Hammett2.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "========================== * Procedure HAMMETT II * ============================"
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-03-27 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Hammett2/JH-Hammett2.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "========================== * Procedure HAMMETT II * ============================"
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2018-03-27 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Hammett2.inp and start the program"
PRINT "again. The results will appear in JH-Hammett2.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Otto Exner: Korelacni vztahy v organicke chemii. SNTL/Alfa, Praha 1981."
PRINT "[2] N. B. Chapman, J. Shorter: Correlation Analysis in Chemistry, Recent"
PRINT "    Advances. Plenum Press, New York 1978."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Hammett2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Hammett2/JH-Hammett2.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Hammett2.inp and start the program again."
PRINT #2, "The results will appear in JH-Hammett2.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Otto Exner: Korelacni vztahy v organicke chemii. SNTL/Alfa, Praha 1981."
PRINT #2, "[2] N. B. Chapman, J. Shorter: Correlation Analysis in Chemistry, Recent"
PRINT #2, "    Advances. Plenum Press, New York 1978."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Hammett2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "I", #1, "/data/data/cz.jh.suite/files/Hammett2/JH-Hammett2-Rho.dat"
I% = 0

DO

INPUT #1, Item$

Length% = LEN(Item$)
Dat$(I%) = Item$
Delim1% = INSTR(Item$, ";")
Delim2% = INSTR(Item$, ";", Delim1%+1)
Delim3% = INSTR(Item$, ";", Delim2%+1)
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)

React$ = MID$(Item$, 1, Delim1%-1)
Medium$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
Temperature$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
Rho$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
SigmaType$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
log_k$ = MID$(Item$, Delim5%+1, Length%-Delim5%-1)

Temperature = VAL(Temperature$)
Rho = VAL(Rho$)
log_k = VAL(log_k$)

IF Reactants$ = React$ AND Medium$ = Med$ THEN
Rho_val = Rho
log_k0 = log_k
SType$ = SigmaType$
ENDIF

I% = I% + 1

EXIT IF (I% = 200 OR React$ = "")

LOOP

CLOSE #1

OPEN "I", #3, "/data/data/cz.jh.suite/files/Hammett2/JH-Hammett2-Sigma.dat"

J% = 0

DO

INPUT #3, Request$

Inp$(J%) = Request$
LengthReq% = LEN(Request$)
Lim1% = INSTR(Request$, ";")
Lim2% = INSTR(Request$, ";", Lim1%+1)
Lim3% = INSTR(Request$, ";", Lim2%+1)
Lim4% = INSTR(Request$, ";", Lim3%+1)
Lim5% = INSTR(Request$, ";", Lim4%+1)
Subst$ = MID$(Request$, 1, Lim1%-1)
Sigma_m$ = MID$(Request$, Lim1%+1, Lim2%-Lim1%-1)
Sigma_p$ = MID$(Request$, Lim2%+1, Lim3%-Lim2%-1)
Sigma_plus$ = MID$(Request$, Lim3%+1, Lim4%-Lim3%-1)
Sigma_minus$ = MID$(Request$, Lim4%+1, Lim5%-Lim4%-1)
Sigma_star$ = MID$(Request$, Lim5%+1, LengthReq%-Lim5%)

IF Subst$ = Meta1$ AND SType$ = "m" THEN
Sigma_m1 = VAL(Sigma_m$)
ENDIF

IF Subst$ = Meta2$ AND SType$ = "m" THEN
Sigma_m2 = VAL(Sigma_m$)
ENDIF

IF Subst$ = Para$ AND SType$ = "0" THEN
Sigma_p = VAL(Sigma_p$)
ELSE IF Subst$ = Para$ AND SType$ = "+" THEN
Sigma_p = VAL(Sigma_plus$)
ELSE IF Subst$ = Para$ AND SType$ = "-" THEN
Sigma_p = VAL(Sigma_minus$)
ELSE IF Subst$ = Para$ AND SType$ = "*" THEN
Sigma_p = VAL(Sigma_star$)
ENDIF

J% = J% + 1
EXIT IF (J% = 100 OR Subst$ = "")
LOOP

CLOSE #3

log_k_new = log_k0 + Rho_val * (Sigma_m1+Sigma_m2+Sigma_p)
Diff = log_k_new-log_k0

OPEN "A", #2, "/data/data/cz.jh.suite/files/Hammett2/JH-Hammett2.out"
PRINT #2, "================================================================================"
PRINT #2, "INPUT"
PRINT #2, "================================================================================"
PRINT #2, "Reactants: "; Reactants$
PRINT #2, "Medium: "; Med$
PRINT #2, "Substituents:"
PRINT #2, "m- (1): "; Meta1$
PRINT #2, "m- (2): "; Meta2$
PRINT #2, "p-: "; Para$
PRINT #2, "Hammett constants:"
PRINT #2, "Rho = "; Rho_val USING "##.##"
PRINT #2, "Sigma_m1 = "; Sigma_m1 USING "##.##"
PRINT #2, "Sigma_m2 = "; Sigma_m2 USING "##.##"
PRINT #2, "Sigma_p = "; Sigma_p USING "##.##"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "log k(subst.)-log k(parental) = "; Diff USING "##.##"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Otto Exner: Korelacni vztahy v organicke chemii. SNTL/Alfa, Praha 1981."
PRINT #2, "[2] N. B. Chapman, J. Shorter: Correlation Analysis in Chemistry, Recent"
PRINT #2, "    Advances. Plenum Press, New York 1978."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Hammett2.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
