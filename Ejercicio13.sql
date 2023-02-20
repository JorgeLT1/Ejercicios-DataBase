 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio float
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',23);

 select * from libros;

 insert into libros (titulo,autor,editorial,precio)
  values('Uno','Richard Bach','Planeta',18);
 insert into libros (titulo,autor,editorial,precio)
  values('Aprenda PHP','Mario Molina','Siglo XXI',45.60);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de maravillas','Lewis Carroll','Paidos',15.50);

 select * from libros;

 insert into libros (codigo,titulo,autor,editorial,precio)
  values(5,'Martin Fierro','Jose Hernandez','Paidos',25);

 update libros set codigo=9
  where titulo='Uno';

 exec sp_columns libros;

 delete from libros
  where autor='Lewis Carroll';

  insert into libros (titulo, autor, editorial, precio)
  values('Martin Fierro','Jose Hernandez','Paidos',25); 

  select * from libros;