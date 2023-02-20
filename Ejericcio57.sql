 if object_id ('empleados') is not null
  drop table empleados;

 if object_id ('VP_cero') is not null
   drop default VP_cero;
 if object_id ('VP_100') is not null
   drop default VP_100;
 if object_id ('VP_datodesconocido') is not null
   drop default VP_datodesconocido;
 if object_id ('VP_telefono') is not null
   drop default VP_telefono;

 create table empleados(
  nombre varchar(30),
  domicilio varchar(30),
  barrio varchar(15),
  telefono char(14),
  sueldo decimal(6,2)
 );

 insert into empleados default values;
 select * from empleados;

 create default VP_datodesconocido
  as 'Desconocido';

 exec sp_bindefault VP_datodesconocido, 'empleados.domicilio';

 exec sp_bindefault VP_datodesconocido, 'empleados.barrio';

 insert into empleados default values;
 select * from empleados;

 create default VP_cero
  as 0;

 exec sp_bindefault VP_cero, 'empleados.sueldo';

 insert into empleados default values;
 select * from empleados;

 create default VP_100
  as 100;

 exec sp_bindefault VP_100, 'empleados.sueldo';

 insert into empleados default values;
 select * from empleados;

 exec sp_helpconstraint empleados;

 exec sp_help;

 create default VP_telefono
 as '(0000)0-000000';

 exec sp_bindefault VP_telefono,'empleados.telefono';

 insert into empleados default values;
 select * from empleados;

 exec sp_helpconstraint empleados;
