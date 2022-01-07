-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 06/01/2021
-- @Descripción: Creación de sinónimos para el nodo CKV_S1. 

connect ilap_bdd/ilap@ckvbdd_s1

create or replace sucursal_f1 for sucursal_f1_ckv_s1;
create or replace sucursal_f2 for sucursal_f2_ckv_s2@ckvbdd_s2;
create or replace sucursal_f3 for sucursal_f3_crv_s1@crvbdd_s1;
create or replace sucursal_f4 for sucursal_f4_crv_s2@crvbdd_s2;

create or replace sucursal_taller_f1 for sucursal_taller_f1_ckv_s1;
create or replace sucursal_taller_f2 for sucursal_taller_f2_ckv_s2@ckvbdd_s2;
create or replace sucursal_taller_f3 for sucursal_taller_f3_crv_s1@crvbdd_s1;
create or replace sucursal_taller_f4 for sucursal_taller_f4_crv_s2@crvbdd_s2;

create or replace sucursal_venta_f1 for sucursal_venta_f1_ckv_s1;
create or replace sucursal_venta_f2 for sucursal_venta_f2_ckv_s2@ckvbdd_s2;
create or replace sucursal_venta_f3 for sucursal_venta_f3_crv_s1@crvbdd_s1;
create or replace sucursal_venta_f4 for sucursal_venta_f4_crv_s2@crvbdd_s2;

create or replace servicio_laptop_f1 for servicio_laptop_f1_ckv_s1;
create or replace servicio_laptop_f2 for servicio_laptop_f2_ckv_s2@ckvbdd_s2;
create or replace servicio_laptop_f3 for servicio_laptop_f3_crv_s1@crvbdd_s1;
create or replace servicio_laptop_f4 for servicio_laptop_f4_crv_s2@crvbdd_s2;

create or replace laptop_f1 for laptop_f1_ckv_s1;
create or replace laptop_f2 for laptop_f2_ckv_s2@ckvbdd_s2;
create or replace laptop_f3 for laptop_f3_crv_s1@crvbdd_s1;
create or replace laptop_f4 for laptop_f4_crv_s2@crvbdd_s2;
create or replace laptop_f5 for laptop_f5_crv_s2@crvbdd_s2;

create or replace laptop_inventario_f1 for laptop_inventario_f1_ckv_s1;
create or replace laptop_inventario_f2 for laptop_inventario_f2_ckv_s2@ckvbdd_s2;
create or replace laptop_inventario_f3 for laptop_inventario_f3_crv_s1@crvbdd_s1;

create or replace historico_status_f1 for historico_status_f1_ckv_s1;
create or replace historico_status_f2 for historico_status_f2_ckv_s2@ckvbdd_s2;

create or replace tipo_monitor_r1 for tipo_monitor_r_ckv_s1;
create or replace tipo_monitor_r2 for tipo_monitor_r_ckv_s2@ckvbdd_s2;
create or replace tipo_monitor_r3 for tipo_monitor_r_crv_s1@crvbdd_s1;
create or replace tipo_monitor_r4 for tipo_monitor_r_crv_s2@crvbdd_s2;

create or replace tipo_almacenamiento_r1 for tipo_almacenamiento_r_ckv_s1;
create or replace tipo_almacenamiento_r2 for tipo_almacenamiento_r_ckv_s2@ckvbdd_s2;
create or replace tipo_almacenamiento_r3 for tipo_almacenamiento_r_crv_s1@crvbdd_s1;
create or replace tipo_almacenamiento_r4 for tipo_almacenamiento_r_crv_s2@crvbdd_s2;

create or replace tipo_procesador_r1 for tipo_procesador_r_ckv_s1;
create or replace tipo_procesador_r2 for tipo_procesador_r_ckv_s2@ckvbdd_s2;
create or replace tipo_procesador_r3 for tipo_procesador_r_crv_s1@crvbdd_s1;
create or replace tipo_procesador_r4 for tipo_procesador_r_crv_s2@crvbdd_s2;

create or replace tipo_tarjeta_video_r1 for tipo_tarjeta_r_video_ckv_s1;
create or replace tipo_tarjeta_video_r2 for tipo_tarjeta_r_video_ckv_s2@ckvbdd_s2;
create or replace tipo_tarjeta_video_r3 for tipo_tarjeta_r_video_crv_s1@crvbdd_s1;
create or replace tipo_tarjeta_video_r4 for tipo_tarjeta_r_video_crv_s2@crvbdd_s2;