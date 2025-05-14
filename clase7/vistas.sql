# Vistas en SQL
/*
    Una vista es una consulta que podemos almacenar
    dentro de nuestra base de datos
    Nota: parece una tabla independiente pero en realidad no lo es
*/

CREATE VIEW lista_precios
  AS
    SELECT  idProducto AS ID,
            producto,
            precio AS PrecioContado,
            precio*1.05 AS PrecioLista,
            marca,
            categoria
    FROM productos
     JOIN marcas
      ON productos.idMarca = marcas.idMarca
     JOIN categorias
      ON productos.idCategoria = categorias.idCategoria;

## Llamado a ejecución
SELECT * FROM lista_precios;

/* ----------- */
/* crear una vista para
    listar producto, precio, marca
    de todos los productos
    de la categoría "electrodomésticos"
*/

CREATE VIEW lista_electro
  AS
    SELECT producto, precio, marca
    FROM productos
      JOIN marcas
      ON productos.idMarca = marcas.idMarca
     WHERE idCategoria = 5;


SELECT * FROM lista_electro;
