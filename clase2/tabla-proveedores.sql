create table proveedores
(
    idProveedor int unsigned auto_increment primary key,
    razonsocial varchar(100) not null,
    cuit varchar(13) unique not null,
    telefono varchar(20) not null,
    email varchar(50),
    direccion varchar(100)
);