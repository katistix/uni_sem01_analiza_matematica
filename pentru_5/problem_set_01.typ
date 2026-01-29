#set text(
  font: "Linux Libertine",
  size: 11pt,
  lang: "ro",
)

#set enum(numbering: "1.")
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  header: align(right, text(8pt, gray)[Pregătire Examen Analiză Matematică]),
)

#align(center)[
  #text(18pt, weight: "bold")[Set de Probleme: Obiectiv Nota 5] \
  #text(12pt)[_Structurat conform cerințelor de examen_]
]

#line(length: 100%, stroke: 0.5pt)

Acest document conține exerciții selectate progresiv, de la nivel elementar la nivel de examen, acoperind cele 8 puncte critice pentru obținerea notei 5.

== Limite de șiruri (Definiție și Stolz-Cesaro)

+ Folosind definiția cu $epsilon$, justificați valoarea limitei: $lim_(n -> oo) 1/sqrt(n) = 0$.
+ Demonstrați, folosind definiția cu vecinătăți, că: $lim_(n -> oo) n^2/(n + 1) = oo$.
+ Calculați limita șirului $y_n = (1 + 1/2 + dots + 1/n)/n$.
+ Determinați limita: $lim_(n -> oo) (1^p + 2^p + dots + n^p)/n^(p+1)$, unde $p > 0$.
+ Calculați limita: $lim_(n -> oo) root(n, n)$.
+ Utilizând criteriul raportului pentru rădăcină, calculați: $lim_(n -> oo) (root(n, n!))/n$.

== Sume de serii geometrice și telescopice

+ Calculați suma seriei: $sum_(n=1)^oo 1/5^n$.
+ Determinați valoarea sumei pentru: $sum_(n=1)^oo (-2/3)^n$.
+ Calculați suma seriei: $sum_(n=1)^oo 1/(4n^2 - 1)$.
+ Determinați suma seriei: $sum_(n=2)^oo ln(1 - 1/n^2)$.

== Natura Seriilor cu Termeni Pozitivi (S.T.P.)

+ Studiați natura seriei utilizând criteriul comparației: $sum_(n=1)^oo 1/sqrt(4n^2 - 1)$.
+ Determinați natura seriei: $sum_(n=1)^oo ln(1 + 1/n^2)$.
+ Studiați convergența seriei (Criteriul D'Alembert): $sum_(n=0)^oo 2^n/n!$.
+ Studiați convergența seriei (Criteriul Cauchy): $sum_(n=1)^oo n^2/(2 + 1/n)^n$.

== Mulțimea de convergență pentru serii de puteri

+ Determinați mulțimea de convergență pentru seria: $sum_(n=1)^oo 1/n^2 (x-1)^n$.
+ Aflați mulțimea de convergență pentru: $sum_(n=0)^oo 2^n / (n+1)^3 (x+1)^n$.
+ Determinați mulțimea de convergență pentru: $sum_(n=1)^oo n^n/n! x^n$.

== Calcul derivate de ordinul $n$

+ Calculați derivata de ordinul $n$ pentru funcția $f(x) = sin x$.
+ Determinați $f^((n))(x)$ pentru $f(x) = ln(x+1)$.
+ Calculați derivata de ordinul $n$ pentru $f(x) = (x^2 - x)e^x$.
+ Determinați derivata de ordinul $n$ în punctul $x_0=0$ pentru $f(x) = sqrt(1-x)$.

== Calcul și convergență integrale improprii

+ Evaluați integrala improprie: $integral_0^oo (arctan x)/(1 + x^2) d x$.
+ Calculați valoarea integralei: $integral_0^oo x^n e^(-x) d x$, pentru $n in NN$.
+ Studiați convergența integralei: $integral_0^3 (x^3 + 1)/sqrt(9 - x^2) d x$.
+ Studiați convergența integralei: $integral_0^oo (arctan x)/x d x$.

== Derivate parțiale și mărimi asociate

+ Calculați gradientul $nabla f$ pentru $f(x,y,z) = x^2 y^3 + y sin x - 2z$.
+ Determinați diferențiala $d f$ pentru funcția $f(x,y) = arctan((x-y)/(x+y))$.
+ Calculați derivatele parțiale de ordinul 2 pentru $f(x,y) = ln(x + y^2 - 1)$.
+ Determinați matricea Jacobi $J(f)$ în punctul $(1, 1)$ pentru funcția:
  $f(x,y) = (x^2 - y, 3x - 2y, 2x y + y^2)$.

== Probleme de extrem liber

+ Determinați punctele critice ale funcției $f(x,y) = x^3 + 3x y^2 - 15x - 12y$.
+ Determinați punctele de extrem local și specificați tipul acestora (maxim/minim/șa) pentru:
  $f(x,y,z) = 2x^2 - x y + 2x z - y + y^3 + z^2$.
+ Justificați natura punctului $a = (-2, -1)$ pentru funcția de la exercițiul precedent.

#v(1cm)
#block(
  fill: luma(240),
  inset: 8pt,
  radius: 4pt,
  width: 100%,
)[
  *Sfat:* Pentru nota 5, concentrează-te pe stăpânirea algoritmilor de calcul de la Nivelul 1 și 2. Succes!
]
