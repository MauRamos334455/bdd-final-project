-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 05/01/2021
-- @Descripción: Creación de fragmentos en los 4 nodos

clear screen
whenever sqlerror exit rollback;
prompt =====================================
prompt CREANDO FRAGMENTOS PARA: ckvbdd_s1
prompt =====================================
connect ilap_bdd/ilap@ckvbdd_s1
@s-03-ilap-ckv-s1-ddl.sql
prompt =====================================
prompt CREANDO FRAGMENTOS PARA: ckvbdd_s2
prompt =====================================
connect ilap_bdd/ilap@ckvbdd_s2
@s-03-ilap-ckv-s2-ddl.sql
prompt =====================================
prompt CREANDO FRAGMENTOS PARA: crvbdd_s1
prompt =====================================
connect ilap_bdd/ilap@crvbdd_s1
@s-03-ilap-crv-s1-ddl.sql
prompt =====================================
prompt CREANDO FRAGMENTOS PARA: crvbdd_s2
prompt =====================================
connect ilap_bdd/ilap@crvbdd_s2
@s-03-ilap-crv-s2-ddl.sql
prompt LISTO!