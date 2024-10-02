!isdir("_build") && mkdir("_build")
!isdir("_build/zip") && mkdir("_build/zip")

for o = readdir("01-skript")
    if endswith(o, ".qmd")
        p = replace(o, ".qmd" => ".ipynb")
        run(`quarto convert 01-skript/$o --output _build/zip/$p`)
    end
end

cp("01-skript/pics", "_build/zip/pics", force=true)

