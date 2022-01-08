-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Trigger para operaciones DML en LAPTOP INVENTARIO

create or replace trigger t_dml_laptop_inventario
instead of insert or update or delete on laptop_inventario
declare
 
begin
  case
    when inserting then
      if :new.sucursal_id is not null then
        insert into laptop_inventario_f1(laptop_id, fecha_status,sucursal_id,status_laptop_id)
        values(:new.laptop_id, :new.fecha_status, :new.sucursal_id, :new.status_laptop_id);
      else
        insert into laptop_inventario_f1(laptop_id, fecha_status,status_laptop_id)
        values(:new.laptop_id, :new.fecha_status, :new.status_laptop_id);
      end if;

      if :new.rfc_cliente is not null and :new.num_tarjeta is not null then
        insert into laptop_inventario_f2(laptop_id, rfc_cliente, num_tarjeta)
        values(:new.laptop_id, :new.rfc_cliente, :new.num_tarjeta);
      elsif :new.rfc_cliente is null and :new.num_tarjeta is not null then
        insert into laptop_inventario_f2(laptop_id, num_tarjeta)
        values(:new.laptop_id, :new.num_tarjeta);
      elsif :new.rfc_cliente is not null and :new.num_tarjeta is null then
        insert into laptop_inventario_f2(laptop_id, rfc_cliente)
        values(:new.laptop_id, :new.rfc_cliente);
      else
        insert into laptop_inventario_f2(laptop_id)
        values(:new.laptop_id);
      end if; 

    when updating then
      raise_application_error(-20030, 
        'Las operaciones update no se han sido implementadas');
    
    when deleting then
      delete from laptop_inventario_f1 where laptop_id = :old.laptop_id;
      delete from laptop_inventario_f2 where laptop_id = :old.laptop_id;
  end case;
end;
/