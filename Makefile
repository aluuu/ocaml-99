clean:
	rm src/$(task).cmo src/$(task).cmi src/$(task) tests/test_$(task).cmo tests/test_$(task).cmi tests/test_$(task) -f

build: clean src/$(task).cmo
	ocamlc -g -o src/$(task) src/$(task).cmo

src/$(task).cmo:
	ocamlc -g -c src/$(task).ml

test: clean tests/test_$(task).cmo
	ocamlfind ocamlc -package oUnit -linkpkg -I ./src/ -g -o tests/test_$(task) src/$(task).cmo tests/test_$(task).cmo && ./tests/test_$(task)

tests/test_$(task).cmo:
	ocamlfind ocamlc -package oUnit -linkpkg -I ./src/ -g -c src/$(task).ml tests/test_$(task).ml
