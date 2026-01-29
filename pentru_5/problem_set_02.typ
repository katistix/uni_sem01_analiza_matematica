#set page(numbering: "1", margin: 2cm)
#set text(font: "Linux Libertine", size: 11pt, lang: "ro")

#align(center)[
  #text(size: 18pt, weight: "bold")[Set de Probleme: Analiză Matematică] \
  #text(size: 14pt)[Pregătire Subiectul 1 - Limite, Serii și Extreme]
]

#v(1cm)

== Varianta 1:

*Problema 1.*

a) Să se calculeze limita folosind criteriul Stolz-Cesaro sau consecințele acestuia:
$ lim_(n -> infinity) (root(n, n!)) / n $

b) Să se determine suma seriei telescopice:
$ sum_(n=1)^(infinity) 1 / (4 n^2 - 1) $

c) Să se determine mulțimea de convergență a seriei de puteri:
$ sum_(n=1)^(infinity) 1 / n^2 (x - 1)^n $

d) Să se determine punctele de extrem local pentru funcția:
$ f(x, y) = x^3 + y^3 - 3 x y $

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt + gray)
#v(0.5cm)

== Varianta 2:

*Problema 1.*

a) Să se justifice folosind definiția cu $epsilon$ că:
$ lim_(n -> infinity) 1 / sqrt(n) = 0 $

b) Să se calculeze suma seriei geometrice:
$ sum_(n=2)^(infinity) ((-2) / 3)^n $

c) Să se determine raza de convergență și mulțimea de convergență pentru:
$ sum_(n=0)^(infinity) (n + 1) / 3^n x^n $

d) Să se determine punctele critice și natura acestora (minim/maxim/șa) pentru:
$ f(x, y) = x^2 + x y + y^2 + a x + b y, quad a, b in RR $

#v(0.5cm)
#pagebreak()
#line(length: 100%, stroke: 0.5pt + gray)

== Varianta 3:

*Problema 1.*

a) Să se calculeze limita șirului folosind amplificarea cu conjugata:
$ lim_(n -> infinity) sqrt(n) (sqrt(n + 1) - sqrt(n)) $

b) Să se calculeze suma seriei:
$ sum_(n=2)^(infinity) ln (1 - 1 / n^2) $

c) Să se determine mulțimea de convergență pentru seria:
$ sum_(n=1)^(infinity) (n^n) / n! x^n $

d) Să se determine punctele de extrem local pentru funcția definită pe $(0, infinity)^2$:
$ f(x, y) = x y + 8 / x + 8 / y $

#v(1cm)

#line(length: 100%, stroke: 0.5pt + gray)
#v(1cm)

== Ghid de rezolvare și sfaturi metodologice

#set list(indent: 1em)
*Note pentru Subpunctul (a) - Limite de șiruri:*
- Dacă șirul conține factoriale sau produse mari sub radical de ordin $n$, folosiți criteriul raport-rădăcină: dacă $x_(n+1) / x_n -> l$, atunci $root(n, x_n) -> l$.
- Pentru formele de tip $infinity / infinity$ unde numitorul este strict monoton și divergent, aplicați Stolz-Cesaro: $lim a_n / b_n = lim (a_(n+1) - a_n) / (b_(n+1) - b_n)$.

*Note pentru Subpunctul (b) - Sume de serii:*
- *Seria Geometrică:* $sum_(n=k)^(infinity) q^n = q^k / (1 - q)$, convergentă doar pentru $|q| < 1$. Atenție la primul termen al sumei!
- *Seria Telescopică:* Descompuneți termenul general în fracții simple. De exemplu, $1 / (n (n+1)) = 1 / n - 1 / (n+1)$. Suma va fi limita șirului sumelor parțiale $S_n$, unde majoritatea termenilor se anulează.

*Note pentru Subpunctul (c) - Serii de puteri:*
- Determinați raza de convergență $R$ folosind formula $R = lim_(n -> infinity) |a_n / a_(n+1)|$ sau $R = 1 / (lim root(n, |a_n|))$.
- Seria este absolut convergentă pe $(x_0 - R, x_0 + R)$.
- *Obligatoriu:* Verificați convergența în capetele intervalului ($x = x_0 - R$ și $x = x_0 + R$) folosind criteriile pentru serii cu termeni pozitivi sau alternante (Leibniz).

*Note pentru Subpunctul (d) - Extreme libere:*
- Pasul 1: Calculați derivatele parțiale de ordinul I ($f'_x, f'_y$) și rezolvați sistemul $nabla f = 0$ pentru a găsi punctele critice.
- Pasul 2: Calculați matricea Hessiană $H(f) = mat(f''_(x^2), f''_(x y); f''_(y x), f''_(y^2))$.
- Pasul 3: Aplicați criteriul lui Sylvester. Dacă determinanții minorilor sunt $Delta_1 > 0, Delta_2 > 0$, avem minim local. Dacă $Delta_1 < 0, Delta_2 > 0$, avem maxim local. Dacă $Delta_2 < 0$, punctul este de tip șa.
