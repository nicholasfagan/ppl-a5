JAVAC=/usr/bin/javac
#Java Compiler Arguments
JCP=-d bin -classpath bin

JAVA=/usr/bin/java
#Java VM Arguments
JP=-classpath bin

OUT=
#For an output file:
#OUT=output.txt

ARGS=input.txt $(OUT)
#FOR COLOR
#ARGS+= -c


build: bin/*/*.class


bin/%.class: src/%.java
	@mkdir -p bin
	$(JAVAC) $(JCP) src/$*.java

run: build
	 $(JAVA) $(JP) parser.Parser $(ARGS)


