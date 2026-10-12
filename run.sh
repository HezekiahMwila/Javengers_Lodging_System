#!/bin/sh
# Builds and runs the app with plain Java (no Gradle needed). Works on any JDK 17 or newer.
rm -rf out && mkdir out
javac -encoding UTF-8 -d out $(find src/main/java -name '*.java') && java -cp out zm.mulungushi.lodge.App
