 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity(100,2),
  titulo varchar(20),
  autor varchar(30),
  precio float
 );

 insert into libros (titulo,autor,precio)
  values('El aleph','Borges',23);
 insert into libros (titulo,autor,precio)
  values('Uno','Richard Bach',18);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',45.60);

 select * from libros;

select ident_seed('libros');

 insert into libros (codigo,titulo,autor,precio)
  values(106,'Martin Fierro','Jose Hernandez',25);

 set identity_insert libros on;

 insert into libros (codigo,titulo,autor)
 values (100,'Matematica estas ahi','Paenza');

 insert into libros (codigo,titulo,autor)
 values (1,'Ilusiones','Richard Bach');

 insert into libros (titulo,autor)
 values ('Uno','Richard Bach');

 set identity_insert libros off;

 insert into libros (codigo,titulo,autor)
 values (300,'Uno','Richard Bach');
