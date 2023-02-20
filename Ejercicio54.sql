 if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  seccion varchar(20),
  fechaingreso datetime,
  fechanacimiento datetime,
  hijos tinyint,
  sueldo decimal(6,2)
 );

 if object_id ('RG_documento_patron') is not null
   drop rule RG_documento_patron;
 if object_id ('RG_empleados_seccion') is not null
   drop rule RG_empleados_seccion;
 if object_id ('RG_empleados_fechaingreso') is not null
   drop rule RG_empleados_fechaingreso;
 if object_id ('RG_hijos') is not null
   drop rule RG_hijos;
 if object_id ('RG_empleados_sueldo') is not null
   drop rule RG_empleados_sueldo;
 if object_id ('RG_empleados_sueldo2') is not null
   drop rule RG_empleados_sueldo2;

 insert into empleados 
   values('22222222','Ana Acosta','Contaduria','1990-10-10','1972-10-10',2,700);
 insert into empleados 
   values('23333333','Carlos Costa','Contaduria','1990-12-10','1972-05-04',0,750);
 insert into empleados 
   values('24444444','Daniel Duarte','Sistemas','1995-05-05','1975-10-06',1,880);
 insert into empleados 
   values('25555555','Fabiola Fuentes','Secretaria','1998-02-25','1978-02-08',3,550);
 insert into empleados 
   values('26666666','Gaston Garcia','Secretaria','1999-05-08','1981-01-01',3,670);
 insert into empleados 
   values('27777777','Ines Irala','Gerencia','2000-04-10','1985-12-12',0,6000);

 create rule RG_documento_patron
 as @documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]';

 exec sp_help;

 sp_helpconstraint empleados;

 insert into empleados values('ab888888','Juan Juarez','Secretaria','2001-04-11','1986-11-12',0,600);

 exec sp_bindrule RG_documento_patron, 'empleados.documento';

 exec sp_helpconstraint empleados;

 create rule RG_empleados_seccion
 as @seccion in ('Secretaria','Contaduria','Sistemas','Gerencia');

 exec sp_bindrule RG_empleados_seccion, 'empleados.seccion';

 create rule RG_empleados_fechaingreso
 as @fecha <= getdate();

 exec sp_bindrule RG_empleados_fechaingreso, 'empleados.fechaingreso';
 exec sp_bindrule RG_empleados_fechaingreso, 'empleados.fechanacimiento';

 create rule RG_hijos
 as @hijos between 0 and 20;

 exec sp_bindrule RG_hijos, 'empleados.hijos';

 create rule RG_empleados_sueldo
 as @sueldo>0 and @sueldo<= 5000;

 exec sp_bindrule RG_empleados_sueldo, 'empleados.sueldo';

 create rule RG_empleados_sueldo2
 as @sueldo>0 and @sueldo<= 7000;

 exec sp_bindrule RG_empleados_sueldo2, 'empleados.sueldo';

 insert into empleados values('29999999','Luis Lopez','Secretaria','2002-03-03','1990-09-09',0,6000);

 exec sp_help;

 exec sp_helpconstraint empleados;
