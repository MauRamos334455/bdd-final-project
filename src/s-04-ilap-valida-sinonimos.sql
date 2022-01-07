-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 06/01/2021
-- @Descripción: Script de validación de sinónimos

select
    (select count(*) from sucursal_f1) as sucursal_f1
    (select count(*) from sucursal_f2) as sucursal_f2
    (select count(*) from sucursal_f3) as sucursal_f3
    (select count(*) from sucursal_f4) as sucursal_f4
from dual;
select
    (select count(*) from sucursal_taller_f1) as sucursal_taller_f1
    (select count(*) from sucursal_taller_f2) as sucursal_taller_f2
    (select count(*) from sucursal_taller_f3) as sucursal_taller_f3
    (select count(*) from sucursal_taller_f4) as sucursal_taller_f4
from dual;
select
    (select count(*) from sucursal_venta_f1) as sucursal_venta_f1
    (select count(*) from sucursal_venta_f2) as sucursal_venta_f2
    (select count(*) from sucursal_venta_f3) as sucursal_venta_f3
    (select count(*) from sucursal_venta_f4) as sucursal_venta_f4
from dual;
select
    (select count(*) from servicio_laptop_f1) as servicio_laptop_f1
    (select count(*) from servicio_laptop_f2) as servicio_laptop_f2
    (select count(*) from servicio_laptop_f3) as servicio_laptop_f3
    (select count(*) from servicio_laptop_f4) as servicio_laptop_f4
from dual;
select
    (select count(*) from laptop_f1) as laptop_f1
    (select count(*) from laptop_f2) as laptop_f2
    (select count(*) from laptop_f3) as laptop_f3
    (select count(*) from laptop_f4) as laptop_f4
    (select count(*) from laptop_f5) as laptop_f5
from dual;
select
    (select count(*) from laptop_inventario_f1) as laptop_inventario_f1
    (select count(*) from laptop_inventario_f2) as laptop_inventario_f2
    (select count(*) from laptop_inventario_f3) as laptop_inventario_f3
    (select count(*) from laptop_inventario_f4) as laptop_inventario_f4
    (select count(*) from laptop_inventario_f5) as laptop_inventario_f5
from dual;
select
    (select count(*) from historico_status_f1) as historico_status_f1
    (select count(*) from historico_status_f2) as historico_status_f2
    (select count(*) from historico_status_f3) as historico_status_f3
    (select count(*) from historico_status_f4) as historico_status_f4
from dual;