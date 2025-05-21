/*
    misiones: nombre_mision, destino
              pais
              agencia
 */
 SELECT nombre_mision, destino, nombre_pais, nombre_agencia
 FROM misiones
 JOIN agencias
   ON misiones.id_agencia = agencias.id_agencia
 JOIN paises
   ON misiones.id_pais = paises.id_pais;