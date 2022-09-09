CLS

DIM Dat$(200)
DIM Inp$(101)

OPEN "I", #1, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1-Rho.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "============================ * Procedure ZUMAN I * ============================="
PRINT #2, "Version 1.00 for Android"
#PRINT #2, "Compiled 2018-03-27 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "============================ * Procedure ZUMAN I * ============================="
PRINT "Version 1.00 for Android"
#PRINT "Compiled 2018-03-27 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Zuman1.inp and start the program"
PRINT "again. The results will appear in JH-Zuman1.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Petr Zuman: Vplyvy substituentov v organickej polarografii. Nakladatelstvo"
PRINT "    Alfa, Bratislava 1970."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Zuman1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Zuman1.inp and start the program again."
PRINT #2, "The results will appear in JH-Zuman1.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Petr Zuman: Vplyvy substituentov v organickej polarografii. Nakladatelstvo"
PRINT #2, "    Alfa, Bratislava 1970."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Zuman1.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
PRINT #2, "================================================================================"
PRINT #2, "INPUT"
PRINT #2, "================================================================================"
CLOSE #2

OPEN "I", #4, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.inp"
INPUT #4, Parameters$
LengthPar% = LEN(Parameters$)
DelimPar1% = INSTR(Parameters$, ";")
DelimPar2% = INSTR(Parameters$, ";", DelimPar1%+1)
DelimPar3% = INSTR(Parameters$, ";", DelimPar2%+1)
DelimPar4% = INSTR(Parameters$, ";", DelimPar3%+1)
DelimPar5% = INSTR(Parameters$, ";", DelimPar4%+1)

Compound$ = MID$(Parameters$, 1, DelimPar1%-1)
Ortho1$ = MID$(Parameters$, DelimPar1%+1, DelimPar2%-DelimPar1%-1)
Ortho2$ = MID$(Parameters$, DelimPar2%+1, DelimPar3%-DelimPar2%-1)
Meta1$ = MID$(Parameters$, DelimPar3%+1, DelimPar4%-DelimPar3%-1)
Meta2$ = MID$(Parameters$, DelimPar4%+1, DelimPar5%-DelimPar4%-1)
Para$ = MID$(Parameters$, DelimPar5%+1, LengthPar%-DelimPar5%)

CLOSE #4

OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
PRINT #2, "Compound: ";Compound$
PRINT #2, "Substituents:"
PRINT #2, "o- (1): ";Ortho1$
PRINT #2, "o- (2): ";Ortho2$
PRINT #2, "m- (1): ";Meta1$
PRINT #2, "m- (2): ";Meta2$
PRINT #2, "p-: ";Para$
CLOSE #2

OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
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
Eq = VAL(Eq$)
Delta = VAL(Delta$)
Rho = VAL(Rho$)
EH = VAL(EH$)

IF Compound$ = Cmp$ THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
PRINT #2, "Solvent: "; Slvnt$
PRINT #2, "pH = "; pH_val USING "##.##"
PRINT #2, "Mechanism: "; Mech$
PRINT #2, "Oxidation or reduction: "; OxRed$
PRINT #2, "Equation used: "; Eq; " (according to the literature)"
PRINT #2, "Delta(pi)R = ";Delta USING "##.##"; " V"
PRINT #2, "Rho(pi)R = "; Rho USING "##.##"; " V"
PRINT #2, "EH(SCE) = ";EH USING "##.##"; " V vs. SCE"
PRINT #2, "Remark: "; Rem$
PRINT #2, ""
CLOSE #2
ENDIF

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1-Sigma.dat"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LengthReq% = LEN(Request$)
Lim1% = INSTR(Request$, ";")
Lim2% = INSTR(Request$, ";", Lim1%+1)
Lim3% = INSTR(Request$, ";", Lim2%+1)
Lim4% = INSTR(Request$, ";", Lim3%+1)
Lim5% = INSTR(Request$, ";", Lim4%+1)
Lim6% = INSTR(Request$, ";", Lim5%+1)
Lim7% = INSTR(Request$, ";", Lim6%+1)
Lim8% = INSTR(Request$, ";", Lim7%+1)
Lim9% = INSTR(Request$, ";", Lim8%+1)
Group$ = MID$(Request$, 1, Lim1%-1)
Sigma_m$ = MID$(Request$, Lim1%+1, Lim2%-Lim1%-1)
Sigma_p$ = MID$(Request$, Lim2%+1, Lim3%-Lim2%-1)
Sigma_o$ = MID$(Request$, Lim3%+1, Lim4%-Lim3%-1)
ES_o$ = MID$(Request$, Lim4%+1, Lim5%-Lim4%-1)
Sigma_pm$ = MID$(Request$, Lim5%+1, Lim6%-Lim5%-1)
Sigma_mp$ = MID$(Request$, Lim6%+1, Lim7%-Lim6%-1)
Sigma_pp$ = MID$(Request$, Lim7%+1, Lim8%-Lim7%-1)
Sigma_I$ = MID$(Request$, Lim8%+1, Lim9%-Lim8%-1)
Sigma_R$ = MID$(Request$, Lim9%+1, LengthReq%-Lim9%)

Sigma_m = VAL(Sigma_m$)
Sigma_p = VAL(Sigma_p$)
Sigma_o = VAL(Sigma_o$)
ES_o = VAL(ES_o$)
Sigma_pm = VAL(Sigma_pm$)
Sigma_mp = VAL(Sigma_mp$)
Sigma_pp = VAL(Sigma_pp$)
Sigma_I = VAL(Sigma_I$)
Sigma_R = VAL(Sigma_R$)

IF Compound$ = Cmp$ AND Ortho1$ = Group$ THEN
S_o1 = Sigma_o
ES_o1 = ES_o
ELSE IF Compound$ = Cmp$ AND Ortho2$ = Group$ THEN
S_o2 = Sigma_o
ES_o2 = ES_o
ELSE IF Compound$ = Cmp$ AND Meta1$ = Group$ THEN
S_m1 = Sigma_m
S_mp1 = Sigma_mp
ELSE IF Compound$ = Cmp$ AND Meta2$ = Group$ THEN
S_m2 = Sigma_m
S_mp2 = Sigma_mp
ELSE IF Compound$ = Cmp$ AND Para$ = Group$ THEN
S_p = Sigma_p
S_pm = Sigma_pm
S_pp = Sigma_pp
ENDIF

J% = J% + 1
EXIT IF (J% = 100 OR Group$ = "")
LOOP

CLOSE #3

IF Compound$ = Cmp$ AND Eq = 27 THEN
E = EH + Rho*(S_o1+S_o2+S_m1+S_m2+S_p)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
PRINT #2, "Sigma_ortho (1) = "; S_o1 USING "##.##"
PRINT #2, "Sigma_ortho (2) = "; S_o2 USING "##.##"
PRINT #2, "Sigma_meta (1) = "; S_m1 USING "##.##"
PRINT #2, "Sigma_meta (2) = "; S_m2 USING "##.##"
PRINT #2, "Sigma_para = "; S_p USING "##.##"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, ""
CLOSE #2
ELSE IF Compound$ = Cmp$ AND Eq = 30 THEN
E = EH + Rho*S_pm
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
PRINT #2, "Sigma_para(-) = "; S_pm USING "##.##"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, "Warning: only para-position is calculated!"
PRINT #2, ""
CLOSE #2
ELSE IF Compound$ = Cmp$ AND Eq = 31 THEN
E = EH + Rho*(S_mp1+S_mp2+S_pp)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
PRINT #2, "Sigma_meta(+) (1) = "; S_mp1 USING "##.##"
PRINT #2, "Sigma_meta(+) (2) = "; S_mp2 USING "##.##"
PRINT #2, "Sigma_para(+) = "; S_pp USING "##.##"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, "Warning: only meta- and para-positions are calculated!"
PRINT #2, ""
CLOSE #2
ELSE IF Compound$ = Cmp$ AND Eq = 37 THEN
E = EH + Rho*(S_o1+S_o2)+Delta*(ES_o1+ES_o2)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
PRINT #2, "Sigma_ortho (1) = "; S_o1 USING "##.##"
PRINT #2, "Sigma_ortho (2) = "; S_o2 USING "##.##"
PRINT #2, "ES_ortho (1) = "; ES_o1 USING "##.##"
PRINT #2, "ES_ortho (2) = "; ES_o2 USING "##.##"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, "Warning: only ortho-position is calculated!"
PRINT #2, ""
CLOSE #2
ELSE IF Compound$ = Cmp$ AND Eq = 38 THEN
E = EH + Rho*(S_o1+S_o2+S_m1+S_m2+S_p)+Delta*(ES_o1+ES_o2)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
PRINT #2, "Sigma_ortho (1) = "; S_o1 USING "##.##"
PRINT #2, "Sigma_ortho (2) = "; S_o2 USING "##.##"
PRINT #2, "Sigma_meta (1) = "; S_m1 USING "##.##"
PRINT #2, "Sigma_meta (2) = "; S_m2 USING "##.##"
PRINT #2, "Sigma_para = "; S_p USING "##.##"
PRINT #2, "ES_ortho (1) = "; ES_o1 USING "##.##"
PRINT #2, "ES_ortho (2) = "; ES_o2 USING "##.##"
PRINT #2, "EH = "; EH USING "##.##"; " V vs. SCE"
PRINT #2, "Rho = "; Rho USING "##.##"; " V"
PRINT #2, "E = "; E USING "##.##"; " V vs. SCE"
PRINT #2, ""
CLOSE #2
ENDIF

I% = I% + 1

EXIT IF (I% = 200 OR Cmp$ = "")

LOOP

OPEN "A", #2, "/data/data/cz.jh.suite/files/Zuman1/JH-Zuman1.out"
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
PRINT #2, "Execution of JH-Zuman1.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
