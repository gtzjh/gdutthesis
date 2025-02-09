@echo off
cls
chcp 65001 > nul
echo Starting compilation...
echo.
echo First XeLaTeX compilation...
xelatex -interaction=nonstopmode main.tex
echo.
echo Running BibTeX...
bibtex main
echo.
echo Second XeLaTeX compilation...
xelatex -interaction=nonstopmode main.tex
echo.
echo Third XeLaTeX compilation...
xelatex -interaction=nonstopmode main.tex
echo.
echo Cleaning up auxiliary files...
del *.aux *.log *.out *.toc *.bbl *.blg *.bcf *.run.xml *.synctex.gz *.fls *.fdb_latexmk *.xdv *.lot *.lof *.glo *.glsdefs *.ist *.gls *.glg *.tec
echo.
echo All tasks complete!