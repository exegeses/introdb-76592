# modificación de datos de una tabla

> para modificar los datos de una tabla utilizamos el comando **UPDATE**
> debemos especificar un filtro con el comando **WHERE** para indicar cuál es el registro que queremos modificar

> Sintáxis: 

    UPDATE nombreTabla  
       SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2  
       WHERE colID = valorID;  

> Ejemplo práctico:   

    UPDATE proveedores  
       SET  
            email = 'informes@fsanjuan.com'  
       WHERE idProveedor = 3;  

    UPDATE personas  
      SET 
            apellido = 'González',  
            alta = '2023-04-29'  
      WHERE id = 26;  

> Modificar el precio de un producto agregando un 5% de incremento

    UPDATE productos  
      SET  precio = precio * 1.05  
     WHERE idProveedor = 21;  
