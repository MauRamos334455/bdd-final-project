-- @Autor: Carolina Kennedy Villa
--        C. Mauricio Ramos Villaseñor
-- @Fecha creación: 05/01/2021
-- @Descripción: Creación de ligas en los 4 nodos.

clear screen
whenever sqlerror exit rollback

prompt ============================
prompt CREANDO LIGAS EN: crvbdd_s1
prompt ============================
connect ilap_bdd/ilap_bdd@crvbdd_s1
-- PDB local
create database link crvbdd_s2.fi.unam using 'CRVBDD_S2';
--PDB remotas
create database link arcbd_s1.fi.unam using 'CKVBDD_S1';
Create database link arcbd_s2.fi.unam using 'CKVBDD_S2';
--completar
prompt Listo!

prompt ============================
prompt CREANDO LIGAS EN: crvbdd_s2
prompt ============================
connect ilap_bdd/ilap_bdd@crvbdd_s2
-- PDB local
create database link crvbdd_s1.fi.unam using 'CRVBDD_S1';
--PDB remotas
create database link arcbd_s1.fi.unam using 'CKVBDD_S1';
Create database link arcbd_s2.fi.unam using 'CKVBDD_S2';
--completar
prompt Listo!

prompt ============================
prompt CREANDO LIGAS EN: ckvbdd_s1
prompt ============================
connect ilap_bdd/ilap_bdd@ckvbdd_s1
-- PDB local
create database link ckvbdd_s2.fi.unam using 'CKVBDD_S2';
--PDB remotas
create database link crvbdd_s1.fi.unam using 'CRVBDD_S1';
Create database link crvbdd_s2.fi.unam using 'CRVBDD_S2';
--completar
prompt Listo!

prompt ============================
prompt CREANDO LIGAS EN: ckvbdd_s2
prompt ============================
connect ilap_bdd/ilap_bdd@ckvbdd_s2
-- PDB local
create database link ckvbdd_s1.fi.unam using 'CKVBDD_S1';
--PDB remotas
create database link crvbdd_s1.fi.unam using 'CRVBDD_S1';
Create database link crvbdd_s2.fi.unam using 'CRVBDD_S2';
--completar
prompt Listo!
