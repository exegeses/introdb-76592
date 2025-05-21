#  consultas a través de una tabla pivot

/*
    Vamos a traer datos provenientes de cuatro tablas
    productos: nombre, precio
    marcas:    marca
    categorias: categoria
    proveedores:  razonsocial
*/
SELECT producto, precio, marca, categoria, razonSocial
FROM productos
JOIN marcas
  ON productos.idMarca= marcas.idMarca
JOIN categorias
  ON productos.idCategoria = categorias.idCategoria
JOIN productos_proveedores
  ON productos.idProducto = productos_proveedores.idProducto
JOIN proveedores
  ON productos_proveedores.idProveedor = proveedores.idProveedor;
