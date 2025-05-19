create table productos_proveedores
(
    idProducto smallint unsigned not null,
    idProveedor tinyint unsigned not null,
    foreign key (idProducto) references  productos (idProducto),
    foreign key (idProveedor) references  proveedores (idProveedor)
);

-- Inserta 64 combinaciones aleatorias entre productos y proveedores
INSERT INTO productos_proveedores
    (idProducto, idProveedor)
VALUES
    (1, 3), (1, 7),
    (2, 5), (2, 8),
    (3, 2), (3, 10),
    (4, 4),
    (5, 1), (5, 6),
    (6, 9),
    (7, 3), (7, 12),
    (8, 7),
    (9, 15),
    (10, 5), (10, 11),
    (11, 13),
    (12, 2),
    (13, 14), (13, 6),
    (14, 10),
    (15, 4), (15, 8),
    (16, 17),
    (17, 1), (17, 9),
    (18, 3),
    (19, 16), (19, 18),
    (20, 6), (20, 14),
    (21, 12),
    (22, 4), (22, 19),
    (23, 5), (23, 7),
    (24, 11),
    (25, 1), (25, 13),
    (26, 8),
    (27, 2), (27, 10),
    (28, 20),
    (29, 3),
    (30, 4), (30, 17),
    (31, 6), (31, 15),
    (32, 9), (32, 19);
