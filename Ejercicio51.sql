 if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  legajo char(4) not null,
  apellido varchar(20),
  nombre varchar(20),
  documento char(8)
 );

 alter table alumnos
 add constraint PK_alumnos_legajo
 primary key(legajo);

 alter table alumnos
 add constraint UQ_alumnos_documento
 unique (documento);

 insert into alumnos values('A111','Lopez','Ana','22222222');
 insert into alumnos values('A123','Garcia','Maria','23333333');

 exec sp_helpconstraint alumnos;