# practicas-raurosZm

### Sección 1.- Modelado de base de Datos

Lo primero a tener en cuenta es que se trata de una base de datos con dos entidades con una relación N:M siendo cliente y vehiculo, de la cual surge una tercera entidad para poder realizar bien la relación, siendo esta ultima la de alquiler. 

### Aclaraciones de cada tabla

#### Cliente

He decidido poner el campo de teléfono como un varchar para poder incluir el código del país.

#### Vehiculo

He decidido poner un valor predeterminado al campo de categoria que sería en este caso 'estandar'

#### Alquiler

Por último, he considerado que la clave primaria de alquiler sea: el codigo de cliente y vehiculo y la fecha de inicio y fin. Ambos codigos son necesarios para formar la relación entre las entidades pero he decidido añadir tambien las fechas ya que esto permitiria añadir un registro en la tabla que fuese que, para un coche y un cliente pueda haber varios alquileres pero en fechas distintas. En el caso de no añadirlos, un cliente solo podria alquilar un coche una unica vez.
Además, he decidido añadirle a ambas foreing key de la tabla la característica de 'on delete cascade' para que si se borra un registro de un coche o de un cliente en sus respectivas tablas, se eliminen los registros donde aparezcan dichos clientes o vehiculos en la tabla de alquiler.
