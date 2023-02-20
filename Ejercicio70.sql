 if object_id('comidas') is not null
  drop table comidas;
 if object_id('postres') is not null
  drop table postres;

 create table comidas(
  codigo tinyint identity,
  nombre varchar(30),
  precio decimal(4,2)
 );

 create table postres(
  codigo tinyint identity,
  nombre varchar(30),
  precio decimal(4,2)
 );

 insert into comidas values('ravioles',5);
 insert into comidas values('tallarines',4);
 insert into comidas values('milanesa',7);
 insert into comidas values('cuarto de pollo',6);

 insert into postres values('flan',2.5);
 insert into postres values('porcion torta',3.5);

 select c.nombre as 'plato principal',
  p.nombre as 'postre',
  c.precio+p.precio as 'total'
  from comidas as c
  cross join postres as p;
