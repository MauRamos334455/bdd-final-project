-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 05/01/2021
-- @Descripción: Eliminación y creación del usuario.

declare
  v_count number(1,0);
begin
  select count(*) into v_count
  from dba_users
  where lower(username) ='ilap_bdd';
  if v_count > 0 then
    execute immediate 'drop user ilap_bdd cascade';
  else
    dbms_output.put_line('El usuario ilap_bdd no existe');
  end if;
end;
/
prompt CREANDO USUARIO: ilap_bdd...
create user ilap_bdd identified by ilap
quota unlimited on users;
grant create session, create table, create procedure, create sequence,
create view, create synonym, create database link, create trigger, 
create any directory
to ilap_bdd;