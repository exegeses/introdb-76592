# Alias en SQL

/*
    En SQL podemos renombrar el enunciado de una columna
    con el motivo de qué quede mejor en un reporte
    Nota: no se cambia definitivamente el nombre de la columna
    sino que únicamente se re nombra el enunciado
    Implementamos un alias con la palabra reservada **AS**
    (se puede omitir)
*/

SELECT  producto,
        precio AS 'Precio Contado',
        precio*1.05 AS 'Precio Lista',
        marca,
        categoria AS Categoría
FROM productos
 JOIN marcas
   ON productos.idMarca = marcas.idMarca
 JOIN categorias
  ON productos.idCategoria = categorias.idCategoria;

/*
    Un uso adicional de los alias es escribir menos
    cuando tenemos tablas relacionadas
*/

SELECT  producto,
        precio AS 'Precio Contado',
        precio*1.05 AS 'Precio Lista',
        marca,
        categoria AS Categoría
FROM productos AS p
 JOIN marcas AS m
   ON p.idMarca = m.idMarca
 JOIN categorias AS c
   ON p.idCategoria = c.idCategoria;

