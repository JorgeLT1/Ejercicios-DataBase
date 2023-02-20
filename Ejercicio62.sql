 if object_id('libros') is not null
  drop table libros;
 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 create unique clustered index I_libros_codigo
 on libros(codigo);

 create nonclustered index I_libros_titulo
 on libros(titulo);

 exec sp_helpindex libros;

 alter table libros
  add constraint PK_libros_codigo
  primary key nonclustered (codigo);

 exec sp_helpindex libros;

 exec sp_helpconstraint libros;

 create index I_libros_autoreditorial
 on libros(autor,editorial);

 select name from sysindexes;

 select name from sysindexes
  where name like 'I_%';
