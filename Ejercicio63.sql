 if object_id('libros') is not null
  drop table libros;
 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );
 create nonclustered index I_libros_titulo
 on libros(titulo);

 exec sp_helpindex libros;

 create index I_libros_titulo
  on libros(titulo,autor)
  with drop_existing;

 exec sp_helpindex libros;

 create clustered index I_libros_titulo
  on libros(titulo,autor)
  with drop_existing;

 exec sp_helpindex libros;

 create clustered index I_libros_titulo
  on libros(titulo)
  with drop_existing;

 exec sp_helpindex libros;