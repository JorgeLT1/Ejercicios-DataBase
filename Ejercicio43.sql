 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Planeta');
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece');
 insert into libros
  values('Martin Fierro','Jose Hernandez','Planeta');
 insert into libros
  values('Antologia poetica','Borges','Planeta');
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece');
 insert into libros
  values('Aprenda PHP','Lopez','Emece');
 insert into libros
  values('Manual de PHP', 'J. Paez', null);
 insert into libros
  values('Cervantes y el quijote',null,'Paidos');
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling','Emece');
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece');
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos');
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta');
 insert into libros
  values('PHP de la A a la Z',null,null);
 insert into libros
  values('Uno','Richard Bach','Planeta');

 select distinct autor from libros;

 select distinct autor from libros
  where autor is not null;

 select count(distinct autor)
  from libros;

 select distinct editorial from libros;

 select count(distinct editorial) from libros;

 select distinct autor from libros
  where editorial='Planeta';

 select editorial,count(distinct autor)
  from libros
  group by editorial;

 select distinct titulo,editorial
  from libros
  order by titulo;