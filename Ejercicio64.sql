 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 create index I_libros_titulo
  on libros(titulo);

 exec sp_helpindex libros;

 drop index libros.I_libros_titulo;

 exec sp_helpindex libros;

 if exists (select name from sysindexes
  where name = 'I_libros_titulo')
   drop index libros.I_libros_titulo;

