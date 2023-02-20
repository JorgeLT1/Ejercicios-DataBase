 if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Antología poética','Borges','Planeta',39.50);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Planeta',50.50);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.90);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',25.90);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Paidos',16.80);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',19.50);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',18.40);

 select * from libros
  where (autor='Borges') and
  (precio<=20);

 select * from libros
  where autor='Borges' or
  editorial='Planeta';

 select * from libros
  where not editorial='Planeta';

 select * from libros
  where (autor='Borges') or
  (editorial='Paidos' and precio<20);

 select * from libros
  where (autor='Borges' or editorial='Paidos') and
  (precio<20);
