-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Trigger para operaciones DML en SERVICIO LAPTOP CRV-S2

create or replace trigger t_dml_servicio_laptop
instead of insert or update or delete on servicio_laptop
declare
    v_count number;
begin
  case
    when inserting then
      select count(*) into v_count
      from sucursal_taller_f4
      where sucursal_id = :new.sucursal_id;
      
      if v_count > 0 then
        if :new.factura is null then
          insert into servicio_laptop_f4(num_servicio, laptop_id, importe, diagnostico, sucursal_id)
          values(:new.num_servicio, :new.laptop_id, :new.importe, :new.diagnostico, :new.sucursal_id);
        else
          insert into servicio_laptop_f4(num_servicio, laptop_id, importe, diagnostico, factura, sucursal_id)
          values(:new.num_servicio, :new.laptop_id, :new.importe, :new.diagnostico, :new.factura, :new.sucursal_id);
        end if;

      else
        select count(*) into v_count
        from sucursal_taller_f2
        where sucursal_id = :new.sucursal_id;

        if v_count > 0 then
          if :new.factura is null then
            insert into servicio_laptop_f2(num_servicio, laptop_id, importe, diagnostico, sucursal_id)
            values(:new.num_servicio, :new.laptop_id, :new.importe, :new.diagnostico, :new.sucursal_id);
          else
            insert into ti_servicio_laptop_f2(num_servicio, laptop_id, importe, diagnostico, factura, sucursal_id)
            values(:new.num_servicio, :new.laptop_id, :new.importe, :new.diagnostico, :new.factura, :new.sucursal_id);

            insert into servicio_laptop_f2
              select num_servicio, laptop_id, importe, diagnostico, factura, sucursal_id
              from ti_servicio_laptop_f2
              where num_servicio = :new.num_servicio
              and laptop_id = :new.laptop_id;
          end if;
        else 
          select count(*) into v_count
          from sucursal_taller_f3
          where sucursal_id = :new.sucursal_id;

          if v_count > 0 then
            if :new.factura is null then
              insert into servicio_laptop_f3(num_servicio, laptop_id, importe, diagnostico, sucursal_id)
              values(:new.num_servicio, :new.laptop_id, :new.importe, :new.diagnostico, :new.sucursal_id);
            else
              insert into ti_servicio_laptop_f3(num_servicio, laptop_id, importe, diagnostico, factura, sucursal_id)
              values(:new.num_servicio, :new.laptop_id, :new.importe, :new.diagnostico, :new.factura, :new.sucursal_id);

              insert into servicio_laptop_f3
                select num_servicio, laptop_id, importe, diagnostico, factura, sucursal_id
                from ti_servicio_laptop_f3
                where num_servicio = :new.num_servicio
                and laptop_id = :new.laptop_id;
            end if;

          else
            select count(*) into v_count
            from sucursal_taller_f1
            where sucursal_id = :new.sucursal_id;

            if v_count > 0 then
              if :new.factura is null then
                insert into servicio_laptop_f1(num_servicio, laptop_id, importe, diagnostico, sucursal_id)
                values(:new.num_servicio, :new.laptop_id, :new.importe, :new.diagnostico, :new.sucursal_id);
              else
                insert into ti_servicio_laptop_f1(num_servicio, laptop_id, importe, diagnostico, factura, sucursal_id)
                values(:new.num_servicio, :new.laptop_id, :new.importe, :new.diagnostico, :new.factura, :new.sucursal_id);

                insert into servicio_laptop_f1
                  select num_servicio, laptop_id, importe, diagnostico, factura, sucursal_id
                  from ti_servicio_laptop_f1
                  where num_servicio = :new.num_servicio
                  and laptop_id = :new.laptop_id;
              end if;
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
        from sucursal_taller_f4
        where sucursal_id = :new.sucursal_id;

        if v_count > 0 then
          delete from servicio_laptop_f4
          where num_servicio = :old.num_servicio 
          and laptop_id = :old.laptop_id;
          
        else 
          select count(*) into v_count
          from sucursal_taller_f2
          where sucursal_id = :new.sucursal_id;
          
          if v_count > 0 then
            delete from servicio_laptop_f2 
            where num_servicio = :old.num_servicio 
            and laptop_id = :old.laptop_id;
          
          else
            select count(*) into v_count
            from sucursal_taller_f3
            where sucursal_id = :new.sucursal_id;
          
            if v_count > 0 then
              delete from servicio_laptop_f3 
              where num_servicio = :old.num_servicio 
              and laptop_id = :old.laptop_id;
            else
              select count(*) into v_count
              from sucursal_taller_f1
              where sucursal_id = :new.sucursal_id;
            
              if v_count > 0 then
                delete from servicio_laptop_f1
                where num_servicio = :old.num_servicio 
                and laptop_id = :old.laptop_id;
              else
                raise_application_error(-20020,
                  'Error de integridad para el campo sucursal_id : '
                  ||  :new.sucursal_id
                  || ' No se encontró el registro padre en ningún fragmento.');
              end if;
            end if;
          end if;
        end if;
  end case;
end;
/