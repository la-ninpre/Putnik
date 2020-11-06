# Putnik Font

![Font Preview](docs/preview.png)

Putnik is rough condensed cyrillic display font. It is primarily inspired by runic script, early cyrillic script and wooden pagan inscriptions.
This font is non-professional, though.

Putnik was made especially for [short-movie by Ilya Osenev](https://www.youtube.com/watch?v=VteH0cZsxPg) with the same name.

Font is made with Inkscape and FontForge.

## Glyph set

Currently there's not too much glyphs. There is cyrillic (all caps), digits and incomplete set of punctuation.

## Compilation

### Prerequisites

You need python, pip and fontmake.

```terminal
$ python -m pip install fontmake
```

### Building

To build both otf and ttf versions, just run

```terminal
$ make
```

If you want only ttf or otf, run 

```terminal
$ make otf
```

or

```terminal
$ make ttf
```

respectively.

## Todo's

- all punctuation
- better kerning
- glyph polishing and tweaking
- maybe latin-script
