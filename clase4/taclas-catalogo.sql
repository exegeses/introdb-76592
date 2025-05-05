# tablas proyecto catálogo de productos

create table marcas
(
    idMarca tinyint unsigned primary key auto_increment,
    marca varchar(100) unique not null
);

create table categorias
(
    idCategoria tinyint unsigned primary key auto_increment,
    categoria varchar(100) unique not null
);

create table productos
(
    idProducto smallint unsigned primary key auto_increment,
    producto varchar(100) unique not null,
    precio decimal(10,2) unsigned not null,
    (marca),
    (categoria)
    descripcion,
    imagen,
    activo
);