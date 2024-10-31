#target : dependincies
#	action

main.c: math
	mkdir math

math: src
	mkdir src

src: math.c
	gcc -o src math.c

math.c: math.h
	gcc -c math.h

io: src
	mkdir src

src: io.c
	gcc -o src io.c

io.c: io.h
	gcc -c io.c io.h

utils: src
	mkdir src

src: utils.c
	gcc -o src utils.c

utils.c: utils.h
	gcc -c utils.c utils.h

extra: src

src: extra.c
	gcc -o src extra.c

extra.c: extra.h
	gcc -c extra.c extra.h

