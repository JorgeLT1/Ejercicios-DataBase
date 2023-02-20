 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2)
 );

 alter table libros
 add constraint PK_libros_codigo
 primary key(codigo);

 alter table libros
 add constraint CK_libros_precio
 check (precio>=0);

 alter table libros
 add constraint DF_libros_autor
 default 'Desconocido'
 for autor;

 alter table libros
 add constraint DF_libros_precio
 default 0
 for precio;

 exec sp_helpconstraint libros;

 alter table libros
  drop DF_libros_autor;

 alter table libros
  drop PK_libros_codigo;

 exec sp_helpconstraint libros;
