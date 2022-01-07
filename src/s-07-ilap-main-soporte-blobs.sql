-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Script principal empleado para configurar el soporte
--               de datos BLOB en los 4 nodos

prompt configurando directorios y otorgando registros.
--ckvbdd_s1
prompt configurando soporte BLOB para ckvbdd_s1
connect ilap_bdd/ilap@ckvbdd_s1
@s-07-ilap-configuracion-soporte-blobs.sql
--ckvbdd_s2
prompt configurando soporte BLOB para ckvbdd_s2
connect ilap_bdd/ilap@ckvbdd_s2
@s-07-ilap-configuracion-soporte-blobs.sql
--crvbdd_s1
prompt configurando soporte BLOB para crvbdd_s1
connect ilap_bdd/ilap@crvbdd_s1
@s-07-ilap-configuracion-soporte-blobs.sql
--crvbdd_s2
prompt configurando soporte BLOB para crvbdd_s2
connect ilap_bdd/ilap@crvbdd_s2
@s-07-ilap-configuracion-soporte-blobs.sql

prompt Listo!