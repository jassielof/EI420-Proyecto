= Estudio de Ingeniería

== Descripción Técnica del Producto

== Plan y Programa de Producción

== Selección de la Tecnología

== Descripción de los Procesos Productivos y Administrativos

== Cuantificación de los Recursos de la Producción

=== Diseño de la Línea de Producción Balanceada

==== Tiempo Estándar

==== Números de Puestos de Trabajo en Jornada Normal

==== Número de Horas Extras

==== Cantidad de Maquinaria

==== Cantidad de Equipos

==== Medios de Transporte

==== Muebles Enseres

==== Equipos Informáticos

==== Herramientas

==== Construcciones

==== Instalaciones Eléctricas

==== Instalaciones Hidrosanitarias

==== Instalaciones y Equipos de Seguridad

==== Instalaciones para el Tratamiento de Residuos Sólidos Líquidos y Gaseosos

=== Materia Prima e Insumos

==== Balance de Masa

==== Cantidad de Materia Prima

==== Cantidad de Insumos

=== Balance de Energía

==== Energía Eléctrica

==== Combustibles

=== Vehículos

=== Grasas Lubricantes Filtros y Otros

=== Uniformes y Equipos de Protección Personal

=== Material de Escritorio

=== Material de Limpieza

=== Telecomunicaciones

=== Agua

== Sistema de Gestión de Calidad Total

== Sistema de Información Administrativa
Para el stack tecnológico se propone el uso de las siguientes tecnologías:
- Sistema operativo: Ubuntu Desktop/Server 24
- Base de datos: PostgreSQL 17
- Lenguaje de Programación:
  - JavaScript/TypeScript para el sistema web nativo
  - C\# (.NET 8.0) para el interacción con la base de datos

En cuanto a la arquitectura del sistema, se desarrollará una arquitectura de 3 capas:
- Capa de presentación: Interfaz de usuario (UI) desarrollada con JavaScript/TypeScript
- Capa de lógica de negocio: Desarrollada con C\# (.NET 8.0)
- Capa de datos: Base de datos PostgreSQL 17

Para el sistema de información administrativa se propone un sistema de información que permita la gestión de los siguientes módulos, de los cuales se realizará la descripción de los casos de usos (detallados) más sus interfaces.

Cada módulo especificará su respectiva descripción detallada (casos de uso detallado/especificación) más su interfaz de formulario. En el caso de uso detallado, se responde cuáles son las principales funciones o tareas realizadas por el actor, qué información del sistema adquiere, producto o transforma el actor, si el actor informa al sistema de los cambios producidos en el entorno, qué información desea del sistema el actor, si se informará al actor de algún cambio, etc. Los casos de uso tienen su tipo de actor (primarios, de relación directa con el sistema, secundarios, de relación de soporte al sistema con los primarios o iniciadores, que ayudan a desencadenar el trabajo de otro actor)~@CasosDeUsoUMLGranada2010.

Se usará el formato para la descripción de los casos de uso detallado

#figure(
  caption: [Formato de descripción de casos de uso detallados],
  table(
    columns: (auto, auto, auto),
    table.header(
      [*Caso de uso*],
      [_Nombre del caso de uso_],
      [_Identificador_],
    ),
    [*Actores*], table.cell(colspan: 2)[_Lista de actores, indicando el iniciador con (I)_],
    [*Tipo*], table.cell(colspan: 2)[_Tipo de caso de uso, primario, secundario, opcional, esencial o real_],
    [*Referencia*], [_Requisitos relacionados_], [_Casos de usos relacionados_],
    [*Precondición*], table.cell(colspan: 2)[_Condiciones sobre el estado del sistema requeridas para que ocurra el caso de uso_],
    [*Postcondición*], table.cell(colspan: 2)[_Efectos que ocurren tras la realización del caso de uso sobre el estado del sistema_],
    table.cell(colspan: 3)[*Propósito*],
    table.cell(colspan: 3)[_Descripción general del caso de uso (oración)_],
    table.cell(colspan: 3)[*Resumen*],
    table.cell(colspan: 3)[_Descripción de alto nivel del flujo normal/básico del caso de uso (parrafo)_],
    table.cell(colspan: 3)[*Flujo de eventos*],
    table.cell(colspan: 3)[*Curso Normal* (_Descripción de los pasos del flujo normal_)],
    table.cell(colspan: 2)[*Actor*], [*Sistema*],
    table.cell(colspan: 2)[_Secuencia de acciones realizadas por el actor hacia el sistema_], [_Respuesta del sistema_],
    table.cell(colspan: 3)[*Cursos Alternos* (_Descripción de los pasos de los flujos alternos_)],
    table.cell(colspan: 3)[_Secuencia de acciones realizadas por el actor hacia el sistema_],
  ),
) <tab:formato-descripción-casos-de-uso-detallados>

=== Módulo de Usuario
==== Casos de Uso Detallado

==== Interfaz

=== Módulo de Empleado
=== Módulo de Proveedor
=== Módulo de Productos
=== Módulo de Orden de Pedido
=== Módulo de Nota de Recepción de Pedido
=== Módulo de Cuenta con Proveedor
=== Módulo de Pago a Proveedor
=== Módulo de Contabilidad
=== Módulo de Inventario
=== Módulo de Activo Fijo
=== Módulo de Caja
=== Módulo de Banco
=== Módulo de Caja Chica
=== Módulo de Cliente
=== Módulo de Cuenta de Cliente
=== Módulo de Pago Cliente
=== Módulo de Facturación
=== Módulo de Nota de Entrega
=== Módulo de Precio de Producto
=== Módulo de Sucursales
=== Módulo de Cambios o Devoluciones
=== Módulo de Impuestos
=== Módulo de Asistencia de Empleados

=== Diagrama de Entidad-Relación
=== Diagrama de Clases

== Cronograma de Implementación
