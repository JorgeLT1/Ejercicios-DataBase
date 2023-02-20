 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) not null default 'Desconocido', 
  editorial varchar(20),
  precio decimal(5,2),
  cantidad tinyint default 0
 );

 insert into libros (titulo,editorial,precio)
  values('Java en 10 minutos','Paidos',50.40);

 select * from libros;

 insert into libros (titulo,editorial)
  values('Aprenda PHP','Siglo XXI');
 select * from libros;

 exec sp_columns libros;

 insert into libros (titulo,autor,precio,cantidad)
  values ('El gato con botas',default,default,100);
 select *from libros;

 insert into libros default values;
 select * from libros;

 insert into libros (titulo,autor,cantidad)
  values ('Alicia en el pais de las maravillas','Lewis Carroll',null);