[![github action status](https://github.com/faciledictu/sicp-exercises/workflows/Racket%20CI/badge.svg)](https://github.com/faciledictu/sicp-exercises/actions)

# SICP exercises

This repository contains my solutions to the exercises in the book _Structure and Interpretation of Computer Programs_ by H. Abelson, G. J. Sussman, J. Sussman

## Requirements

* Racket
* Rackunit (`raco pkg install rackunit`)
* [SICP Support for DrRacket](https://docs.racket-lang.org/sicp-manual/index.html) (`raco pkg install sicp`)
* [Racket-review](https://github.com/Bogdanp/racket-review) surface-level linter (`raco pkg install review`)

## Installation

```bash
make install
```

This will install _SICP Support for DrRacket_ and _Racket-review_

## Run tests

```bash
make tests
```

---
This repository based on [hexlet-boilerplates/sicp-racket](https://github.com/hexlet-boilerplates/sicp-racket)
