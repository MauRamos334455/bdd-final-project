-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Definición de vistas con acceso a datos BLOB para el sitio CRV_S1

prompt CREANDO VISTA PARA LAPTOP...
create or replace view laptop as
select laptop_id,num_serie,cantidad_ram,caracteristicas_extras,
  tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,
  tipo_monitor_id,laptop_reemplazo_id, get_remote_foto_f5_by_id(laptop_id) foto
from (
  select laptop_id,num_serie,cantidad_ram,caracteristicas_extras,
    tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,
    tipo_monitor_id,laptop_reemplazo_id
  from laptop_f1
  union all
  select laptop_id,num_serie,cantidad_ram,caracteristicas_extras,
    tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,
    tipo_monitor_id,laptop_reemplazo_id
  from laptop_f2
  union all
  select laptop_id,num_serie,cantidad_ram,caracteristicas_extras,
    tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,
    tipo_monitor_id,laptop_reemplazo_id
  from laptop_f3
  union
  select laptop_id,num_serie,cantidad_ram,caracteristicas_extras,
    tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,
    tipo_monitor_id,laptop_reemplazo_id
  from laptop_f4
) q1;

prompt CREANDO VISTA PARA SERVICIO_LAPTOP...
create or replace view servicio_laptop as
select num_servicio,laptop_id,importe,diagnostico,
  get_remote_serv_lap_f1_by_id(num_servicio,laptop_id) factura,
  sucursal_id
from servicio_laptop_f1
union all
select num_servicio,laptop_id,importe,diagnostico,
  get_remote_serv_lap_f2_by_id(num_servicio,laptop_id) factura,
  sucursal_id
from servicio_laptop_f2
union all
select num_servicio,laptop_id,importe,diagnostico,factura,sucursal_id
from servicio_laptop_f3
union all
select num_servicio,laptop_id,importe,diagnostico,
  get_remote_serv_lap_f4_by_id(num_servicio,laptop_id) factura,
  sucursal_id
from servicio_laptop_f4;