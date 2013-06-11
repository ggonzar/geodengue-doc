#/bin/bash

NAME=tesis

#~ Function que sirve para eliminar los archivos temporales
clean(){
    rm -r *.aux
    rm *.log *.bbl *.blg *.bcf *.run.xml *.lof *.lot *.toc *.sublime-project *.sublime-workspace *.fdb_latexmk *.orig *.loa
}
#~ Funcion que costruye
build(){
    pdflatex $NAME
    biber $NAME
    pdflatex $NAME
    pdflatex $NAME
}


if [ -n "$1" ] && [ "$1" = "clean" ]
then
    clean
else
    clean
    build
fi
