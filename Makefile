all: run

clean:
	rm -f out/Bluck.jar out/SoloveySum.jar

out/Bluck.jar: out/parcs.jar src/Bluck.java src/Node.java
	@javac -cp out/parcs.jar src/Bluck.java src/Node.java
	@jar cf out/Bluck.jar -C src Bluck.class -C src Node.class
	@rm -f src/Bluck.class src/Node.class

out/SoloveySum.jar: out/parcs.jar src/SoloveySum.java src/Node.java
	@javac -cp out/parcs.jar src/SoloveySum.java src/Node.java
	@jar cf out/SoloveySum.jar -C src SoloveySum.class -C src Node.class
	@rm -f src/SoloveySum.class src/Node.class

build: out/Bluck.jar out/SoloveySum.jar

run: out/Bluck.jar out/SoloveySum.jar
	@cd out && java -cp 'parcs.jar:Bluck.jar' Bluck
