SRect:
	swiftc -c main.swift SRect.swift -module-name Sample -import-objc-header Sample-Bridging-Header.h
	clang -c -fmodules MyRect.m
	clang -c readnums.c
	swiftc -o SRect main.o MyRect.o SRect.o readnums.o

clean:
	rm -f SRect *.o
