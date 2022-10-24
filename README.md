# prql-homebrew

This repository serves as a [Tap](https://docs.brew.sh/Taps) containing the formulae of 
[prql](https://github.com/prql/prql) and [prql-query](https://github.com/prql/prql-query).

## Installation

### prql-compiler

Then, to install prql-compiler:
						
	brew install prql/prql/prql-compiler

A quick test to check everything went just fine:

	echo "from employees | filter has_dog" | prql-compiler compile

### prql-query

Then, to install prql-query
						
	brew install prql/prql/prql-query

A quick test to check everything went just fine:

	pq --help

## Unistallation

### prql-compiler

First, uninstall prql-compiler:

	brew unistall prql-compiler

### prql-query

Then, uninstall prql-query:

	brew unistall prql-query

### cleanup

Lastly, a cleanup for remove old versions of formulae and kegs data:

	brew cleanup
