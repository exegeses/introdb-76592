# Consultas en SQL

## Consultas a servidor de BBDD+

    -- listar todas las bases de datos  
    SHOW DATABASES;  

    -- activar una base de datos  
    USE nombreBase;  

> la palabra reservada más importante o al menos la más utilizada para consultas es la palabra **SELECT**

    -- ver cuál es la base de datos activa
    SELECT DATABASE();  

## Consultas a tablas

    -- listar todas las tabla de una base  
    SHOW TABLES;  

    -- mostrar la estructura de una tabla
    DESCRIBE nombreTabla;  

> para realizar consultas a una tabla y que nos devuelva la lista de los datos (registros) vamos a utilizar la palabra reservada **SELECT** seguida de la palabra **FROM** 

    SELECT * FROM nombreTabla;  

    SELECT * FROM personas;  
    SELECT * FROM provedores;  

> cuándo utilizamos el símbolo * (asterisko) entre la palabra **SELECT**  y la palabra **FROM** estamos pidiendo que traiga los datos de todas las columnas de esa tabla

> si queremos traer información de sólo algunas de las columnas vamos a tener que especificar dichas columnas luego de la palabra **SELECT** cada una de estas columnas separadas por comas

> Sintáxis:  

    SELECT nombreCampo, nombreCampo  
      FROM nombreTabla;  

> obtener todos los datos de la columna llamada "razonsocial" y de la columna llamada "telefono" en la tabla proveedores

    SELECT razonsocial, telefono  
      FROM proveedores;  

### Orden de los resultados

> para ordenar los resultados de una consulta vamos a utilizar el comando **ORDER BY** seguido de la columna que queremos utilizar como criterio de orden

> Sintáxis:

    SELECT nombreCampo, nombreCampo  
      FROM nombreTabla  
      ORDER BY nombreCampo;  

> Ejemplo:  

    SELECT nombre, apellido, alta  
      FROM personas  
      ORDER BY alta DESC;  
