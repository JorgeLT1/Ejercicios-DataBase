 if object_id('usuarios') is not null
  drop table usuarios;

 create table usuarios(
  nombre varchar(30),
  clave varchar(10)
 );

 insert into usuarios (nombre,clave)
  values ('Marcelo','River');
 insert into usuarios (nombre,clave)
  values ('Susana','chapita');
 insert into usuarios (nombre,clave)
  values ('CarlosFuentes','Boca');
 insert into usuarios (nombre,clave)
  values ('FedericoLopez','Boca');

 select * from usuarios;

 delete from usuarios
 where nombre='Marcelo';

 select * from usuarios;

 delete from usuarios
 where nombre='Marcelo';

 select * from usuarios;

 delete from usuarios
  where clave='Boca';

 select * from usuarios;

 delete from usuarios;

 select * from usuarios;