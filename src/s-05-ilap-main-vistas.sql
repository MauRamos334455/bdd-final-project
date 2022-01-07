-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Creación de vistas para todos los sitios

clear screen
whenever sqlerror exit rollback;

prompt ===========================================
prompt CREANDO VISTAS PARA CKVBDD_S1
prompt ===========================================
connect ilap_bdd/ilap@ckvbdd_s1
prompt CREANDO VISTAS QUE NO REQUIEREN MANEJO DE BLOBS...
@s-05-ilap-vistas.sql
prompt CREANDO TABLAS TEMPORALES...
@s-05-ilap-tablas-temporales.sql
prompt CREANDO OBJETOS PARA MANEJO DE BLOBS...
@s-05-ilap-funciones-blob.sql
prompt CREANDO VISTAS CON SOPORTE PARA BLOBS...
@s-05-ilap-ckv-s1-vistas-blob.sql

prompt ===========================================
prompt CREANDO VISTAS PARA CKVBDD_S2
prompt ===========================================
connect ilap_bdd/ilap@ckvbdd_s2
prompt CREANDO VISTAS QUE NO REQUIEREN MANEJO DE BLOBS...
@s-05-ilap-vistas.sql
prompt CREANDO TABLAS TEMPORALES...
@s-05-ilap-tablas-temporales.sql
prompt CREANDO OBJETOS PARA MANEJO DE BLOBS...
@s-05-ilap-funciones-blob.sql
prompt CREANDO VISTAS CON SOPORTE PARA BLOBS...
@s-05-ilap-ckv-s2-vistas-blob.sql

prompt ===========================================
prompt CREANDO VISTAS PARA CRVBDD_S1
prompt ===========================================
connect ilap_bdd/ilap@crvbdd_s1
prompt CREANDO VISTAS QUE NO REQUIEREN MANEJO DE BLOBS...
@s-05-ilap-vistas.sql
prompt CREANDO TABLAS TEMPORALES...
@s-05-ilap-tablas-temporales.sql
prompt CREANDO OBJETOS PARA MANEJO DE BLOBS...
@s-05-ilap-funciones-blob.sql
prompt CREANDO VISTAS CON SOPORTE PARA BLOBS...
@s-05-ilap-crv-s1-vistas-blob.sql

prompt ===========================================
prompt CREANDO VISTAS PARA CRVBDD_S2
prompt ===========================================
connect ilap_bdd/ilap@crvbdd_s2
prompt CREANDO VISTAS QUE NO REQUIEREN MANEJO DE BLOBS...
@s-05-ilap-vistas.sql
prompt CREANDO TABLAS TEMPORALES...
@s-05-ilap-tablas-temporales.sql
prompt CREANDO OBJETOS PARA MANEJO DE BLOBS...
@s-05-ilap-funciones-blob.sql
prompt CREANDO VISTAS CON SOPORTE PARA BLOBS...
@s-05-ilap-crv-s2-vistas-blob.sql

prompt LISTO!
disconnect