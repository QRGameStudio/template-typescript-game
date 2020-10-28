all: compile

clean:
        rm -rf dist/

compile:
        make clean
        tsc --outFile dist/game.js src/main.ts
        cp public/* dist
        cd dist && node ../../util-games-builder/build-game.js  game.html && mv dist/* . && rm -r dist

run:
        node ../util-games-builder/build-game.js game.html run

debug:
        node ../util-games-builder/build-game.js game.html debug

.PHONY: clean compile run debug
.SILENT:
