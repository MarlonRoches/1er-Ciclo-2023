-- 0. Creacion de la DB
create database ProyectoAnalisisDeDatos2023
use ProyectoAnalisisDeDatos2023

-- 1. Carga incial
select * from rawData

-- 2. Tablas Dimensionales
select * from DIM_Fecha
select * from DIM_Hora
select * from DIM_Agencia
select * from DIM_Producto
select * from DIM_Operador
select * from DIM_RECIBO


-- 3. Cubo de informacion
select  * from OPERACIONES
