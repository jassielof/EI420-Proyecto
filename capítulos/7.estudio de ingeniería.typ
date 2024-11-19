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
  - C\# (.NET 8.0) para la interacción con la base de datos

En cuanto a la arquitectura del sistema, se desarrollará una arquitectura de 3 capas:
- Capa de presentación: Interfaz de usuario (UI) desarrollada con JavaScript/TypeScript
- Capa de lógica de negocio: Desarrollada con C\# (.NET 8.0)
- Capa de datos: Base de datos PostgreSQL 17

Para el sistema de información administrativa se propone un sistema de información que permita la gestión de los siguientes módulos, de los cuales se realizará la descripción de los casos de usos (detallados) más sus interfaces.

Cada módulo especificará su respectiva descripción detallada (casos de uso detallado/especificación) más su interfaz de formulario. En el caso de uso detallado, se responde cuáles son las principales funciones o tareas realizadas por el actor, qué información del sistema adquiere, producto o transforma el actor, si el actor informa al sistema de los cambios producidos en el entorno, qué información desea del sistema el actor, si se informará al actor de algún cambio, etc. Los casos de uso tienen su tipo de actor (primarios, de relación directa con el sistema, secundarios, de relación de soporte al sistema con los primarios o iniciadores, que ayudan a desencadenar el trabajo de otro actor)~@CasosDeUsoUMLGranada2010.

Se usará el formato para la descripción de los casos de uso detallado en la @tab:formato-descripción-casos-de-uso-detallados.

#figure(
  caption: [Formato de descripción de casos de uso detallados],
  table(
    columns: 3,
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

#let caso-de-uso-detallado(
  caption: [],
  nombre: "Nombre del caso de uso",
  identificador: "CU-001",
  actores: "Actor 1 (I), Actor 2",
  tipo: "Primario",
  referencia: "Requisito 1, Requisito 2",
  precondición: "Precondición 1, Precondición 2",
  postcondición: "Postcondición 1, Postcondición 2",
  propósito: "Propósito del caso de uso",
  resumen: "Resumen del caso de uso",
  curso-normal: "Curso normal del caso de uso",
  curso-alternos: "Curso alternos del caso de uso",
) = {
  figure(
    caption: nombre,
    [
      #table(
        columns: (1fr, 1fr, 1fr),
        table.header(
          [*Caso de uso*],
          nombre,
          identificador,
        ),
        [*Actores*], table.cell(colspan: 2)[#actores],
        [*Tipo*], table.cell(colspan: 2)[#tipo],
        [*Referencia*], table.cell(colspan: 2)[#referencia],
        [*Precondición*], table.cell(colspan: 2)[#precondición],
        [*Postcondición*], table.cell(colspan: 2)[#postcondición],
        table.cell(colspan: 3)[*Propósito*],
        table.cell(colspan: 3)[#propósito],
        table.cell(colspan: 3)[*Resumen*],
        table.cell(colspan: 3)[#resumen],
      )
      #table(
        columns: 2,
        table.header(
          table.cell(colspan: 2)[*Flujo de eventos*],
        ),
        table.cell(colspan: 2)[
          #table(
            columns: (1fr, 1fr),
            table.header(
              table.cell(colspan: 2)[*Curso Normal*],
              [*Actor*],
              [*Sistema*],
            ),
            ..curso-normal,
          )
        ],
        table.cell(colspan: 2)[*Cursos Alternos*],
        ..curso-alternos,
      )
    ],
  )
}

=== Módulo de Usuario

El módulo de usuario es fundamental para la gestión del sistema de información administrativa. Este módulo permite a los administradores gestionar los usuarios del sistema, incluyendo la creación, modificación y eliminación de usuarios. Además, proporciona funcionalidades para la autenticación y autorización de usuarios, asegurando que solo los usuarios autorizados puedan acceder a ciertas funcionalidades del sistema.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de usuarios],
  nombre: "Gestión de usuarios",
  identificador: "CU-001",
  actores: "Administrador (I), Usuario",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "El usuario debe estar registrado en el sistema",
  propósito: "Permitir el registro de usuarios en el sistema",
  resumen: "El administrador registra a un usuario en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de registrar usuario],
    [3. El administrador ingresa los datos del usuario],
    [4. El administrador guarda los datos del usuario],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del usuario],
    [3.2. El administrador modifica los datos del usuario],
  ),
)

#caso-de-uso-detallado(
  caption: [Autenticación de usuarios],
  nombre: "Autenticación de usuarios",
  identificador: "CU-002",
  actores: "Usuario",
  tipo: "Primario",
  referencia: "",
  precondición: "El usuario debe estar registrado en el sistema",
  postcondición: "El usuario accede al sistema",
  propósito: "Permitir a los usuarios autenticarse en el sistema",
  resumen: "El usuario inicia sesión en el sistema",
  curso-normal: (
    [1. El usuario ingresa su nombre de usuario y contraseña],
    [2. El sistema verifica las credenciales del usuario],
    [3. El sistema permite el acceso al usuario],
    [4. El sistema muestra el menú principal],
  ),
  curso-alternos: ([2.1. El sistema muestra un mensaje de error si las credenciales son incorrectas],),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-29-32.png"),
  caption: [Interfaz de usuario para la gestión de usuarios],
)

=== Módulo de Empleado

El módulo de empleado es esencial para la gestión de los recursos humanos dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la información de los empleados, incluyendo la creación, modificación y eliminación de registros de empleados. Además, proporciona funcionalidades para la gestión de asistencia, permisos y evaluaciones de desempeño.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de empleados],
  nombre: "Gestión de empleados",
  identificador: "CU-003",
  actores: "Administrador (I), Empleado",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "El empleado debe estar registrado en el sistema",
  propósito: "Permitir la gestión de empleados en el sistema",
  resumen: "El administrador registra, modifica o elimina a un empleado en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar empleados],
    [3. El administrador ingresa los datos del empleado],
    [4. El administrador guarda los datos del empleado],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del empleado],
    [3.2. El administrador modifica los datos del empleado],
  ),
)

#caso-de-uso-detallado(
  caption: [Gestión de asistencia],
  nombre: "Gestión de asistencia",
  identificador: "CU-004",
  actores: "Administrador (I), Empleado",
  tipo: "Primario",
  referencia: "",
  precondición: "El empleado debe estar registrado en el sistema",
  postcondición: "La asistencia del empleado debe estar registrada en el sistema",
  propósito: "Permitir la gestión de la asistencia de los empleados",
  resumen: "El administrador registra la asistencia de un empleado en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar asistencia],
    [3. El administrador ingresa los datos de asistencia del empleado],
    [4. El administrador guarda los datos de asistencia],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de asistencia],
    [3.2. El administrador modifica los datos de asistencia],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-30-35.png"),
  caption: [Interfaz de usuario para la gestión de empleados],
)

=== Módulo de Proveedor

El módulo de proveedor es crucial para la gestión de las relaciones con los proveedores dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la información de los proveedores, incluyendo la creación, modificación y eliminación de registros de proveedores. Además, proporciona funcionalidades para la gestión de contratos, evaluaciones de desempeño y comunicación con los proveedores.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de proveedores],
  nombre: "Gestión de proveedores",
  identificador: "CU-005",
  actores: "Administrador (I), Proveedor",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "El proveedor debe estar registrado en el sistema",
  propósito: "Permitir la gestión de proveedores en el sistema",
  resumen: "El administrador registra, modifica o elimina a un proveedor en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar proveedores],
    [3. El administrador ingresa los datos del proveedor],
    [4. El administrador guarda los datos del proveedor],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del proveedor],
    [3.2. El administrador modifica los datos del proveedor],
  ),
)

#caso-de-uso-detallado(
  caption: [Evaluación de proveedores],
  nombre: "Evaluación de proveedores",
  identificador: "CU-006",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El proveedor debe estar registrado en el sistema",
  postcondición: "La evaluación del proveedor debe estar registrada en el sistema",
  propósito: "Permitir la evaluación de los proveedores",
  resumen: "El administrador evalúa el desempeño de un proveedor en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de evaluar proveedores],
    [3. El administrador ingresa los datos de la evaluación del proveedor],
    [4. El administrador guarda los datos de la evaluación],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la evaluación del proveedor],
    [3.2. El administrador modifica los datos de la evaluación],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-31-20.png"),
  caption: [Interfaz de usuario para la gestión de proveedores],
)

=== Módulo de Productos

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de productos],
  nombre: "Gestión de productos",
  identificador: "CU-007",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "El producto debe estar registrado en el sistema",
  propósito: "Permitir la gestión de productos en el sistema",
  resumen: "El administrador registra, modifica o elimina un producto en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar productos],
    [3. El administrador ingresa los datos del producto],
    [4. El administrador guarda los datos del producto],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del producto],
    [3.2. El administrador modifica los datos del producto],
  ),
)

#caso-de-uso-detallado(
  caption: [Gestión de inventarios],
  nombre: "Gestión de inventarios",
  identificador: "CU-008",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El producto debe estar registrado en el sistema",
  postcondición: "El inventario del producto debe estar actualizado en el sistema",
  propósito: "Permitir la gestión de inventarios de los productos",
  resumen: "El administrador actualiza el inventario de un producto en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar inventarios],
    [3. El administrador ingresa los datos del inventario del producto],
    [4. El administrador guarda los datos del inventario],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la actualización del inventario],
    [3.2. El administrador modifica los datos del inventario],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-31-57.png"),
  caption: [Interfaz de usuario para la gestión de productos],
)

=== Módulo de Orden de Pedido

El módulo de orden de pedido es esencial para la gestión de las órdenes de pedido dentro del sistema de información administrativa. Este módulo permite a los administradores y usuarios gestionar la creación, modificación y seguimiento de órdenes de pedido. Además, proporciona funcionalidades para la gestión del estado de las órdenes y la comunicación con los proveedores.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de órdenes de pedido],
  nombre: "Gestión de órdenes de pedido",
  identificador: "CU-009",
  actores: "Administrador (I), Usuario",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La orden de pedido debe estar registrada en el sistema",
  propósito: "Permitir la gestión de órdenes de pedido en el sistema",
  resumen: "El administrador o usuario registra, modifica o elimina una orden de pedido en el sistema",
  curso-normal: (
    [1. El administrador o usuario inicia sesión en el sistema],
    [2. El administrador o usuario selecciona la opción de gestionar órdenes de pedido],
    [3. El administrador o usuario ingresa los datos de la orden de pedido],
    [4. El administrador o usuario guarda los datos de la orden de pedido],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador o usuario cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador o usuario cancela el registro de la orden de pedido],
    [3.2. El administrador o usuario modifica los datos de la orden de pedido],
  ),
)

#caso-de-uso-detallado(
  caption: [Seguimiento de órdenes de pedido],
  nombre: "Seguimiento de órdenes de pedido",
  identificador: "CU-010",
  actores: "Administrador (I), Usuario",
  tipo: "Primario",
  referencia: "",
  precondición: "La orden de pedido debe estar registrada en el sistema",
  postcondición: "El estado de la orden de pedido debe estar actualizado en el sistema",
  propósito: "Permitir el seguimiento de las órdenes de pedido",
  resumen: "El administrador o usuario realiza el seguimiento del estado de una orden de pedido en el sistema",
  curso-normal: (
    [1. El administrador o usuario inicia sesión en el sistema],
    [2. El administrador o usuario selecciona la opción de seguimiento de órdenes de pedido],
    [3. El administrador o usuario consulta el estado de la orden de pedido],
    [4. El sistema muestra el estado de la orden de pedido],
    [5. El administrador o usuario cierra la sesión],
    [6. El sistema actualiza el estado de la orden de pedido],
  ),
  curso-alternos: ([3.1. El administrador o usuario actualiza el estado de la orden de pedido],),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-32-41.png"),
  caption: [Interfaz de usuario para la gestión de órdenes de pedido],
)

=== Módulo de Nota de Recepción de Pedido

El módulo de nota de recepción de pedido es esencial para la gestión de la recepción de pedidos dentro del sistema de información administrativa. Este módulo permite a los administradores y usuarios gestionar la creación, modificación y seguimiento de notas de recepción de pedidos. Además, proporciona funcionalidades para la verificación de los productos recibidos y la actualización del inventario.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de notas de recepción de pedido],
  nombre: "Gestión de notas de recepción de pedido",
  identificador: "CU-011",
  actores: "Administrador (I), Usuario",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La nota de recepción de pedido debe estar registrada en el sistema",
  propósito: "Permitir la gestión de notas de recepción de pedido en el sistema",
  resumen: "El administrador o usuario registra, modifica o elimina una nota de recepción de pedido en el sistema",
  curso-normal: (
    [1. El administrador o usuario inicia sesión en el sistema],
    [2. El administrador o usuario selecciona la opción de gestionar notas de recepción de pedido],
    [3. El administrador o usuario ingresa los datos de la nota de recepción de pedido],
    [4. El administrador o usuario guarda los datos de la nota de recepción de pedido],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador o usuario cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador o usuario cancela el registro de la nota de recepción de pedido],
    [3.2. El administrador o usuario modifica los datos de la nota de recepción de pedido],
  ),
)

#caso-de-uso-detallado(
  caption: [Verificación de productos recibidos],
  nombre: "Verificación de productos recibidos",
  identificador: "CU-012",
  actores: "Administrador (I), Usuario",
  tipo: "Primario",
  referencia: "",
  precondición: "La nota de recepción de pedido debe estar registrada en el sistema",
  postcondición: "El inventario debe estar actualizado en el sistema",
  propósito: "Permitir la verificación de los productos recibidos",
  resumen: "El administrador o usuario verifica los productos recibidos y actualiza el inventario en el sistema",
  curso-normal: (
    [1. El administrador o usuario inicia sesión en el sistema],
    [2. El administrador o usuario selecciona la opción de verificación de productos recibidos],
    [3. El administrador o usuario ingresa los datos de los productos recibidos],
    [4. El administrador o usuario guarda los datos de los productos recibidos],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador o usuario cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador o usuario cancela la verificación de productos recibidos],
    [3.2. El administrador o usuario modifica los datos de los productos recibidos],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-33-20.png"),
  caption: [Interfaz de usuario para la gestión de notas de recepción de pedido],
)

=== Módulo de Cuenta con Proveedor

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de cuentas con proveedores],
  nombre: "Gestión de cuentas con proveedores",
  identificador: "CU-013",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La cuenta con el proveedor debe estar registrada en el sistema",
  propósito: "Permitir la gestión de cuentas con proveedores en el sistema",
  resumen: "El administrador registra, modifica o elimina una cuenta con un proveedor en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar cuentas con proveedores],
    [3. El administrador ingresa los datos de la cuenta con el proveedor],
    [4. El administrador guarda los datos de la cuenta con el proveedor],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la cuenta con el proveedor],
    [3.2. El administrador modifica los datos de la cuenta con el proveedor],
  ),
)

#caso-de-uso-detallado(
  caption: [Gestión de pagos a proveedores],
  nombre: "Gestión de pagos a proveedores",
  identificador: "CU-014",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "La cuenta con el proveedor debe estar registrada en el sistema",
  postcondición: "El pago al proveedor debe estar registrado en el sistema",
  propósito: "Permitir la gestión de pagos a proveedores",
  resumen: "El administrador registra un pago a un proveedor en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar pagos a proveedores],
    [3. El administrador ingresa los datos del pago al proveedor],
    [4. El administrador guarda los datos del pago],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del pago],
    [3.2. El administrador modifica los datos del pago],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-34-04.png"),
  caption: [Interfaz de usuario para la gestión de cuentas con proveedores],
)

=== Módulo de Pago a Proveedor

El módulo de pago a proveedor es esencial para la gestión de los pagos a los proveedores dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de pagos a proveedores. Además, proporciona funcionalidades para la gestión de facturas, comprobantes de pago y estados de cuenta.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de pagos a proveedores],
  nombre: "Gestión de pagos a proveedores",
  identificador: "CU-014",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "La cuenta con el proveedor debe estar registrada en el sistema",
  postcondición: "El pago al proveedor debe estar registrado en el sistema",
  propósito: "Permitir la gestión de pagos a proveedores",
  resumen: "El administrador registra un pago a un proveedor en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar pagos a proveedores],
    [3. El administrador ingresa los datos del pago al proveedor],
    [4. El administrador guarda los datos del pago],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del pago],
    [3.2. El administrador modifica los datos del pago],
  ),
)

#caso-de-uso-detallado(
  caption: [Verificación de pagos a proveedores],
  nombre: "Verificación de pagos a proveedores",
  identificador: "CU-015",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El pago al proveedor debe estar registrado en el sistema",
  postcondición: "El estado del pago debe estar actualizado en el sistema",
  propósito: "Permitir la verificación de los pagos realizados a proveedores",
  resumen: "El administrador verifica los pagos realizados a proveedores y actualiza el estado en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de verificación de pagos a proveedores],
    [3. El administrador consulta los datos del pago realizado],
    [4. El sistema muestra el estado del pago],
    [5. El administrador cierra la sesión],
  ),
  curso-alternos: ([3.1. El administrador actualiza el estado del pago],),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-34-38.png"),
  caption: [Interfaz de usuario para la gestión de pagos a proveedores],
)

=== Módulo de Contabilidad

El módulo de contabilidad es esencial para la gestión financiera dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la contabilidad general, incluyendo la creación, modificación y seguimiento de transacciones contables. Además, proporciona funcionalidades para la generación de informes financieros, balances y estados de resultados.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de transacciones contables],
  nombre: "Gestión de transacciones contables",
  identificador: "CU-016",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La transacción contable debe estar registrada en el sistema",
  propósito: "Permitir la gestión de transacciones contables en el sistema",
  resumen: "El administrador registra, modifica o elimina una transacción contable en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar transacciones contables],
    [3. El administrador ingresa los datos de la transacción contable],
    [4. El administrador guarda los datos de la transacción contable],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la transacción contable],
    [3.2. El administrador modifica los datos de la transacción contable],
  ),
)

#caso-de-uso-detallado(
  caption: [Generación de informes financieros],
  nombre: "Generación de informes financieros",
  identificador: "CU-017",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "Las transacciones contables deben estar registradas en el sistema",
  postcondición: "El informe financiero debe estar generado en el sistema",
  propósito: "Permitir la generación de informes financieros",
  resumen: "El administrador genera un informe financiero en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de generar informes financieros],
    [3. El administrador selecciona el tipo de informe financiero a generar],
    [4. El administrador guarda los datos del informe financiero],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la generación del informe financiero],
    [3.2. El administrador modifica los datos del informe financiero],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-35-04.png"),
  caption: [Interfaz de usuario para la gestión de transacciones contables],
)

=== Módulo de Inventario

El módulo de inventario es esencial para la gestión de los productos y materiales dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de inventarios. Además, proporciona funcionalidades para la actualización de existencias, control de stock y generación de informes de inventario.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de inventarios],
  nombre: "Gestión de inventarios",
  identificador: "CU-018",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "El inventario debe estar actualizado en el sistema",
  propósito: "Permitir la gestión de inventarios en el sistema",
  resumen: "El administrador registra, modifica o elimina un registro de inventario en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar inventarios],
    [3. El administrador ingresa los datos del inventario],
    [4. El administrador guarda los datos del inventario],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del inventario],
    [3.2. El administrador modifica los datos del inventario],
  ),
)

#caso-de-uso-detallado(
  caption: [Actualización de existencias],
  nombre: "Actualización de existencias",
  identificador: "CU-019",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El inventario debe estar registrado en el sistema",
  postcondición: "Las existencias deben estar actualizadas en el sistema",
  propósito: "Permitir la actualización de existencias en el sistema",
  resumen: "El administrador actualiza las existencias de un producto en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de actualizar existencias],
    [3. El administrador ingresa los datos de las existencias],
    [4. El administrador guarda los datos de las existencias],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la actualización de existencias],
    [3.2. El administrador modifica los datos de las existencias],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-35-35.png"),
  caption: [Interfaz de usuario para la gestión de inventarios],
)

=== Módulo de Activo Fijo

El módulo de activo fijo es esencial para la gestión de los activos fijos dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de activos fijos. Además, proporciona funcionalidades para la depreciación, mantenimiento y generación de informes de activos fijos.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de activos fijos],
  nombre: "Gestión de activos fijos",
  identificador: "CU-020",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "El activo fijo debe estar registrado en el sistema",
  propósito: "Permitir la gestión de activos fijos en el sistema",
  resumen: "El administrador registra, modifica o elimina un activo fijo en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar activos fijos],
    [3. El administrador ingresa los datos del activo fijo],
    [4. El administrador guarda los datos del activo fijo],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del activo fijo],
    [3.2. El administrador modifica los datos del activo fijo],
  ),
)

#caso-de-uso-detallado(
  caption: [Depreciación de activos fijos],
  nombre: "Depreciación de activos fijos",
  identificador: "CU-021",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El activo fijo debe estar registrado en el sistema",
  postcondición: "La depreciación del activo fijo debe estar registrada en el sistema",
  propósito: "Permitir la gestión de la depreciación de activos fijos",
  resumen: "El administrador registra la depreciación de un activo fijo en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de depreciación de activos fijos],
    [3. El administrador ingresa los datos de la depreciación del activo fijo],
    [4. El administrador guarda los datos de la depreciación],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la depreciación],
    [3.2. El administrador modifica los datos de la depreciación],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-10-19-28-47.png"),
  caption: [Interfaz de usuario del módulo de activo fijo],
)

=== Módulo de Caja

El módulo de caja es esencial para la gestión de las transacciones de efectivo dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de transacciones de caja. Además, proporciona funcionalidades para la conciliación de caja, generación de informes de caja y control de flujo de efectivo.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de transacciones de caja],
  nombre: "Gestión de transacciones de caja",
  identificador: "CU-022",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La transacción de caja debe estar registrada en el sistema",
  propósito: "Permitir la gestión de transacciones de caja en el sistema",
  resumen: "El administrador registra, modifica o elimina una transacción de caja en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar transacciones de caja],
    [3. El administrador ingresa los datos de la transacción de caja],
    [4. El administrador guarda los datos de la transacción de caja],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la transacción de caja],
    [3.2. El administrador modifica los datos de la transacción de caja],
  ),
)

#caso-de-uso-detallado(
  caption: [Conciliación de caja],
  nombre: "Conciliación de caja",
  identificador: "CU-023",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "Las transacciones de caja deben estar registradas en el sistema",
  postcondición: "La conciliación de caja debe estar registrada en el sistema",
  propósito: "Permitir la conciliación de caja",
  resumen: "El administrador realiza la conciliación de caja en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de conciliación de caja],
    [3. El administrador ingresa los datos de la conciliación de caja],
    [4. El administrador guarda los datos de la conciliación de caja],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la conciliación de caja],
    [3.2. El administrador modifica los datos de la conciliación de caja],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-36-02.png"),
  caption: [Interfaz de usuario para la gestión de transacciones de caja],
)

=== Módulo de Banco

El módulo de banco es esencial para la gestión de las transacciones bancarias dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de transacciones bancarias. Además, proporciona funcionalidades para la conciliación bancaria, generación de informes bancarios y control de saldos.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de transacciones bancarias],
  nombre: "Gestión de transacciones bancarias",
  identificador: "CU-024",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La transacción bancaria debe estar registrada en el sistema",
  propósito: "Permitir la gestión de transacciones bancarias en el sistema",
  resumen: "El administrador registra, modifica o elimina una transacción bancaria en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar transacciones bancarias],
    [3. El administrador ingresa los datos de la transacción bancaria],
    [4. El administrador guarda los datos de la transacción bancaria],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la transacción bancaria],
    [3.2. El administrador modifica los datos de la transacción bancaria],
  ),
)

#caso-de-uso-detallado(
  caption: [Conciliación bancaria],
  nombre: "Conciliación bancaria",
  identificador: "CU-025",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "Las transacciones bancarias deben estar registradas en el sistema",
  postcondición: "La conciliación bancaria debe estar registrada en el sistema",
  propósito: "Permitir la conciliación bancaria",
  resumen: "El administrador realiza la conciliación bancaria en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de conciliación bancaria],
    [3. El administrador ingresa los datos de la conciliación bancaria],
    [4. El administrador guarda los datos de la conciliación bancaria],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la conciliación bancaria],
    [3.2. El administrador modifica los datos de la conciliación bancaria],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-36-36.png"),
  caption: [Interfaz de usuario para la gestión de transacciones bancarias],
)

=== Módulo de Caja Chica

El módulo de caja chica es esencial para la gestión de los fondos de caja chica dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de transacciones de caja chica. Además, proporciona funcionalidades para la conciliación de caja chica, generación de informes y control de gastos menores.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de transacciones de caja chica],
  nombre: "Gestión de transacciones de caja chica",
  identificador: "CU-026",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La transacción de caja chica debe estar registrada en el sistema",
  propósito: "Permitir la gestión de transacciones de caja chica en el sistema",
  resumen: "El administrador registra, modifica o elimina una transacción de caja chica en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar transacciones de caja chica],
    [3. El administrador ingresa los datos de la transacción de caja chica],
    [4. El administrador guarda los datos de la transacción de caja chica],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la transacción de caja chica],
    [3.2. El administrador modifica los datos de la transacción de caja chica],
  ),
)

#caso-de-uso-detallado(
  caption: [Conciliación de caja chica],
  nombre: "Conciliación de caja chica",
  identificador: "CU-027",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "Las transacciones de caja chica deben estar registradas en el sistema",
  postcondición: "La conciliación de caja chica debe estar registrada en el sistema",
  propósito: "Permitir la conciliación de caja chica",
  resumen: "El administrador realiza la conciliación de caja chica en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de conciliación de caja chica],
    [3. El administrador ingresa los datos de la conciliación de caja chica],
    [4. El administrador guarda los datos de la conciliación de caja chica],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la conciliación de caja chica],
    [3.2. El administrador modifica los datos de la conciliación de caja chica],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-37-59.png"),
  caption: [Interfaz de usuario para la gestión de transacciones de caja chica],
)

=== Módulo de Cliente

El módulo de cliente es esencial para la gestión de la información de los clientes dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de registros de clientes. Además, proporciona funcionalidades para la gestión de contactos, historial de compras y generación de informes de clientes.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de clientes],
  nombre: "Gestión de clientes",
  identificador: "CU-028",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "El cliente debe estar registrado en el sistema",
  propósito: "Permitir la gestión de clientes en el sistema",
  resumen: "El administrador registra, modifica o elimina un cliente en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar clientes],
    [3. El administrador ingresa los datos del cliente],
    [4. El administrador guarda los datos del cliente],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del cliente],
    [3.2. El administrador modifica los datos del cliente],
  ),
)

#caso-de-uso-detallado(
  caption: [Historial de compras de clientes],
  nombre: "Historial de compras de clientes",
  identificador: "CU-029",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El cliente debe estar registrado en el sistema",
  postcondición: "El historial de compras del cliente debe estar actualizado en el sistema",
  propósito: "Permitir la consulta del historial de compras de los clientes",
  resumen: "El administrador consulta el historial de compras de un cliente en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de historial de compras de clientes],
    [3. El administrador ingresa los datos del cliente],
    [4. El sistema muestra el historial de compras del cliente],
    [5. El administrador cierra la sesión],
  ),
  curso-alternos: ([3.1. El administrador modifica los datos del historial de compras],),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-38-30.png"),
  caption: [Interfaz de usuario para la gestión de clientes],
)

=== Módulo de Cuenta de Cliente

El módulo de cuenta de cliente es esencial para la gestión de las cuentas y transacciones financieras de los clientes dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de cuentas de clientes. Además, proporciona funcionalidades para la gestión de saldos, estados de cuenta y generación de informes financieros de clientes.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de cuentas de clientes],
  nombre: "Gestión de cuentas de clientes",
  identificador: "CU-030",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La cuenta del cliente debe estar registrada en el sistema",
  propósito: "Permitir la gestión de cuentas de clientes en el sistema",
  resumen: "El administrador registra, modifica o elimina una cuenta de cliente en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar cuentas de clientes],
    [3. El administrador ingresa los datos de la cuenta del cliente],
    [4. El administrador guarda los datos de la cuenta del cliente],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la cuenta del cliente],
    [3.2. El administrador modifica los datos de la cuenta del cliente],
  ),
)

#caso-de-uso-detallado(
  caption: [Consulta de estados de cuenta de clientes],
  nombre: "Consulta de estados de cuenta de clientes",
  identificador: "CU-031",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "La cuenta del cliente debe estar registrada en el sistema",
  postcondición: "El estado de cuenta del cliente debe estar actualizado en el sistema",
  propósito: "Permitir la consulta de estados de cuenta de los clientes",
  resumen: "El administrador consulta el estado de cuenta de un cliente en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de consulta de estados de cuenta de clientes],
    [3. El administrador ingresa los datos del cliente],
    [4. El sistema muestra el estado de cuenta del cliente],
    [5. El administrador cierra la sesión],
  ),
  curso-alternos: ([3.1. El administrador modifica los datos del estado de cuenta],),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-39-17.png"),
  caption: [Interfaz de usuario para la gestión de cuentas de clientes],
)

=== Módulo de Pago Cliente

El módulo de pago cliente es esencial para la gestión de los pagos realizados por los clientes dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de pagos de clientes. Además, proporciona funcionalidades para la verificación de pagos, generación de recibos y actualización de saldos de cuentas de clientes.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de pagos de clientes],
  nombre: "Gestión de pagos de clientes",
  identificador: "CU-032",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "La cuenta del cliente debe estar registrada en el sistema",
  postcondición: "El pago del cliente debe estar registrado en el sistema",
  propósito: "Permitir la gestión de pagos de clientes en el sistema",
  resumen: "El administrador registra, modifica o elimina un pago de cliente en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar pagos de clientes],
    [3. El administrador ingresa los datos del pago del cliente],
    [4. El administrador guarda los datos del pago del cliente],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del pago del cliente],
    [3.2. El administrador modifica los datos del pago del cliente],
  ),
)

#caso-de-uso-detallado(
  caption: [Verificación de pagos de clientes],
  nombre: "Verificación de pagos de clientes",
  identificador: "CU-033",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El pago del cliente debe estar registrado en el sistema",
  postcondición: "El estado del pago debe estar actualizado en el sistema",
  propósito: "Permitir la verificación de los pagos realizados por los clientes",
  resumen: "El administrador verifica los pagos realizados por los clientes y actualiza el estado en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de verificación de pagos de clientes],
    [3. El administrador consulta los datos del pago realizado],
    [4. El sistema muestra el estado del pago],
    [5. El administrador cierra la sesión],
  ),
  curso-alternos: ([3.1. El administrador actualiza el estado del pago],),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-41-12.png"),
  caption: [Interfaz de usuario para la gestión de pagos de clientes],
)

=== Módulo de Facturación

El módulo de facturación es esencial para la gestión de las facturas dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de facturas. Además, proporciona funcionalidades para la generación de facturas, envío de facturas a clientes y generación de informes de facturación.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de facturación],
  nombre: "Gestión de facturación",
  identificador: "CU-034",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La factura debe estar registrada en el sistema",
  propósito: "Permitir la gestión de facturación en el sistema",
  resumen: "El administrador registra, modifica o elimina una factura en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar facturación],
    [3. El administrador ingresa los datos de la factura],
    [4. El administrador guarda los datos de la factura],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la factura],
    [3.2. El administrador modifica los datos de la factura],
  ),
)

#caso-de-uso-detallado(
  caption: [Generación de informes de facturación],
  nombre: "Generación de informes de facturación",
  identificador: "CU-035",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "Las facturas deben estar registradas en el sistema",
  postcondición: "El informe de facturación debe estar generado en el sistema",
  propósito: "Permitir la generación de informes de facturación",
  resumen: "El administrador genera un informe de facturación en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de generar informes de facturación],
    [3. El administrador selecciona el tipo de informe de facturación a generar],
    [4. El administrador guarda los datos del informe de facturación],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la generación del informe de facturación],
    [3.2. El administrador modifica los datos del informe de facturación],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-42-42.png"),
  caption: [Interfaz de usuario para la gestión de facturación],
)

=== Módulo de Nota de Entrega

El módulo de nota de entrega es esencial para la gestión de las notas de entrega dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de notas de entrega. Además, proporciona funcionalidades para la generación de notas de entrega, envío de notas a clientes y actualización del estado de entrega.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de notas de entrega],
  nombre: "Gestión de notas de entrega",
  identificador: "CU-036",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La nota de entrega debe estar registrada en el sistema",
  propósito: "Permitir la gestión de notas de entrega en el sistema",
  resumen: "El administrador registra, modifica o elimina una nota de entrega en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar notas de entrega],
    [3. El administrador ingresa los datos de la nota de entrega],
    [4. El administrador guarda los datos de la nota de entrega],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la nota de entrega],
    [3.2. El administrador modifica los datos de la nota de entrega],
  ),
)

#caso-de-uso-detallado(
  caption: [Verificación de notas de entrega],
  nombre: "Verificación de notas de entrega",
  identificador: "CU-037",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "La nota de entrega debe estar registrada en el sistema",
  postcondición: "El estado de la nota de entrega debe estar actualizado en el sistema",
  propósito: "Permitir la verificación de las notas de entrega",
  resumen: "El administrador verifica las notas de entrega y actualiza el estado en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de verificación de notas de entrega],
    [3. El administrador consulta los datos de la nota de entrega],
    [4. El sistema muestra el estado de la nota de entrega],
    [5. El administrador cierra la sesión],
  ),
  curso-alternos: ([3.1. El administrador actualiza el estado de la nota de entrega],),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-43-17.png"),
  caption: [Interfaz de usuario para la gestión de notas de entrega],
)

=== Módulo de Precio de Producto

El módulo de precio de producto es esencial para la gestión de los precios de los productos dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de los precios de los productos. Además, proporciona funcionalidades para la actualización de precios, generación de informes de precios y control de descuentos y promociones.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de precios de productos],
  nombre: "Gestión de precios de productos",
  identificador: "CU-038",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "El precio del producto debe estar registrado en el sistema",
  propósito: "Permitir la gestión de precios de productos en el sistema",
  resumen: "El administrador registra, modifica o elimina el precio de un producto en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar precios de productos],
    [3. El administrador ingresa los datos del precio del producto],
    [4. El administrador guarda los datos del precio del producto],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del precio del producto],
    [3.2. El administrador modifica los datos del precio del producto],
  ),
)

#caso-de-uso-detallado(
  caption: [Actualización de precios de productos],
  nombre: "Actualización de precios de productos",
  identificador: "CU-039",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El precio del producto debe estar registrado en el sistema",
  postcondición: "El precio del producto debe estar actualizado en el sistema",
  propósito: "Permitir la actualización de precios de productos en el sistema",
  resumen: "El administrador actualiza el precio de un producto en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de actualizar precios de productos],
    [3. El administrador ingresa los nuevos datos del precio del producto],
    [4. El administrador guarda los datos del precio del producto],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la actualización del precio del producto],
    [3.2. El administrador modifica los datos del precio del producto],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-43-38.png"),
  caption: [Interfaz de usuario para la gestión de precios de productos],
)

=== Módulo de Sucursales

El módulo de sucursales es esencial para la gestión de las diferentes sucursales de la empresa dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de las sucursales. Además, proporciona funcionalidades para la actualización de información de las sucursales, generación de informes y control de inventarios por sucursal.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de sucursales],
  nombre: "Gestión de sucursales",
  identificador: "CU-040",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La sucursal debe estar registrada en el sistema",
  propósito: "Permitir la gestión de sucursales en el sistema",
  resumen: "El administrador registra, modifica o elimina una sucursal en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar sucursales],
    [3. El administrador ingresa los datos de la sucursal],
    [4. El administrador guarda los datos de la sucursal],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la sucursal],
    [3.2. El administrador modifica los datos de la sucursal],
  ),
)

#caso-de-uso-detallado(
  caption: [Actualización de información de sucursales],
  nombre: "Actualización de información de sucursales",
  identificador: "CU-041",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "La sucursal debe estar registrada en el sistema",
  postcondición: "La información de la sucursal debe estar actualizada en el sistema",
  propósito: "Permitir la actualización de información de sucursales en el sistema",
  resumen: "El administrador actualiza la información de una sucursal en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de actualizar información de sucursales],
    [3. El administrador ingresa los nuevos datos de la sucursal],
    [4. El administrador guarda los datos de la sucursal],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la actualización de la información de la sucursal],
    [3.2. El administrador modifica los datos de la sucursal],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-44-04.png"),
  caption: [Interfaz de usuario para la gestión de sucursales],
)

=== Módulo de Cambios o Devoluciones

El módulo de cambios o devoluciones es esencial para la gestión de las solicitudes de cambios o devoluciones de productos dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de solicitudes de cambios o devoluciones. Además, proporciona funcionalidades para la verificación de productos devueltos, actualización de inventarios y generación de informes de cambios o devoluciones.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de cambios o devoluciones],
  nombre: "Gestión de cambios o devoluciones",
  identificador: "CU-042",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La solicitud de cambio o devolución debe estar registrada en el sistema",
  propósito: "Permitir la gestión de cambios o devoluciones en el sistema",
  resumen: "El administrador registra, modifica o elimina una solicitud de cambio o devolución en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar cambios o devoluciones],
    [3. El administrador ingresa los datos de la solicitud de cambio o devolución],
    [4. El administrador guarda los datos de la solicitud de cambio o devolución],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la solicitud de cambio o devolución],
    [3.2. El administrador modifica los datos de la solicitud de cambio o devolución],
  ),
)

#caso-de-uso-detallado(
  caption: [Verificación de productos devueltos],
  nombre: "Verificación de productos devueltos",
  identificador: "CU-043",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "La solicitud de cambio o devolución debe estar registrada en el sistema",
  postcondición: "El estado de la solicitud de cambio o devolución debe estar actualizado en el sistema",
  propósito: "Permitir la verificación de los productos devueltos",
  resumen: "El administrador verifica los productos devueltos y actualiza el estado en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de verificación de productos devueltos],
    [3. El administrador consulta los datos de la solicitud de cambio o devolución],
    [4. El sistema muestra el estado de la solicitud de cambio o devolución],
    [5. El administrador cierra la sesión],
  ),
  curso-alternos: ([3.1. El administrador actualiza el estado de la solicitud de cambio o devolución],),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-44-46.png"),
  caption: [Interfaz de usuario para la gestión de cambios o devoluciones],
)

=== Módulo de Impuestos

El módulo de impuestos es esencial para la gestión de los impuestos dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de los impuestos aplicables a productos y servicios. Además, proporciona funcionalidades para la actualización de tasas impositivas, generación de informes de impuestos y control de pagos de impuestos.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de impuestos],
  nombre: "Gestión de impuestos",
  identificador: "CU-044",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "El impuesto debe estar registrado en el sistema",
  propósito: "Permitir la gestión de impuestos en el sistema",
  resumen: "El administrador registra, modifica o elimina un impuesto en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar impuestos],
    [3. El administrador ingresa los datos del impuesto],
    [4. El administrador guarda los datos del impuesto],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro del impuesto],
    [3.2. El administrador modifica los datos del impuesto],
  ),
)

#caso-de-uso-detallado(
  caption: [Actualización de tasas impositivas],
  nombre: "Actualización de tasas impositivas",
  identificador: "CU-045",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "El impuesto debe estar registrado en el sistema",
  postcondición: "La tasa impositiva debe estar actualizada en el sistema",
  propósito: "Permitir la actualización de tasas impositivas en el sistema",
  resumen: "El administrador actualiza la tasa impositiva de un impuesto en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de actualizar tasas impositivas],
    [3. El administrador ingresa los nuevos datos de la tasa impositiva],
    [4. El administrador guarda los datos de la tasa impositiva],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la actualización de la tasa impositiva],
    [3.2. El administrador modifica los datos de la tasa impositiva],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-45-31.png"),
  caption: [Interfaz de usuario para la gestión de impuestos],
)

=== Módulo de Asistencia de Empleados

El módulo de asistencia de empleados es esencial para la gestión de la asistencia de los empleados dentro del sistema de información administrativa. Este módulo permite a los administradores gestionar la creación, modificación y seguimiento de los registros de asistencia de los empleados. Además, proporciona funcionalidades para la generación de informes de asistencia, control de ausencias y permisos.

==== Casos de Uso Detallado

#caso-de-uso-detallado(
  caption: [Gestión de asistencia de empleados],
  nombre: "Gestión de asistencia de empleados",
  identificador: "CU-046",
  actores: "Administrador (I), Empleado",
  tipo: "Primario",
  referencia: "",
  precondición: "El sistema debe estar en funcionamiento",
  postcondición: "La asistencia del empleado debe estar registrada en el sistema",
  propósito: "Permitir la gestión de la asistencia de los empleados en el sistema",
  resumen: "El administrador registra, modifica o elimina un registro de asistencia de un empleado en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de gestionar asistencia de empleados],
    [3. El administrador ingresa los datos de la asistencia del empleado],
    [4. El administrador guarda los datos de la asistencia del empleado],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela el registro de la asistencia del empleado],
    [3.2. El administrador modifica los datos de la asistencia del empleado],
  ),
)

#caso-de-uso-detallado(
  caption: [Generación de informes de asistencia],
  nombre: "Generación de informes de asistencia",
  identificador: "CU-047",
  actores: "Administrador (I)",
  tipo: "Primario",
  referencia: "",
  precondición: "Los registros de asistencia deben estar registrados en el sistema",
  postcondición: "El informe de asistencia debe estar generado en el sistema",
  propósito: "Permitir la generación de informes de asistencia",
  resumen: "El administrador genera un informe de asistencia en el sistema",
  curso-normal: (
    [1. El administrador inicia sesión en el sistema],
    [2. El administrador selecciona la opción de generar informes de asistencia],
    [3. El administrador selecciona el tipo de informe de asistencia a generar],
    [4. El administrador guarda los datos del informe de asistencia],
    [5. El sistema muestra un mensaje de confirmación],
    [6. El administrador cierra la sesión],
  ),
  curso-alternos: (
    [3.1. El administrador cancela la generación del informe de asistencia],
    [3.2. El administrador modifica los datos del informe de asistencia],
  ),
)

==== Interfaz

#figure(
  image("assets/2024-11-18-11-46-22.png"),
  caption: [Interfaz de usuario para la gestión de asistencia de empleados],
)

=== Diagrama de Entidad-Relación
El diagrama de entidad-relación (ERD) es una representación gráfica de las entidades y sus relaciones dentro del sistema de información administrativa. A continuación, se presenta un ejemplo de un ERD para el sistema de información administrativa que incluye algunas de las entidades y relaciones más importantes.

#figure(
  image("assets/erd.svg"),
  caption: [Diagrama de entidad-relación para el sistema de información administrativa],
)


=== Diagrama de Clases

El diagrama de clases es una representación gráfica de las clases y sus relaciones dentro del sistema de información administrativa. A continuación, se presenta un ejemplo de un diagrama de clases para el sistema de información administrativa que incluye algunas de las clases y relaciones más importantes.

#figure(
  image("assets/clases.png"),
  caption: [Diagrama de clases para el sistema de información administrativa],
)

*Cliente*:
- *Atributos*: cliente_id, nombre, correo, teléfono
- *Métodos*: realizarOrden(), realizarPago()
- *Relaciones*: Cliente realiza Orden, Pago

*Producto*:
- *Atributos*: producto_id, nombre, precio, stock
- *Métodos*: actualizarPrecio(), actualizarStock()
- *Relaciones*: Producto pertenece a Inventario, Orden

*Orden*:
- *Atributos*: orden_id, fecha, estado
- *Métodos*: crearOrden(), modificarOrden(), eliminarOrden()
- *Relaciones*: Orden contiene Producto, Cliente

*Factura*:
- *Atributos*: factura_id, fecha, monto
- *Métodos*: generarFactura()
- *Relaciones*: Factura pertenece a Orden

*Pago*:
- *Atributos*: pago_id, fecha, monto
- *Métodos*: registrarPago()
- *Relaciones*: Pago pertenece a Cliente, Factura

*Inventario*:
- *Atributos*: inventario_id, ubicación
- *Métodos*: actualizarInventario()
- *Relaciones*: Inventario contiene Producto

*Sucursal*:
- *Atributos*: sucursal_id, nombre, dirección, teléfono
- *Métodos*: actualizarInformacion()
- *Relaciones*: Sucursal tiene Inventario

*Impuesto*:
- *Atributos*: impuesto_id, nombre, tasa
- *Métodos*: actualizarTasa()
- *Relaciones*: Impuesto aplica a Producto

*Asistencia*:
- *Atributos*: asistencia_id, fecha, estado
- *Métodos*: registrarAsistencia()
- *Relaciones*: Asistencia pertenece a Empleado

== Cronograma de Implementación
