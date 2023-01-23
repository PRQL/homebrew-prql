# prql-homebrew

This repository serves as a [Tap](https://docs.brew.sh/Taps) containing the formulae of
[prql](https://github.com/prql/prql) and [prql-query](https://github.com/prql/prql-query).

## Installation

### prqlc

To install prqlc:

    brew install prql/prql/prqlc

A test:

    echo "from employees | filter has_dog" | prqlc compile

### prql-query

Then, to install prql-query

    brew install prql/prql/prql-query

A test:

    pq --help
