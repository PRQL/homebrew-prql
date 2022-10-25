# prql-homebrew

This repository serves as a [Tap](https://docs.brew.sh/Taps) containing the formulae of
[prql](https://github.com/prql/prql) and [prql-query](https://github.com/prql/prql-query).

## Installation

### prql-compiler

To install prql-compiler:

    brew install prql/prql/prql-compiler

A test:

    echo "from employees | filter has_dog" | prql-compiler compile

### prql-query

Then, to install prql-query

    brew install prql/prql/prql-query

A test:

    pq --help
