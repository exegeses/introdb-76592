# Insertar datos en SQL

> puede insertar datos en SQL tenemos tres maneras de lograrlo
> estas tres maneras comienzan del siguiente modo:

    INSERT INTO nombreTabla

## Sintáxis usando SET  

    INSERT INTO nombreTabla  
        SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2,  
            nombreCampo3 = valor3,  
            nombreCampoX = valorX;  

> ejemplo práctico:  

    INSERT INTO personas  
        SET  
            id = 1,  
            apellido = 'García',  
            nombre = 'Javier',  
            dni = 25852410,  
            alta = '2008-12-12';  

    INSERT INTO personas  
        SET   
            apellido = 'González',  
            nombre = 'Mónica',  
            dni = 36520147,  
            alta = '2006-09-30';


## Sintáxis completa (se mencionan los campos)

    INSERT INTO nombreTabla  
        ( campo1, campo2, campo3, campoX )  
      VALUES  
        ( valor1, valor2, valor3, valorX ); 

> ejemplo práctico:

    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Martínez', 'Vanesa', 35741951, '2006-06-21' );


## Sintáxis simplificada (NO se mencionan los campos)

> si vienen esta sintaxis no vamos a mencionar los nombres de los campos, en este caso estamos obligados a mencionar todos y cada uno de los valores en el orden exacto en el que deben insertarse en la tabla


    NSERT INTO nombreTabla
      VALUES  
        ( valor1, valor2, valor3, valorX ); 

> ejemplo práctico:

    INSERT INTO personas  
      VALUES  
        ( DEFAULT, 'Álvarez', 'Fernando', 32912457, '2007-11-02' );


### insertar múltiples registros
> en algunos casos vamos a querer insertar varios registros a la vez
> no es obligatorio hacer un **insert** por cada uno de los registros


    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Page', 'Jimmy', 18543219, '1944-01-09' ),
        ( 'Plant', 'Robert', 18543220, '1948-08-20' ),
        ( 'Bonham', 'Bonzo', 18543221, '1948-05-31' ),
        ( 'Jones', 'John', 18543222, '1946-01-03' );

    INSERT INTO personas   
      VALUES  
        ( DEFAULT, 'Page', 'Jimmy', 18543219, '1944-01-09' ),
        ( DEFAULT, 'Plant', 'Robert', 18543220, '1948-08-20' ),
        ( DEFAULT, 'Bonham', 'Bonzo', 18543221, '1948-05-31' ),
        ( DEFAULT, 'Jones', 'John', 18543222, '1946-01-03' );

