= Presupuesto de Ingresos y Costos
Un presupuesto es una suposición previa que permite hacer una proyección de los ingresos, costos, gastos, impuestos para obtener la utilidad después de impuestos UDI. y determinar el punto de equilibrio.

== Ingresos
=== Proyección de Ventas
#figure(
  caption: [Proyección de Ventas],
  align(center)[#table(
      columns: (11.76%, 20.24%, 19.65%, 21.65%, 26.71%),
      align: (auto, auto, auto, auto, auto),
      table.header(
        table.cell(align: center, rowspan: 2)[#strong[Año];],
        table.cell(align: center, colspan: 4)[#strong[Huevos
            API];],
        table.cell(align: center)[#strong[Plan de ventas
            Anual];],
        table.cell(align: center)[#strong[Plan de ventas
            Mensual];],
        table.cell(align: center)[#strong[Plan de ventas
            Semanal];],
        table.cell(align: center)[#strong[Plan de ventas
            Diaria];],
        table.cell(align: center)[1],
        table.cell(align: center)[28800],
        table.cell(align: center)[2400],
        table.cell(align: center)[600],
        table.cell(align: center)[86],
        table.cell(align: center)[2],
        table.cell(align: center)[57600],
        table.cell(align: center)[4800],
        table.cell(align: center)[1200],
        table.cell(align: center)[172],
        table.cell(align: center)[3],
        table.cell(align: center)[86400],
        table.cell(align: center)[7200],
        table.cell(align: center)[1800],
        table.cell(align: center)[258],
        table.cell(align: center)[4],
        table.cell(align: center)[115200],
        table.cell(align: center)[9600],
        table.cell(align: center)[2400],
        table.cell(align: center)[343],
        table.cell(align: center)[5],
        table.cell(align: center)[144000],
        table.cell(align: center)[12000],
        table.cell(align: center)[3000],
        table.cell(align: center)[429],
      ),
      table.hline(),
    )],
  kind: table,
)

=== Precios Unitarios
El precio Unitario de cada huevo API sería de Bs. 62.45. Tomando en cuenta que los costos de producción anual son de Bs 1,844,632.59. Donde los costos laborales son de Bs 1,838,682.72, y el Costo de Insumos es de Bs 5,950.88.

=== Ingresos
#figure(
  caption: [Ingresos],
  align(center)[#table(
      columns: (11.76%, 20.24%, 19.65%, 21.65%, 26.71%),
      align: (auto, auto, auto, auto, auto),
      table.header(
        table.cell(align: center, rowspan: 2)[#strong[Año];],
        table.cell(align: center, colspan: 4)[#strong[Huevos
            API];],
        table.cell(align: center)[#strong[Ingresos
            Anuales];],
        table.cell(align: center)[#strong[Ingresos
            Mensual];],
        table.cell(align: center)[#strong[Ingresos
            Semanal];],
        table.cell(align: center)[#strong[Ingresos Diarios];],
        table.cell(align: center)[1],
        table.cell(align: center)[1,798,560.00],
        table.cell(align: center)[149,880.00],
        table.cell(align: center)[37,470.00],
        table.cell(align: center)[5,370.70],
        table.cell(align: center)[2],
        table.cell(align: center)[3,597,120.00],
        table.cell(align: center)[299,760.00],
        table.cell(align: center)[74,940.00],
        table.cell(align: center)[10,741.40],
        table.cell(align: center)[3],
        table.cell(align: center)[5,395,680.00],
        table.cell(align: center)[449,640.00],
        table.cell(align: center)[112,410.00],
        table.cell(align: center)[16,112.10],
        table.cell(align: center)[4],
        table.cell(align: center)[7,194,240.00],
        table.cell(align: center)[599,520.00],
        table.cell(align: center)[149,880.00],
        table.cell(align: center)[21,420.35],
        table.cell(align: center)[5],
        table.cell(align: center)[8,992,800.00],
        table.cell(align: center)[749,400.00],
        table.cell(align: center)[187,350.00],
        table.cell(align: center)[26,791.05],
      ),
      table.hline(),
    )],
  kind: table,
)

== Costo del Producto
El costo del producto es Bs 1,844,632.59.

== Gastos
Los gastos son Bs 1,838,682.72,

== Impuestos
El IVA serian aproximadamente Bs 300.000, mientras que el IUE para calcularlo tenemos que realizar los ingresos, menos los costos y gastos totales, dando una utilidad de 433,231.64Bs, y el impuesto viene a ser de 108,307.91Bs

== Estado de Resultados
=== Sin Financiamiento
#figure(
  image("assets/2024-11-21-09-57-02.png"),
  caption: [Estado de Resultados sin Financiamiento],
)

=== Con Financiamiento
#figure(
  caption: [Estado de Resultados con Financiamiento],
  [
    #image("assets/2024-11-22-14-04-05.png")
    #image("assets/2024-11-22-14-05-04.png")
    #image("assets/2024-11-22-14-05-14.png")
  ],
)

== Punto de Equilibrio

#figure(
  caption: [Punto de Equilibrio],
  $ "Punto de equilibrio" = 472,000 / (80 - 63.33) = 472,00 / 16.67 approx 28,320 $,
  kind: math.equation,
)

El punto de equilibrio es de 28,320 huevos para cubrir todos los costos fijos y variables. Esto significa que necesitas vender al menos 28,320 huevos para no tener ni ganancias ni pérdidas. Cualquier venta por encima de este número generará ganancias.
