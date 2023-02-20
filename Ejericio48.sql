 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  preciomin decimal(5,2),
  preciomay decimal(5,2)
 );

 insert into libros values ('Uno','Bach','Planeta',22,20);
 insert into libros values ('El quijote','Cervantes','Emece',15,13);
 insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI',48,53);
 insert into libros values ('Java en 10 minutos','Garcia','Siglo XXI',35,40);

 alter table libros
   add constraint CK_libros_precios_positivo
   check (preciomin>=0 and preciomay>=0);

 update libros set preciomay=48
  where titulo='Aprenda PHP';
 
 delete from libros where titulo='Java en 10 minutos'; 

 alter table libros
   add constraint CK_libros_preciominmay
   check (preciomay<=preciomin);

 exec sp_helpconstraint libros;

 insert into libros default values;
