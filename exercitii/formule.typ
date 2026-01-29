#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 2cm),
  numbering: "1 / 1",
)

#set text(
  font: "New Computer Modern",
  size: 10.5pt,
  lang: "ro",
)

#show table.cell.where(y: 0): set text(weight: "bold")
#show table.cell: set align(center + horizon)

#align(center)[
  #block(inset: 15pt)[
    #text(size: 22pt, weight: "bold")[Memorator Complet de Analiză Matematică]

    #text(size: 11pt, style: "italic")[Sinteză de Formule: Trigonometrie, Șiruri, Derivate și Integrale]
  ]
]

#line(length: 100%, stroke: 0.7pt)

= 1. Fundamente Trigonometrice

== 1.1. Formule Trigonometrice Esențiale

#table(
  columns: (1fr, 1.2fr, 1.2fr),
  inset: 10pt,
  stroke: 0.5pt + gray,
  [Tip Relație], [Expresie Matematică 1], [Expresie Matematică 2],
  [Fundamentale], [$sin^2 x + cos^2 x = 1$], [$tan x = sin x / cos x$],
  [Unghi Dublu], [$sin 2 x = 2 sin x cos x$], [$cos 2 x = cos^2 x - sin^2 x$],
  [Linearizare], [$sin^2 x = (1 - cos 2 x) / 2$], [$cos^2 x = (1 + cos 2 x) / 2$],
  [Sume $arrow$ Produs],
  [$sin x + sin y = 2 sin((x + y) / 2) cos((x - y) / 2)$],
  [$cos x + cos y = 2 cos((x + y) / 2) cos((x - y) / 2)$],

  [Diferențe $arrow$ Produs],
  [$sin x - sin y = 2 sin((x - y) / 2) cos((x + y) / 2)$],
  [$cos x - cos y = - 2 sin((x - y) / 2) sin((x + y) / 2)$],

  [Tangenta jumătății], [$sin x = (2 t) / (1 + t^2)$], [$cos x = (1 - t^2) / (1 + t^2), t = tan(x/2)$],
)


= 2. Șiruri și Serii Numerice

== 2.1. Criterii de Convergență pentru Serii ($sum x_n, x_n > 0$)

#table(
  columns: (1fr, 2fr, 1.5fr),
  inset: 10pt,
  fill: (x, y) => if y == 0 { gray.lighten(80%) },
  [Criteriu], [Definiție Limită / Condiție], [Interpretare],
  [Raportului (d'Alembert)], [$D = lim_(n -> infinity) x_(n+1) / x_n$], [$D < 1 arrow$ conv. ; $D > 1 arrow$ div.],
  [Rădăcinii (Cauchy)], [$C = lim_(n -> infinity) n root(n, x_n)$], [$C < 1 arrow$ conv. ; $C > 1 arrow$ div.],
  [Raabe-Duhamel], [$R = lim_(n -> infinity) n (x_n / x_(n+1) - 1)$], [$R > 1 arrow$ conv. ; $R < 1 arrow$ div.],
  [Leibniz (Serii alternate)], [$sum (-1)^n a_n, a_n arrow 0$ descrescător], [Serie convergentă],
)


= 3. Calcul Diferențial (Derivare)

== 3.1. Tabelul Derivatelor Fundamentale

#table(
  columns: (1fr, 1.5fr),
  inset: 9pt,
  [Funcție $f(x)$], [Derivată $f'(x)$],
  [$c$ (constantă)], [$0$],
  [$x^n$], [$n x^(n-1)$],
  [$e^x$], [$e^x$],
  [$a^x$], [$a^x ln a$],
  [$ln x$], [$1 / x$],
  [$log_a x$], [$1 / (x ln a)$],
  [$sin x$], [$cos x$],
  [$cos x$], [$- sin x$],
  [$tan x$], [$1 / cos^2 x$],
  [$cot x$], [$- 1 / sin^2 x$],
  [$arcsin x$], [$1 / sqrt(1 - x^2)$],
  [$arccos x$], [$- 1 / sqrt(1 - x^2)$],
  [$arctan x$], [$1 / (1 + x^2)$],
  [$"arcctg" x$], [$- 1 / (1 + x^2)$],
)


#pagebreak()

= 4. Calcul Integral

== 4.1. Tabelul Integralelor Nedefinite (Primitive)

#table(
  columns: (1fr, 2fr),
  inset: 10pt,
  [Funcție $f(x)$], [Integrală $integral f(x) d x$],
  [$x^n$], [$x^(n+1) / (n+1) + C, n != -1$],
  [$1 / x$], [$ln |x| + C$],
  [$e^x$], [$e^x + C$],
  [$a^x$], [$a^x / ln a + C$],
  [$sin x$], [$- cos x + C$],
  [$cos x$], [$sin x + C$],
  [$1 / cos^2 x$], [$tan x + C$],
  [$1 / sin^2 x$], [$- cot x + C$],
  [$1 / (x^2 + a^2)$], [$1 / a arctan(x / a) + C$],
  [$1 / (x^2 - a^2)$], [$1 / (2 a) ln |(x - a) / (x + a)| + C$],
  [$1 / sqrt(a^2 - x^2)$], [$arcsin(x / a) + C$],
  [$1 / sqrt(x^2 + a^2)$], [$ln |x + sqrt(x^2 + a^2)| + C$],
  [$1 / sqrt(x^2 - a^2)$], [$ln |x + sqrt(x^2 - a^2)| + C$],
)


== 4.2. Metode de Calcul Integral și Reguli

- *Integrarea prin părți:* $integral f(x) g'(x) d x = f(x) g(x) - integral f'(x) g(x) d x$
- *Schimbarea de variabilă (I):* $integral f(u(x)) u'(x) d x = F(u(x)) + C$
- *Schimbarea de variabilă (II):* $integral f(x) d x = integral f(phi(t)) phi'(t) d t$


= 5. Dezvoltări în Serie Maclaurin

#table(
  columns: (1fr, 2.5fr),
  inset: 10pt,
  [Funcție], [Serie de Puteri (Centrată în $0$)],
  [$e^x$], [$sum_(n=0)^(infinity) x^n / n! = 1 + x + x^2 / 2! + x^3 / 3! + dots$],
  [$sin x$], [$sum_(n=0)^(infinity) (-1)^n x^(2 n + 1) / ((2 n + 1)!) = x - x^3 / 3! + x^5 / 5! - dots$],
  [$cos x$], [$sum_(n=0)^(infinity) (-1)^n x^(2 n) / ((2 n)!) = 1 - x^2 / 2! + x^4 / 4! - dots$],
  [$ln(1+x)$], [$sum_(n=1)^(infinity) (-1)^(n-1) x^n / n = x - x^2 / 2 + x^3 / 3 - dots$],
  [$1 / (1-x)$], [$sum_(n=0)^(infinity) x^n = 1 + x + x^2 + x^3 + dots, |x| < 1$],
)


= 6. Analiză Multivariabilă

- *Gradientul:* $nabla f(x, y) = ( (diff f) / (diff x), (diff f) / (diff y) )$
- *Diferențiala:* $d f = (diff f) / (diff x) d x + (diff f) / (diff y) d y$
- *Matricea Hessiană:* $H(f) = mat((diff^2 f) / (diff x^2), (diff^2 f) / (diff x diff y); (diff^2 f) / (diff y diff x), (diff^2 f) / (diff y^2))$
- *Iacobianul (Polare):* $x = r cos theta, y = r sin theta arrow det(J) = r$

#v(1.5cm)

#block(fill: gray.lighten(95%), inset: 12pt, radius: 4pt, stroke: 0.5pt + gray)[
  #text(weight: "bold")[Note Suplimentare:]

  - *Regula lui l'Hospital:* Se aplică pentru cazurile $0/0$ sau $infinity/infinity$, derivând numărătorul și numitorul separat.
  - *Teorema Leibniz-Newton:* $integral_a^b f(x) d x = F(b) - F(a)$, unde $F' = f$.
  - *Convergența seriilor:* Dacă termenul general $x_n$ nu tinde la $0$, seria este divergentă.
]

#v(1fr)
#align(center)[
  #text(size: 8pt)[Generat pentru uz educațional. Rigurozitate și Claritate.]
]
