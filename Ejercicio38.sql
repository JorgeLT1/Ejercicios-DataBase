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
  values('El aleph','Borges','Planeta',35,null);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Planeta',40,200);
 insert into libros
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',18,null);
 insert into libros
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',56,120);
 insert into libros
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',42,80);
 insert into libros
  values('PHP de la A a la Z',null,null,110,0);
 insert into libros
  values('Uno','Richard Bach','Planeta',25,null);

 select editorial, count(*) from libros
  group by editorial
  having count(*)>2;

 select editorial, avg(precio) from libros
  group by editorial
  having avg(precio)>25;

 select editorial, count(*) from libros
  where precio is not null
  group by editorial
  having editorial<>'Planeta';

 select editorial, avg(precio) from libros
  group by editorial
  having count(*) > 2; 

 select editorial, max(precio) as 'mayor'
  from libros
  group by editorial
  having max(precio)<100 and
  max(precio)>30
  order by editorial; 
