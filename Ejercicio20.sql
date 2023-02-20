 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15)
 );

 insert into libros
  values ('Uno','Richard Bach','Planeta');

 insert into libros (titulo, autor)
  values ('El aleph','Borges');

 insert into libros (autor,editorial)
  values ('Lewis Carroll','Planeta');

 select * from libros;
