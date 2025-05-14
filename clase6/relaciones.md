# consultas con relaciones entre tablas

> Si queremos consultar datos provenientes de dos o más tablas debemos relacionar esas tablas.
> Para ello tenemos dos técnicas

## 1- Table Relation

> La técnica **Table Relation** se logra mencionando en el listado de tablas (después del **FROM**) cada una de las tablas necesarias (separadas por comas) 
> Y luego mediante un filtro (**WHERE**) 
> igualamos la foreign key de una tabla con la primary key de la otra tabla

> Sintáxis:  

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

    SELECT colTabla1, colTabla1, colTabla2, colTabla3  
      FROM tabla1, tabla2, tabla3  
      WHERE tabla1.fk = tabla2.pk   
        AND tabla1.fk = tabla3.pk;     

> Ejemplo práctico: 

    SELECT producto, precio, marca  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;    


    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;  


    SELECT producto, precio, marca, categoria, whatsapp  
      FROM productos, marcas, categorias, proveedores    
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria  
        AND productos.idProveedor = proveedores.idProveedor;  
  

## 2- JOIN

> En la técnica **JOIN** no vamos a mencionar en el listado de las tablas ( después del **FROM** ) cada una de las tablas necesarias para la consulta.
> Sólo se menciona la tabla principal.
> Y luego utilizamos la palabra reservada **JOIN** para mencionar la tabla secundaria.
> Y finalizamos igualando la foreign key de la tabla principal con la primary key de la tabla secundaria luego de la palabra reservada **ON**  

> Sintáxis:  

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1  
      JOIN tabla2    
        ON tabla1.fk = tabla2.pk;  

> Ejmplo práctico: 

    SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;    


    SELECT producto, precio, marca, categoria    
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  


    SELECT producto, precio, marca, categoria, whatsapp    
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria    
      JOIN proveedores  
        ON productos.idProveedor = proveedores.idProveedor;   









