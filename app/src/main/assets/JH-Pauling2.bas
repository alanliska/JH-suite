CLS

DIM Inp1$(200)
DIM Inp2$(200)
DIM Inp3$(200)

Cum_Diff = 0

OPEN "O", #1, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.out"
PRINT #1, "============================ * JH PROGRAM SUITE * =============================="
PRINT #1, "========================== * Procedure PAULING II * ============================"
PRINT #1, "Version 1.00 for Android"
#PRINT #1, "Compiled 2018-03-27 using X11-BASIC"
PRINT #1, "(C) Alan Liska & Veronika Ruzickova, 2022"
PRINT #1, "================================================================================"
CLOSE #1

IF EXIST("/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.inp") <> -1 THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.out"
PRINT #1, "Missing input file."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Linus Pauling: The Nature of The Chemical Bond, 3rd Edition. Cornell"
PRINT #1, "    University Press, London 1960."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Pauling2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "I", #2, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.inp"

OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.out"
PRINT #1, "RESULTS"
PRINT #1, "================================================================================"
CLOSE #1

OPEN "I", #5, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.par"
INPUT #5, A, B, C
CLOSE #5

I% = 1
DO

INPUT #2, Item$
Inp1$(I%) = Item$
Delim1% = INSTR(Item$, ";")
DatLen% = LEN(Item$)
Element1$ = MID$(Item$, 1, Delim1%-1)
Element2$ = MID$(Item$, Delim1%+1, DatLen%-Delim1%)

IF I% = 1 THEN
Num_N = VAL(Element1$)
Num_O = VAL(Element2$)
IF Num_N < 0 OR Num_O < 0 THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.out"
PRINT #1, "Wrong number of N or O atoms entered."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Linus Pauling: The Nature of The Chemical Bond, 3rd Edition. Cornell"
PRINT #1, "    University Press, London 1960."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Pauling2.b terminated ABNORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1
EXIT
ENDIF

OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.out"
PRINT #1, "Number of nitrogen atoms in the compound = "; Num_N
PRINT #1, "Number of oxygen atoms in the compound = "; Num_O
PRINT #1, ""
PRINT #1, "Bond  ", "Bond energy (kJ.mol-1)", "Ionicity"
PRINT #1, "======", "======================", "========"
CLOSE #1
ENDIF

 OPEN "I", #3, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.dat"
 J% = 1
 DO

 INPUT #3, Item2$
 Inp2$(J%) = Item2$
 Delim11% = INSTR(Item2$, ";")
 DatLen1% = LEN(Item2$)
 Atom$ = MID$(Item2$, 1, Delim11%-1)
 Elng$ = MID$(Item2$, Delim11%+1, DatLen1%-Delim11%)

 IF Atom$ = Element1$ AND Atom$ <> "" THEN
 X1$ = Elng$
 OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.out"
 PRINT #1, Element1$;"-";
 CLOSE #1
 ENDIF
 J% = J%+1
 EXIT IF (J% > 199 OR Atom$ = "")
 LOOP
 CLOSE #3

IF I% > 1 AND Element1$ <> "" THEN
OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.out"
PRINT #1, Element2$,
CLOSE #1
ENDIF

  OPEN "I", #4, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.dat"
  K% = 1
  DO

  INPUT #4, Item3$
  Inp3$(K%) = Item3$
  Delim3% = INSTR(Item3$, ";")
  DatLen3% = LEN(Item3$)
  Atom1$ = MID$(Item3$, 1, Delim3%-1)
  Elng1$ = MID$(Item3$, Delim3%+1, DatLen3%-Delim3%)
  
  IF Atom1$ = Element2$ AND Atom1$ <> "" THEN
  X2$ = Elng1$
  ENDIF

  K% = K%+1
  EXIT IF (K% > 199 OR Atom1$ = "")
  LOOP
  CLOSE #4

X1 = VAL(X1$)
X2 = VAL(X2$)

IF I% > 2 THEN
Cum_Diff = Cum_Diff + (X1-X2)^2
ENDIF

Ionicity = 1-EXP(-0.25*(X1-X2)^2)
I% = I%+1
EXIT IF (I% > 199 OR Element1$ = "")
IF I% > 2 THEN
  OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.out"
  PRINT #1, "",
  PRINT #1, A*4.184*(X1-X2)^2 USING "####.##",
  PRINT #1, "",
  PRINT #1, Ionicity*100 USING "###.#"; " %"
  CLOSE #1
ENDIF
LOOP

CLOSE #2

Q = -A * Cum_Diff + B * Num_N + C * Num_O
Qnorm = 4.184*Q

OPEN "A", #1, "/data/data/cz.jh.suite/files/Pauling2/JH-Pauling2.out"
PRINT #1, ""
PRINT #1, "Heat of formation = ";Qnorm USING "####.##";" kJ.mol-1"
PRINT #1, ""
PRINT #1, "The calculated value is related to the standard physical state at 25 °C."
PRINT #1, "================================================================================"
PRINT #1, "REFERENCES:"
PRINT #1, "[1] Linus Pauling: The Nature of The Chemical Bond, 3rd Edition. Cornell"
PRINT #1, "    University Press, London 1960."
PRINT #1, "ACKNOWLEDGEMENTS"
PRINT #1, "Markus Hoffmann: X11-BASIC, Version 1.28, 1997-2022, x11-basic.sourceforge.net"
PRINT #1, "(Interpreter & Compiler)"
PRINT #1, "================================================================================"
PRINT #1, "Execution of JH-Pauling2.b terminated NORMALLY, "; DATE$; ", "; TIME$; "."
CLOSE #1

EXIT
END
