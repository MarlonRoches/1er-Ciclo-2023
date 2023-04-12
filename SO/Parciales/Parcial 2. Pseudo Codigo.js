// realiza el pseudo codigo de este enunciado utilizando colas de mensajes de uns sistema operativo

// crear un servidor que atiende peticiones que le llegan a traves de una cola de mensajes desde una serie de procesos clientes. Los mensajes tienen el formato(PID, caracter).
// El procesos servidor atiende a las peticiones e imprime por pantalla "servidor: atienda la peticion del proceso PID: caracter enviado" 
// y envian una respuesta atravez de otra cola a los clientes para indicar que su peticion ha sido atendida.
//  Cuando el cliente recibe la respuesta imprime por pantalla "cliente PID: atienda mi peticion" y termina.
//  El servidor termina cuando un cliente le pase el caracter "z". el caracter se pasa al cliente como argumento mediante la linea de ordenes.



//  --------------------------------------------------------------------------------------------------------PARA EL SERVIDOR------------------------------------------------------------------------------
// Inicializar las colas de mensajes de entrada y salida
let cola_entrada = Cola()
let cola_salida = Cola()

// Inicializar una variable que indique si el servaidor debe seguir atendiendo peticiones o no
let servidor_activo = Verdadero

// Función para atender las peticiones
    function atender_peticiones():
        while servidor_activo === Verdadero:
            // Leer el siguiente mensaje de la cola de entrada
            si la cola de entrada no está vacía:
                mensaje = cola_entrada.Recibe()
                // Extraer el PID y el caracter del mensaje
                pid, caracter = mensaje
                // Imprimir por pantalla la petición recibida
                console.log( "servidor: atienda la petición del proceso PID: caracter enviado")
                // Enviar un mensaje de respuesta al cliente a través de la cola de salida
                cola_salida.SEND("Petición del proceso " + pid + " atendida la peticion")
                // Si el caracter recibido es "z", terminar el servidor
                si caracter es igual a "z":
                    servidor_activo = Falso
                    romper
            // Esperar un tiempo antes de volver a revisar la cola de entrada
            dormir(0.1)

    // Iniciar el proceso de atender peticiones
    atender_peticiones()

    // Liberar los recursos
    cola_entrada.cerrar()
    cola_salida.cerrar()



// --------------------------------------------------------------------------------------------------------PARA EL CLIENTE ----------------------------------------------------------------------------------------------------------------------------------
                // Obtener el PID del proceso cliente
                pid = obtener_PID()

                // Obtener el caracter que se desea enviar al servidor como argumento de la línea de órdenes
                caracter = obtener_caracter()

                // Inicializar las colas de mensajes de entrada y salida
                cola_entrada = Cola()
                cola_salida = Cola()

                // Función para enviar una petición al servidor
                function enviar_peticion():
                    // Enviar un mensaje al servidor a través de la cola de entrada con el formato (PID, caracter)
                    cola_entrada.Enviar((pid, caracter))
                    // Esperar a recibir la respuesta del servidor a través de la cola de salida
                    respuesta = cola_salida.Recibir()
                    // Imprimir por pantalla la respuesta recibida
                    imprimir "cliente " + pid + ": " + respuesta + "Atiende mi peticion"

                // Iniciar el proceso de enviar una petición al servidor
                Send()

                // Liberar los recursos
                cola_entrada.cerrar()
                cola_salida.cerrar()
