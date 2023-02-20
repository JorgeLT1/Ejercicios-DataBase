 if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Antología poética','J. L. Borges','Planeta',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',default,40);
 insert into libros
  values('Aprenda PHP','Mario Molina','Nuevo siglo',56.50);

 select * from libros
  where autor like '%Borges%';

 select * from libros
  where titulo like 'M%';

 select * from libros
  where titulo not like 'M%';

 select * from libros
  where autor like '%Carrol_';

 select titulo,autor,editorial
  from libros
  where editorial like '[P-S]%';

 select titulo,autor,editorial
  from libros
  where editorial like '[^PN]%';

 select titulo,precio from libros
  where precio like '1_.%';

 select titulo,precio from libros
  where precio like '%.00';
