 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  editorial varchar(15),
  precio decimal(6,2)
 );

 insert into libros (titulo,editorial) values('Martin Fierro','Emece');
 insert into libros (titulo,editorial) values('Aprenda PHP','Emece');

 exec sp_helpconstraint libros;

 drop table libros;
 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2)
 );

 alter table libros
   add constraint DF_libros_autor
   default 'Desconocido'
   for autor;

 exec sp_helpconstraint libros;

 insert into libros (titulo,editorial) values('Martin Fierro','Emece');
 insert into libros default values;

 select * from libros;

 alter table libros
   add constraint DF_libros_precio
   default 0
   for precio;

 exec sp_helpconstraint libros;