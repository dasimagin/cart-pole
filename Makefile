.PHONY: all

all: \
	cart_pole_svg \

build_dir:
	mkdir -p build

cart_pole_svg: build_dir
	latex -output-directory build tex/cart_pole.tex
	dvisvgm --no-fonts build/cart_pole.dvi -o svg/cart_pole.svg

clean:
	rm -rf build
	cd tex && latexmk -CA
