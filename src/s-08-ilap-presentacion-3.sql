--@Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
--@Fecha creación: 07/01/2021
--@Descripción: Archivo de carga inicial - fragmentos

clear screen
set serveroutput on
--Para visualizar export NLS_LANG=SPANISH_SPAIN.WE8ISO8859P1
prompt ======================================
prompt Preparando carga de Datos
prompt ======================================
prompt =>Seleccionar la PDB LOCAL para insertar datos
prompt => Asegurarse que las imagenes existen en ambos servidores
connect ilap_bdd/ilap_bdd@&pdb
prompt Personalizando el formato de fechas
alter session set nls_date_format='yyyy-mm-dd hh24:mi:ss';
prompt =>Al ocurrir un error se saldrá del programa y se hará rollback
whenever sqlerror exit rollback
pause => Presionar Enter para Iniciar con la extracción de datos binarios, Ctrl-C para cancelar
--Invoca a un shell script para realizar la extracción y copia de archivos
!sh s-08-ilap-presentacion-3.sh
prompt ==================================================
prompt ¿ Listo para Iniciar con la carga ?
prompt ==================================================
pause => Presionar Enter para Iniciar, Ctrl-C para cancelar
prompt => Realizando limpieza inicial ....
set feedback off
prompt Eliminando datos de historico_status_laptop
delete from historico_status_laptop;
--completar. Tener cuidado con el orden de eliminación,
--debe ser eliminación con base a las dependencias de las tablas.
prompt => Realizando Carga de datos ....
prompt cargando tipo_tarjeta_video
@carga-inicial/tipo_tarjeta_video.sql
prompt cargando tipo_procesador
@carga-inicial/tipo_procesador.sql
prompt cargando tipo_monitor
@carga-inicial/tipo_monitor.sql
prompt cargando tipo_almacenamiento
@carga-inicial/tipo_almacenamiento.sql
prompt cargando sucursal
@carga-inicial/sucursal-1.sql
--es_venta = 1, es_taller = 0
@carga-inicial/sucursal-2.sql
--es_venta= 1, es_taller = 1
@carga-inicial/sucursal-3.sql
prompt cargando sucursal_taller
-- id 1 al 1000
@carga-inicial/sucursal_taller-1.sql
-- id 2001 al 3000
@carga-inicial/sucursal_taller-2.sql
prompt cargando sucursal_venta
-- id 1001 al 2000
@carga-inicial/sucursal_venta-1.sql
-- id 2001 al 3000
@carga-inicial/sucursal_venta-2.sql
prompt cargando laptop (con datos BLOB)
--laptops sin reemplazo
--@carga-inicial/laptop-1.sql
@carga-inicial/laptop-1-empty-blob.sql
--Algunas de estas laptops tienen reemplazo
--@carga-inicial/laptop-2.sql
@carga-inicial/laptop-2-empty-blob.sql
prompt cargando laptop_inventario
@carga-inicial/laptop_inventario.sql
prompt cargando historico_status_laptop
@carga-inicial/historico_status_laptop-1.sql
@carga-inicial/historico_status_laptop-2.sql
prompt cargando servicio_laptop (con datos BLOB)
--@carga-inicial/servicio_laptop-1.sql
@carga-inicial/servicio_laptop-1-empty-blob.sql
--@carga-inicial/servicio_laptop-2.sql
@carga-inicial/servicio_laptop-2-empty-blob.sql
prompt Carga de datos completa. Haciendo commit!
commit;
exit