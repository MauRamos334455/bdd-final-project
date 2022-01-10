-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Trigger para operaciones DML en SUCURSAL

create or replace trigger t_dml_sucursal
instead of insert or update or delete on sucursal
declare
 
begin
  case
    when inserting then
      if :new.es_taller = 1 and :new.es_venta = 1 and (substr(:new.clave, 3,2) in ('NO','EA', 'SO', 'WS')) then
        insert into sucursal_f1(sucursal_id, clave, es_taller, es_venta, nombre, latitud, longitud, url)
        values(:new.sucursal_id, :new.clave, :new.es_taller, :new.es_venta, :new.nombre, :new.latitud, :new.longitud, :new.url);
      elsif (:new.es_taller = 1 and :new.es_venta = 0) or 
      (:new.es_taller = 0 and :new.es_venta = 1) then
        if substr(:new.clave, 3,2) = 'NO' then
          insert into sucursal_f1(sucursal_id, clave, es_taller, es_venta, nombre, latitud, longitud, url)
          values(:new.sucursal_id, :new.clave, :new.es_taller, :new.es_venta, :new.nombre, :new.latitud, :new.longitud, :new.url);
        elsif substr(:new.clave, 3,2) = 'EA' then 
          insert into sucursal_f2(sucursal_id, clave, es_taller, es_venta, nombre, latitud, longitud, url)
          values(:new.sucursal_id, :new.clave, :new.es_taller, :new.es_venta, :new.nombre, :new.latitud, :new.longitud, :new.url);
        elsif substr(:new.clave, 3,2) = 'WS' then 
          insert into sucursal_f3(sucursal_id, clave, es_taller, es_venta, nombre, latitud, longitud, url)
          values(:new.sucursal_id, :new.clave, :new.es_taller, :new.es_venta, :new.nombre, :new.latitud, :new.longitud, :new.url);
        elsif substr(:new.clave, 3,2) = 'SO' then 
          insert into sucursal_f4(sucursal_id, clave, es_taller, es_venta, nombre, latitud, longitud, url)
          values(:new.sucursal_id, :new.clave, :new.es_taller, :new.es_venta, :new.nombre, :new.latitud, :new.longitud, :new.url);
        else
          raise_application_error(-20010,
            'Valor incorrecto para la clave'
            || ' clave: ' || :new.clave
            || ' Sólo se permite: NO, EA, WS o SO');
        end if;
      else
        raise_application_error(-20010,
        'Valor incorrecto para el campo es_taller o es_venta o clave'
        || ' es_taller: ' || :new.es_taller
        || ' es_venta: '  || :new.es_venta
        || ' clave: '     || :new.clave
        || ' Sólo se permiten: 11, 10 o 01. Y para clave: NO, EA, WS o SO');
      end if;

    when updating then
      raise_application_error(-20030, 
        'Las operaciones update no se han sido implementadas');
    
    when deleting then
      if :old.es_taller = 1 and :old.es_venta = 1 and (substr(:old.clave, 3,2) in ('NO','EA', 'SO', 'WS')) then
        delete from sucursal_f1 where sucursal_id = :old.sucursal_id;
      elsif (:old.es_taller = 1 and :old.es_venta = 0) or 
      (:old.es_taller = 0 and :old.es_venta = 1) then
        if substr(:old.clave, 3,2) = 'NO' then 
          delete from sucursal_f1 where sucursal_id = :old.sucursal_id;
        elsif substr(:old.clave, 3,2) = 'EA' then 
          delete from sucursal_f2 where sucursal_id = :old.sucursal_id;
        elsif substr(:old.clave, 3,2) = 'WS' then 
          delete from sucursal_f3 where sucursal_id = :old.sucursal_id;
        elsif substr(:old.clave, 3,2) = 'SO' then 
          delete from sucursal_f4 where sucursal_id = :old.sucursal_id;
        else
          raise_application_error(-20010,
            'Valor incorrecto para la clave al eliminar'
            || ' clave: ' || :old.clave
            || ' Sólo se permite: NO, EA, WS o SO');
        end if;
      else
        raise_application_error(-20010,
        'Valor incorrecto para el campo es_taller o es_venta o clave al eliminar'
        || ' es_taller: ' || :old.es_taller
        || ' es_venta: ' || :old.es_venta
        || ' Sólo se permite: 11, 10 o 01.'
        || ' Sólo se permite: NO, EA, WS o SO.');
      end if;
  end case;
end;
/