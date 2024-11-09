#import "template/upsa-bo/estudio-de-factibilidad/lib.typ": *

#show: estudio-de-factibilidad.with(
  título: [Estudio de Factibilidad para la Producción y Comercialización de Huevos API (Aptos para la Incubación)],
  materia: [EI420 (Grupo D): Elaboración y Evaluación de Proyectos],
  fecha: [Segundo Semestre, 2024],
  docente: [Ing. Juan Carlos Paz Parada],
  estudiantes: [
    #grid(
      columns: 2,
      align: (right, left),
      gutter: 1em,
      [Farid Baddour Omar#super[1]], [2021111423],
      [Ruth Karina Chavez Carbajal#super[2]], [2021117367],
      [Javier Saldias Chavez#super[2]], [2018117700],
      [Luis Enrique Franco Egüez#super[5]], [2021113035],
      [Jassiel Ovando Franco#super[4]], [2021117600],
      [Elias Maldonado Ugarteche#super[3]], [2020113384],
      [Ernesto Josue Rocha Padilla#super[5]], [2018121022],
      [Adriel Tellez Romero#super[5]], [2021114431],
    )
  ],
  facultades-carreras: [
    #super[1] FACE: Facultad de Ciencias Empresariales, Auditoría y Finanzas \
    #super[2] FACE: Facultad de Ciencias Empresariales, Ingeniería Comercial \
    #super[3] FACE: Facultad de Ciencias Empresariales, Comercio Internacional \
    #super[4] FAI: Facultad de Ingeniería, Ingeniería de Sistemas \
    #super[5] FAI: Facultad de Ingeniería, Ingeniería Industrial y de Sistemas \
  ],
  // abstracto: lorem(50),
  // resumen-ejecutivo: lorem(50),
)

#[
  #show: contenido-principal.with()
  
  #include "capítulos/1.introducción.typ"
  #include "capítulos/2.marco teórico.typ"
  #include "capítulos/3.diagnóstico interno de la empresa.typ"
  #include "capítulos/4.estudio de la materia prima e insumos.typ"
  #include "capítulos/5.estudio de mercado.typ"
  #include "capítulos/6.localización y tamaño.typ"
  #include "capítulos/7.estudio de ingeniería.typ"
  #include "capítulos/8.inversiones.typ"
  #include "capítulos/9.presupuesto de ingresos y costos.typ"
  // #include "capítulos/10.financiamiento.typ"
  // #include "capítulos/11.evaluación social y ambiental.typ"
  // #include "capítulos/12.diseño de la organización.typ"
  // #include "capítulos/13.evaluación económica y financiera.typ"
  // #include "capítulos/14.conclusiones y recomendaciones.typ"
]

#bibliography(
  "referencias.yml",
  full: true,
  title: [Bibliografía y Referencias],
  style: "apa",
)

#[
  #show: anexos.with()
  
  #include "anexos/1.instrumentos de recolección.typ"
  // #include "anexos/2.propios de la investigación.typ"
  // #include "anexos/3.cálculos-tablas-cotizaciones.typ"
  // #include "anexos/4.cv.typ"
]
