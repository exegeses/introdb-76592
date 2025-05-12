# Consultas de coincidencia (que contenga una cadena de caracteres)

> las consultas de coincidencia sutilizan para obtener registros que vamos a filtrar utilizando una cadena de caractéres
> eso quiere decir que como filtro vamos a explicitar que contenga cierta cadena de caractéres

> Práctica: vamos a traer nombre, precio, descripción 
> (de la tabla productos) que en la columna descripción contenga la palabra "inalámbrico"

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE "%inalambrico%";  

> utilizamos la palabra reservada **LIKE** en combinación con el carácter de **%** (porcentaje) Como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter
