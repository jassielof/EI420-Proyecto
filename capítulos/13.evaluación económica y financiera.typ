= Evaluación Económica y Financiera
En el presente capítulo, se analizará el proyecto respecto a dos análisis diferentes, uno de ellos el flujo de caja sin financiamiento y otro mediante el flujo de caja con financiamiento, de esta manera, se mide por medio de indicadores conocidos como el Valor Actual Neto y la Tasa Interna de Retorno, los resultados que se obtienen de cada flujo, tomando en cuenta distintas tasas de descuentos a la hora de llevar al presente los flujos de caja, ya que, para un escenario sin financiamiento, se toma como tasa de descuento el Costo de oportunidad y para el escenario con financiamiento, el Costo Promedio Ponderado de Capital.

== Escenario Sin Financiamiento
En el escenario sin financiamiento, se elaboró un flujo de caja sin financiamiento, es decir, se consideró que toda la inversión fue hecha con aporte propio.

=== Cálculo del Costo de Oportunidad
El costo de oportunidad es la rentabilidad mínima que exige un inversionista para aplicar el dinero en un determinado proyecto. Esta expectativa se calcula en porcentaje y debe reflejar el riesgo de la inversión. Para determinar el porcentaje mencionado del presente proyecto, se deberá utilizar la fórmula del modelo de CAPM-Cost Asset Pricing Model, el cual toma como base una tasa libre de riesgo, asume que la empresa cotiza en bolsa, la rentabilidad del mercado está acorde al riesgo mismo y el grado de sensibilidad puede ser medido. La fórmula del modelo es la siguiente:

#figure(
  $ r_E = r_f + beta (r_M - r_f) + Delta R P $,
  caption: [Fórmula del costo de oportunidad],
  kind: math.equation
)

Donde:

- $r_E$: Costo de capital propio o CAPM
- $r_f$: Tasa libre de riesgo
- $beta$: Beta
- $r_M$: Tasa de rentabilidad del mercado
- $(r_M - r_f)$: Premio por riesgo de la inversión del mercado
- $beta (r_M - r_f)$: Premio por el riesgo de inversión de la empresa
- $Delta R P$: Riesgo País

Para determinar los valores a ser utilizados dentro de la fórmula, se obtuvieron datos de fuentes como, Damodaran y el INE. Primero, se determinó el rubro de la empresa, al ser una empresa que es de agricultura, se la categorizó dentro de la industria “Farming/Agriculture”. Luego de haberla categorizado, se obtuvieron los datos relevantes para determinar el porcentaje de costo de oportunidad.

=== Flujo de Caja Sin Financiamiento
#image("assets/2024-12-19-07-19-05.png")

#figure(
  $ C_O = C_n / (1 + i)^n $,
  caption: [Fórmula del flujo de caja actualizado],
  kind: math.equation
)

Donde:

- $C_O$: Flujo de caja actualizado
- $C_n$: Flujo de caja nominal
- $i$: Tasa del costo de oportunidad
- $n$: Periodo

Posteriormente, se obtiene el flujo de caja acumulativo, que es la suma del flujo de caja del año anterior más el flujo de caja del año actual.

Se observa en la tabla que el proyecto tiene un flujo de caja negativo en el año 0, pero a partir del año 1 hasta el año 5, los flujos de caja se vuelven positivos, indicando una mejora en la liquidez del proyecto a lo largo del horizonte de planeación. De igual manera, se observa que para el flujo de caja actualizado se obtienen resultados similares, con flujos de caja negativos en el año 0 y positivos en los años siguientes.

=== Análisis de los Indicadores Financieros
Los indicadores financieros que se calcularon fueron el VAN (valor actual neto) y la TIR (tasa interna de retorno). Ambas son dos herramientas que sirven para evaluar la rentabilidad de un proyecto.

==== Valor Actual Neto (VAN)
El Valor actual neto (VAN) es un método de valoración de inversiones que consiste en traer al presente todos los flujos de caja, mediante una tasa de descuento, de manera que se analice la rentabilidad del proyecto. Cabe destacar que el VAN traduce ingresos y egresos a su valor equivalente en el período 0. Su interpretación es muy simple, si el VAN es mayor o igual a 0, el proyecto se acepta, caso contrario se rechaza.

#figure(
  $ "VAN" = -I_0 + sum_(j=1)^(n)((F N j) / (1 + i)^j) $,
  caption: [Fórmula del valor actual neto],
  kind: math.equation
)

Donde:

- $I_0$: Inversión inicial
- $F N j$: Flujo de caja neto del año j
- $i$: Tasa de descuento (costo de oportunidad)
- $n$: Horizonte de planeación
- $j$: Periodo

Se obtuvo lo siguiente: $"VAN" = 545,266.93 "BOB"$.

==== Tasa Interna de Retorno (TIR)
La Tasa Interna de Retorno (TIR), es la tasa de descuento de un proyecto que permite que el VAN sea igual a la inversión. La TIR es la tasa máxima que se puede pedir como accionista, dado que, si se exige una tasa de retorno mayor, el VAN se volvería negativo.

#figure(
  $ "TIR" = sum_(t=1)^(n)(("FC" t) / (1 + i)^t) - I_0 = 0 $,
  caption: [Fórmula de la tasa interna de retorno],
  kind: math.equation
)

Donde:

- $"FC" t$: Flujo de caja del año t
- $i$: Tasa de descuento
- $I_0$: Inversión inicial
- $n$: Horizonte de planeación
- $t$: Periodo

Se obtuvo lo siguiente:
- $"TIR" = 3077%$
- $"TIR"_m = 196%$

== Escenario Con Financiamiento
En este momento, no se requiere de un escenario de financiamiento adicional, dado que la avícola DON LUCAS cuenta con los recursos, infraestructura y capacidades operativas necesarias para llevar a cabo la producción de la cantidad de productos que se tiene previsto comercializar, lo cual le permite asumir la demanda sin necesidad de apoyo externo en términos financieros.
