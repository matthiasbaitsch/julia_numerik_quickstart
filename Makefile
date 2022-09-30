all: skript sourcecode

skript:
	jupyter-book build 01-skript
	/opt/homebrew/Caskroom/miniforge/base/envs/py39/bin/ghp-import -n -p -f 01-skript/_build/html

sourcecode:
	mkdir -p dist/arbeiten-mit-julia-numerik
	cp 01-skript/*.ipynb 01-skript/*.jl dist/arbeiten-mit-julia-numerik
	cd dist && zip -r arbeiten-mit-julia-numerik.zip arbeiten-mit-julia-numerik

clean:
	rm -rf dist 01-skript/_build



