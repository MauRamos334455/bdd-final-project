-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Ejecución de scripts de creación de sinónimos para los 4 nodos.

clear screen
whenever sqlerror exit rollback;

prompt =====================================
prompt Creando sinonimos para CKVBDD_S1
prompt =====================================
connect ilap_bdd/ilap@ckvbdd_s1
@s-04-ilap-ckv-s1-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt =====================================
prompt creando sinonimos para CKVBDD_S2
prompt =====================================
connect ilap_bdd/ilap@ckvbdd_s2
@s-04-ilap-ckv-s2-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt =====================================
prompt creando sinonimos para CRVBDD_S1
prompt =====================================
connect ilap_bdd/ilap@crvbdd_s1
@s-04-ilap-crv-s1-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt =====================================
prompt creando sinonimos para CRVBDD_S2
prompt =====================================
connect ilap_bdd/ilap@crvbdd_s2
@s-04-ilap-crv-s2-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

prompt LISTO!
disconnect