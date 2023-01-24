# DataWarehouse
Arquitectura de almacenamiento donde los datos son :
- Organizados
- Limpiados
- Estandarizados

Esta base de datos es suceptible en el tiempo, es decir, los registros se guardan en todas sus etapas del tiempo.
> ETL = ***E***xtract ***T***ransform ***L***oad

**Ejemplo**:
- Login
- Compra
- Envio
- Devolucion
- Cambio

Todos los estados del pedido son guardados, podriamos "viajar" en el tiempo para ver el estado de todos los datos.

## ***Integrado***
**Fuentes heterofenieas**

Podriamos tener multiples fuentes de datos diferentes.

**Limpieza**

Datos limpios de manera que sean mas faciles de comprender.
## ***Enfocado***
Ventas, mercadeo, RRHH, etc.
## ***Variaciones de Tiempo***
- Timestamps
- Datoshistoricos 

## ***Por que tener un DW***
- Para tener una version, historial y registros inmutables durante el tiempo y automatizados.
- ***Desempeño***: Los DW son mejores para obtener reportes de mejor manera que en una DB transaccional, ya que las Transaccionales estan hechas para tener una alta disponibilidad, no para almacenar una gran DB. __Maquina dedicada a hacer reportes.__
- ***Simplicidad***: Los DW estan preparados para consultar una gran cantidad de datos y esta optimizados para ello.
- ***Persistencia***: Podemos tener DWs que son persitentes en los datos y en el tiempo.


## **Checklist**
- Alta disponibilidad  del mismo dataset para varios usuario.
- Datps ño,íos e integros para la compañia.
- Se separan los datos de las fientes transaccinoales.
- No necesitamos repeticiones.
![Data Warehouse](https://tableauperu.com/wp-content/uploads/2019/02/data-warehouse-tableau-peru-sit-consulting-4.png)

