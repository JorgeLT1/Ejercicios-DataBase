 if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  legajo char(4) not null,
  apellido varchar(20),
  nombre varchar(20),
  documento char(8),
  domicilio varchar(30),
  ciudad varchar(30),
  notafinal decimal(4,2)
 );

 alter table alumnos
 add constraint PK_alumnos_legajo
 primary key(legajo);

 alter table alumnos
 add constraint UQ_alumnos_documento
 unique (documento);

 alter table alumnos
 add constraint CK_alumnos_nota
 check (notafinal>=0 and notafinal<=10);

 alter table alumnos
 add constraint DF_alumnos_ciudad
 default 'Cordoba'
 for ciudad;

 exec sp_helpconstraint alumnos;

 alter table alumnos
  nocheck constraint CK_alumnos_nota;

 exec sp_helpconstraint alumnos;
