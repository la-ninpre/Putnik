FONT_NAME=Putnik
FONT_VERSION=$(shell git describe --abbrev=4)
RELEASE=$(FONT_NAME)-$(FONT_VERSION)
OUT_DIR=fonts
UFO_SRC=sources/$(FONT_NAME).ufo
TTF=fonts/ttf/$(FONT_NAME).ttf
OTF=fonts/otf/$(FONT_NAME).otf

all: ttf otf

ttf: $(TTF)
$(TTF): $(UFO_SRC)
	fontmake -u $(UFO_SRC) -o ttf --output-dir fonts/ttf/

otf: $(OTF)
$(OTF): $(UFO_SRC)
	fontmake -u $(UFO_SRC) -o otf --output-dir fonts/otf/

release: release-tar release-zip

release-tar: ttf otf
	tar -cvf $(RELEASE).tar.gz $(OTF) $(TTF) LICENSE

release-zip: ttf otf
	zip -j $(RELEASE).zip $(OTF) $(TTF) LICENSE

clean:
	-rm $(TTF) $(OTF) $(RELEASE).*

.PHONY: all release clean
