 if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  sexo char(1),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20),
  primary key (documento)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','m','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','f','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','m','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','m','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez','f','c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres','m','s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez','f','c','Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia','m','c','Administracion');
 insert into empleados
  values ('30000000','Ines Torres','f','c','Administracion');
 insert into empleados
  values ('11111111','Juan Garcia','m','v','Administracion');
 insert into empleados
  values ('12222222','Luisa Perez','f','v','Administracion');
 insert into empleados
  values ('31111111','Marcela Garcia','f','s','Administracion');
 insert into empleados
  values ('32222222','Nestor Fuentes','m','c','Sistemas');
 insert into empleados
  values ('33333333','Oscar Garcia','m','s','Sistemas');
 insert into empleados
  values ('34444444','Patricia Juarez','f','c','Administracion');
 insert into empleados
  values ('35555555','Roberto Torres','m','c','Sistemas');
 insert into empleados
  values ('36666666','Susana Torres','f','c','Administracion');

 select sexo,estadocivil,seccion,
  count(*) from empleados
  group by sexo,estadocivil,seccion
  with rollup;

 select sexo,estadocivil,seccion,
  count(*) from empleados
  group by sexo,estadocivil,seccion
  with cube;