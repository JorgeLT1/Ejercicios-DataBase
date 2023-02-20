 if object_id('comidas') is not null
  drop table comidas;

 create table comidas(
  codigo int identity,
  nombre varchar(30),
  precio decimal(4,2),
  rubro char(6),-- 'plato'=plato principal', 'postre'=postre
  primary key(codigo)
 );

 insert into comidas values('ravioles',5,'plato');
 insert into comidas values('tallarines',4,'plato');
 insert into comidas values('milanesa',7,'plato');
 insert into comidas values('cuarto de pollo',6,'plato');
 insert into comidas values('flan',2.5,'postre');
 insert into comidas values('porcion torta',3.5,'postre');

 select c1.nombre as 'plato principal',
  c2.nombre as postre,
  c1.precio+c2.precio as total
  from comidas as c1
  cross join comidas as c2;

 select c1.nombre as 'plato principal',
  c2.nombre as postre,
  c1.precio+c2.precio as total
  from comidas as c1
  cross join comidas as c2
  where c1.rubro='plato' and
  c2.rubro='postre';

 select c1.nombre as 'plato principal',
  c2.nombre as postre,
  c1.precio+c2.precio as total
  from comidas as c1
  join comidas as c2
  on c1.codigo<>c2.codigo
  where c1.rubro='plato' and
  c2.rubro='postre';
