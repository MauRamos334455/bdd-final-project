-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 06/01/2021
-- @Descripción: Creación de sinónimos en los 4 nodos. 

connect ilap_bdd/ilap@ckvbdd_s1

create or replace sucursal_f1 for sucursal_f1_ckv_s1;
create or replace sucursal_f2 for sucursal_f2_ckv_s2@ckvbdd_s2;
create or replace sucursal_f3 for sucursal_f3_crv_s1@crvbdd_s1;
create or replace sucursal_f4 for sucursal_f4_crv_s2@crvbdd_s2;

create or replace sucursal_taller_f1  for sucursal_taller_f1_ckv_s1;
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

create or replace laptop_f1  for laptop_f1_ckv_s1;
create or replace laptop_f2 for laptop_f2_ckv_s2@ckvbdd_s2;
create or replace laptop_f3 for laptop_f3_crv_s1@crvbdd_s1;
create or replace laptop_f4 for laptop_f4_crv_s2@crvbdd_s2;
create or replace laptop_f5 for laptop_f5_crv_s2@crvbdd_s2;

create or replace laptop_inventario_f1 for laptop_inventario_f1_ckv_s1;
create or replace laptop_inventario_f2 for laptop_inventario_f2_ckv_s2@ckvbdd_s2;
create or replace laptop_inventario_f3 for laptop_inventario_f3_crv_s1@crvbdd_s1;
create or replace laptop_inventario_f4 for laptop_inventario_f4_crv_s2@crvbdd_s2;

create or replace historico_status_f1 for historico_status_f1_ckv_s1;
create or replace historico_status_f2 for historico_status_f2_ckv_s2@ckvbdd_s2;
create or replace historico_status_f3 for historico_status_f3_crv_s1@crvbdd_s1;
create or replace historico_status_f4 for historico_status_f4_crv_s2@crvbdd_s2;
