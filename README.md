# Putnik Font

![Font Preview](docs/preview.png)

Putnik is rough condensed cyrillic display font. It is primarily inspired by
runic script, early cyrillic script and wooden pagan inscriptions.
This font is non-professional, though.

Putnik was made especially for
[short-movie by Ilya Osenev](https://www.youtube.com/watch?v=VteH0cZsxPg) with
the same name.

Font is made with Inkscape and FontForge.

## Glyph set

Currently there's not too much glyphs. There is cyrillic (all caps), digits and
incomplete set of punctuation.

## Compilation

### Prerequisites

All you need is python and pip and venv modules. If you are using Linux or MacOS,
chanses are you already have all of this. If not, install them using your package
manager.

```console
$ which python
/usr/bin/python
$ python -m pip --version
pip XX.X.X from /usr/lib/python3.8/site-packages/pip (python 3.8)
```

### Building

To build both otf and ttf versions, just run

```console
$ make
```

This will create python virtual environment in directory `venv`, install fontmake
package from requirements.txt and build the fonts to `fonts/` directory.

If you want only ttf or otf, run 

```console
$ make otf
```

or

```console
$ make ttf
```

respectively.

To make zip or tarball package, run `make release`.

## Todo's

- all punctuation
- better kerning
- glyph polishing and tweaking
- maybe latin-script
