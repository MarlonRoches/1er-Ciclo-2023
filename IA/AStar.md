# A*
1. Expande los nodos de forma heuristica, por lo que es optimo.
2. Para cada estado s, los nodos que llegan a s, considerado com optimos expandidos antes que los considerados como sub-optimos.

## Admisible
Es pisible y funcional para el contexto?

> (H(a) =10) <= (costo = 10) **OK**

>Costo euristica < que el costo hacia el destino-

> Costo Heuristica <= Costo hasta Destino

## Consistente
Representa todos los tramos de forma correcta?

Todos los pares de nodos sean consistente

Valor ***f*** nunca decrementa
> (h(a)-h(c)) <= Costo (A,C)
>10-3 <= 2 **nel**
>10-8 <= 2 **ok**