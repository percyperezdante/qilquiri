# qilquiri
Qilquiri (from the Aymara writer ) is a helper that writes pieces of common used code in Java for Vim and from command line.

Qilquiri contains two parts: 

- Part A.  The first one writes a basic code in Java, generate all minimum necessary directories, and compiles it using gradle. 
- Part B.  The second one are hotkeys for Vim that write common statements, methods or some other signatures while you are editing your code with Vim.

# PART A:

## Generating a Test
Generate a basic code : 
~~~~
percy@xps:gg$ javagradle.gen Test
 --> creating template, project directory = Test, main class = test
 --> Generating build.gradle file
 --> Copying test code
BUILD SUCCESSFUL in 6s
 --->  clean, build,BUILD SUCCESSFUL in 6s
 --->  running build/libs/Test-0.1.1.jar
Everything looks fine unitl now :)
~~~~

## Compiling Test

~~~~
percy@xps:Test$ gradle build
BUILD SUCCESSFUL in 0s
5 actionable tasks: 5 up-to-date
~~~~

## Executing Test
~~~~
percy@xps:Test$ java -jar build/libs/Test-0.1.1.jar 
Everything looks fine unitl now :)
~~~~

## Internal structure of Test
This will generate the followig directory structure
~~~~
percy@xps:gg$ tree Test/
Test/
├── build
│   ├── classes
│   │   └── java
│   │       └── main
│   │           └── Test.class
│   ├── distributions
│   │   ├── Test.tar
│   │   └── Test.zip
│   ├── libs
│   │   └── Test-0.1.1.jar
│   ├── scripts
│   │   ├── Test
│   │   └── Test.bat
│   └── tmp
│       ├── compileJava
│       └── jar
│           └── MANIFEST.MF
├── build.gradle
└── src
    └── main
        └── java
            └── test
                └── Test.java

14 directories, 9 files
~~~~

# PART B:

# Vim Scripts
All you need to do is copy the vim scripts of Qilquiri to your .vimrc.

# List of available hotkeys in Vim Insert Mode. 

- Ctrl+D+D   Insert "System.out.println("");"
- Ctrl+T+T   Insert "public ( ){}"
