find .\
     \( -iname '*.out' -o -iname '*.toc' -o  -iname '*.log' -o -iname '*.aux' -o -iname '*.dvi' -o -iname '*.lol' -o \
     -iname '*.lof' -o -iname '*.run.xml' -o -iname '*.fdb_latexmk' -o -iname '*.fls' -o -iname '*.bbl' -o \
     -iname '*.bcf' -o -iname '*.blg' -o -iname '*.lot' -o -iname '*.synctex.gz' \) \
     -exec rm -R {} +
docker run \
      --rm -t \
      --user="$(id -u):$(id -g)" \
      -v "$(pwd):/data" \
      moss/xelatex \
      xelatex \
        -file-line-error \
        -interaction=nonstopmode \
        -synctex=1 Bewerbung.tex
find .\
     \( -iname '*.out' -o -iname '*.toc' -o  -iname '*.log' -o -iname '*.aux' -o -iname '*.dvi' -o -iname '*.lol' -o \
     -iname '*.lof' -o -iname '*.run.xml' -o -iname '*.fdb_latexmk' -o -iname '*.fls' -o -iname '*.bbl' -o \
     -iname '*.bcf' -o -iname '*.blg' -o -iname '*.lot' -o -iname '*.synctex.gz' \) \
     -exec rm -R {} +