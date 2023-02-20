 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',3,50);
 insert into libros values('Uno','Richard Bach',3,15);
 insert into libros values('Java en 10 minutos',default,4,45);

 select nombre as editorial,
  count(*) as cantidad
  from editoriales as e
  join libros as l
  on codigoeditorial=e.codigo
  group by e.nombre;

 select nombre as editorial,
  max(precio) as 'mayor precio'
  from editoriales as e
  left join libros as l
  on codigoeditorial=e.codigo
  group by nombre;