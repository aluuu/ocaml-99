all: main

main: second.cmo
	ocamlc -g -o main second.cmo

second.cmo:
	ocamlc -g -c second.ml

.PHONY : clean

clean:
	rm -rf *cmo main
