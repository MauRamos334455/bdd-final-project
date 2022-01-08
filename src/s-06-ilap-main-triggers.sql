-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Creación de trigger para implementar transparencia de inserción

clear screen
whenever sqlerror exit rollback
prompt ==============================
prompt Creando triggers en ckvbdd_s1
prompt ==============================
connect ilap_bdd/ilap@ckvbdd_s1
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-jrc-s1-sucursal-taller-trigger.sql
@s-06-ilap-jrc-s1-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-jrc-s1-servicio-laptop-trigger.sql
@s-06-ilap-tipo-procesador-trigger.sql
@s-06-ilap-tipo-almacenamiento-trigger.sql
@s-06-ilap-tipo-monitor-trigger.sql
@s-06-ilap-tipo-tarjeta-video-trigger.sql
prompt ==============================
prompt Creando triggers en ckvbdd_s2
prompt ==============================
connect ilap_bdd/ilap@ckvbdd_s2
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-jrc-s2-sucursal-taller-trigger.sql
@s-06-ilap-jrc-s2-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-jrc-s2-servicio-laptop-trigger.sql
@s-06-ilap-tipo-procesador-trigger.sql
@s-06-ilap-tipo-almacenamiento-trigger.sql
@s-06-ilap-tipo-monitor-trigger.sql
@s-06-ilap-tipo-tarjeta-video-trigger.sql
prompt ==============================
prompt Creando triggers en crvbdd_s1
prompt ==============================
connect ilap_bdd/ilap@crvbdd_s1
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-arc-s1-sucursal-taller-trigger.sql
@s-06-ilap-arc-s1-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-arc-s1-servicio-laptop-trigger.sql
@s-06-ilap-tipo-procesador-trigger.sql
@s-06-ilap-tipo-almacenamiento-trigger.sql
@s-06-ilap-tipo-monitor-trigger.sql
@s-06-ilap-tipo-tarjeta-video-trigger.sql
prompt ==============================
prompt Creando triggers en crvbdd_s2
prompt ==============================
connect ilap_bdd/ilap@crvbdd_s2
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-arc-s2-sucursal-taller-trigger.sql
@s-06-ilap-arc-s2-sucursal-venta-trigger.sql
@s-06-ilap-arc-s2-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-arc-s2-servicio-laptop-trigger.sql
@s-06-ilap-tipo-procesador-trigger.sql
@s-06-ilap-tipo-almacenamiento-trigger.sql
@s-06-ilap-tipo-monitor-trigger.sql
@s-06-ilap-tipo-tarjeta-video-trigger.sql
prompt Listo!