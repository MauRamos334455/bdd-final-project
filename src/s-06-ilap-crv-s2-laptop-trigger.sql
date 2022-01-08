-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Trigger para operaciones DML en LAPTOP para LAPTOP_F5 local

create or replace trigger t_dml_laptop
instead of insert or update or delete on laptop
declare
    v_count number;
begin
  case
    when inserting then
      if substr(:new.num_serie,1,1) between 0 and 1 then
        if :new.laptop_reemplazo_id is null then 
          insert into laptop_f1(laptop_id, num_serie, cantidad_ram, 
            caracteristicas_extras, tipo_tarjeta_video_id, 
            tipo_almacenamiento_id, tipo_monitor_id, tipo_procesador_id)
          values (:new.laptop_id, :new.num_serie, :new.cantidad_ram,
            :new.caracteristicas_extra, :new.tipo_tarjeta_video_id,
            :new.tipo_almacenamiento_id, :new.tipo_monitor_id, 
            :new.tipo_procesador_id);
        else
          insert into laptop_f1(laptop_id, num_serie, cantidad_ram, 
            caracteristicas_extras, laptop_reemplazo_id, tipo_tarjeta_video_id, 
            tipo_almacenamiento_id, tipo_monitor_id, tipo_procesador_id)
          values (:new.laptop_id, :new.num_serie, :new.cantidad_ram,
            :new.caracteristicas_extra, :new.laptop_reemplazo_id,
            :new.tipo_tarjeta_video_id,:new.tipo_almacenamiento_id,
            :new.tipo_monitor_id, :new.tipo_procesador_id);
        end if;
      elsif substr(:new.num_serie,1,1) between 6 and 9 then
        if :new.laptop_reemplazo_id is null then 
          insert into laptop_f2(laptop_id, num_serie, cantidad_ram, 
            caracteristicas_extras, tipo_tarjeta_video_id, 
            tipo_almacenamiento_id, tipo_monitor_id, tipo_procesador_id)
          values (:new.laptop_id, :new.num_serie, :new.cantidad_ram,
            :new.caracteristicas_extra, :new.tipo_tarjeta_video_id,
            :new.tipo_almacenamiento_id, :new.tipo_monitor_id, 
            :new.tipo_procesador_id);
        else
          insert into laptop_f2(laptop_id, num_serie, cantidad_ram, 
            caracteristicas_extras, laptop_reemplazo_id, tipo_tarjeta_video_id, 
            tipo_almacenamiento_id, tipo_monitor_id, tipo_procesador_id)
          values (:new.laptop_id, :new.num_serie, :new.cantidad_ram,
            :new.caracteristicas_extra, :new.laptop_reemplazo_id,
            :new.tipo_tarjeta_video_id,:new.tipo_almacenamiento_id,
            :new.tipo_monitor_id, :new.tipo_procesador_id);
        end if;
      elsif substr(:new.num_serie,1,1) between 4 and 5 then
        if :new.laptop_reemplazo_id is null then 
          insert into laptop_f3(laptop_id, num_serie, cantidad_ram, 
            caracteristicas_extras, tipo_tarjeta_video_id, 
            tipo_almacenamiento_id, tipo_monitor_id, tipo_procesador_id)
          values (:new.laptop_id, :new.num_serie, :new.cantidad_ram,
            :new.caracteristicas_extra, :new.tipo_tarjeta_video_id,
            :new.tipo_almacenamiento_id, :new.tipo_monitor_id, 
            :new.tipo_procesador_id);
        else
          insert into laptop_f3(laptop_id, num_serie, cantidad_ram, 
            caracteristicas_extras, laptop_reemplazo_id, tipo_tarjeta_video_id, 
            tipo_almacenamiento_id, tipo_monitor_id, tipo_procesador_id)
          values (:new.laptop_id, :new.num_serie, :new.cantidad_ram,
            :new.caracteristicas_extra, :new.laptop_reemplazo_id,
            :new.tipo_tarjeta_video_id,:new.tipo_almacenamiento_id,
            :new.tipo_monitor_id, :new.tipo_procesador_id);
        end if;
      elsif substr(:new.num_serie,1,1) between 2 and 3 then
        if :new.laptop_reemplazo_id is null then 
          insert into laptop_f4(laptop_id, num_serie, cantidad_ram, 
            caracteristicas_extras, tipo_tarjeta_video_id, 
            tipo_almacenamiento_id, tipo_monitor_id, tipo_procesador_id)
          values (:new.laptop_id, :new.num_serie, :new.cantidad_ram,
            :new.caracteristicas_extra, :new.tipo_tarjeta_video_id,
            :new.tipo_almacenamiento_id, :new.tipo_monitor_id, 
            :new.tipo_procesador_id);
        else
          insert into laptop_f4(laptop_id, num_serie, cantidad_ram, 
            caracteristicas_extras, laptop_reemplazo_id, tipo_tarjeta_video_id, 
            tipo_almacenamiento_id, tipo_monitor_id, tipo_procesador_id)
          values (:new.laptop_id, :new.num_serie, :new.cantidad_ram,
            :new.caracteristicas_extra, :new.laptop_reemplazo_id,
            :new.tipo_tarjeta_video_id,:new.tipo_almacenamiento_id,
            :new.tipo_monitor_id, :new.tipo_procesador_id);
        end if;
      else 
        raise_application_error(-20010,
          'Valor incorrecto para el numero de serie'
          || 'num_serie: ' || :new.num_serie
          || 'Sólo se permite: 0,1,2,3,4,5,6,7,8 o 9');
      end if;

      insert into laptop_f5(laptop_id, foto)
      values (:new.laptop_id, :new.foto);

      when updating then 
        raise_application_error(-20030, 'Las operaciones update no han sido implementadas');
      
      when deleting then 
        if substr(:old.num_serie,1,1) between 0 and 1 then
          delete from laptop_f1 where laptop_id = :old.laptop_id;
        elsif substr(:old.num_serie,1,1) between 6 and 9 then
          delete from laptop_f2 where laptop_id = :old.laptop_id;
        elsif substr(:old.num_serie,1,1) between 4 and 5 then
          delete from laptop_f3 where laptop_id = :old.laptop_id;
        elsif substr(:old.num_serie,1,1) between 2 and 3 then
          delete from laptop_f4 where laptop_id = :old.laptop_id;
        else 
          raise_application_error(-20010,
            'Valor incorrecto para el numero de serie'
            || 'num_serie: ' || :new.num_serie
            || 'Sólo se permite: 0,1,2,3,4,5,6,7,8 o 9');
        end if;
        
        delete from laptop_f5 where laptop_id = :old.laptop_id;
  end case;
end;
/