 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(20),
  editorial varchar(20)
 );

 insert into libros values ('Uno','Richard Bach','Planeta');
 insert into libros values ('El aleph','Borges','Emece');
 insert into libros values ('Alicia en el pais...','Carroll','Planeta');
 insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI');
 insert into libros values ('Java en 10 minutos','Mario Molina','Siglo XXI');
 insert into libros values ('Java desde cero','Mario Molina','Emece');
 insert into libros values ('Ilusiones','Richard Bach','Planeta');

 select top 2 * from libros;

 select top 3 titulo,autor 
  from libros
  order by autor;

 select top 3 with ties titulo,autor 
  from libros
  order by autor;

 select top 50 percent
  * from libros
  order by autor;