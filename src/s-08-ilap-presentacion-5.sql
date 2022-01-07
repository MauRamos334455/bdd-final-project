--@Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
--@Fecha creación: 07/01/2021
--@Descripción: Script de eliminación de datos

prompt Seleccionar la PDB para realizar la eliminación de datos
connect netmax_bdd/ilap_bdd@&pdb
set serveroutput on
prompt Eliminando datos ...
declare
    v_formato varchar2(50) := 'yyy-mm-dd hh24:mi:ss';
begin
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de playlist');
    delete from historico_status_laptop;
--completar
commit;
exception
    when others then
        dbms_output.put_line('Errores detectados al realizar la eliminacion');
        dbms_output.put_line('Se hara rollback');
        dbms_output.put_line(dbms_utility.format_error_backtrace);
        rollback;
        raise;
end;
/
prompt Listo!
exit