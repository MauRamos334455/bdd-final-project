-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 06/01/2021
-- @Descripción: Creación de sinónimos para el nodo CRV_S2.

connect ilap_bdd/ilap@crvbdd_s2
 synonym
create or replace synonym sucursal_f1 for sucursal_f1_ckv_s1@ckvbdd_s1;
create or replace synonym sucursal_f2 for sucursal_f2_ckv_s2@ckvbdd_s2;
create or replace synonym sucursal_f3 for sucursal_f3_crv_s1@crvbdd_s1;
create or replace synonym sucursal_f4 for sucursal_f4_crv_s2;

create or replace synonym sucursal_taller_f1 for sucursal_taller_f1_ckv_s1@ckvbdd_s1;
create or replace synonym sucursal_taller_f2 for sucursal_taller_f2_ckv_s2@ckvbdd_s2;
create or replace synonym sucursal_taller_f3 for sucursal_taller_f3_crv_s1@crvbdd_s1;
create or replace synonym sucursal_taller_f4 for sucursal_taller_f4_crv_s2;

create or replace synonym sucursal_venta_f1 for sucursal_venta_f1_ckv_s1@ckvbdd_s1;
create or replace synonym sucursal_venta_f2 for sucursal_venta_f2_ckv_s2@ckvbdd_s2;
create or replace synonym sucursal_venta_f3 for sucursal_venta_f3_crv_s1@crvbdd_s1;
create or replace synonym sucursal_venta_f4 for sucursal_venta_f4_crv_s2;

create or replace synonym servicio_laptop_f1 for servicio_laptop_f1_ckv_s1@ckvbdd_s1;
create or replace synonym servicio_laptop_f2 for servicio_laptop_f2_ckv_s2@ckvbdd_s2;
create or replace synonym servicio_laptop_f3 for servicio_laptop_f3_crv_s1@crvbdd_s1;
create or replace synonym servicio_laptop_f4 for servicio_laptop_f4_crv_s2;

create or replace synonym laptop_f1 for laptop_f1_ckv_s1@ckvbdd_s1;
create or replace synonym laptop_f2 for laptop_f2_ckv_s2@ckvbdd_s2;
create or replace synonym laptop_f3 for laptop_f3_crv_s1@crvbdd_s1;
create or replace synonym laptop_f4 for laptop_f4_crv_s2;
create or replace synonym laptop_f5 for laptop_f5_crv_s2;

create or replace synonym laptop_inventario_f1 for laptop_inventario_f1_ckv_s1@ckvbdd_s1;
create or replace synonym laptop_inventario_f2 for laptop_inventario_f2_crv_s1@crvbdd_s1;

create or replace synonym historico_status_f1 for H_STATUS_LAPTOP_F1_CKV_S1@ckvbdd_s1;
create or replace synonym historico_status_f2 for H_STATUS_LAPTOP_F2_CKV_S2@ckvbdd_s2;

create or replace synonym tipo_monitor_r1 for tipo_monitor_r_crv_s2;
create or replace synonym tipo_monitor_r2 for tipo_monitor_r_ckv_s1@ckvbdd_s1;
create or replace synonym tipo_monitor_r3 for tipo_monitor_r_ckv_s2@ckvbdd_s2;
create or replace synonym tipo_monitor_r4 for tipo_monitor_r_crv_s1@crvbdd_s1;

create or replace synonym tipo_almacenamiento_r1 for tipo_almacenamiento_r_crv_s2;
create or replace synonym tipo_almacenamiento_r2 for tipo_almacenamiento_r_ckv_s1@ckvbdd_s1;
create or replace synonym tipo_almacenamiento_r3 for tipo_almacenamiento_r_ckv_s2@ckvbdd_s2;
create or replace synonym tipo_almacenamiento_r4 for tipo_almacenamiento_r_crv_s1@crvbdd_s1;

create or replace synonym tipo_procesador_r1 for tipo_procesador_r_crv_s2;
create or replace synonym tipo_procesador_r2 for tipo_procesador_r_ckv_s1@ckvbdd_s1;
create or replace synonym tipo_procesador_r3 for tipo_procesador_r_ckv_s2@ckvbdd_s2;
create or replace synonym tipo_procesador_r4 for tipo_procesador_r_crv_s1@crvbdd_s1;

create or replace synonym tipo_tarjeta_video_r1 for tipo_tarjeta_video_r_crv_s2;
create or replace synonym tipo_tarjeta_video_r2 for tipo_tarjeta_video_r_ckv_s1@ckvbdd_s1;
create or replace synonym tipo_tarjeta_video_r3 for tipo_tarjeta_video_r_ckv_s2@ckvbdd_s2;
create or replace synonym tipo_tarjeta_video_r4 for tipo_tarjeta_video_r_crv_s1@crvbdd_s1;