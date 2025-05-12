# Filtrado de resultados

> filtrar resultados de una consulta significa que vamos a traer solamente los registros que cumplan con una condición dada
> para implementar un filtro utilizamos la palabra reservada
> **WHERE** seguida de una condición.
 
    SELECT campo, campo  
    FROM nombreTabla  
    WHERE condicion;  

> practica: traer nombre producto, precio del producto (de la tabla productos) con un precio hasta 600

    SELECT producto, precio  
      FROM productos  
      WHERE precio <= 600;  

> practica: traer nombre producto, precio del producto (de la tabla productos) con un precio entre 100 y 600

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 100  
       AND precio <= 600;   

    SELECT producto, precio  
      FROM productos  
      WHERE precio BETWEEN 100 AND 600;  

> practica: traer nombre producto, precio del producto (de la tabla productos) de la marca 1 y de la marca 16

    SELECT producto, precio, idMarca     
      FROM productos  
      WHERE idMarca = 1  
      OR idMarca = 16;  

    SELECT producto, precio, idMarca       
      FROM productos    
      WHERE idMarca IN( 1, 16 );    
