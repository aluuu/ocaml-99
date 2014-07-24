all: main

main: first.cmo
	ocamlc -g -o main first.cmo

first.cmo:
	ocamlc -g -c first.ml

.PHONY : clean

clean:
	rm -rf *cmo main
