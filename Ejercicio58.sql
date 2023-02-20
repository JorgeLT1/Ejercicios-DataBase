 if object_id ('empleados') is not null
  drop table empleados;

 if object_id ('VP_cero') is not null
   drop default VP_cero;
 if object_id ('VP_datodesconocido') is not null
   drop default VP_datodesconocido;

 create table empleados(
  nombre varchar(30),
  domicilio varchar(30),
  barrio varchar(15),
  sueldo decimal(6,2)
 );

 create default VP_cero
  as 0;

 exec sp_bindefault VP_cero, 'empleados.sueldo';

 create default VP_datodesconocido
  as 'Desconocido';

 exec sp_bindefault VP_datodesconocido, 'empleados.domicilio';
 exec sp_bindefault VP_datodesconocido, 'empleados.barrio';

 exec sp_helpconstraint empleados;

 exec sp_unbindefault 'empleados.barrio';

 exec sp_helpconstraint empleados;
-- exec sp_help;

 exec sp_unbindefault 'empleados.domicilio';
 drop default VP_datodesconocido;