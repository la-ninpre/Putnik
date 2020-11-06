FONTNAME=Putnik
OUT_DIR=fonts
UFO_SRC=sources/$(FONTNAME).ufo
TTF=fonts/ttf/$(FONTNAME).ttf
OTF=fonts/otf/$(FONTNAME).otf

all: ttf otf

ttf: $(TTF)
$(TTF): $(UFO_SRC)
	fontmake -u $(UFO_SRC) -o ttf --output-dir fonts/ttf/

otf: $(OTF)
$(OTF): $(UFO_SRC)
	fontmake -u $(UFO_SRC) -o otf --output-dir fonts/otf/

clean:
	-rm $(TTF) $(OTF)

.PHONY: clean
