# prql-homebrew
this repository serves as a [Tap](https://docs.brew.sh/Taps) containing the formulae of [prql](https://github.com/prql/prql).

## Installation
To install the tap:

    brew tap prql/homebrew-prql
Then, to install prql-compiler:
						
	brew install prql-compiler

A quick test to check everything went just fine:

	echo "from employees | filter has_dog" | prql-compiler compile

## Unistallation
First, uninstall prql:

	brew unistall prql-compiler

Then, untap the repo:

	brew untap prql/homebrew-prql

Lastly, a cleanup for remove old versions of formulae and kegs data:

	brew cleanup
