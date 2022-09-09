CLS

DIM Dat$(200)
DIM Inp$(101)

Cum_Vmgl = 0
Cum_Vml = 0
Cum_Vw = 0
Cum_Cps = 0
Cum_Cpl = 0
Cum_Ecoh = 0
Cum_Fs = 0
Cum_Ps = 0
Cum_H = 0
Cum_S = 0
Cum_Hm = 0
Cum_RmLL = 0
Cum_RmGD = 0
Cum_RmV = 0
Cum_PmLL = 0
Cum_Chi = 0
Cum_U = 0
Cum_M = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "======== * Group contribution scheme (organic compounds & polymers) * =========="
PRINT #2, "Version 1.02 for Android"
#PRINT #2, "Compiled 2018-03-27 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Polymer/JH-Polymer.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "================= * Procedure Vohlidal (organic compounds) * ==================="
PRINT "Version 1.02 for Android"
#PRINT "Compiled 2018-03-27 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Polymer.inp and start the program"
PRINT "again. The results will appear in JH-Polymer.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT " GRADA Publishing, Praha 1999."
PRINT "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT " Elsevier, Amsterdam 2009."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Polymer.inp and start the program again."
PRINT #2, "The results will appear in JH-Polymer.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
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
Delim4% = INSTR(Item$, ";", Delim3%+1)
Delim5% = INSTR(Item$, ";", Delim4%+1)
Delim6% = INSTR(Item$, ";", Delim5%+1)
Delim7% = INSTR(Item$, ";", Delim6%+1)
Delim8% = INSTR(Item$, ";", Delim7%+1)
Delim9% = INSTR(Item$, ";", Delim8%+1)
Delim10% = INSTR(Item$, ";", Delim9%+1)
Delim11% = INSTR(Item$, ";", Delim10%+1)
Delim12% = INSTR(Item$, ";", Delim11%+1)
Delim13% = INSTR(Item$, ";", Delim12%+1)
Delim14% = INSTR(Item$, ";", Delim13%+1)
Delim15% = INSTR(Item$, ";", Delim14%+1)
Delim16% = INSTR(Item$, ";", Delim15%+1)
Delim17% = INSTR(Item$, ";", Delim16%+1)
Delim18% = INSTR(Item$, ";", Delim17%+1)

Symbol$ = MID$(Item$, 1, Delim1%-1)
Vmgl$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
Vml$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
Vw$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
Cps$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
Cpl$ = MID$(Item$, Delim5%+1, Delim6%-Delim5%-1)
Ecoh$ = MID$(Item$, Delim6%+1, Delim7%-Delim6%-1)
Fs$ = MID$(Item$, Delim7%+1, Delim8%-Delim7%-1)
Ps$ = MID$(Item$, Delim8%+1, Delim9%-Delim8%-1)
H$ = MID$(Item$, Delim9%+1, Delim10%-Delim9%-1)
S$ = MID$(Item$, Delim10%+1, Delim11%-Delim10%-1)
Hm$ = MID$(Item$, Delim11%+1, Delim12%-Delim11%-1)
RmLL$ = MID$(Item$, Delim12%+1, Delim13%-Delim12%-1)
RmGD$ = MID$(Item$, Delim13%+1, Delim14%-Delim13%-1)
RmV$ = MID$(Item$, Delim14%+1, Delim15%-Delim14%-1)
PmLL$ = MID$(Item$, Delim15%+1, Delim16%-Delim15%-1)
Chi$ = MID$(Item$, Delim16%+1, Delim17%-Delim16%-1)
U$ = MID$(Item$, Delim17%+1, Delim18%-Delim17%-1)
M$ = MID$(Item$, Delim18%+1, Lenght%-Delim18%)

Vmgl = VAL(Vmgl$)
Vml = VAL(Vml$)
Vw = VAL(Vw$)
Cps = VAL(Cps$)
Cpl = VAL(Cpl$)
Ecoh = VAL(Ecoh$)
Fs = VAL(Fs$)
Ps = VAL(Ps$)
H = VAL(H$)
S = VAL(S$)
Hm = VAL(Hm$)
RmLL = VAL(RmLL$)
RmGD = VAL(RmGD$)
RmV = VAL(RmV$)
PmLL = VAL(PmLL$)
Chi = VAL(Chi$)
U = VAL(U$)
M = VAL(M$)

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.inp"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LenghtReq% = LEN(Request$)
Lim% = INSTR(Request$, ";")
Atom$ = LEFT$(Request$, Lim%-1)
Count$ = MID$(Request$, Lim%+1, LenghtReq%-Lim%)

IF (Symbol$ = Atom$ OR Atom$ = Symbol$) AND (Symbol$ <> "" OR Atom$ <> "") THEN 
Stoich$ = Count$
Cum_Vmgl = Cum_Vmgl + Vmgl * VAL(Stoich$)
Cum_Vml = Cum_Vml + Vmgl * VAL(Stoich$)
Cum_Vw = Cum_Vw + Vw * VAL(Stoich$)
Cum_Cps = Cum_Cps + Cps * VAL(Stoich$)
Cum_Cpl = Cum_Cpl + Cpl * VAL(Stoich$)
Cum_Ecoh = Cum_Ecoh + Ecoh * VAL(Stoich$)
Cum_Fs = Cum_Fs + Fs * VAL(Stoich$)
Cum_Ps = Cum_Ps + Ps * VAL(Stoich$)
Cum_H = Cum_H + H * VAL(Stoich$)
Cum_S = Cum_S + S * VAL(Stoich$)
Cum_Hm =  Cum_Hm + Hm * VAL(Stoich$)
Cum_RmLL = Cum_RmLL + RmLL * VAL(Stoich$)
Cum_RmGD = Cum_RmGD + RmGD * VAL(Stoich$)
Cum_RmV = Cum_RmV + RmV * VAL(Stoich$)
Cum_PmLL = Cum_PmLL + PmLL * VAL(Stoich$)
Cum_Chi = Cum_Chi + Chi * VAL(Stoich$)
Cum_U = Cum_U + U * VAL(Stoich$)
Cum_M = Cum_M + M * VAL(Stoich$)
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, Symbol$, 
PRINT #2, Stoich$
CLOSE #2
ENDIF

J% = J% + 1
EXIT IF (J% = 100 OR Atom$ = "")
LOOP

CLOSE #3

! PRINT VAL(Stoich$)

I% = I% + 1

EXIT IF (I% = 200 OR Symbol$ = "")

LOOP

OPEN "I", #4, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.par"
INPUT #4, Parameters$
LengthPar% = LEN(Parameters$)
DelimPar1% = INSTR(Parameters$, ";")
DelimPar2% = INSTR(Parameters$, ";", DelimPar1%+1)
DelimPar3% = INSTR(Parameters$, ";", DelimPar2%+1)
DelimPar4% = INSTR(Parameters$, ";", DelimPar3%+1)
DelimPar5% = INSTR(Parameters$, ";", DelimPar4%+1)
DelimPar6% = INSTR(Parameters$, ";", DelimPar5%+1)
DelimPar7% = INSTR(Parameters$, ";", DelimPar6%+1)
DelimPar8% = INSTR(Parameters$, ";", DelimPar7%+1)
DelimPar9% = INSTR(Parameters$, ";", DelimPar8%+1)
DelimPar10% = INSTR(Parameters$, ";", DelimPar9%+1)
DelimPar11% = INSTR(Parameters$, ";", DelimPar10%+1)
DegCryst$ = MID$(Parameters$, 1, DelimPar1%-1)
GlassTemp$ = MID$(Parameters$, DelimPar1%+1, DelimPar2%-DelimPar1%-1)
Temp$ = MID$(Parameters$, DelimPar2%+1, DelimPar3%-DelimPar2%-1)
Phi1$ = MID$(Parameters$, DelimPar3%+1, DelimPar4%-DelimPar3%-1)
Phi2$ = MID$(Parameters$, DelimPar4%+1, DelimPar5%-DelimPar4%-1)
Delta2$ = MID$(Parameters$, DelimPar5%+1, DelimPar6%-DelimPar5%-1)
Gamma2$ = MID$(Parameters$, DelimPar6%+1, DelimPar7%-DelimPar6%-1)
MolVol2$ = MID$(Parameters$, DelimPar7%+1, DelimPar8%-DelimPar7%-1)
GS$ = MID$(Parameters$, DelimPar8%+1, DelimPar9%-DelimPar8%-1)
GL$ = MID$(Parameters$, DelimPar9%+1, DelimPar10%-DelimPar9%-1)
AdhesCrit$ = MID$(Parameters$, DelimPar10%+1, DelimPar11%-DelimPar10%-1)
Tt$ = MID$(Parameters$, DelimPar11%+1, LengthPar%-DelimPar11%)

DegCryst = VAL(DegCryst$)
GlassTemp = VAL(GlassTemp$)
Temp = VAL(Temp$)
Phi1 = VAL(Phi1$)
Phi2 = VAL(Phi2$)
Delta2 = VAL(Delta2$)
Gamma2 = VAL(Gamma2$)
MolVol2 = VAL(MolVol2$)
GS = VAL(GS$)
GL = VAL(GL$)
AdhesCrit = VAL(AdhesCrit$)
Tt = VAL(Tt$)

IF DegCryst < 0 OR DegCryst > 1 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "Degree of crystalinity must be number between 0 and 1."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

IF GlassTemp < 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "Glassy state transition temperature must be a positive number."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

IF Temp < 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "Requested temperature must be a positive number."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

IF Phi1 < 0 OR Phi1 > 1 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "Volume fraction of the calculated compound must be set between 0 and 1."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

IF Phi2 < 0 OR Phi2 > 1 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "Volume fraction of the next present compound must be set between 0 and 1."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

IF Phi1+Phi2 <> 1 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "Sum of volume fractions in a binary mixture must be equal 1."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

IF Delta2 < 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "Solubility parameter of the next component must be a positive number."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

IF Gamma2 < 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "Surface tension must be a positive number."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

IF MolVol2 < 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "Molar volume must not be negative."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

IF Cum_H = 0 AND Cum_S = 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "No atoms / groups identified. Please check your input."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

IF Tt < 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, "Melting temperature must not be negative."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

CLOSE #4

MolVolLiq = 23 + Cum_Vml
DensityLiq = Cum_M / MolVolLiq
IF GlassTemp > 298.15 THEN
Vmcr = 0.935 * Cum_Vmgl
ELSE IF GlassTemp <= 298.15 AND GlassTemp >= 0 THEN
Vmcr = 0.870 * Cum_Vml
ENDIF
DensityCryst = Cum_M / Vmcr
Vmcr0 = 1.3 * Cum_Vw
Density0 = Cum_M / Vmcr0
IF Temp < GlassTemp THEN
Vmam = Cum_Vmgl
ELSE IF Temp >= GlassTemp THEN
Vmam = Cum_Vml
ENDIF
DensityAm = Cum_M / Vmam
Bs = 0.00045 * Cum_Vw
Bl = 0.001 * Cum_Vw
Betas = Bs / Vmcr
Betal = Bl / MolVolLiq
VmCustl = MolVolLiq + Bl * (Temp-298.15)
DensitylCust = Cum_M / VmCustl
VmCusts = Vmcr + Bs * (Temp-298.15)
DensitysCust = Cum_M / Vmcusts
DeltaVt = (MolVolLiq + Bl * (Tt-298.15)) - (Vmcr + Bs * (Tt-298.15))
DeltaVtExt = 0.00055 * Cum_Vw * Tt
IF Temp < GlassTemp THEN
Cpskr = Cum_Cps
ELSE IF Temp >= GlassTemp AND Temp < Tt
Cpskr = DegCryst * Cum_Cps + (1 - DegCryst) * Cum_Cpl
ENDIF
DeltaUv = Cum_Ecoh
DeltaHv = DeltaUv + 8.314 * Temp
Delta11 = SQRT(Cum_Ecoh / MolVolLiq)
Delta12 = SQRT(Cum_Ecoh / VmCustl)
Delta13 = SQRT(Cum_Ecoh / Vmam)
Delta14 = SQRT(Cum_Ecoh / Vmcr)
Delta15 = SQRT(Cum_Ecoh / VmCusts)
Delta11a = Cum_Fs / MolVolLiq
Delta12a = Cum_Fs / VmCustl
Delta13a = Cum_Fs / Vmam
Delta14a = Cum_Fs / Vmcr
Delta15a = Cum_Fs / VmCusts
Hmix1 = Phi1 * Phi2 * (Delta11-Delta2)^2
Hmix2 = Phi1 * Phi2 * (Delta12-Delta2)^2
Hmix3 = Phi1 * Phi2 * (Delta13-Delta2)^2
Hmix4 = Phi1 * Phi2 * (Delta14-Delta2)^2
Hmix5 = Phi1 * Phi2 * (Delta15-Delta2)^2
Hmix1a = Phi1 * Phi2 * (Delta11a-Delta2)^2
Hmix2a = Phi1 * Phi2 * (Delta12a-Delta2)^2
Hmix3a = Phi1 * Phi2 * (Delta13a-Delta2)^2
Hmix4a = Phi1 * Phi2 * (Delta14a-Delta2)^2
Hmix5a = Phi1 * Phi2 * (Delta15a-Delta2)^2
Gamma11 = (Cum_Ps / MolVolLiq)^4
Gamma12 = (Cum_Ps / VmCustl)^4
Gamma13 = (Cum_Ps / Vmam)^4
Gamma14 = (Cum_Ps / Vmcr)^4
Gamma15 = (Cum_Ps / VmCusts)^4
PhiF11 = 4 * ((MolVolLiq * MolVol2)^(1/3)) / ((MolVolLiq^(1/3) + MolVol2^(1/3))^2)
PhiF12 = 4 * ((VmCustl * MolVol2)^(1/3)) / ((VmCustl^(1/3) + MolVol2^(1/3))^2)
PhiF13 = 4 * ((Vmam * MolVol2)^(1/3)) / ((Vmam^(1/3) + MolVol2^(1/3))^2)
PhiF14 = 4 * ((Vmcr * MolVol2)^(1/3)) / ((Vmcr^(1/3) + MolVol2^(1/3))^2)
PhiF15 = 4 * ((VmCusts * MolVol2)^(1/3)) / ((VmCusts^(1/3) + MolVol2^(1/3))^2)
Gamma11a = 0.75 * Delta11^(4/3)
Gamma12a = 0.75 * Delta12^(4/3)
Gamma13a = 0.75 * Delta13^(4/3)
Gamma14a = 0.75 * Delta14^(4/3)
Gamma15a = 0.75 * Delta15^(4/3)
Gamma11b = 0.75 * Delta11a^(4/3)
Gamma12b = 0.75 * Delta12a^(4/3)
Gamma13b = 0.75 * Delta13a^(4/3)
Gamma14b = 0.75 * Delta14a^(4/3)
Gamma15b = 0.75 * Delta15a^(4/3)
GammaInter11 = Gamma11 + Gamma2 - 2 * PhiF1 * (Gamma11 * Gamma2)^0.5
GammaInter12 = Gamma12 + Gamma2 - 2 * PhiF2 * (Gamma12 * Gamma2)^0.5
GammaInter13 = Gamma13 + Gamma2 - 2 * PhiF3 * (Gamma13 * Gamma2)^0.5
GammaInter14 = Gamma14 + Gamma2 - 2 * PhiF4 * (Gamma14 * Gamma2)^0.5
GammaInter15 = Gamma15 + Gamma2 - 2 * PhiF5 * (Gamma15 * Gamma2)^0.5
GammaInter11a = Gamma11a + Gamma2 - 2 * PhiF1 * (Gamma11a * Gamma2)^0.5
GammaInter12a = Gamma12a + Gamma2 - 2 * PhiF2 * (Gamma12a * Gamma2)^0.5
GammaInter13a = Gamma13a + Gamma2 - 2 * PhiF3 * (Gamma13a * Gamma2)^0.5
GammaInter14a = Gamma14a + Gamma2 - 2 * PhiF4 * (Gamma14a * Gamma2)^0.5
GammaInter15a = Gamma15a + Gamma2 - 2 * PhiF5 * (Gamma15a * Gamma2)^0.5
GammaInter11b = Gamma11b + Gamma2 - 2 * PhiF1 * (Gamma11b * Gamma2)^0.5
GammaInter12b = Gamma12b + Gamma2 - 2 * PhiF2 * (Gamma12b * Gamma2)^0.5
GammaInter13b = Gamma13b + Gamma2 - 2 * PhiF3 * (Gamma13b * Gamma2)^0.5
GammaInter14b = Gamma14b + Gamma2 - 2 * PhiF4 * (Gamma14b * Gamma2)^0.5
GammaInter15b = Gamma15b + Gamma2 - 2 * PhiF5 * (Gamma15b * Gamma2)^0.5
Wadh11 = Gamma11 + Gamma2 - GammaInter11
Wadh12 = Gamma12 + Gamma2 - GammaInter12
Wadh13 = Gamma13 + Gamma2 - GammaInter13
Wadh14 = Gamma14 + Gamma2 - GammaInter14
Wadh15 = Gamma15 + Gamma2 - GammaInter15
Wadh11a = Gamma11a + Gamma2 - GammaInter11a
Wadh12a = Gamma12a + Gamma2 - GammaInter12a
Wadh13a = Gamma13a + Gamma2 - GammaInter13a
Wadh14a = Gamma14a + Gamma2 - GammaInter14a
Wadh15a = Gamma15a + Gamma2 - GammaInter15a
Wadh11b = Gamma11b + Gamma2 - GammaInter11b
Wadh12b = Gamma12b + Gamma2 - GammaInter12b
Wadh13b = Gamma13b + Gamma2 - GammaInter13b
Wadh14b = Gamma14b + Gamma2 - GammaInter14b
Wadh15b = Gamma15b + Gamma2 - GammaInter15b
Gibbs = (1000 * Cum_H - Temp * Cum_S) * 0.001
Smelt = Cum_Hm / Tt
nRmLL1 = ((1 + 2 * Cum_RmLL / MolVolLiq)^0.5) / ((1 - Cum_RmLL / MolVolLiq)^0.5)
nRmLL2 = ((1 + 2 * Cum_RmLL / VmCustl)^0.5) / ((1 - Cum_RmLL / VmCustl)^0.5)
nRmLL3 = ((1 + 2 * Cum_RmLL / Vmam)^0.5) / ((1 - Cum_RmLL / Vmam)^0.5)
nRmLL4 = ((1 + 2 * Cum_RmLL / Vmcr)^0.5) / ((1 - Cum_RmLL / Vmcr)^0.5)
nRmLL5 = ((1 + 2 * Cum_RmLL / VmCusts)^0.5) / ((1 - Cum_RmLL / VmCusts)^0.5)
nRmGD1 = 1 + Cum_RmGD / MolVolLiq
nRmGD2 = 1 + Cum_RmGD / VmCustl
nRmGD3 = 1 + Cum_RmGD / Vmam
nRmGD4 = 1 + Cum_RmGD / Vmcr
nRmGD5 = 1 + Cum_RmGD / VmCusts
nD = Cum_RmV / Cum_M
Epsr1 = (2 * Cum_PmLL + MolVolLiq) / (MolVolLiq - Cum_PmLL)
Epsr2 = (2 * Cum_PmLL + VmCustl) / (VmCustl - Cum_PmLL)
Epsr3 = (2 * Cum_PmLL + Vmam) / (Vmam - Cum_PmLL)
Epsr4 = (2 * Cum_PmLL + Vmcr) / (Vmcr - Cum_PmLL)
Epsr5 = (2 * Cum_PmLL + VmCusts) / (VmCusts - Cum_PmLL)
p = ((Cum_PmLL - RmLL)^0.5)/(1.53e30)
B1 = DensityLiq * (Cum_U / MolVolLiq)^6
B2 = DensitylCust * (Cum_U / VmCustl)^6
B3 = DensityAm * (Cum_U / Vmam)^6
B4 = DensityCryst * (Cum_U / Vmcr)^6
B5 = DensitysCust * (Cum_U / VmCusts)^6
ny1 = 0.25 * (8.3 - 6 * LOG(Cum_U / MolVolLiq))
ny2 = 0.25 * (8.3 - 6 * LOG(Cum_U / VmCustl))
ny3 = 0.25 * (8.3 - 6 * LOG(Cum_U / Vmam))
ny4 = 0.25 * (8.3 - 6 * LOG(Cum_U / Vmcr))
ny5 = 0.25 * (8.3 - 6 * LOG(Cum_U / VmCusts))
Emodule1 = 3 * B1 * (1 - 2 * ny1)
Emodule2 = 3 * B2 * (1 - 2 * ny2)
Emodule3 = 3 * B3 * (1 - 2 * ny3)
Emodule4 = 3 * B4 * (1 - 2 * ny4)
Emodule5 = 3 * B5 * (1 - 2 * ny5)
Gmodule1 = 1.5 * B1 * (1 - 2 * ny1) / (1 + ny1)
Gmodule2 = 1.5 * B2 * (1 - 2 * ny2) / (1 + ny2)
Gmodule3 = 1.5 * B3 * (1 - 2 * ny3) / (1 + ny3)
Gmodule4 = 1.5 * B4 * (1 - 2 * ny4) / (1 + ny4)
Gmodule5 = 1.5 * B5 * (1 - 2 * ny5) / (1 + ny5)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Polymer/JH-Polymer.out"
PRINT #2, ""
PRINT #2, "Molar weight = "; Cum_M USING "####.##"; " g.mol-1"
PRINT #2, "Molar parachor = "; Cum_Ps USING "####.##"; " cm3.mol-1.(mJ.m-2)1/4"
PRINT #2, "Molar polarization = "; Cum_PmLL USING "###.##"; " cm3.mol-1"
PRINT #2, "Average dipole moment = "; p * 1e30 USING "##.##"; "e-30 C.m = "; p / 3.33564e-30 USING "##.##"; " Debye" 
PRINT #2, "Molar magnetic susceptibility = "; Cum_Chi USING "####.##"; "e-6 cm3.mol-1"
PRINT #2, "Rao�s function = "; Cum_U USING "######"; " cm1/3.s-1/3.mol-1"
PRINT #2, ""
PRINT #2, "I. GASEOUS STATE"
PRINT #2, "================"
PRINT #2, "*Thermodynamic properties*"
PRINT #2, ""
PRINT #2, "Standard enthalpy of formation = "; Cum_H USING "####.#"; " kJ.mol-1"
PRINT #2, "Standard entropy of formation = "; Cum_S USING "###.##"; " J.K-1.mol-1"
PRINT #2, "Standard free energy of formation = "; Gibbs USING "####.#"; " kJ.mol-1"
PRINT #2, ""
PRINT #2, "II. LIQUID STATE"
PRINT #2, "================"
PRINT #2, "*General properties*"
PRINT #2, ""
PRINT #2, "Standard molar volume = "; MolVolLiq USING "###.#"; " cm3.mol-1"
PRINT #2, "Density = "; DensityLiq USING "#.###"; " g.cm-3"
PRINT #2, "Molar volume expansion = "; Bl USING "#.###"; " cm3.mol-1.K-1"
PRINT #2, "Temperature coeff. of vol. expansion = "; Betal USING "#.######"; " K-1"
PRINT #2, ""
PRINT #2, "*Solubility / miscibility*"
PRINT #2, ""
PRINT #2, "Input volume fraction of calculated compound = "; Phi1 USING "#.###"
PRINT #2, "Input volume fraction of the second component = "; Phi2 USING "#.###"
PRINT #2, "Input solubility parameter of the second component = "; Delta2 USING "####.###"; " J1/2.cm-3/2"
PRINT #2, ""
PRINT #2, "Solubility parameter = "; Delta11 USING "####.###"; " J1/2.cm-3/2"
PRINT #2, "Specific mixing enthalpy = "; Hmix1 USING "###.#"; " J1/2.cm-3/2"
IF Hmix1 <= AdhesCrit THEN
PRINT #2, "Calculated component will be well miscible with / soluble in the"
PRINT #2, "second one."
ELSE
PRINT #2, "Calculated component will be not miscible with / soluble in the"
PRINT #2, "second one."
ENDIF
PRINT #2, "Solubility parameter = "; Delta11a USING "####.###"; " J1/2.cm-3/2 (Small)"
PRINT #2, "Specific mixing enthalpy = "; Hmix1a USING "###.#"; " J1/2.cm-3/2 (Small)"
IF Hmix1a <= AdhesCrit THEN
PRINT #2, "Calculated component will be well miscible with / soluble in the"
PRINT #2, "second one."
ELSE
PRINT #2, "Calculated component will be not miscible with / soluble in the"
PRINT #2, "second one."
ENDIF
PRINT #2, ""
PRINT #2, "*Surface properties*"
PRINT #2, ""
PRINT #2, "Surface energy of the calculated component = "; Gamma11 USING "###.#"; " mJ.m-2 (from parachor)"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter11 USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh11 USING "###.#"; " mJ.m-2"
IF Wadh11 >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, "Surface energy of the calculated component = "; Gamma11a USING "###.#"; " mJ.m-2"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter11a USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh11a USING "###.#"; " mJ.m-2"
IF Wadh11a >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, ""
PRINT #2, "Using Small definition of solubility parameter:"
PRINT #2, "Surface energy of the calculated component = "; Gamma11b USING "###.#"; " mJ.m-2 (from parachor)"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter11b USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh11b USING "###.#"; " mJ.m-2"
IF Wadh11b >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, ""
PRINT #2, "*Mechanical properties*"
PRINT #2, ""
PRINT #2, "Poisson�s ratio = "; ny1 USING "###.#"
PRINT #2, "Young�s elasticity module = "; Emodule1 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, "Skid elasticity module = "; Gmodule1 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, "Volume elasticity module = "; B1 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, ""
PRINT #2, "*Optical properties*"
PRINT #2, ""
PRINT #2, "Molar refraction = "; Cum_RmLL USING "####.#"; " g.mol-1 (Lorentz-Lorenz)"
PRINT #2, "Refractive index = "; nRmLL1 USING "#.###"; " (Lorentz-Lorenz)"
PRINT #2, "Molar refraction = "; Cum_RmGD USING "####.#"; " g.mol-1 (Gladstone-Dale)"
PRINT #2, "Refractive index = "; nRmGD1 USING "#.###"; " (Gladstone-Dale)"
PRINT #2, "Relative permittivity = "; Epsr1 USING "##.##"
PRINT #2, ""
PRINT #2, "*General properties, temperature dependence*"
PRINT #2, ""
PRINT #2, "Custom temperature = "; Temp-273.15 USING "###.##"; " �C"
PRINT #2, "Molar volume = "; VmCustl USING "###.#"; " cm3.mol-1 ("; Temp-273.15; " �C)"
PRINT #2, "Density = "; DensitylCust USING "#.###"; " g.cm-3 ("; Temp-273.15; " �C)"
PRINT #2, ""
PRINT #2, "*Solubility / miscibility, temperature dependence*"
PRINT #2, ""
PRINT #2, "Input volume fraction of calculated compound = "; Phi1 USING "#.###"
PRINT #2, "Input volume fraction of the second component = "; Phi2 USING "#.###"
PRINT #2, "Input solubility parameter of the second component = "; Delta2 USING "####.###"; " J1/2.cm-3/2"
PRINT #2, ""
PRINT #2, "Solubility parameter = "; Delta12 USING "####.###"; " J1/2.cm-3/2"
PRINT #2, "Specific mixing enthalpy = "; Hmix2 USING "###.#"; " J1/2.cm-3/2"
IF Hmix1 <= AdhesCrit THEN
PRINT #2, "Calculated component will be well miscible with / soluble in the"
PRINT #2, "second one."
ELSE
PRINT #2, "Calculated component will be not miscible with / soluble in the"
PRINT #2, "second one."
ENDIF
PRINT #2, "Solubility parameter = "; Delta12a USING "####.###"; " J1/2.cm-3/2 (Small)"
PRINT #2, "Specific mixing enthalpy = "; Hmix2a USING "###.#"; " J1/2.cm-3/2 (Small)"
IF Hmix1a <= AdhesCrit THEN
PRINT #2, "Calculated component will be well miscible with / soluble in the"
PRINT #2, "second one."
ELSE
PRINT #2, "Calculated component will be not miscible with / soluble in the"
PRINT #2, "second one."
ENDIF
PRINT #2, ""
PRINT #2, "*Surface properties, temperature dependence*"
PRINT #2, ""
PRINT #2, "Surface energy of the calculated component = "; Gamma12 USING "###.#"; " mJ.m-2 (from parachor)"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter12 USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh12 USING "###.#"; " mJ.m-2"
IF Wadh12 >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, "Surface energy of the calculated component = "; Gamma12a USING "###.#"; " mJ.m-2"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter12a USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh12a USING "###.#"; " mJ.m-2"
IF Wadh12a >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, ""
PRINT #2, "Using Small definition of solubility parameter:"
PRINT #2, "Surface energy of the calculated component = "; Gamma12b USING "###.#"; " mJ.m-2 (from parachor)"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter12b USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh12b USING "###.#"; " mJ.m-2"
IF Wadh12b >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, ""
PRINT #2, "*Mechanical properties*"
PRINT #2, ""
PRINT #2, "Poisson�s ratio = "; ny2 USING "###.#"
PRINT #2, "Young�s elasticity module = "; Emodule2 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, "Skid elasticity module = "; Gmodule2 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, "Volume elasticity module = "; B2 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, ""
PRINT #2, "*Optical properties, temperature dependence*"
PRINT #2, ""
PRINT #2, "Molar refraction = "; Cum_RmLL USING "####.#"; " g.mol-1 (Lorentz-Lorenz)"
PRINT #2, "Refractive index = "; nRmLL2 USING "#.###"; " (Lorentz-Lorenz)"
PRINT #2, "Molar refraction = "; Cum_RmGD USING "####.#"; " g.mol-1 (Gladstone-Dale)"
PRINT #2, "Refractive index = "; nRmGD2 USING "#.###"; " (Gladstone-Dale)"
PRINT #2, "Relative permittivity = "; Epsr2 USING "##.##"
PRINT #2, ""
PRINT #2, "*Thermodynamic properties*"
PRINT #2, ""
PRINT #2, "Molar heat capacity = "; Cum_Cpl USING "###.#"; " J.K-1.mol-1 (25 �C)"
PRINT #2, "Temperature coeff. of heat capacity  = "; GL USING "#.####"; " K-1"
PRINT #2, "Custom temperature = "; Temp-273.15 USING "###.##"; " �C"
PRINT #2, "Molar heat capacity = "; Cum_Cpl * (1 + GL * (Temp-298.15)) USING "###.#"; " J.K-1.mol-1 ("; Temp-273.15; " �C)"
PRINT #2, "Molar vaporization inner energy = "; DeltaUv * 0.001 USING "###.#"; " kJ.mol-1 ("; Temp-273.15; " �C)"
PRINT #2, "(cohession energy)"
PRINT #2, "Molar vaporization enthalpy = "; DeltaHv * 0.001 USING "###.#"; " kJ.mol-1 ("; Temp-273.15; " �C)"
PRINT #2, ""
PRINT #2, "III. AMORPHOUS STATE"
PRINT #2, "===================="
PRINT #2, ""
PRINT #2, "*Optical properties*"
PRINT #2, ""
PRINT #2, "Molar refraction = "; Cum_RmV USING "####.#"; " g.mol-1 (25 �C, Vogel)"
PRINT #2, "Refractive index = "; nD USING "#.###"; " (25 �C, Vogel)"
PRINT #2, ""
PRINT #2, "IV. SEMICRYSTALLINE STATE"
PRINT #2, "========================="
PRINT #2, "*General properties*"
PRINT #2, ""
PRINT #2, "Degree of crystalinity = "; DegCryst USING "#.###"
PRINT #2, "Molar volume = "; Vmam USING "###.#"; " cm3.mol-1 ("; Temp-273.15; " �C)"
PRINT #2, "Density = "; DensityAm USING "#.###"; " g.cm-3 ("; Temp-273.15; " �C)"
PRINT #2, "Density = "; DensityAm * (1 + 0.13 * DegCryst) USING "#.###"; " g.cm-3 ("; Temp-273.15; " �C, alternative estimation)"
PRINT #2, ""
PRINT #2, "*Solubility / miscibility*"
PRINT #2, ""
PRINT #2, "Input volume fraction of calculated compound = "; Phi1 USING "#.###"
PRINT #2, "Input volume fraction of the second component = "; Phi2 USING "#.###"
PRINT #2, "Input solubility parameter of the second component = "; Delta2 USING "####.###"; " J1/2.cm-3/2"
PRINT #2, ""
PRINT #2, "Solubility parameter = "; Delta13 USING "####.###"; " J1/2.cm-3/2"
PRINT #2, "Specific mixing enthalpy = "; Hmix3 USING "###.#"; " J1/2.cm-3/2"
IF Hmix1 <= AdhesCrit THEN
PRINT #2, "Calculated component will be well miscible with / soluble in the"
PRINT #2, "second one."
ELSE
PRINT #2, "Calculated component will be not miscible with / soluble in the"
PRINT #2, "second one."
ENDIF
PRINT #2, "Solubility parameter = "; Delta13a USING "####.###"; " J1/2.cm-3/2 (Small)"
PRINT #2, "Specific mixing enthalpy = "; Hmix3a USING "###.#"; " J1/2.cm-3/2 (Small)"
IF Hmix1a <= AdhesCrit THEN
PRINT #2, "Calculated component will be well miscible with / soluble in the"
PRINT #2, "second one."
ELSE
PRINT #2, "Calculated component will be not miscible with / soluble in the"
PRINT #2, "second one."
ENDIF
PRINT #2, ""
IF Cpskr = 0 THEN
PRINT #2, "";
ELSE
PRINT #2, "*Surface properties*"
PRINT #2, ""
PRINT #2, "Surface energy of the calculated component = "; Gamma13 USING "###.#"; " mJ.m-2 (from parachor)"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter13 USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh13 USING "###.#"; " mJ.m-2"
IF Wadh13 >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, "Surface energy of the calculated component = "; Gamma13a USING "###.#"; " mJ.m-2"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter13a USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh13a USING "###.#"; " mJ.m-2"
IF Wadh13a >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, ""
PRINT #2, "Using Small definition of solubility parameter:"
PRINT #2, "Surface energy of the calculated component = "; Gamma13b USING "###.#"; " mJ.m-2 (from parachor)"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter13b USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh13b USING "###.#"; " mJ.m-2"
IF Wadh13b >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, ""
PRINT #2, "*Mechanical properties*"
PRINT #2, ""
PRINT #2, "Poisson�s ratio = "; ny3 USING "###.#"
PRINT #2, "Young�s elasticity module = "; Emodule3 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, "Skid elasticity module = "; Gmodule3 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, "Volume elasticity module = "; B3 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, ""
PRINT #2, "*Optical properties*"
PRINT #2, ""
PRINT #2, "Molar refraction = "; Cum_RmLL USING "####.#"; " g.mol-1 (Lorentz-Lorenz)"
PRINT #2, "Refractive index = "; nRmLL3 USING "#.###"; " (Lorentz-Lorenz)"
PRINT #2, "Molar refraction = "; Cum_RmGD USING "####.#"; " g.mol-1 (Gladstone-Dale)"
PRINT #2, "Refractive index = "; nRmGD3 USING "#.###"; " (Gladstone-Dale)"
PRINT #2, "Relative permittivity = "; Epsr3 USING "##.##"
PRINT #2, ""
PRINT #2, "*Thermodynamic properties*"
PRINT #2, ""
PRINT #2, "Molar heat capacity = "; Cpskr USING "###.#"; " J.K-1.mol-1 (25 �C)"
ENDIF
PRINT #2, ""
PRINT #2, "V. CRYSTALLINE STATE"
PRINT #2, "===================="
PRINT #2, "*General properties*"
PRINT #2, ""
PRINT #2, "Standard molar volume = "; Vmcr USING "###.#"; " cm3.mol-1 (25 �C)"
PRINT #2, "Density = "; DensityCryst USING "#.###"; " g.cm-3 (25 �C)"
PRINT #2, "Molar volume expansion = "; Bs USING "#.###"; " cm3.mol-1.K-1"
PRINT #2, "Temperature coeff. of vol. expansion = "; Betas USING "#.######"; " K-1"
PRINT #2, ""
PRINT #2, "*Solubility / miscibility*"
PRINT #2, ""
PRINT #2, "Input volume fraction of calculated compound = "; Phi1 USING "#.###"
PRINT #2, "Input volume fraction of the second component = "; Phi2 USING "#.###"
PRINT #2, "Input solubility parameter of the second component = "; Delta2 USING "####.###"; " J1/2.cm-3/2"
PRINT #2, ""
PRINT #2, "Solubility parameter = "; Delta14 USING "####.###"; " J1/2.cm-3/2"
PRINT #2, "Specific mixing enthalpy = "; Hmix4 USING "###.#"; " J1/2.cm-3/2"
IF Hmix1 <= AdhesCrit THEN
PRINT #2, "Calculated component will be well miscible with / soluble in the"
PRINT #2, "second one."
ELSE
PRINT #2, "Calculated component will be not miscible with / soluble in the"
PRINT #2, "second one."
ENDIF
PRINT #2, "Solubility parameter = "; Delta14a USING "####.###"; " J1/2.cm-3/2 (Small)"
PRINT #2, "Specific mixing enthalpy = "; Hmix4a USING "###.#"; " J1/2.cm-3/2 (Small)"
IF Hmix1a <= AdhesCrit THEN
PRINT #2, "Calculated component will be well miscible with / soluble in the"
PRINT #2, "second one."
ELSE
PRINT #2, "Calculated component will be not miscible with / soluble in the"
PRINT #2, "second one."
ENDIF
PRINT #2, ""
PRINT #2, "*Surface properties*"
PRINT #2, ""
PRINT #2, "Surface energy of the calculated component = "; Gamma14 USING "###.#"; " mJ.m-2 (from parachor)"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter14 USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh14 USING "###.#"; " mJ.m-2"
IF Wadh14 >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, "Surface energy of the calculated component = "; Gamma14a USING "###.#"; " mJ.m-2"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter14a USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh14a USING "###.#"; " mJ.m-2"
IF Wadh14a >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, ""
PRINT #2, "Using Small definition of solubility parameter:"
PRINT #2, "Surface energy of the calculated component = "; Gamma14b USING "###.#"; " mJ.m-2 (from parachor)"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter14b USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh14b USING "###.#"; " mJ.m-2"
IF Wadh14b >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, ""
PRINT #2, "*Mechanical properties*"
PRINT #2, ""
PRINT #2, "Poisson�s ratio = "; ny4 USING "###.#"
PRINT #2, "Young�s elasticity module = "; Emodule4 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, "Skid elasticity module = "; Gmodule4 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, "Volume elasticity module = "; B4 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, ""
PRINT #2, "*Optical properties*"
PRINT #2, ""
PRINT #2, "Molar refraction = "; Cum_RmLL USING "####.#"; " g.mol-1 (Lorentz-Lorenz)"
PRINT #2, "Refractive index = "; nRmLL4 USING "#.###"; " (Lorentz-Lorenz)"
PRINT #2, "Molar refraction = "; Cum_RmGD USING "####.#"; " g.mol-1 (Gladstone-Dale)"
PRINT #2, "Refractive index = "; nRmGD4 USING "#.###"; " (Gladstone-Dale)"
PRINT #2, "Relative permittivity = "; Epsr4 USING "##.##"
PRINT #2, ""
PRINT #2, "*Thermodynamic properties*"
PRINT #2, ""
PRINT #2, "Molar enthalpy of melting = "; Cum_Hm USING "####.#"; " J.mol-1"
PRINT #2, "Molar entropy of melting = "; Smelt USING "###.##"; " J.K-1.mol-1"
PRINT #2, ""
PRINT #2, "*General properties, temperature dependence*"
PRINT #2, ""
PRINT #2, "Custom temperature = "; Temp-273.15 USING "###.##"; " �C"
PRINT #2, "Molar volume = "; VmCusts USING "###.#"; " cm3.mol-1 (25 �C)"
PRINT #2, "Density = "; DensitysCust USING "#.###"; " g.cm-3 (25 �C)"
PRINT #2, ""
PRINT #2, "Molar volume = "; Vmcr0 USING "###.#"; " cm3.mol-1 (-273.15 �C)"
PRINT #2, "Density = "; Density0 USING "#.###"; " g.cm-3 (-273.15 �C)"
PRINT #2, ""
PRINT #2, "*Solubility / miscibility, temperature dependence*"
PRINT #2, ""
PRINT #2, "Input volume fraction of calculated compound = "; Phi1 USING "#.###"
PRINT #2, "Input volume fraction of the second component = "; Phi2 USING "#.###"
PRINT #2, "Input solubility parameter of the second component = "; Delta2 USING "####.###"; " J1/2.cm-3/2"
PRINT #2, ""
PRINT #2, "Solubility parameter = "; Delta15 USING "####.###"; " J1/2.cm-3/2"
PRINT #2, "Specific mixing enthalpy = "; Hmix5 USING "###.#"; " J1/2.cm-3/2"
IF Hmix1 <= AdhesCrit THEN
PRINT #2, "Calculated component will be well miscible with / soluble in the"
PRINT #2, "second one."
ELSE
PRINT #2, "Calculated component will be not miscible with / soluble in the"
PRINT #2, "second one."
ENDIF
PRINT #2, "Solubility parameter = "; Delta15a USING "####.###"; " J1/2.cm-3/2 (Small)"
PRINT #2, "Specific mixing enthalpy = "; Hmix5a USING "###.#"; " J1/2.cm-3/2 (Small)"
IF Hmix1a <= AdhesCrit THEN
PRINT #2, "Calculated component will be well miscible with / soluble in the"
PRINT #2, "second one."
ELSE
PRINT #2, "Calculated component will be not miscible with / soluble in the"
PRINT #2, "second one."
ENDIF
PRINT #2, ""
PRINT #2, "Input melting point = "; Tt-273.15 USING "###.##"; " �C"
PRINT #2, "Melting molar volume change = "; DeltaVt USING "###.#"; " cm3.mol-1 ("; Tt-273.15; " �C, extrapolated)"
PRINT #2, "Melting molar volume change = "; DeltaVtExt USING "###.#"; " cm3.mol-1 ("; Tt-273.15; " �C)"
PRINT #2, ""
PRINT #2, "*Surface properties, temperature dependence*"
PRINT #2, ""
PRINT #2, "Surface energy of the calculated component = "; Gamma15 USING "###.#"; " mJ.m-2 (from parachor)"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter15 USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh15 USING "###.#"; " mJ.m-2"
IF Wadh15 >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, "Surface energy of the calculated component = "; Gamma15a USING "###.#"; " mJ.m-2"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter15a USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh15a USING "###.#"; " mJ.m-2"
IF Wadh15a >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, ""
PRINT #2, "Using Small definition of solubility parameter:"
PRINT #2, "Surface energy of the calculated component = "; Gamma15b USING "###.#"; " mJ.m-2 (from parachor)"
PRINT #2, "Surface energy of the second component = "; Gamma2 USING "###.#"; " mJ.m-2"
PRINT #2, "Intersurface energy between both components = "; GammaInter15b USING "###.#"; " mJ.m-2"
PRINT #2, "Adhession work = "; Wadh15b USING "###.#"; " mJ.m-2"
IF Wadh15b >= 0 THEN
PRINT #2, "Both surfaces tend to adhese."
ELSE
PRINT #2, "Both surfaces simultanoeusly separate."
ENDIF
PRINT #2, ""
PRINT #2, "*Mechanical properties*"
PRINT #2, ""
PRINT #2, "Poisson�s ratio = "; ny5 USING "###.#"
PRINT #2, "Young�s elasticity module = "; Emodule5 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, "Skid elasticity module = "; Gmodule5 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, "Volume elasticity module = "; B5 * 1e6 USING "###.###"; "e-6 g.cm-1.s-1"
PRINT #2, ""
PRINT #2, "*Optical properties, temperature dependence*"
PRINT #2, ""
PRINT #2, "Molar refraction = "; Cum_RmLL USING "####.#"; " g.mol-1 (Lorentz-Lorenz)"
PRINT #2, "Refractive index = "; nRmLL5 USING "#.###"; " (Lorentz-Lorenz)"
PRINT #2, "Molar refraction = "; Cum_RmGD USING "####.#"; " g.mol-1 (Gladstone-Dale)"
PRINT #2, "Refractive index = "; nRmGD5 USING "#.###"; " (Gladstone-Dale)"
PRINT #2, "Relative permittivity = "; Epsr5 USING "##.##"
PRINT #2, ""
PRINT #2, "*Thermodynamic properties, temperature dependence*"
PRINT #2, ""
PRINT #2, "Molar heat capacity = "; Cum_Cps USING "###.#"; " J.K-1.mol-1 (25 �C)"
PRINT #2, "Temperature coeff. of heat capacity  = "; GS USING "#.####"; " K-1"
PRINT #2, "Custom temperature = "; Temp-273.15 USING "###.##"; " �C"
PRINT #2, "Molar heat capacity = "; Cum_Cpl * (1 + GS * (Temp-298.15)) USING "###.#"; " J.K-1.mol-1 ("; Temp-273.15; " �C)"
PRINT #2, ""
PRINT #2, "WARNING"
PRINT #2, "======="
PRINT #2, "Please note that not every molecule property is parametrized within requested"
PRINT #2, "set of group contributions. Therefore, some predicted values can be mislead."
PRINT #2, "Before further use, please check the file JH-Polymer.dat for presence of needed"
PRINT #2, "data."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] Jiri Vohlidal, Alois Julak, Karel Stulik: Chemicke a analyticke tabulky."
PRINT #2, " GRADA Publishing, Praha 1999."
PRINT #2, "[2] Laurens van Krevelen, K. te Nijenhuis: Properties of Polymers, 4th Edition."
PRINT #2, " Elsevier, Amsterdam 2009."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Polymer.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
