CLS

OPEN "O", #1, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "============================ * Procedure FUOSS * ==============================="
PRINT #1, "Version 1.00 for Android"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1
ExistInput = EXIST("/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.inp")
IF ExistInput = -1 THEN
OPEN "I", #2, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.inp"
INPUT #2, Cation$, Anion$
CLOSE #2

GOTO Calculation

ELSE
PRINT "============================ * JH PROGRAM SUITE * =============================="
PRINT "============================ * Procedure FUOSS * ==============================="
PRINT "Version 1.00"
#PRINT "Compiled 2018-02-17 using X11-BASIC"
PRINT "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT "================================================================================"

OPEN "O", #1, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "============================ * Procedure FUOSS * ==============================="
PRINT #1, "Version 1.00"
#PRINT #1, "Compiled 2018-02-17 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1

PRINT "Available ions: "
DIM Ions$(300)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.dat"
FOR I% = 0 TO 299
INPUT #4, Data_blockA$
Ions$(I%) = Data_blockA$
Element$ = LEFTOF$(Data_blockA$, ";")
IF I% > 0 THEN
PRINT Element$ + " ",
ENDIF
IF Element$ = "" THEN
GOTO FinishA
ENDIF
NEXT I%
FinishA:
PRINT ""
CLOSE #4
PRINT "Input cation: "
INPUT Cation$
PRINT "Input anion: "
INPUT Anion$

ENDIF

Calculation:

DIM Atoms$(300)
OPEN "I", #4, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.dat"
FOR I% = 0 TO 299
INPUT #4, Data_blockA$
Atoms$(I%) = Data_blockA$
LengthA% = LEN(Data_blockA$)
Element$ = LEFTOF$(Data_blockA$, ";")
Delim11% = INSTR(Data_blockA$, ";")
R$ = MID$(Data_blockA$, Delim11%+1, LengthA%-Delim11%)
R = VAL(R$)
IF Cation$ = Element$ THEN
RadiusCation = R
ENDIF
IF Anion$ = Element$ THEN
RadiusAnion = R
ENDIF
IF Element$ = "" THEN
GOTO FinishB
ENDIF
NEXT I%
FinishB:
CLOSE #4

OPEN "I", #3, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.par"
INPUT #3, a, b, c, d
CLOSE #3

IF RadiusCation = 0 OR RadiusAnion = 0 THEN
PRINT "Ion not found."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT "[2] Kosuke Izutsu: Electrochemistry in Nonaqueous Solutions. Wiley-VCH,"
PRINT " Weinheim 2009."
PRINT "[3] Yizhak Marcus: Ions in Solution and their Solvation. John Wiley & Sons,"
PRINT " New Jersey 2015."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Fuoss.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Ion not found."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT #1, "[2] Kosuke Izutsu: Electrochemistry in Nonaqueous Solutions. Wiley-VCH,"
PRINT #1, " Weinheim 2009."
PRINT #1, "[3] Yizhak Marcus: Ions in Solution and their Solvation. John Wiley & Sons,"
PRINT #1, " New Jersey 2015."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Fuoss.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

SeekCation% = INSTR(Cation$, "+")
SeekAnion% = INSTR(Anion$, "-")
LengthCation% = LEN(Cation$)
LengthAnion% = LEN(Anion$)
CatWord$ = LEFTOF$(Cation$, "+")
AnWord$ = LEFTOF$(Anion$, "-")
IF SeekCation% = LengthCation% THEN
zCat = 1
ELSE IF SeekCation% < LengthCation% THEN
zCat$ = MID$(Cation$, SeekCation%+1, LengthCation%-SeekCation%)
zCat = VAL(zCat$)
ENDIF
IF SeekAnion% = LengthAnion% THEN
zAn = -1
ELSE IF SeekAnion% < LengthAnion% THEN
zAn$ = MID$(Anion$, SeekAnion%+1, LengthAnion%-SeekAnion%)
zAn = -VAL(zAn$)
ENDIF

IF SeekCation% = 0 OR SeekAnion% = 0 THEN
PRINT "Cation must be written first, then anion."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT "[2] Kosuke Izutsu: Electrochemistry in Nonaqueous Solutions. Wiley-VCH,"
PRINT " Weinheim 2009."
PRINT "[3] Yizhak Marcus: Ions in Solution and their Solvation. John Wiley & Sons,"
PRINT " New Jersey 2015."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Fuoss.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "Cation must be written first, then anion."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT #1, "[2] Kosuke Izutsu: Electrochemistry in Nonaqueous Solutions. Wiley-VCH,"
PRINT #1, " Weinheim 2009."
PRINT #1, "[3] Yizhak Marcus: Ions in Solution and their Solvation. John Wiley & Sons,"
PRINT #1, " New Jersey 2015."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Fuoss.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

Distance = RadiusCation+RadiusAnion
log_k = LOG10(4*PI*6.022e23*(Distance*1e-10)^3/a) + b*(ABS(zCat*zAn)*6.022e23*(1.602e-19)^2/(4*PI*(Distance*1e-12)*8.854e-12*c*8.314*d))

OPEN "A", #1, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.out"
PRINT #1, "INPUT"
PRINT #1, "================================================================================"
PRINT #1, "Cation: "; Cation$
PRINT #1, "Radius = "; RadiusCation USING "###.#"; " pm"
PRINT #1, ""
PRINT #1, "Anion: "; Anion$
PRINT #1, "Radius = "; RadiusAnion USING "###.#"; " pm"
PRINT #1, ""
PRINT #1, "Separation distance = "; Distance USING "###.#"; " pm"
PRINT #1, ""
PRINT #1, "Temperature = "; d-273.15 USING "###.##"; " °C"
PRINT #1, "Solvent relative permittivity = "; c USING "###.##"
CLOSE #1

IF ExistInput <> -1 THEN
PRINT "================================================================================"
PRINT "RESULTS"
PRINT "================================================================================"
PRINT "For viewing the output protocol, please open the file JH-Fuoss.out."
PRINT "================================================================================"
PRINT "REFERENCES:"
PRINT "[1] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT "[2] Kosuke Izutsu: Electrochemistry in Nonaqueous Solutions. Wiley-VCH,"
PRINT " Weinheim 2009."
PRINT "[3] Yizhak Marcus: Ions in Solution and their Solvation. John Wiley & Sons,"
PRINT " New Jersey 2015."
PRINT "ACKNOWLEDGEMENTS"
PRINT "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT "(Interpreter & Compiler)"
PRINT "================================================================================"
PRINT "Execution of JH-Fuoss.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
OPEN "A", #1, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"

PRINT #1, Cation$;
PRINT #1, " + ";
PRINT #1, Anion$;
PRINT #1, " = ";
PRINT #1, CatWord$;
PRINT #1, AnWord$;
z = zCat+zAn
IF z = 0 THEN
PRINT #1, ""
ELSE IF z = 1 THEN
PRINT #1, "+"
ELSE IF z > 1 THEN
PRINT #1, "+";
PRINT #1, z
ELSE IF z = -1 THEN
PRINT #1, "-"
ELSE IF z < -1 THEN
PRINT #1, "-";
PRINT #1, -z
ENDIF

PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT #1, "[2] Kosuke Izutsu: Electrochemistry in Nonaqueous Solutions. Wiley-VCH,"
PRINT #1, " Weinheim 2009."
PRINT #1, "[3] Yizhak Marcus: Ions in Solution and their Solvation. John Wiley & Sons,"
PRINT #1, " New Jersey 2015."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Fuoss.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

ELSE

OPEN "A", #1, "/data/data/cz.jh.suite/files/Fuoss/JH-Fuoss.out"
PRINT #1, "================================================================================"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
PRINT #1, "PHREEQC STYLE COMPATIBLE INPUT"

PRINT #1, Cation$;
PRINT #1, " + ";
PRINT #1, Anion$;
PRINT #1, " = ";
PRINT #1, CatWord$;
PRINT #1, AnWord$;
z = zCat+zAn
IF z = 0 THEN
PRINT #1, ""
ELSE IF z = 1 THEN
PRINT #1, "+"
ELSE IF z > 1 THEN
PRINT #1, "+";
PRINT #1, z
ELSE IF z = -1 THEN
PRINT #1, "-"
ELSE IF z < -1 THEN
PRINT #1, "-";
PRINT #1, -z
ENDIF

PRINT #1, "     log_k  "; log_k USING "###.##"
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Raymond M. Fuoss, J. Am. Chem. Soc. 80(19) (1958) 5059-5061."
PRINT #1, "[2] Kosuke Izutsu: Electrochemistry in Nonaqueous Solutions. Wiley-VCH,"
PRINT #1, " Weinheim 2009."
PRINT #1, "[3] Yizhak Marcus: Ions in Solution and their Solvation. John Wiley & Sons,"
PRINT #1, " New Jersey 2015."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Fuoss.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

EXIT

ENDIF

END
