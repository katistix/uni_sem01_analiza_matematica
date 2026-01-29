#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  numbering: "1",
)

#set text(
  font: "Linux Libertine",
  size: 11pt,
  lang: "ro",
)

#align(center)[
  #block(text(weight: "bold", size: 1.5em)[Set de Probleme: Convergența Integralelor Improprii])
  #v(0.5em)
  #text(style: "italic")[Analiză Matematică - Pregătire Examen 2026]
]

#v(1em)

== Metodologie și Note Teoretice

Pentru a stabili natura unei integrale improprii (convergentă sau divergentă), ne bazăm pe următoarele rezultate fundamentale din curs:

1. **Integrale de referință (Tip I - Interval nemărginit):**
  $integral_a^infinity 1/x^p d x$ este convergentă dacă și numai dacă $p > 1$ (unde $a > 0$).

2. **Integrale de referință (Tip II - Funcție nemărginită):**
  $integral_a^b 1/(b - x)^p d x$ sau $integral_a^b 1/(x - a)^p d x$ este convergentă dacă și numai dacă $p < 1$.

3. **Criteriul de comparație cu limită:**
  Dacă $f, g$ sunt funcții pozitive și $lim_(x arrow b) f(x) / g(x) = lambda in [0, infinity)$, atunci:
  - Dacă $lambda < infinity$ și $integral g$ converge $arrow integral f$ converge.
  - Dacă $lambda > 0$ și $integral g$ diverge $arrow integral f$ diverge.

#v(1em)

== Set de Probleme

Stabiliți natura următoarelor integrale improprii (precizați dacă sunt convergente sau divergente):

#set enum(numbering: "1.")
+ $integral_1^infinity 1 / (x^2 + x + 1) d x$
+ $integral_1^infinity x / (x^3 + 1) d x$
+ $integral_0^1 1 / sqrt(1 - x^2) d x$
+ $integral_0^1 (ln x)^2 d x$
+ $integral_1^infinity (ln x) / x^2 d x$
+ $integral_0^1 1 / (x^2 + sqrt(x)) d x$
+ $integral_0^infinity e^(-x^2) d x$
+ $integral_1^infinity (arctan x) / x^p d x$, discuție după $p in RR$
+ $integral_0^1 1 / (e^x - cos x) d x$
+ $integral_0^1 (x ln x)^3 d x$

+ $integral_2^infinity 1 / (x ln x) d x$
+ $integral_2^infinity 1 / (x (ln x)^2) d x$
+ $integral_0^infinity (x^2 + 1) / (x^4 + x^2 + 1) d x$
+ $integral_0^pi 1 / sqrt(sin x) d x$
+ $integral_0^1 (cos x) / sqrt(x) d x$
+ $integral_0^1 1 / (e^sqrt(x) - 1) d x$
+ $integral_1^infinity (1 - cos(1/x)) d x$
+ $integral_0^1 (sin x) / x^p d x$, discuție după $p in RR$
+ $integral_1^infinity (sqrt(x+1) - sqrt(x)) d x$
+ $integral_0^infinity x^n e^(-x) d x$, unde $n in NN$

+ $integral_1^infinity (ln x) / (1 + x^2) d x$
+ $integral_0^infinity (arctan x) / (1 + x^2) d x$
+ $integral_0^1 (ln x) / (1 - x^2) d x$
+ $integral_0^1 1 / sqrt(x (1-x)) d x$
+ $integral_1^infinity 1 / (x sqrt(x^2 - 1)) d x$
+ $integral_( -infinity)^infinity 1 / (x^2 + 2x + 2) d x$
+ $integral_0^1 x^p (1-x)^q d x$, discuție după $p, q in RR$
+ $integral_1^infinity (ln(1 + 1/x)) / x d x$
+ $integral_0^1 (e^x - 1) / x^(3/2) d x$
+ $integral_0^1 1 / (x - sin x) d x$

+ $integral_1^infinity (sqrt(x)) / (1 + x^2) d x$
+ $integral_0^infinity e^(-x) sin x d x$
+ $integral_0^infinity (sin x)^2 / x^2 d x$
+ $integral_0^1 (ln x) / sqrt(x) d x$
+ $integral_2^infinity 1 / (x ln x ln(ln x)) d x$
+ $integral_0^1 1 / sqrt(x + x^2) d x$
+ $integral_1^infinity (x + 1) / (x^2 + ln x) d x$
+ $integral_0^1 1 / (1 - x^3) d x$
+ $integral_0^infinity (x arctan x) / (1 + x^3) d x$
+ $integral_0^1 1 / (sqrt(x) (e^x - e^(-x))) d x$

#v(1em)

== Sfaturi pentru Rezolvare

- *Analiza Singularităților:* Identificați punctele unde funcția devine nemărginită sau capetele intervalului care tind la infinit. Dacă există mai multe puncte "problematice" (ex: $0$ și $infinity$), descompuneți integrala în sumă de două integrale.
- *Folosirea Echivalențelor:*
  - Când $x arrow 0$: $sin x approx x$, $tan x approx x$, $e^x - 1 approx x$, $ln(1+x) approx x$, $1 - cos x approx x^2 / 2$.
  - Când $x arrow infinity$: Polinoamele sunt dominate de termenul de grad maxim.
- *Logaritmi:* Rețineți că $lim_(x arrow 0) x^alpha ln x = 0$ pentru orice $alpha > 0$. Acest lucru înseamnă că logaritmul "pierde" în fața oricărei puteri a lui $x$, ceea ce ajută la stabilirea limitelor în criteriul de comparație.
- *Cazul Exercițiului 1.c:* Pentru $integral_0^1 (x ln x)^2 d x$, funcția $f(x) = x^2 (ln x)^2$ este continuă pe $(0, 1]$. Deoarece $lim_(x arrow 0) x^2 (ln x)^2 = 0$, funcția poate fi prelungită prin continuitate în $0$, deci integrala nu este "cu adevărat" improprie, ci este o integrală Riemann standard a unei funcții continue pe un interval compact $[0, 1]$.
