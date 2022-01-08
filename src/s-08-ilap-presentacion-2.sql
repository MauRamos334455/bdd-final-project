-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Archivo de carga inicial para copias manuales de catálogos.

clear screen
whenever sqlerror exit rollback;
--Para visualizar export NLS_LANG=SPANISH_SPAIN.WE8ISO8859P1
prompt ================================================
prompt Cargando catalogos de forma manual en ckvbdd_s1
prompt ================================================
connect ilap_bdd/ilap@ckvbdd_s1
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

prompt ================================================
prompt Cargando catalogos de forma manual en ckvbdd_s2
prompt ================================================
connect ilap_bdd/ilap@ckvbdd_s2
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

prompt ================================================
prompt Cargando catalogos de forma manual en crvbdd_s1
prompt ================================================
connect ilap_bdd/ilap@crvbdd_s1
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

prompt ================================================
prompt Cargando catalogos de forma manual en crvbdd_s2
prompt ================================================
connect ilap_bdd/ilap@crvbdd_s2
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

prompt Listo!
exit