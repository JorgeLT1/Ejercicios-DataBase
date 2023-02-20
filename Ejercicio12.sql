 if object_id('usuarios') is not null
  drop table usuarios;

 create table usuarios(
  nombre varchar(20),
  clave varchar(10),
  primary key(nombre)
 );

 exec sp_columns usuarios;

 insert into usuarios (nombre, clave)
  values ('juanperez','Boca');
 insert into usuarios (nombre, clave)
  values ('raulgarcia','River');

 insert into usuarios (nombre, clave)
  values ('juanperez','payaso');

 insert into usuarios (nombre, clave)
  values (null,'payaso');

 update usuarios set nombre='juanperez'
  where nombre='raulgarcia';
