CLS

DIM Dat$(200)
DIM Inp$(101)

OPEN "I", #1, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3-Rho.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "=========================== * Procedure ZUMAN III * ============================"
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-03-27 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "=========================== * Procedure ZUMAN III * ============================"
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2018-03-27 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Zuman3.inp and start the program"
PRINT "again. The results will appear in JH-Zuman3.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Petr Zuman: Vplyvy substituentov v organickej polarografii. Nakladatelstvo"
PRINT "    Alfa, Bratislava 1970."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Zuman3.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Zuman3.inp and start the program again."
PRINT #2, "The results will appear in JH-Zuman3.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Petr Zuman: Vplyvy substituentov v organickej polarografii. Nakladatelstvo"
PRINT #2, "    Alfa, Bratislava 1970."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Zuman3.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "================================================================================"
PRINT #2, "INPUT"
PRINT #2, "================================================================================"
CLOSE #2

OPEN "I", #4, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.inp"
INPUT #4, Parameters$
LengthPar% = LEN(Parameters$)
DelimPar1% = INSTR(Parameters$, ";")
DelimPar2% = INSTR(Parameters$, ";", DelimPar1%+1)
DelimPar3% = INSTR(Parameters$, ";", DelimPar2%+1)

Compound$ = MID$(Parameters$, 1, DelimPar1%-1)
Pos1$ = MID$(Parameters$, DelimPar1%+1, DelimPar2%-DelimPar1%-1)
Pos2$ = MID$(Parameters$, DelimPar2%+1, DelimPar3%-DelimPar2%-1)
Pos3$ = MID$(Parameters$, DelimPar3%+1, LengthPar%-DelimPar3%)

CLOSE #4

OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "Compound: ";Compound$
PRINT #2, "Substituent(s):"
PRINT #2, "Z (1): ";Pos1$
PRINT #2, "Z (2): ";Pos2$
PRINT #2, "Z (2): ";Pos3$
CLOSE #2

OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
CLOSE #2

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
Delim6% = INSTR(Item$, ";", Delim5%+1)
Delim7% = INSTR(Item$, ";", Delim6%+1)
Delim8% = INSTR(Item$, ";", Delim7%+1)
Delim9% = INSTR(Item$, ";", Delim8%+1)

Cmp$ = MID$(Item$, 1, Delim1%-1)
Slvnt$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
pH_val$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
Mech$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
OxRed$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
Eq$ = MID$(Item$, Delim5%+1, Delim6%-Delim5%-1)
Delta$ = MID$(Item$, Delim6%+1, Delim7%-Delim6%-1)
Rho$ = MID$(Item$, Delim7%+1, Delim8%-Delim7%-1)
EH$ = MID$(Item$, Delim8%+1, Delim9%-Delim8%-1)
Rem$ = MID$(Item$, Delim9%+1, Length%-Delim9%)

pH_val = VAL(pH_val$)
Delta = VAL(Delta$)
Rho = VAL(Rho$)
EH = VAL(EH$)

IF Compound$ = Cmp$ THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "Solvent: "; Slvnt$
PRINT #2, "pH = "; pH_val USING "##.##"
PRINT #2, "Mechanism: "; Mech$
PRINT #2, "Oxidation or reduction: "; OxRed$
PRINT #2, "Equation used: "; Eq$; " (according to the literature)"
PRINT #2, "Delta(pi)R = ";Delta USING "##.##"; " V"
PRINT #2, "Rho(pi)R = "; Rho USING "##.##"; " V"
PRINT #2, "EH(SCE) = ";EH USING "##.##"; " V vs. SCE"
PRINT #2, "Remark: "; Rem$
PRINT #2, ""
CLOSE #2
ENDIF

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3-Sigma.dat"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LengthReq% = LEN(Request$)
Lim1% = INSTR(Request$, ";")
Lim2% = INSTR(Request$, ";", Lim1%+1)
Group$ = MID$(Request$, 1, Lim1%-1)
Sigma_star$ = MID$(Request$, Lim1%+1, Lim2%-Lim1%-1)
ES$ = MID$(Request$, Lim4%+1, LengthReq%-Lim4%)

Sigma_star = VAL(Sigma_star$)
ES = VAL(ES$)

IF Compound$ = Cmp$ AND Pos1$ = Group$ THEN
S_star1 = Sigma_star
ES1 = ES
ELSE IF Compound$ = Cmp$ AND Pos2$ = Group$ THEN
S_star2 = Sigma_star
ES2 = ES
ELSE IF Compound$ = Cmp$ AND Pos3$ = Group$ THEN
S_star3 = Sigma_star
ES3 = ES
ENDIF

J% = J% + 1
EXIT IF (J% = 100 OR Group$ = "")
LOOP

CLOSE #3

IF Compound$ = Cmp$ AND Eq$ = "29" THEN
E = EH + Rho*(S_star1+S_star2+S_star3)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "Sigma(*) (1) = "; S_star1 USING "##.##"
PRINT #2, "Sigma(*) (2) = "; S_star2 USING "##.##"
PRINT #2, "Sigma(*) (3) = "; S_star3 USING "##.##"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, "Warning: only one substituent is relevant!"
PRINT #2, ""
CLOSE #2
ELSE IF Compound$ = Cmp$ AND Eq$ = "25" THEN
E = EH + Rho*(S_star1*0.45+S_star2*0.45+S_star3*0.45)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "Sigma(*) (1) = "; S_star1 USING "##.##"
PRINT #2, "Sigma_I (1) = "; S_star1*0.45 USING "##.##"
PRINT #2, "Sigma(*) (2) = "; S_star2 USING "##.##"
PRINT #2, "Sigma_I (2) = "; S_star2*0.45 USING "##.##"
PRINT #2, "Sigma(*) (3) = "; S_star3 USING "##.##"
PRINT #2, "Sigma_I (3) = "; S_star3*0.45 USING "##.##"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, "Warning: only one substituent is relevant!"
PRINT #2, ""
CLOSE #2
ELSE IF Compound$ = Cmp$ AND Eq$ = "381" THEN
E = EH + Rho*(S_star1*0.45+S_star2*0.45+S_star3*0.45)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "Sigma(*) (1) = "; S_star1 USING "##.##"
PRINT #2, "Sigma_I (1) = "; S_star1*0.45 USING "##.##"
PRINT #2, "Sigma(*) (2) = "; S_star2 USING "##.##"
PRINT #2, "Sigma_I (2) = "; S_star2*0.45 USING "##.##"
PRINT #2, "Sigma(*) (3) = "; S_star3 USING "##.##"
PRINT #2, "Sigma_I (3) = "; S_star3*0.45 USING "##.##"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, ""
CLOSE #2
ELSE IF Compound$ = Cmp$ AND Eq$ = "382" THEN
E = EH + Rho*(S_star1+S_star2+S_star3)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "Sigma(*) (1) = "; S_star1 USING "##.##"
PRINT #2, "Sigma(*) (2) = "; S_star2 USING "##.##"
PRINT #2, "Sigma(*) (3) = "; S_star3 USING "##.##"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, ""
CLOSE #2
ELSE IF Compound$ = Cmp$ AND Eq$ = "33" THEN
E = EH + Rho*(S_star1+S_star2+S_star3)+0.10
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "Sigma(*) (1) = "; S_star1 USING "##.##"
PRINT #2, "Sigma(*) (2) = "; S_star2 USING "##.##"
PRINT #2, "Sigma(*) (3) = "; S_star3 USING "##.##"
PRINT #2, "M = "; 0.10 USING "##.##"; " V"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, "Warning: only one substituent is relevant!"
PRINT #2, ""
CLOSE #2
ELSE IF Compound$ = Cmp$ AND Eq$ = "36" THEN
E = EH + Rho*(S_star1+S_star2+S_star3)+Delta*(ES1+ES2+ES3)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, "Sigma(*) (1) = "; S_star1 USING "##.##"
PRINT #2, "ES (1) = "; ES1 USING "##.##"
PRINT #2, "Sigma(*) (2) = "; S_star2 USING "##.##"
PRINT #2, "ES (2) = "; ES2 USING "##.##"
PRINT #2, "Sigma(*) (3) = "; S_star3 USING "##.##"
PRINT #2, "ES (3) = "; ES3 USING "##.##"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, "Warning: only one substituent is relevant!"
PRINT #2, ""
CLOSE #2
ENDIF

I% = I% + 1

EXIT IF (I% = 200 OR Cmp$ = "")

LOOP

OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman3/JH-Zuman3.out"
PRINT #2, ""
PRINT #2, "Explanation of abbreviations:"
PRINT #2, ""
PRINT #2, "Solvents: EtOH=ethanol, i-PrOH=isopropanol, MeOH=methanol"
PRINT #2, "Mechanism: E=electrophilic, N=nucleophilic"
PRINT #2, "Oxidation or reduction: O=oxidation, R=reduction"
PRINT #2, "Potentials: EH=parental derivative (all R�s=H), E=desired derivative"
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Petr Zuman: Vplyvy substituentov v organickej polarografii. Nakladatelstvo"
PRINT #2, "    Alfa, Bratislava 1970."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Zuman3.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
