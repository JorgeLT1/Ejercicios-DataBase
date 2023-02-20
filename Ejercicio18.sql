 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo smallint identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio smallmoney,
  cantidad tinyint
 );

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',25.60,260);

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',250000,100);

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Uno','Richard Bach','Planeta','a50.30',100);

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Uno','Richard Bach','Planeta',50.30,'100');

 select * from libros;