
# FORMAT

A checker can have multiple styles. However if many people are gonna work on the same project, there should be a unified format.
And as no one really cared to make one I'll make it. Consider that any issues with it could of been avoided if you made it first.

First, checker output should be in English. No Spanish, or worse, "Spaninglish".
However the content of the checker file can be of any language, and doesn't have to pass betty checks.
Try to make it somewhat readable though.

The naming convention is 'x-checker.c' where x is the task it checks.
If you have a compiled file it should be included with the c file and should be named 'x-checker'.
The executable should work of course. It needs to have executable rights and work as intended.

The checker should include colors.
All text should be white, but each check should be green if successful and red if not. Details are later described.

The checker cannot enter any user stopped loop. We aren't making a shell here. Just a checker.

It should also, avoid including content from other checkers. The checker should be able to run and compiled by itself.
Also if it's compiled using non conventional rules it should be written on a comment inside the file.

If a checker tests a range of inputs, it should contain a minimum of 6 test cases and a maximum of 18.
These don't include Betty or Valgrind checks, unless explicitly asked to.
For example; if the program is asked to execute a program, create a checker with at least 5 programs to execute.
Exceptions can be made, but remember that people are gonna use this, if your checker isn't useful then why make it?

Test cases depends on the input it needs to test. So a convention cannot be universally made.

---

Successful checks shold be marked with "[\033[32mSuccess\033[0m]"
Failed checks shoulde be marked by "[\033[31mFailure\033[0m]"

These things are called "ANSI escape codes" and signals to the terminal how to format text.
"\033[0m" is called reset, as it resets all values to the default.
If you don't use it after modifying the format then the shell is gonna keep using it where it shouldn't.
Between [ and m you put the code. 31 is red, 32 is green. Theres also bold, italic and others but these are beyond the point right now.
The checks written above are just [Success] and [Failure] but colored accordingly.

If you print to the terminal by echo, remember to use -e as it normally doesn't recognize backslashes.

Between each test case there should be an empty line in between.
Text of each test case is up to the creator, but should be as descriptive as possible.
Don't write test#1 test#2.

If you can show the output of what you checked, the better.

At the end it should display how many checks were made and how many were successful.
You can skip this if you only have 1 or 2 test cases.

I don't have universal examples but these should suffice for the format.
Examples of a checker:

$ ./x-checker
#1 Betty check [FAILURE]

#2 Executes the ls command with no arguments [SUCCESS]

#3 Executes the mkdir command with no arguments [FAILURE]

#4 Valgrind check [SUCCESS]

2/4 successful tests.
$ 
