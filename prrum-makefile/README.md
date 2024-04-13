# MAKEFILE

## Description:
This makefile is designed to facilitate unit test cases; running, checking with Betty, and using Valgrind.
Additionally, when files are made, they are compiled with -c to leave them compiled but not linked.
So don't be alarmed as it will create (name).o files.
This allows for recompiling only modified files when remaking.
IDEs like VS Code automate this process; make is like the old-fashioned way of doing it.
I recommend adding "*.o" and "Makefile" to .gitignore if you frequently use "add .".
One functionality I wanted to add is the ability to make arguments.
Or if it doesn't have extensions, make that the output.
Currently, you can run .c and .o files, but it's not something I've tested much.
If any functionality that should work correctly doesn't, contact me via WhatsApp or email.

## Use
Makefile has to be in the actual directory.

### $ make
- **Gcc's:** Processes all updated or unlinked .c files and saves them as .o files.
- **Gcc's for linking:** Links all .o files and saves the output to DEFAULT_OUTPUT, which is set to "hsh". Throws an error if there is no main function. For this purpose, I created "make main", which generates a main.c file with an empty main function that passes Betty and GCC. DEFAULT_OUTPUT can be changed within the Makefile.
- **Run Betty:** Runs Betty on all .c files.
- **Run Betty:** Runs Betty on all .h files only if any exist.
- **Run Valgrind:** However, it directs output to "hsh". Throws an error if there are multiple main functions.

### $ make main
-Creates a empty main in main.c

### $ make clean
-Deletes all the files .o.

## If you're interested:
You should check out Make; it's really good. I've left plenty of comments and variables you can modify. However, it's not a checker creator per se, or a checker at all. It's designed to automate the compilation process for developers. Essentially, it's about writing a Makefile and giving it instructions, which can range from basic tasks in two lines to complex operations involving variables, conditionals, shell commands piped together, and even recursion.

When you run "make file.c", it executes the rules defined for "file.c:" or "%.c:". When you run "make", it executes the first rule, which is typically "all:". If you modify something, be careful that the commands are indented with tab characters; spaces can break everything. The "@" symbol hides the shell commands, so they won't be printed out.

## Example of makefile
```
all:
	@echo: "Hola mundo!"
```
### output:
```
$ make
Hola mundo!
$       
```
### Autores:
##### Matias Davezac <matiasdavezac@gmail.com>
##### Alison Alvez <alisonalvez005@gmail.com>
