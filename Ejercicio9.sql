 if object_id('usuarios') is not null
  drop table usuarios;

 create table usuarios(
  nombre varchar(20),
  clave varchar(10)
 );

 insert into usuarios (nombre,clave)
  values ('Marcelo','River');
 insert into usuarios (nombre,clave)
  values ('Susana','chapita');
 insert into usuarios (nombre,clave)
  values ('Carlosfuentes','Boca');
 insert into usuarios (nombre,clave)
  values ('Federicolopez','Boca');

 update usuarios set clave='RealMadrid';

 select * from usuarios;

 update usuarios set clave='Boca'
  where nombre='Federicolopez';

 select * from usuarios;

 update usuarios set clave='payaso'
  where nombre='JuanaJuarez';

 select * from usuarios;

 update usuarios set nombre='Marceloduarte', clave='Marce'
  where nombre='Marcelo';

 select * from usuarios;
