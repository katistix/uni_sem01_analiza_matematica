#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  numbering: "1 / 1",
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
  lang: "ro",
)

#align(center)[
  #block(inset: 10pt)[
    #text(weight: "bold", size: 16pt)[Analiza Matematică: Probleme Subiectul 1] \
    #text(style: "italic", size: 12pt)[Set Probleme nr. 2]
  ]
]

#line(length: 100%, stroke: 0.5pt)

== 1. Limite de șiruri (Definiția cu $epsilon$)

*Problemă Tip:* Justificarea valorii unei limite folosind definiția cu $epsilon$.

1. Justificați, folosind definiția cu $epsilon$, că:
  $ lim_(n arrow infinity) 1 / sqrt(n) = 0 $

2. Arătați că limita următoare este corectă conform definiției:
  $ lim_(n arrow infinity) (n^3 - n) / (n^3 + n) = 1 $

#block(fill: rgb("#f0f0f0"), inset: 8pt, radius: 4pt)[
  *Note și Sfaturi:* Pentru a demonstra că $lim_(n arrow infinity) x_n = x$, trebuie să găsiți un rang $n_0$ (care depinde de $epsilon$) astfel încât pentru orice $n >= n_0$ să aibă loc inegalitatea $|x_n - x| < epsilon$.
  - Izolați pe $n$ în inegalitate.
  - Rangul $n_0$ se alege de obicei ca fiind $[ "expresia găsită" ] + 1$.
]

== 2. Serii Numerice (Sume Geometrice și Telescopice)

*Problemă Tip:* Calculul sumei unei serii convergente.

1. Calculați suma seriei geometrice:
  $ sum_(n=1)^infinity ( - 1 / 2 )^(3 n + 1) $

2. Determinați suma seriei telescopice folosind șirul sumelor parțiale:
  $ sum_(n=1)^infinity 1 / (4 n^2 - 1) $

#block(fill: rgb("#f0f0f0"), inset: 8pt, radius: 4pt)[
  *Metodologie:*
  - Pentru serii geometrice $sum a r^n$, suma este $S = "primul termen" / (1 - r)$, unde $|r| < 1$.
  - Pentru serii telescopice, descompuneți termenul general în fracții simple: $1 / ((2 n - 1)(2 n + 1)) = 1 / 2 ( 1 / (2 n - 1) - 1 / (2 n + 1) )$.
]

== 3. Natura Seriilor cu Termeni Pozitivi (s.t.p.)

*Problemă Tip:* Stabilirea convergenței folosind criterii standard (Raport, Rădăcină).

1. Studiați natura seriei:
  $ sum_(n=1)^infinity n^2 / ( 2 + 1 / n )^n $

2. Folosind criteriul raportului, determinați natura seriei:
  $ sum_(n=0)^infinity 2^n / n! $

== 4. Derivate de ordin superior și Serii de Puteri

*Problemă Tip:* Calculul derivatelor de ordin $n$ și determinarea mulțimii de convergență.

1. Calculați derivata de ordin $n$ pentru funcția $f(x) = sin x$.

2. Determinați mulțimea de convergență a seriei de puteri:
  $ sum_(n=1)^infinity 1 / n^2 (x - 1)^n $

== 5. Integrale Improprii

*Problemă Tip:* Calculul și studiul convergenței pe intervale nemărginite sau pentru funcții nemărginite.

1. Calculați valoarea integralei improprii:
  $ integral_0^infinity (arctan x) / (1 + x^2) d x $

2. Studiați convergența integralei:
  $ integral_0^1 (x ln x)^2 d x $

== 6. Analiză Multivariabilă (Gradient și Diferențială)

*Problemă Tip:* Calculul derivatelor parțiale și a gradientului într-un punct dat.

1. Pentru funcția $f(x, y, z) = x^2 y^3 + y sin x - 2 z$, calculați gradientul $nabla f$ în punctul $(0, 1, 1)$.

2. Fie $f(x, y) = 2 ln(tan(x / y))$. Calculați diferențiala $d f$ în punctul $(pi / 2, 2)$.

== 7. Probleme de Extrem Liber

*Problemă Tip:* Determinarea punctelor critice și a extremelor locale pentru funcții de două variabile.

1. Determinați punctele critice pentru funcția:
  $ f(x, y) = x^3 + 3 x y^2 - 15 x - 12 y $

2. Verificați natura punctului critic folosind matricea Hessiană.

#v(1cm)
#line(length: 100%, stroke: 0.5pt)
#align(right)[
  *Succes la examen!*
]
