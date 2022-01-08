--@Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
--@Fecha creación: 07/01/2021
--@Descripción: Script de eliminación de datos

prompt Seleccionar la PDB para realizar la eliminación de datos
connect ilap_bdd/ilap@&pdb
set serveroutput on
prompt Eliminando datos ...
declare
    v_formato varchar2(50) := 'yyy-mm-dd hh24:mi:ss';
begin
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de HISTORICO_STATUS_LAPTOP');
    delete from historico_status_laptop;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de LAPTOP_INVENTARIO');
    delete from laptop_inventario;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de SERVICIO_LAPTOP');
    delete from servicio_laptop;
        dbms_output.put_line(to_char(sysdate,v_formato)
      || ' Eliminando datos de LAPTOP');
    delete from laptop;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_MONITOR');
    delete from tipo_monitor;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_MONITOR_R2');
    delete from tipo_monitor_r2;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_MONITOR_R3');
    delete from tipo_monitor_r3;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_MONITOR_R4');
    delete from tipo_monitor_r4;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_ALMACENAMIENTO');
    delete from tipo_almacenamiento;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_ALMACENAMIENTO_R2');
    delete from tipo_almacenamiento_r2;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_ALMACENAMIENTO_R3');
    delete from tipo_almacenamiento_r3;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_ALMACENAMIENTO_R4');
    delete from tipo_almacenamiento_r4;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_PROCESADOR');
    delete from tipo_procesador;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_PROCESADOR_R2');
    delete from tipo_procesador_r2;
    dbms_output.put_line(to_char(sysdate,v_formato)
        || ' Eliminando datos de TIPO_PROCESADOR_R3');
    delete from tipo_procesador_r3;
    dbms_output.put_line(to_char(sysdate,v_formato)
      || ' Eliminando datos de TIPO_PROCESADOR_R4');
    delete from tipo_procesador_r4;
    dbms_output.put_line(to_char(sysdate,v_formato)
      || ' Eliminando datos de TIPO_TARJETA_VIDEO');
    delete from tipo_tarjeta_video;
    dbms_output.put_line(to_char(sysdate,v_formato)
      || ' Eliminando datos de TIPO_TARJETA_VIDEO_R2');
    delete from tipo_tarjeta_video_r2;
    dbms_output.put_line(to_char(sysdate,v_formato)
      || ' Eliminando datos de TIPO_TARJETA_VIDEO_R3');
    delete from tipo_tarjeta_video_r3;
    dbms_output.put_line(to_char(sysdate,v_formato)
      || ' Eliminando datos de TIPO_TARJETA_VIDEO_R4');
    delete from tipo_tarjeta_video_r4;
    dbms_output.put_line(to_char(sysdate,v_formato)
      || ' Eliminando datos de SUCURSAL_TALLER');
    delete from sucursal_taller;
    dbms_output.put_line(to_char(sysdate,v_formato)
      || ' Eliminando datos de SUCURSAL_VENTA');
    delete from sucursal_venta;
    dbms_output.put_line(to_char(sysdate,v_formato)
      || ' Eliminando datos de SUCURSAL');
    delete from sucursal;
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