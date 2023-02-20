 if object_id('libros') is not null
  drop table libros;

 create table libros(
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio float,
  cantidad integer
 );

 exec sp_columns libros;

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('El aleph','Borges','Emece',25.50,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Alicia en el pais de las maravillas','Lewis Carroll','Atlantida',10,200);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Matematica estas ahi','Paenza','Siglo XXI',18.8,200);

 select * from libros;

 select titulo,autor,editorial from libros; 

 select titulo,precio from libros;

 select editorial,cantidad from libros; 
