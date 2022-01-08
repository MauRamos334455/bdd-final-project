-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Trigger para operaciones DML en SUCURSAL VENTA CKV-S2

create or replace trigger t_dml_sucursal_venta
instead of insert or update or delete on sucursal_venta
declare
    v_count number;
begin
  case
    when inserting then
      select count(*) into v_count
      from sucursal_f2
      where sucursal_id = :new.sucursal_id;
      
      if v_count > 0 then
        insert into sucursal_venta_f2(sucursal_id, hora_apertura, hora_cierre)
        values(:new.sucursal_id, :new.hora_apertura, :new.hora_cierre);

      else
        select count(*) into v_count
        from sucursal_f1
        where sucursal_id = :new.sucursal_id;

        if v_count > 0 then
          insert into sucursal_venta_f1(sucursal_id, hora_apertura, hora_cierre)
          values(:new.sucursal_id, :new.hora_apertura, :new.hora_cierre);

        else 
          select count(*) into v_count
          from sucursal_f3
          where sucursal_id = :new.sucursal_id;

          if v_count > 0 then
            insert into sucursal_venta_f3(sucursal_id, hora_apertura, hora_cierre)
            values(:new.sucursal_id, :new.hora_apertura, :new.hora_cierre);

          else
            select count(*) into v_count
            from sucursal_f4
            where sucursal_id = :new.sucursal_id;

            if v_count > 0 then
              insert into sucursal_venta_f4(sucursal_id, hora_apertura, hora_cierre)
              values(:new.sucursal_id, :new.hora_apertura, :new.hora_cierre);

            else
              raise_application_error(-20020,
                'Error de integridad para el campo sucursal_id : '
                ||  :new.sucursal_id
                || ' No se encontró el registro padre en ningún fragmento.');
            end if;
          end if;
        end if;
      end if;

      when updating then 
        raise_application_error(-20030, 'Las operaciones update no han sido implementadas');
      
      when deleting then 
        select count(*) into v_count
        from sucursal_f2
        where sucursal_id = :old.sucursal_id;

        if v_count > 0 then
          delete from sucursal_venta_f2 where sucursal_id = :old.sucursal_id;
          
        else 
          select count(*) into v_count
          from sucursal_f1
          where sucursal_id = :old.sucursal_id;
          
          if v_count > 0 then
            delete from sucursal_venta_f1 where sucursal_id = :old.sucursal_id;
          
          else
            select count(*) into v_count
            from sucursal_f3
            where sucursal_id = :old.sucursal_id;
          
            if v_count > 0 then
              delete from sucursal_venta_f3 where sucursal_id = :old.sucursal_id;
            else
              select count(*) into v_count
              from sucursal_f4
              where sucursal_id = :old.sucursal_id;
            
              if v_count > 0 then
                delete from sucursal_venta_f4 where sucursal_id = :old.sucursal_id;
              else
                raise_application_error(-20020,
                  'Error de integridad para el campo sucursal_id : '
                  ||  :old.sucursal_id
                  || ' No se encontró el registro padre en ningún fragmento.');
              end if;
            end if;
          end if;
        end if;
  end case;
end;
/