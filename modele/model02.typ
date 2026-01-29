#set page(numbering: "1", margin: 2.5cm)
#set text(font: "New Computer Modern", size: 11pt, lang: "ro")

#align(center)[
  #text(size: 16pt, weight: "bold")[Model de Examen: Analiză Matematică] \
  #text(size: 13pt, style: "italic")[Model generat 02 - Pregătire Examen]
]

#v(1em)
#line(length: 100%, stroke: 0.5pt)
#v(1em)

== Problema 1

+ *Să se calculeze limita șirului:*
  $ lim_(n -> infinity) frac(root(n, (3 n)!), n^2 dot root(n, n!)) $

+ *Să se determine suma seriei numerice:*
  $ sum_(n=1)^(infinity) frac((-2)^(n + 1), 5^(n - 1)) $

+ *Să se determine mulțimea de convergență a seriei de puteri:*
  $ sum_(n=1)^(infinity) frac(n^2 + n, 4^n) (x - 2)^n $

+ *Să se determine punctele de extrem local pentru funcția:*
  $ f: RR^2 -> RR, quad f(x, y) = x^3 + y^3 - 3 x y $

== Problema 2

Se consideră integrala improprie:
$ I(alpha) = integral_1^(infinity) frac(1, x^alpha sqrt(x^2 - 1)) d x $

+ Să se determine natura integralei improprii în funcție de valorile parametrului $alpha in RR$.
+ Să se calculeze valoarea integralei pentru $alpha = 1$, utilizând o substituție trigonometrică adecvată.

== Problema 3

Știind că mulțimea $S = {(x, y) in RR^2 : x^2 + y^2 = 4}$ este compactă, să se determine valorile extreme (minimul și maximul global) ale funcției:
$ f: RR^2 -> RR, quad f(x, y) = x^2 - 2 x + y^2 $
relativ la mulțimea $S$.

#v(2em)
#line(length: 100%, stroke: 0.5pt)
#v(1em)

=== Note și Sfaturi Metodologice

*1. Recunoașterea tiparelor la limite și serii:*
- Pentru limita de la Problema 1, aplicați criteriul raport-rădăcină (dacă $lim_(n -> infinity) frac(a_(n+1), a_n) = l$, atunci $lim_(n -> infinity) root(n, a_n) = l$). Identificați $a_n$ astfel încât să cuprindă toți termenii de sub radicali.
- La seria numerică, observați că este o serie geometrică de forma $sum a r^n$. Identificați rația $r$ și primul termen. Seria este convergentă dacă $|r| < 1$.
- Pentru seria de puteri, folosiți formula razei de convergență $R = lim_(n -> infinity) |frac(a_n, a_(n+1))|$. Nu uitați să verificați separat convergența în punctele $x = 2 - R$ și $x = 2 + R$.

*2. Strategii pentru integrale improprii:*
- Problema 2 prezintă două tipuri de singularități: una în $x = 1$ (integrala este de tip II) și una la $+infinity$ (tip I). Trebuie studiată convergența în ambele puncte.
- Folosiți criteriul de comparație cu $1 / (x - 1)^p$ lângă $1$ și cu $1 / x^p$ la $+infinity$.
- Pentru calcul, substituția $x = frac(1, cos t)$ sau $x = cosh t$ poate simplifica expresia radicalului $sqrt(x^2 - 1)$.

*3. Optimizarea cu constrângeri:*
- La Problema 3, deoarece mulțimea $S$ este o frontieră (cerc), metoda multiplicatorilor lui Lagrange este ideală. Construiți funcția $L(x, y, lambda) = f(x, y) - lambda (x^2 + y^2 - 4)$.
- Alternativ, puteți observa că pe mulțimea $S$, $x^2 + y^2 = 4$, deci funcția devine $f(x, y) = 4 - 2 x$. Problema se reduce la găsirea extremelor lui $x$ pe cercul de rază 2.

*4. Verificarea punctelor de extrem local:*
- Pentru funcții de două variabile, calculați gradientul $nabla f$ și anulați-l pentru a găsi punctele critice.
- Folosiți matricea Hessiană $H(f)$ pentru a determina natura punctelor: dacă determinantul $det(H) > 0$ și $frac(partial^2 f, partial x^2) > 0$, avem un minim local.

#v(1em)
#align(center)[*Succes la studiu!*]
