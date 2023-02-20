 if object_id ('empleados') is not null
  drop table empleados;

 if object_id ('RG_sueldo_100a1000') is not null
   drop rule RG_sueldo_100a1000;

 create table empleados(
  documento char(8),
  nombre varchar(30) not null,
  seccion varchar(20),
  sueldo decimal(6,2),
  primary key(documento)
 );

 create rule RG_sueldo_100a1000
 as @sueldo between 100 and 1000;

 exec sp_bindrule RG_sueldo_100a1000, 'empleados.sueldo';

 exec sp_helpconstraint empleados;

 exec sp_unbindrule 'empleados.sueldo';

 insert into empleados values ('30111222','Pedro Torres','Contaduria',1200);

 exec sp_helpconstraint empleados;

 exec sp_help;

 drop rule RG_sueldo_100a1000;
