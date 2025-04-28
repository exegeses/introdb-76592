# creación de tablas en SQL

> para crear una tabla dentro de una base de datos 
> utilizamos el comando **CREATE TABLE**

> Sintáxis:  

    CREATE TABLE nombre  
    (  
        nombreCampo tipoDato catacterísticas,   
        nombreCampo2 tipoDato catacterísticas,   
        nombreCampo3 tipoDato catacterísticas,  
        nombreCampoX tipoDato catacterísticas  
    );


> Ejemplo práctico:  

    CREATE TABLE personas  
    (  
        id int unsigned auto_increment primary key,  
        apellido varchar(50) not null,  
        nombre varchar(50) not null,  
        dni int unsigned unique not null,  
        alta date not null
    );
