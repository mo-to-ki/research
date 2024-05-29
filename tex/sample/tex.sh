compile_and_run() {
    platex "./$1.tex"
    dvipdfmx "./$1.dvi"
}

compile_and_run $1