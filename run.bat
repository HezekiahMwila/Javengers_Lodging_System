@echo off
rem Builds and runs the app with plain Java (no Gradle needed). Works on any JDK 17 or newer.
if exist out rmdir /s /q out
mkdir out
dir /s /b src\main\java\*.java > out\sources.txt
javac -encoding UTF-8 -d out @out\sources.txt
if errorlevel 1 (echo Build failed & pause & exit /b 1)
java -cp out zm.mulungushi.lodge.App
