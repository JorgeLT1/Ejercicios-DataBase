 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15),
  precio float
 );

 insert into libros (titulo,autor,editorial,precio)
  values ('El aleph','Borges','Emece',25.60);
 insert into libros (titulo,autor,editorial,precio)
  values ('Uno','Richard Bach','Planeta',18);

 select * from libros;

 truncate table libros;

 insert into libros (titulo,autor,editorial,precio)
  values ('El aleph','Borges','Emece',25.60);
 insert into libros (titulo,autor,editorial,precio)
  values ('Uno','Richard Bach','Planeta',18);

 select * from libros;

 delete from libros;

 insert into libros (titulo,autor,editorial,precio)
  values ('El aleph','Borges','Emece',25.60);
 insert into libros (titulo,autor,editorial,precio)
  values ('Uno','Richard Bach','Planeta',18);

 select * from libros;