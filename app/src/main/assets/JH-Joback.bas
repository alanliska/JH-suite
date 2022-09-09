CLS

DIM Dat$(200)
DIM Inp$(101)

Cum_Tc = 0
Cum_Pc = 0
Cum_Vc = 0
Cum_Tb = 0
Cum_Tf = 0
Cum_DHf = 0
Cum_DGf = 0
Cum_a = 0
Cum_b = 0
Cum_c = 0
Cum_d = 0
Cum_Hvb = 0
Cum_Hf = 0
Cum_EtaA = 0
Cum_EtaB = 0
Cum_NA = 0
Cum_M = 0

OPEN "I", #1, "/data/data/cz.jh.suite/files/Joback/JH-Joback.dat"

OPEN "O", #2, "/data/data/cz.jh.suite/files/Joback/JH-Joback.out"
PRINT #2, "============================ * JH PROGRAM SUITE * =============================="
PRINT #2, "================ * Procedure Joback-Reid (organic compounds) * ================="
PRINT #2, "Version 1.01 for Android"
#PRINT #2, "Compiled 2018-02-17 using X11-BASIC"
PRINT #2, "(C) Alan Liska & Veronika Ruzickova, 2022"
CLOSE #2

ExistInput = EXIST("/data/data/cz.jh.suite/files/Joback/JH-Joback.inp")
IF ExistInput <> -1 THEN
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "================ * Procedure Joback-Reid (organic compounds) * ================="
PRINT "Version 1.01 for Android"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "No input file. Please, write the input in JH-Joback.inp and start the program"
PRINT "again. The results will appear in JH-Joback.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] K.G. Joback, R.C. Reid, Chem. Eng. Comm. 57 (1987) 233-243."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Joback.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #2, "/data/data/cz.jh.suite/files/Joback/JH-Joback.out"
PRINT #2, "================================================================================"
PRINT #2, "RESULTS"
PRINT #2, "================================================================================"
PRINT #2, "No input file. Please, write the input in JH-Joback.inp and start the program again."
PRINT #2, "The results will appear in JH-Joback.out."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] K.G. Joback, R.C. Reid, Chem. Eng. Comm. 57 (1987) 233-243."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Joback.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

OPEN "A", #2, "/data/data/cz.jh.suite/files/Joback/JH-Joback.out"
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

Symbol$ = MID$(Item$, 1, Delim1%-1)
Tc$ = MID$(Item$, Delim1%+1, Delim2%-Delim1%-1)
Pcr$ = MID$(Item$, Delim2%+1, Delim3%-Delim2%-1)
Vc$ = MID$(Item$, Delim3%+1, Delim4%-Delim3%-1)
Tb$ = MID$(Item$, Delim4%+1, Delim5%-Delim4%-1)
Tf$ = MID$(Item$, Delim5%+1, Delim6%-Delim5%-1)
DHf$ = MID$(Item$, Delim6%+1, Delim7%-Delim6%-1)
DGf$ = MID$(Item$, Delim7%+1, Delim8%-Delim7%-1)
a$ = MID$(Item$, Delim8%+1, Delim9%-Delim8%-1)
b$ = MID$(Item$, Delim9%+1, Delim10%-Delim9%-1)
c$ = MID$(Item$, Delim10%+1, Delim11%-Delim10%-1)
d$ = MID$(Item$, Delim11%+1, Delim12%-Delim11%-1)
Hvb$ = MID$(Item$, Delim12%+1, Delim13%-Delim12%-1)
Hf$ = MID$(Item$, Delim13%+1, Delim14%-Delim13%-1)
EtaA$ = MID$(Item$, Delim14%+1, Delim15%-Delim14%-1)
EtaB$ = MID$(Item$, Delim15%+1, Delim16%-Delim15%-1)
NA$ = MID$(Item$, Delim16%+1, Delim17%-Delim16%-1)
M$ = MID$(Item$, Delim17%+1, Lenght%-Delim17%)

Tc = VAL(Tc$)
Pcr = VAL(Pcr$)
Vc = VAL(Vc$)
Tb = VAL(Tb$)
Tf = VAL(Tf$)
DHf = VAL(DHf$)
DGf = VAL(DGf$)
a = VAL(a$)
b = VAL(b$)
c = VAL(c$)
d = VAL(d$)
Hvb = VAL(Hvb$)
Hf = VAL(Hf$)
EtaA = VAL(EtaA$)
EtaB = VAL(EtaB$)
NA = VAL(NA$)
M = VAL(M$)

J% = 0

OPEN "I", #3, "/data/data/cz.jh.suite/files/Joback/JH-Joback.inp"

DO

INPUT #3, Request$

Inp$(J%) = Request$
LenghtReq% = LEN(Request$)
Lim% = INSTR(Request$, ";")
Atom$ = LEFT$(Request$, Lim%-1)
Count$ = MID$(Request$, Lim%+1, LenghtReq%)

IF (Symbol$ = Atom$ OR Atom$ = Symbol$) AND (Symbol$ <> "" OR Atom$ <> "") THEN 
Stoich$ = Count$

Cum_Tc = Cum_Tc + Tc * VAL(Stoich$)
Cum_Pc = Cum_Pc + Pcr * VAL(Stoich$)
Cum_Vc = Cum_Vc + Vc * VAL(Stoich$)
Cum_Tb = Cum_Tb + Tb * VAL(Stoich$)
Cum_Tf = Cum_Tf + Tf * VAL(Stoich$)
Cum_DHf = Cum_DHf + DHf * VAL(Stoich$)
Cum_DGf = Cum_DGf + DGf * VAL(Stoich$)
Cum_a = Cum_a + a * VAL(Stoich$)
Cum_b = Cum_b + b * VAL(Stoich$)
Cum_c = Cum_c + c * VAL(Stoich$)
Cum_d =  Cum_d + d * VAL(Stoich$)
Cum_Hvb = Cum_Hvb + Hvb * VAL(Stoich$)
Cum_Hf = Cum_Hf + Hf * VAL(Stoich$)
Cum_EtaA = Cum_EtaA + EtaA * VAL(Stoich$)
Cum_EtaB = Cum_EtaB + EtaB * VAL(Stoich$)
Cum_NA = Cum_NA + NA * VAL(Stoich$)
Cum_M = Cum_M + M * VAL(Stoich$)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Joback/JH-Joback.out"
PRINT #2, Symbol$, 
PRINT #2, Stoich$
CLOSE #2
ENDIF

J% = J% + 1
EXIT IF (J% = 100 OR Atom$ = "")
LOOP

CLOSE #3

I% = I% + 1

EXIT IF (I% = 200 OR Symbol$ = "")

LOOP

OPEN "I", #4, "/data/data/cz.jh.suite/files/Joback/JH-Joback.par"
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
DelimPar12% = INSTR(Parameters$, ";", DelimPar11%+1)
DelimPar13% = INSTR(Parameters$, ";", DelimPar12%+1)
DelimPar14% = INSTR(Parameters$, ";", DelimPar13%+1)
DelimPar15% = INSTR(Parameters$, ";", DelimPar14%+1)
DelimPar16% = INSTR(Parameters$, ";", DelimPar15%+1)
DelimPar17% = INSTR(Parameters$, ";", DelimPar16%+1)
Tb01$ = MID$(Parameters$, 1, DelimPar1%-1)
Tf01$ = MID$(Parameters$, DelimPar1%+1, DelimPar2%-DelimPar1%-1)
Tc01$ = MID$(Parameters$, DelimPar2%+1, DelimPar3%-DelimPar2%-1)
Tc02$ = MID$(Parameters$, DelimPar3%+1, DelimPar4%-DelimPar3%-1)
Pc01$ = MID$(Parameters$, DelimPar4%+1, DelimPar5%-DelimPar4%-1)
Pc02$ = MID$(Parameters$, DelimPar5%+1, DelimPar6%-DelimPar5%-1)
Vc01$ = MID$(Parameters$, DelimPar6%+1, DelimPar7%-DelimPar6%-1)
DHf01$ = MID$(Parameters$, DelimPar7%+1, DelimPar8%-DelimPar7%-1)
DGf01$ = MID$(Parameters$, DelimPar8%+1, DelimPar9%-DelimPar8%-1)
Cp01$ = MID$(Parameters$, DelimPar9%+1, DelimPar10%-DelimPar9%-1)
Cp02$ = MID$(Parameters$, DelimPar10%+1, DelimPar11%-DelimPar10%-1)
Cp03$ = MID$(Parameters$, DelimPar11%+1, DelimPar12%-DelimPar11%-1)
Cp04$ = MID$(Parameters$, DelimPar12%+1, DelimPar13%-DelimPar12%-1)
Hvb01$ = MID$(Parameters$, DelimPar13%+1, DelimPar14%-DelimPar13%-1)
Hf01$ = MID$(Parameters$, DelimPar14%+1, DelimPar15%-DelimPar14%-1)
Eta01$ = MID$(Parameters$, DelimPar15%+1, DelimPar16%-DelimPar15%-1)
Eta02$ = MID$(Parameters$, DelimPar16%+1, DelimPar17%-DelimPar16%-1)
Temp$ = MID$(Parameters$, DelimPar17%+1, LengthPar%-DelimPar17%)

Tb01 = VAL(Tb01$)
Tf01 = VAL(Tf01$)
Tc01 = VAL(Tc01$)
Tc02 = VAL(Tc02$)
Pc01 = VAL(Pc01$)
Pc02 = VAL(Pc02$)
Vc01 = VAL(Vc01$)
DHf01 = VAL(DHf01$)
DGf01 = VAL(DGf01$)
Cp01 = VAL(Cp01$)
Cp02 = VAL(Cp02$)
Cp03 = VAL(Cp03$)
Cp04 = VAL(Cp04$)
Hvb01 = VAL(Hvb01$)
Hf01 = VAL(Hf01$)
Eta01 = VAL(Eta01$)
Eta02 = VAL(Eta02$)
Temp = VAL(Temp$)

IF Cum_NA = 0 THEN
OPEN "A", #2, "/data/data/cz.jh.suite/files/Joback/JH-Joback.out"
PRINT #2, "No atoms / groups identified. Please check your input."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] K.G. Joback, R.C. Reid, Chem. Eng. Comm. 57 (1987) 233-243."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Joback.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
ENDIF

CLOSE #4

BoilingT = Tb01 + Cum_Tb
FreezingT = Tf01 + Cum_Tf
CriticalT = BoilingT * (Tc01 + Tc02 * Cum_Tc - Cum_Tc^2)^(-1)
CriticalP = (Pc01 + Pc02 * Cum_NA - Cum_Pc)^(-2)
CriticalMolV = Vc01 + Cum_Vc
Enthalpy = DHf01 + Cum_DHf
Gibbs = DGf01 + Cum_DGf
HeatCap = Cum_a + Cp01 + (Cum_b + Cp02) * Temp + (Cum_c + Cp03) * Temp^2 + (Cum_d + Cp04) * Temp^3
VapEnthalpy = Hvb01 + Cum_Hvb
FreezEnthalpy = Hf01 + Cum_Hf
Visc = Cum_M * EXP((Cum_EtaA + Eta01)/Temp + Cum_EtaB + Eta02)

OPEN "A", #2, "/data/data/cz.jh.suite/files/Joback/JH-Joback.out"
PRINT #2, ""
PRINT #2, "Molar weight = "; Cum_M USING "####.##"; " g.mol-1"
PRINT #2, "Normal freezing point = "; FreezingT - 273.15 USING "###.##"; " �C (p = 101325 Pa)"
PRINT #2, "Normal boiling point = "; BoilingT - 273.15 USING "###.##"; " �C (p = 101325 Pa)"
PRINT #2, "Critical temperature = "; CriticalT - 273.15 USING "###.##"; " �C"
PRINT #2, "Critical pressure = "; CriticalP * 100000 USING "########.#"; " Pa"
PRINT #2, "Critical molar volume = "; CriticalMolV USING "###.##"; " cm3.mol-1"
PRINT #2, ""
PRINT #2, "*Temperature = "; FreezingT - 273.15 USING "###.##"; " �C*"
PRINT #2, ""
PRINT #2, "Molar freezing enthalpy = "; FreezEnthalpy USING "####.#"; " kJ.mol-1"
PRINT #2, ""
PRINT #2, "*Temperature = 25.00 �C*"
PRINT #2, ""
PRINT #2, "Standard enthalpy of fusion = "; Enthalpy USING "####.#"; " kJ.mol-1"
PRINT #2, "Standard free energy of fusion = "; Gibbs USING "####.#"; " kJ.mol-1"
PRINT #2, ""
PRINT #2, "*Temperature = "; BoilingT - 273.15 USING "###.##"; " �C*"
PRINT #2, ""
PRINT #2, "Molar vaporization enthalpy = "; VapEnthalpy USING "####.#"; " kJ.mol-1"
PRINT #2, ""
PRINT #2, "*Temperature = "; Temp-273.15 USING "###.##"; " �C*"
PRINT #2, ""
PRINT #2, "Molar heat capacity = "; HeatCap USING "####.#"; " J.K-1.mol-1 (ideal gas state)"
PRINT #2, ""
PRINT #2, "*Temperature corresponding to liquid state*"
PRINT #2, ""
PRINT #2, "Viscosity = "; Visc USING "##.######"; " N.s.m-2"
PRINT #2, ""
PRINT #2, "WARNING"
PRINT #2, "======="
PRINT #2, "Please note that not every molecule property is parametrized within requested"
PRINT #2, "set of group contributions. Therefore, some predicted values can be mislead."
PRINT #2, "Before further use, please check the file JH-Joback.dat for presence of needed"
PRINT #2, "data."
PRINT #2, "================================================================================"
PRINT #2, "REFERENCES:"
PRINT #2, "[1] K.G. Joback, R.C. Reid, Chem. Eng. Comm. 57 (1987) 233-243."
PRINT #2, "ACKNOWLEDGEMENTS"
PRINT #2, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #2, "(Interpreter & Compiler)"
PRINT #2, "================================================================================"
PRINT #2, "Execution of JH-Joback.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #2
EXIT
END
