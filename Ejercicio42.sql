 if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  ciudad varchar(20),
  provincia varchar(20),
  mail varchar(30),
  montocompra decimal(6,2)
 );

 insert into visitantes
  values ('Susana Molina',28,'Cordoba','Cordoba','susanamolina@gmail.com',50); 
 insert into visitantes
  values ('Marcela Mercado',36,'Carlos Paz','Cordoba',null,20);
 insert into visitantes
  values ('Alberto Garcia',35,'La Falda','Cordoba','albertgomgarcia@hotmail.com',30); 
 insert into visitantes
  values ('Teresa Garcia',33,'Alta Gracia','Cordoba',null,120);
 insert into visitantes
  values ('Roberto Perez',45,'Alta Gracia','Cordoba','robertomarioperez@hotmail.com',30);
 insert into visitantes
  values ('Marina Torres',22,'Rosario','Santa Fe','marinatorres@xaxamail.com',90);
 insert into visitantes
  values ('Julieta Gomez',24,'Rosario','Santa Fe',null,50);
 insert into visitantes
  values ('Roxana Lopez',20,'Alta Gracia','Cordoba',null,200);
 insert into visitantes
  values ('Liliana Garcia',50,'Capital Federal','Buenos Aires','lilianagarcia@hotmail.com',40);
 insert into visitantes
  values ('Juan Torres',43,'Carlos Paz','Cordoba',null,10);

 select *from visitantes
 compute avg(montocompra);

 select edad,ciudad,montocompra
  from visitantes
  compute avg(edad),sum(montocompra);

 select nombre,ciudad,provincia
  from visitantes
  order by provincia,ciudad
  compute count(provincia)
  by provincia,ciudad;

 select *from visitantes
  order by provincia,ciudad
  compute avg(edad), sum(montocompra)
  compute avg(montocompra),count(provincia)
  by provincia,ciudad;