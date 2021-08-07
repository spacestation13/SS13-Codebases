@ECHO OFF

WHERE DOT.EXE
IF %ERRORLEVEL% NEQ 0 (
	ECHO  Fatal error!
	ECHO  Graphviz is not installed [dot.exe not found]
	ECHO  Please install it from: https://graphviz.org/download/
	EXIT 1
)

CD /D %CD%
DOT.EXE -V

ECHO .svg generating..
DOT.EXE -Tsvg ".\tree.dot" > ".\tree.svg"

ECHO .png generating..
DOT.EXE -Tpng ".\tree.dot" > ".\tree.png"

TIMEOUT /t 10
@REM PAUSE
