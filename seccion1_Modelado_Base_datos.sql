DROP DATABASE IF EXISTS alquiler_vehiculos;
CREATE DATABASE IF NOT EXISTS alquiler_vehiculos;
USE alquiler_vehiculos;

CREATE TABLE IF NOT EXISTS cliente(
	id_cliente smallint unsigned auto_increment,
	nombre_cliente VARCHAR(150) not null,
	apellido_cliente VARCHAR(150) not null,
	correo_cliente VARCHAR(150) not null,
	telf_cliente VARCHAR(10),

	CONSTRAINT pk_cliente primary key (id_cliente)
);

CREATE TABLE IF NOT EXISTS vehiculo(
	id_vehiculo smallint unsigned auto_increment,
    marca VARCHAR(50) not null,
    modelo VARCHAR(50) not null,
    año_fabricacion smallint unsigned not null, 
    categoria enum('economico', 'estandar', 'lujo') DEFAULT 'estandar',
    
    constraint pk_vehiculo primary key (id_vehiculo)
);

CREATE TABLE IF NOT EXISTS alquiler(
	clienteId smallint unsigned,
    vehiculoId smallint unsigned,
    fecha_inicio date,
    fecha_fin date,
    costo_total int unsigned not null, 
    
    constraint pk_alquiler primary key (clienteid, vehiculoId, fecha_inicio, fecha_fin),
    constraint fk_cliente_alquiler foreign key (clienteId) references cliente(id_cliente) on delete cascade,
    constraint fk_vehiculo_alquiler foreign key (vehiculoId) references vehiculo(id_vehiculo) on delete cascade
);