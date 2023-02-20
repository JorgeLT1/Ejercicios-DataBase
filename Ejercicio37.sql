 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Planeta',15,null);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',18.20,null);
 insert into libros
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',22.50,200);
 insert into libros
  values('PHP de la A a la Z',null,null,null,0);

 select editorial, count(*)
  from libros
  group by editorial;

 select editorial, count(precio)
  from libros
  group by editorial;

 select editorial, sum(precio)
  from libros
  group by editorial;

 select editorial,
  max(precio) as mayor,
  min(precio) as menor
  from libros
  group by editorial;

 select editorial, avg(precio)
  from libros
  group by editorial;

 select editorial, count(*)
  from libros
  where precio<30
  group by editorial;

 select editorial, count(*)
  from libros
  where precio<30
  group by all editorial;
