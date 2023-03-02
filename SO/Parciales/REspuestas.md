# que es un SO y su objetivo
Un SO (Sistema Operativo) es un software que actúa como intermediario entre el hardware de un dispositivo (como una computadora, teléfono móvil o tablet) y las aplicaciones y usuarios que interactúan con él. Su objetivo principal es administrar los recursos del sistema, como la memoria, el procesador, el disco duro y los dispositivos de entrada y salida, para que las aplicaciones puedan ejecutarse de manera eficiente y sin interferir entre sí.

# componente basicos para interactuar con el SO

# definicion proceso SO

# Diagrama como se construye un proceso en memoria y detalle  cuales son sus secciones

# 5 estados de un proceso
- **Nuevo**: el proceso se ha creado pero aún no se ha iniciado.

- **Listo**: el proceso está listo para ser ejecutado pero todavía no ha sido seleccionado para la ejecución.

- En **ejecución**: el proceso está siendo ejecutado actualmente por el procesador.

- **Bloqueado**: el proceso no puede continuar su ejecución porque está esperando la finalización de una operación de entrada/salida o algún otro recurso que está siendo utilizado por otro proceso.

- **Terminado**: el proceso ha finalizado su ejecución.

# Transiciones de un proceso
1. Creación: El proceso SO se crea cuando el sistema operativo se carga en la memoria.

2. Planificación: El proceso SO se mueve a la cola de planificación cuando está listo para ser ejecutado.

3. Ejecución: El proceso SO se ejecuta cuando es seleccionado por el planificador de procesos y se le otorga tiempo de CPU.

4. Interrupción: El proceso SO puede ser interrumpido cuando una interrupción de hardware o software ocurre, lo que requiere que el procesador cambie temporalmente el contexto para manejar la interrupción.

5. uspensión: El proceso SO puede ser suspendido cuando se requiere liberar recursos o cuando el proceso no tiene nada que hacer. En este estado, el proceso se mantiene en la memoria pero no se ejecuta hasta que se lo active nuevamente.

6. Finalización: El proceso SO se finaliza cuando se completa la tarea para la que fue creado.

# 3 tipos de colas  de un proceso
- Cola de listos (Ready Queue): Esta es una cola donde se colocan los procesos que están listos para ser ejecutados por la CPU. El sistema operativo selecciona el siguiente proceso de esta cola para ejecutar en función de su prioridad y otros factores.

- Cola de bloqueados (Blocked Queue): Esta es una cola donde se colocan los procesos que están esperando la finalización de alguna operación de entrada/salida (I/O) o algún otro evento externo, como la llegada de una señal. Estos procesos no pueden continuar su ejecución hasta que se complete el evento esperado.

- Cola de terminados (Terminated Queue): Esta es una cola donde se colocan los procesos que han completado su ejecución. El sistema operativo puede realizar algunas tareas de limpieza para estos procesos antes de eliminarlos del sistema.

# Defina Context Switch 
Se refiere a la información asociada con un proceso que se necesita para continuar su ejecución. Incluye información como el valor de los registros del procesador, la dirección de la próxima instrucción a ejecutar y la información de estado del proceso.

El contexto de un proceso debe ser guardado y restaurado cuando el proceso se suspende y luego se reanuda su ejecución. El proceso de cambiar el contexto de ejecución de un proceso a otro se llama cambio de contexto (context switch).

El cambio de contexto es un proceso importante en los sistemas operativos multitarea, donde varios procesos se ejecutan simultáneamente en la CPU. Cuando la CPU está ejecutando un proceso y se produce un evento que requiere la atención de otro proceso

# que es un hilo?

es una unidad básica de ejecución que puede ser programada y planificada para ejecutarse en paralelo con otros hilos. Un hilo comparte el espacio de memoria del proceso al que pertenece, lo que significa que puede acceder a las mismas variables y recursos que los otros hilos dentro del proceso.

Los hilos se utilizan para mejorar el rendimiento de los sistemas multitarea, ya que permiten que varias tareas se ejecuten simultáneamente en un solo proceso. Esto significa que los hilos pueden compartir recursos como la CPU y la memoria, lo que puede ahorrar recursos del sistema.

Tambien pueden funcionar para procesos en segundo plano

# Modelos de hilos a nivel de usuario y SO
- **(Muchos-a-Uno)**: Este modelo se caracteriza por tener varios hilos de usuario que se ejecutan en un único hilo de kernel. En este modelo, todos los hilos de usuario comparten un único hilo de kernel, lo que significa que si un hilo de usuario se bloquea, todos los demás hilos de usuario también se bloquean. Este modelo se utiliza en sistemas operativos como Solaris, que ofrece un conjunto de bibliotecas de hilos a nivel de usuario.

-  **One-to-One** (Uno-a-Uno): Este modelo asigna un hilo de kernel para cada hilo de usuario. Cada hilo de usuario se ejecuta en su propio hilo de kernel, lo que significa que si un hilo de usuario se bloquea, los demás hilos de usuario pueden seguir ejecutándose. Este modelo ofrece una mayor eficiencia y escalabilidad que el modelo muchos-a-uno, pero puede tener un mayor costo de recursos del sistema debido al uso de múltiples hilos de kernel. 

- Mx1: varios hilos de usuario a 1 hio de kernel. Tambien es multi
- 1x1: or cada hilo de usuario, vamos a tener un hilo de kernel asignado Single process Thread
- MxM: varios hilos de usuario a 1 hio de kernel. Multiproces Thread