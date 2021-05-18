CFLAGS = `pkg-config --cflags sdl2 mpv`
LIBS = `pkg-config --libs sdl2 mpv`
DEPS = -Ideps/include
.PHONY: build

build:
	clang -o build/chanshare ${CFLAGS} ${LIBS} ${DEPS} src/main.c

run:
	./build/chanshare
