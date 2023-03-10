 if object_id('libros') is not null
  drop table libros;

 create table libros(
  titulo varchar(30) not null,
  autor varchar(30) not null,
  editorial varchar(15) null,
  precio float
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',null);

 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais','Lewis Carroll',null,0);

 insert into libros (titulo,autor,editorial,precio)
  values(null,'Borges','Siglo XXI',25);

 exec sp_columns libros;

 insert into libros (titulo,autor,editorial,precio)
  values('Uno','Richard Bach','',18.50);

 insert into libros (titulo,autor,editorial,precio)
  values('','Richard Bach','Planeta',22);

 select * from libros;

 select * from libros
  where precio is null;

 select * from libros
  where precio=0;

 select * from libros
  where editorial is null;

 select * from libros
  where editorial=''; 

 select * from libros
  where precio is not null;
