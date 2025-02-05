# practicas-raurosZm

### Sección 2.- Consultas SQL

En esta sección considero que solo es relevante aclarar la solución propuesta para la tercera y cuarta consulta.

En la tercera consulta necesito quedarme con los vehiculos que no han sido alquilados en 6 meses o más. Para ello lo que hago es, despues de realizar la respectivas *inner join*, agrupar por el id del vehiculo de la tabla de alquiler y después poner en un condicional *having* que la fecha actual sea mayor que la fecha de fin maxima sumandole 6 meses. La función max hace que solo me compare con la ultima fecha de fin para cada vehiculo y luego le suma 6 meses con el date_add para comparar dicha fecha con la actual.

En la cuarta consulta se pide devolver el cliente con mas alquileres. Después de realizar las *inner join* necesarias, agrupo por el id del cliente, luego ordeno por el numero de registros con la función de count(*) y por ultimo limito los registros que se muestran a 1 mediante un *limit*. Esto funciona bien si el cliente con más registros es solo uno, si hay más de un cliente con los mismos alquileres solo se mostrará uno de ello, pero es la mejor solución que se me ha ocurrido. 
