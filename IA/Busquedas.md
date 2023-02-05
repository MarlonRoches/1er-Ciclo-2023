# Algoritmos de busqueda
## ***UC***
Medimos el costo acumilado

BFS (Breadth First Search) y DFS (Depth First Search) son dos algoritmos de búsqueda en grafos que se utilizan para recorrer los nodos de un grafo en busca de un valor o una solución determinada. La principal diferencia entre ambos es la forma en que se recorren los nodos:

## BFS se recorre el grafo por niveles, es decir, primero se visitan todos los nodos hijos de un nodo, luego todos los hijos de los hijos, y así sucesivamente. BFS es una búsqueda en amplitud.

## DFS 
se recorre el grafo en profundidad, es decir, se profundiza en un nodo hasta que no se pueda ir más lejos y luego se retrocede para continuar con otro nodo. DFS es una búsqueda en profundidad.

Ambos algoritmos tienen diferentes aplicaciones y ventajas según el problema que se quiera resolver. Por ejemplo, BFS es útil para encontrar la solución más corta en un grafo no ponderado, mientras que DFS es útil para encontrar una solución rápidamente en grafos muy grandes.

## ***Iterative DeepSearch***
DF con limities iterativos.

Por niveles

## ***A****
Heuristica = Asitencia, sugerencias y asistencia. Que tanto me estoy acercando a la meta.

Dependiente al probema.

La heuristica tiene que ser precalculada.

Greedy Search: Toma solamente la euristica. Tomar la mas baja, me estoy acercando.
> g(x) euristica
> h(x) Costo del camino
A* = g(x) UC + h(x) Greedy
