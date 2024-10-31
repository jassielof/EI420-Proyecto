// Instrumentos para la recolección de información (guías de entrevistas, cuestionarios, etc)
= Instrumentos para la Recolección de Información

== Cuestionario de Huevos Fecundados API
+ Código
+ Código de exportador
+ Género
  - Femenino
  - Masculino
  - Prefiero no decirlo
+ Edad
  - 18--25 años
  - 26--35 años
  - 36--45 años
  - 46--55 años
  - 56--65 años
  - $>=$ 66 años
+ ¿Nombre de la empresa en la que trabajas actualmente? (_Poner número/código de la empresa_)
  + ¿Actualmente qué cargo ocupa en la empresa?
  + ¿En qué zona, referente a la ciudad, se encuentra la empresa?
    - Norte
    - Noroeste
    - Este
    - Sudeste
    - Sur
    - Suroeste
    - Este
    - Noroeste
+ ¿Conocen alguna empresa en la producción y comercialización de huevos fértiles de alta calidad para incubación?
  - Sí
    + ¿Qué empresa?
    + ¿Qué piensan acerca de esa empresa? (_siendo 1 muy malo y 5 muy bueno_)
      - 1
      - 2
      - 3
      - 4
      - 5
  - No
+ ¿El mes de agosto su empresa compró huevos API?
  - Sí
    + ¿De qué empresa compró los huevos API?
    + ¿Cuánta cantidad compró?
      - $<$ 1000 unidades
      - 1001--5000 unidades
      - 5001--10000 unidades
      - $>$ 10000 unidades 
    + ¿Le realizan algún descuento por comprar en grandes cantidades?
      - Sí
      - No
    + ¿Qué tipo de descuentos?
      - Descuento en el precio
      - Transporte incluido
      - Otro: (_especificar_)
    + ¿Recibe promociones o descuentos personalizados en función de tus compras previas? 
      - Sí
      - No
    + ¿Participa en un programa de fidelidad por comprar huevos API en esa empresa?  
      - Sí
      - No
    + ¿Le informaron sobre un mínimo y máximo de unidades de huevos que debía comprar al realizar su pedido?
      - Sí, se me informó sobre ambos (mínimo y máximo).
      - Sí, se me informó solo sobre un mínimo.
      - Sí, se me informó solo sobre un máximo.
      - No, no se me informó sobre ningún límite.
      - No estoy seguro.
    + ¿Cuál fue el mínimo de unidades de huevos que le informaron que debía comprar?
      - Mínimo: (_especificar_) unidades
    + ¿Cuál fue el máximo de unidades de huevos que le informaron que debía comprar?
      - Máximo: (_especificar_)
    + ¿Cuánto pagó en esa compra de huevos API?
    + ¿Por cuál medio realizó el pedido?
      - Tienda física
      - Tienda online
      - Por contacto directo
    + ¿Cuáles eran las características más importantes de los huevos API que compró?
    + Los huevos API que compró presentaban alguna de estas características:
      - Forma ovalada y uniformes
      - Peso entre 50 y 70 gramos
      - Buen grosor y resistencia
      - Libre de suciedad pero no lavados
      - Provenientes de gallos y gallinas sexualmente maduros y fértiles
      - Huevos de aves reproductoras en su mejor edad (generalmente entre las 30 y 50 semanas de edad)
      - Sin Defectos Estructurales
      - Porcentaje alto de eclosionalidad e incubabilidad
    + ¿Con cuánto tiempo de anticipación realizaron el pedido de huevos API para garantizar la entrega en condiciones óptimas?
      - $<$ 1 semana
      - 1--2 semanas
      - 2--4 semanas
      - $>$ 1 mes
    + ¿Qué tipo de envases utilizaron para proteger los huevos durante el transporte hacia su empresa?
    + ¿El envase contaba con un sistema especial para evitar que los huevos se dañen o pierdan su viabilidad? 
      - Sí
      - No
    + ¿El envase permitía la ventilación o control de temperatura para mantener las condiciones óptimas para la incubación?
      - Sí
      - No
    + ¿Compró los huevos API al contado o a crédito?
      - Contado
      - Crédito.
        + ¿Qué documentos o garantías presentó para solicitar el pago a crédito?
          - Ningún documento
          - Solo mi historial de compras
          - Garantía personal
          - Garantía bancaria
          - Otro: (_especificar_)
        + ¿Qué tipo de condiciones le ofrecieron para el crédito?
          - Un interés bajo
          - Condiciones flexibles de pago
          - Otro: (_especificar_)
        + ¿De cuánto fue el primer pago del crédito para la compra de huevos API?
          - 10% del total
          - 25% del total
          - 50% del total
          - Otro: (_especificar_)
        + ¿Cómo se dividieron los plazos de pagos?
        + ¿Cuánto aumentó el precio a diferencia de pagar al contado?
  - No
+ ¿Cuál es su red social preferida?
  - Instagram
  - TikTok
  - YouTube
  - Twitter
  - Otros
+ ¿Cuál es su aplicación móvil preferida?
  - WhatsApp
  - Messenger
  - Telegram
  - Snapchat
  - Otros
+ ¿Quedó satisfecho con su compra?  (siendo 1 muy malo y 5 muy bueno) (_después de la mezcla_)
  - 1
  - 2
  - 3
  - 4
  - 5
+ ¿Por qué compró de esa empresa los huevos API? 
  - Precio unitario
  - Calidad de los huevos (_especificar_)
  - Cumplimiento de plazos de entrega
  - Asesoría técnica
  - Condiciones de pago
  - Formas de compra (online, tienda física)
  - Ubicación geográfica
  - Otros
+ ¿Te cambiarías de proveedor? 
  - Sí
    + ¿Por qué motivo te cambiarías proveedor? 
  - No
    + ¿Por qué motivo no te cambiarías proveedor?

== Lista de Empresas Encuestadas

#[
#show table.cell: it => {
  if it.x == 0 or it.y == 0 {
    text(weight: "bold", it)
  } else {
    it
  }
}

#show table.cell: set par(leading: 1em)

#figure(
    table(
      columns: 5,
      table.header([Provincia], [Municipio], [Razón Social], [Dirección], [Teléfono]),
      table.hline(),
      [Cordillera], [Cabezas], [EL PICHÓN, PLANTA DE INCUBACIÓN], [Kilómetro 118 Carretera a Camiri], [3579231],
      [Andrés Ibáñez], [Santa Cruz de la Sierra], [INCOAVE S.R.L.], [Kilómetro 8 Carretera a Cotoca], [75002496],
      [Warnes], [Warnes], [INCUBADORA LA ESPERANZA, AVÍCOLA ESPINOZA], [Warnes, La Esperanza], [78978242],
      [Cordillera], [Cabezas], [PLANTA DE INCUBACIÓN 3], [Kilómetro 70 Carretera a Camiri], [3-3462717],
      [Obispo Santiesteban], [Mineros], [PLANTA DE INCUBACIÓN AVÍCOLA URKUPIÑA], [Localidad La Porfía], [71018043],
      [Andrés Ibáñez], [La Guardia], [SAN SILVESTRE, PLANTA DE INCUBACIÓN], [Kilómetro 45 Carretera a Camiri], [3-3573284],
      [Cordillera], [Cabezas], [PLANTA DE INCUBACIÓN, DON MATTEO], [Kilómetro 62 Carretera a Camiri Entrando 12 Kilómetro.], [75762974],
      [Andrés Ibáñez], [Santa Cruz de la Sierra], [PLANTA DE INCUBACIÓN GUILLERMO FERNÁNDEZ], [Kilómetro 11 Carretera al Norte, UV. 346 Mza. 01], [76970921],
      [Andrés Ibáñez], [La Guardia], [PLANTA DE INCUBACIÓN, MARIO ANGLARILL], [Kilómetro 5 Carretera a Camiri], [3462717, 3462717],
      [Andrés Ibáñez], [La Guardia], [PLANTA DE INCUBACIÓN REP. PESADAS], [La Guardia Kilómetro 17 ½], [67979281],
      [Cordillera], [Cabezas], [PLANTA DE INCUBACIÓN RÍO SECO], [Kilómetro 111 Carretera a Camiri], [76647468],
      [Warnes], [Warnes], [PLANTA DE INCUBACIÓN SANTA ROSITA, AVIC. WARNES], [Kilómetro. 2 Carretera a La Bélgica], [76003562],
      [Warnes], [Warnes], [PLANTA INCUBADORA], [Los Chacos], [3231852],
      [Warnes], [Warnes], [PLANTA INCUBADORA EL RANCHO], [Kilómetro. 22 Carretera al Norte], [75065063],
      [Warnes], [Warnes], [PROAVI S.A. PILAT 2], [Warnes Parque Industrial Latinoamericano], [71733817],
      [Ichilo], [Buena Vista], [PROAVI S.A., PLANTA DE INCUBACIÓN], [La Arboleda], [71733817],
      [Warnes], [Warnes], [PROAVI S.A., PLANTA DE INCUBACIÓN III], [Parque Industrial Latinoamericano], [71735571],
      [Sara], [Colpa Bélgica], [PRODASA, PLANTA DE INCUBACIÓN "AMBAIBAL"], [Kilómetro 17 Camino a Bisito], [3523910],
      [Andrés Ibáñez], [El Torno], [VIRGEN DEL ROSARIO - PLANTA DE INCUBACIÓN], [Kilómetro 45 Carr. Antigua a Cochabamba (Jorochito)], [76392811],
    ),
    caption: [Lista de Empresas Encuestadas],
  ) <tab:empresas-encuestadas>
]