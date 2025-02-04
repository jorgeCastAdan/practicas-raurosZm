use alquiler_vehiculo;

#Obtén un listado de clientes que han alquilado un vehículo de categoría "lujo”.

SELECT c.id_cliente as 'Id', c.nombre_cliente as 'Nombre', c.apellido_cliente as 'Apellido', c.correo_cliente as 'Correo', c.telf_cliente as 'Telefono'
FROM cliente as c INNER JOIN alquiler as a ON c.id_cliente = a.clienteId
INNER JOIN vehiculo as v ON a.vehiculoId = v.id_vehiculo
WHERE v.categoria = 'lujo';

#Calcula el total de ingresos generados por cada categoría de vehículos.

SELECT v.categoria as 'Categoria', sum(a.costo_total) as 'Ingresos totales'
FROM vehiculo as v INNER JOIN alquiler as a ON v.id_vehiculo = a.vehiculoId
GROUP BY v.categoria;

#Muestra los vehículos que no han sido alquilados en los últimos 6 meses.

SELECT v.id_vehiculo as 'Id', v.marca as 'Marca', v.modelo as 'Modelo', v.año_fabricacion as 'Año de fabricacion', v.categoria as 'Categoria'
FROM vehiculo as v INNER JOIN alquiler as a on v.id_vehiculo = a.vehiculoId
GROUP BY a.vehiculoId
HAVING curdate() > max(date_add(a.fecha_fin, interval 6 month));

#Devuelve el nombre completo del cliente con más alquileres registrados.

SELECT c.nombre_cliente as 'Nombre', c.apellido_cliente as 'Apellido'
FROM cliente as c INNER JOIN alquiler as a ON c.id_cliente = a.clienteId
GROUP BY a.clienteId
ORDER BY count(*)
LIMIT 1;

#Obtén un listado de alquileres que tengan una duración superior a 30 días.

SELECT clienteId as 'Id Cliente', vehiculoId as 'Id Vehiculo', fecha_inicio as 'Fecha de inicio', fecha_fin as 'Fecha de inicio', costo_total as 'Costo total'
FROM alquiler 
WHERE datediff(fecha_fin, fecha_inicio) > 30;
