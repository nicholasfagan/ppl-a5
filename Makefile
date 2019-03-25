JAVAC=/usr/bin/javac
JCP=-d bin -classpath bin

JAVA=/usr/bin/java
JP=-classpath bin

OUT=
ARGS=input.txt -c $(OUT)



build: bin/*/*.class

bin/%.class: src/%.java
	$(JAVAC) $(JCP) src/$*.java

run: build
	 $(JAVA) $(JP) parser.Parser $(ARGS)


