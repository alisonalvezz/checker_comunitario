MAKEFILE

=> Descripcion:
Este makefile esta hecho para facilitar casos de prueba unitarias; gececeando, bettyando y valgrindeando.
Adicionalmente los archivos al ser makeados se compilan con -c para dejarlos compilados pero no linkeados.
Por lo tanto no te asustes ya que va a crear archivos (nombre).o
Esto hace que cuando makees de nuevo solo se compilen archivos modificados.
Interpretes como vs code hacen esto de forma automatizada, make es como la forma araica de hacerlo.
Recomiendo poner "*.o" y "Makefile"  en .gitignore si usan "add ." frecuentemente.
Quiero hacerle varios cambios para hacerlo mas facil, pero se lo dejare a ustedes o cuando tenga ganas.
Una de las funcionalidades que queria anadirle es la posibilidad de makear argumentos.
O si no tiene extensiones hacer que ese sea el output.
Actualmente se puede archivos gececear .c y .o pero no es algo que haya testeado mucho.
Otras extensiones si no te tira error, el makefile se auto destruye.
Si algo que debe de funcionar correctamente pero no mandame mensaje al whazaaaaa o al mail.

=> Uso:
Makefile tiene que estar en el directorio actual.

$ make
-Gececea todos los archivos (nombre).c actualizados o sin (nombre).o, y los guarda en (nombre).o
-Gececea para linkear todos los .o y lo guarda en DEFAULT_OUTPUT que es igual a "hsh". Si no tenes main tira error.
Para eso cree "make main", para que te cree un main.c con un main vacio que pasa betty y gcc. DEFAULT_OUTPUT se
puede cambiar dentro de Makefile.
-Corre Betty a todos los .c
-Corre Betty a todos los .h solo si alguno existe.
-Corre Valgrind. Sin embargo lo tiro a hsh. Si tenes multiples main tira error.

$ make main
-Crea un main vacio en main.c

$ make clean
-Elimina todos los archivos .o.

=> Si te interesa:
Si quieren investiguen make que esta bueno
Yo les deje pila de comentarios y variables que pueden cambiar.
Sin embargo no es un creador de checkers como tal. O un checker.
Esta hecho para automatizar el proceso de compilaion de los desarrolladores.
En si se trata de escribir un Makefile y ponerle instrucciones, que pueden ir de cosas asicas en dos lineas,
a cosas complejas con variables, condicionales, comandos de shell pipeados e incluso recursividad.
Si pones "make archivo.c", se ejecuta las "rules" (archivo.c:) o (%.c:).
Si pones "make" se ejecuta el primer "rule", que normalmente es un "all:".
Si modificas algo cuidado que los comandos funcionan con tabuladores, espacios pueden romper todo.
Los @ ocultan los comandos a shell, asi no se imprimen.

-ej de makefile:
all:
	@echo: "Hola mundo!"

-output:
$ make
Hola mundo!
$       

=> Autores:
Matias Davezac <matiasdavezac@gmail.com>


