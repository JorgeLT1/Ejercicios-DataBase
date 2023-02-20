 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  primary key (codigo)
 );

 exec sp_helpconstraint libros;

 drop table libros;
 create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 alter table libros
 add constraint PK_libros_codigo
 primary key(codigo);

 exec sp_helpconstraint libros;
