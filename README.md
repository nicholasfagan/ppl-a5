# PPL A5

This assignment parses a subset of Scheme called ``` Scheme-- ``` .


## Compiling and Running

To build, type
```
make build
```
To build and run, type 
```
make run
```

The program can also be run directly with
```
javac -d bin -classpath bin src/*/*.java
java -classpath bin parser.Parser input.txt
```

There is an additional option to colorize output, ``` -c ``` using
ansi escape sequences. This makes reading the parse tree much easier on the eyes.
This can be disabled by removing the ``` -c ``` option from the Makefile.

## Description

The program scans and tokenizes the input using regular expressions.
Then the tokenized output is piped to the Parser,
which implements a recursive descent parser using a transformed grammar.
A text file describing the grammar is available in ``` grammar.txt ``` .
The grammar is hard coded in the program, 
in the NonTerminal class.

The program generates a tree structure representing the semantics of the input.
On an invalid input, it displays an error to stderr.

The tree structure is then printed, optionally with colors.

## Example

![example colorized tree output](https://github.com/nicholasfagan/ppl-a5/raw/master/Example.png)

