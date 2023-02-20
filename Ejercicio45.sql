 if object_id('vehiculos') is not null
  drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime,
  horasalida datetime,
  primary key(patente,horallegada)
 );

 insert into vehiculos values('AIC124','a','8:05','12:30');
 insert into vehiculos values('CAA258','a','8:05',null);
 insert into vehiculos values('DSE367','m','8:30','18:00');
 insert into vehiculos values('FGT458','a','9:00',null);
 insert into vehiculos values('AIC124','a','16:00',null);
 insert into vehiculos values('LOI587','m','18:05','19:55');

 insert into vehiculos values('LOI587','m','18:05',null);

 insert into vehiculos values('LOI587','m','21:30',null);

 update vehiculos set horallegada='8:05'
  where patente='AIC124' and horallegada='16:00';

 insert into vehiculos values('HUO690','m',null,null);

 exec sp_columns vehiculos;

