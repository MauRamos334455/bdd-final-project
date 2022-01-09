-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 07/01/2021
-- @Descripción: Trigger para operaciones DML en HISTORICO STATUS LAPTOP

create or replace trigger t_dml_historico_status_laptop
instead of insert or update or delete on historico_status_laptop
declare
 
begin
  case
    when inserting then
    if :new.fecha_status > to_date('2009-12-31','yyyy-mm-dd') then 
        insert into historico_status_laptop_f1(historico_status_laptop_id, fecha_status,status_laptop_id,laptop_id)
        values(:new.historico_status_laptop_id, :new.fecha_status, :new.status_laptop_id, :new.laptop_id);
    elsif :new.fecha_status <= to_date('2009-12-31','yyyy-mm-dd') then 
        insert into historico_status_laptop_f2(historico_status_laptop_id, fecha_status,status_laptop_id,laptop_id)
        values(:new.historico_status_laptop_id, :new.fecha_status, :new.status_laptop_id, :new.laptop_id);
    else
        raise_application_error(-20010,
          'Formato invalido para la fecha status '
          || 'fecha_status: ' || :new.fecha_status);
    end if;

    when updating then
      raise_application_error(-20030, 
        'Las operaciones update no han sido implementadas');
         
    when deleting then
    if :old.fecha_status > to_date('2009-12-31','yyyy-mm-dd') then 
        delete from historico_status_laptop_f1 where historico_status_laptop_id = :old.historico_status_laptop_id;
    elsif :old.fecha_status <= to_date('2009-12-31','yyyy-mm-dd') then 
        delete from historico_status_laptop_f2 where historico_status_laptop_id = :old.historico_status_laptop_id;
    else
        raise_application_error(-20010,
          'Valor incorrecto para la fecha status');
    end if;
  end case;
end;
/