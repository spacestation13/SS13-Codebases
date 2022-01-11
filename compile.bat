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
unflatten.exe -f -l 4 -o ".\tree-temp.dot"./tree.dot
DOT.EXE -Tsvg ".\tree-temp.dot" > ".\tree.svg"

ECHO .png generating..
unflatten.exe -f -l 4 -o ".\tree-temp.dot"./tree.dot
DOT.EXE -Tpng ".\tree-temp.dot" > ".\tree.png"

TIMEOUT /t 10
@REM PAUSE
