 if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  sexo char(1),
  ciudad varchar(20)
 );

 insert into visitantes values('Susana Molina', 'f', 'Cordoba');
 insert into visitantes values('Marcela Mercado', 'f','Cordoba');
 insert into visitantes values('Roberto Perez','f',null);
 insert into visitantes values('Alberto Garcia','m','Cordoba');
 insert into visitantes values('Teresa Garcia','f','Alta Gracia');

 select ciudad,
  count(*) as cantidad
  from visitantes
  group by ciudad
  with rollup;

 select ciudad,
  count(*) as cantidad,
  grouping(ciudad) as resumen
  from visitantes
  group by ciudad
  with rollup;