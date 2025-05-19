# Modificación de estructura de una tabla

> cuándo hablamos de la modificación de la estructura de una tabla nos estamos refiriendo a cambiar:

1. nombre de una columna
2. tipo de datos de una columna
3. Agregar una nueva columna
4. Eliminar una columna

> los cambios de estructura se implementan con el comando
> **ALTER TABLE**

## cambiar nombre de una columna

    ALTER TABLE nombreTabla  
        CHANGE nombreOld nombreNew tipoDato caract;  

> tener en cuenta que debemos repetir el tipo de datos, si no, dará error
> si no mencionamos la condición **not null** va a dejar que los datos sean null

    ALTER TABLE personas  
        CHANGE alta fecha_alta date not null;  


# cambiar tipos de datos o caracteristicas

    ALTER TABLE nombreTabla   
        MODIFY nombreCampo tipoDato caract;  

    ALTER TABLE personas  
        MODIFY alta date not null; 

    ALTER TABLE personas  
        MODIFY id tinyint unsigned not null auto_increment; 

    ALTER TABLE proveedores
        MODIFY idProveedor tinyint unsigned not null auto_increment;  

# Agregar una columna

    ALTER TABLE nombreTabla  
        ADD nombreCampo tipoDato caract;  

    ALTER TABLE personas  
        ADD notas varchar(1000);  

# Eliminar una columna

    ALTER TABLE nombreTabla  
        DROP nombreCampo;  

    ALTER TABLE personas  
        DROP notas;  
