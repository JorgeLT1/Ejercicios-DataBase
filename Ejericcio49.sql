 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2)
 );

 insert into libros values ('Uno','Bach','Planeta',22);
 insert into libros values ('El quijote','Cervantes','Emece',15);
 insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI',-40);

 alter table libros
 with nocheck
 add constraint CK_libros_precio_positivo
 check (precio>=0);

 alter table libros
  nocheck constraint CK_libros_precio_positivo;

 insert into libros values('Java en 10 minutos',default,'Siglo XXI',-1);

 exec sp_helpconstraint libros;

 alter table libros
  check constraint CK_libros_precio_positivo;