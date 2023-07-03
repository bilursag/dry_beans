# Developer Challenge DrivIn - DryBeans



Este proyecto es parte de mi proceso de postulación al equipo. He completado los siguientes puntos:

* Creé un proyecto desde cero en Ruby on Rails (RoR) llamado dry_beans.
* Desarrollé un modelo que representa una ruta con múltiples viajes, donde cada viaje puede tener múltiples entregas y/o retiros.
* Complementé el modelo anterior para poder guardar los datos de entrega/recepción. Los campos que estoy guardando son:

  Tabla "clients":
    name: nombre del cliente.
    address: dirección del cliente.
    phone: número de teléfono del cliente.
    rut: identificador único del cliente.
 
  Tabla "routes":
    name: nombre de la ruta.
 
  Tabla "trips":
    name: nombre del viaje.
    route_id: ID de la ruta a la que pertenece el viaje.
  
  Tabla "deliveries":
    name: nombre de la entrega.
    trip_id: ID del viaje al que pertenece la entrega.
    client_id: ID del cliente al que se entrega.
    created_at: marca de tiempo de creación del registro.
    updated_at: marca de tiempo de actualización del registro.
  
  Tabla "pickups":
    name: nombre del retiro.
    trip_id: ID del viaje al que pertenece el retiro.
    client_id: ID del cliente al que se realiza el retiro.
    created_at: marca de tiempo de creación del registro.
    updated_at: marca de tiempo de actualización del registro.
  
* Creé un controlador que muestra una ruta con sus viajes y sus entregas/retiros.
* Creé un controlador para guardar los datos de entrega.
* Agregué 2 pruebas de integración para asegurar el correcto funcionamiento del sistema.

Información adicional:

* El proyecto es una API-only Application.
* Se utiliza Ruby versión 3.1.2p20 y Ruby on Rails versión 7.0.6.

Gracias por considerar mi solicitud. Estoy emocionado por la oportunidad de discutir este desafío en la entrevista técnica. Espero tener la oportunidad de formar parte de su equipo
