# practicas-raurosZm

### Sección 3.- Lógica de programación

#### Aclaraciones previas

He subido tanto un jar con el codigo fuente como un zip del proyecto entero para que se pueda descargar el que se prefiera entre estas 2 opciones. Además, el proyecto ha sido realizado con la **jdk 23**, por si da algún error con la versión al importar dicho proyecto o jar.

#### Clase Paquete

He decidido crear la clase *Paquete* para guardar todos los datos que correspondan a los paquetes que se quieren registrar en la aplicación. Además de los atributos que se piden para dichos paquetes, he decidido añadir como atributo de la clase el costo ya que considero que va a ser algo que van a tener todos los paquetes aunque no sea algo que va a poder introducir el usuario. Además le he añadido un hashcodey equals que comparen objetos de esta clase unicamente por el número de seguimiento ya que va a ser un atributo único por cada paquete, esto hace que en los conjuntos, como los hashSet, no se permita añadir 2 paquetes con el mismo numero de seguimiento.

#### Clase Programa

Esta clase contiene el main del programa y es en la que pido datos al usuario para interactuar con el. No ha habido mucha complicación a la hora de realizar esta clase e intentado organizarla lo mejor y mas modularizado posible. Lo unico en lo que he tenido más dudas ha sido a la hora de pedir el numero de seguimiento del paquete debido a que no se podia repetir, yo hubiese llevado dicho atributo de manera automática con un atributo estático en la clase paquete, pero al poner que era un dato que tenia que introducir el usuario pues he descartado esa opción.

Por último, en caso de que se quisiese ejecutar este proyecto, esta seria la clase que se tendría que ejecutar.
