# Ciclo de Vida de una instruccion
1. el core trae las isntrucciones una por una
2. ejecuta las instrucciones

> Inicio -> Leer (read) -> Ejecutar (write) -> Fin
- Las intrucciones se ejecutan linealmente, es decir, una por una. van en cola. Pero el orden en el que entran no es el orden en el que se ejecutan.

# Ciclo de vida de una instruccion
## Tipos de interrupciones
- Programa: Cualquier programa
- Entrada Salida: Dispositivo o modulo
- Reloj: CPU, reloj
- Falla de Hardware: Dispositivo Hardware

> ***Start*** -> read -> Exec (***fin*** habilitada?  ) -> Comprobar  

Comprobar: Verificar de donde viene la interrupcion.
![Ciclo de vida](../Images/Ciclo%20de%20Vida%20Interrupcion.jpg)

# Threads
Un hilo dentro de un procesador es la forma en que cada uno de los núcleos del CPU recibirá y procesará la información. 

Cada núcleo puede solamente realizar una tarea a la vez y en a pesar de que un procesador, por poner un ejemplo, de ocho núcleos tenga 16 hilos, este comportamiento sigue siendo el mismo.
![Hilois](../Images/Hilos%20Diagrama.jpg)


## Tipos
### Single Proces Thread:
Tenemos un Hilo por un proceso, donde compartimos la pila, los datos y los registros.
### Multi Proces


## Tipos Usuario
Programar:

- Mx1: varios hilos de usuario a 1 hio de kernel. Tambien es multi 
- 1x1: or cada hilo de usuario, vamos a tener un hilo de kernel asignado Single process Thread
- MxM: varios hilos de usuario a 1 hio de kernel. Multiproces Thread



