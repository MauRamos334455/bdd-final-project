--@Autor: Carolina Kennedy Villa
--        C. Mauricio Ramos Villaseñor
--@Fecha creación: 05/01/2021
--@Descripción: Creación de usuarios en los 4 nodos

clear screen
whenever sqlerror exit rollback;
set serveroutput on
prompt INCIANDO CREACION/ELIMINACION DE USUARIOS.
accept syspass char prompt 'PROPORCIONE EL PASSWORD DE SYS: ' hide

prompt =====================================
prompt CREANDO USUARIO EN: crvbdd_s1
prompt =====================================
connect sys/&&syspass@crvbdd_s1 as sysdba
@s-01-ilap-usuario.sql

prompt =====================================
prompt CREANDO USUARIO EN: crvbdd_s2
prompt =====================================
connect sys/&&syspass@crvbdd_s2 as sysdba
@s-01-ilap-usuario.sql

prompt =====================================
prompt CREANDO USUARIO EN: ckvbdd_s1
prompt =====================================
connect sys/&&syspass@ckvbdd_s1 as sysdba
@s-01-ilap-usuario.sql

prompt =====================================
prompt CREANDO USUARIO EN: ckvbdd_s2
prompt =====================================
connect sys/&&syspass@ckvbdd_s2 as sysdba
@s-01-ilap-usuario.sql

prompt Listo!
disconnect