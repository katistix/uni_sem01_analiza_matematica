#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  numbering: "1 / 1",
)

#set text(
  font: "New Computer Modern",
  lang: "ro",
  size: 11pt,
)

#set heading(numbering: "1.1.")

#align(center)[
  #block(inset: 10pt)[
    #text(weight: "bold", size: 18pt)[Culegere de Exerciții și Repere Teoretice] \
    #text(weight: "medium", size: 14pt)[Tema 1: Limite de șiruri de numere reale] \
    #text(size: 10pt, style: "italic")[Pregătire intensivă pentru Subiectul I - Nota 5]
  ]
]

#line(length: 100%, stroke: 0.5pt)

== Strategia de Rezolvare pentru Examen

Pentru a aborda corect prima temă din examen, trebuie să stăpânești trei metode fundamentale. Fiecare metodă are un set de semne distinctive (pattern-uri) care îți indică drumul cel mai scurt către soluție.

1. *Definiția cu $epsilon$:* Se recunoaște prin cerința explicită "Justificați cu definiția".
2. *Teorema Stolz-Cesaro:* Se aplică în 90% din cazurile unde apare o sumă ($sum$) sau un factorial sub logaritm la numărător.
3. *Criteriul Cauchy-D'Alembert:* Se aplică atunci când ai rădăcini de ordin $n$ sau rapoarte de factoriale și puteri.

== Secțiunea 1: Justificarea limitelor folosind definiția $epsilon$

#block(fill: rgb("#f0f4f8"), inset: 12pt, radius: 4pt)[
  *Notă Teoretică:* Spunem că $lim_(n -> infinity) a_n = l$ dacă pentru orice prag de eroare $epsilon > 0$, putem găsi un rang $n_0$ (care depinde de $epsilon$) astfel încât toți termenii șirului de la $n_0$ încolo să fie la o distanță mai mică de $epsilon$ față de $l$.

  Din punct de vedere practic, trebuie să rezolvi inegalitatea $|a_n - l| < epsilon$ și să îl scoți pe $n$ în evidență.
]

*Sfaturi pentru execuție:*
- Nu te complica cu calcule exacte dacă poți majora (mări) expresia pentru a simplifica inecuația.
- Dacă $a_n < b_n$ și $b_n < epsilon$, atunci automat $a_n < epsilon$.

=== Exerciții propuse (Selecție Seminarii și Model)

1. Justificați, folosind definiția, că $lim_(n -> infinity) (2 n + 1) / (n + 3) = 2$.
2. Demonstrați că $lim_(n -> infinity) (n^2 + 1) / (2 n^2 + 5) = 1/2$.
3. Folosind definiția cu $epsilon$, arătați că $lim_(n -> infinity) (sin n) / n = 0$. (Indiciu: $|sin n| <= 1$)
4. Arătați că $lim_(n -> infinity) log_2 ( (n + 1) / n ) = 0$.
5. Determinați rangul $n_0 (epsilon)$ pentru șirul $a_n = sqrt(n^2 + 1) - n$ și limita $l = 0$.
6. Justificați limita din modelul de examen: $lim_(n -> infinity) sqrt(n) / (n + 1) = 0$.
7. Arătați că șirul $a_n = (-1)^n$ nu are limită folosind negația definiției.

== Secțiunea 2: Teorema Stolz-Cesaro (Cazul $infinity / infinity$)

#block(fill: rgb("#fef9e7"), inset: 12pt, radius: 4pt)[
  *Pattern Recognition:* Dacă ai un raport $x_n / y_n$ unde $y_n$ crește strict către infinit, atunci:
  $ lim_(n -> infinity) x_n / y_n = lim_(n -> infinity) (x_(n + 1) - x_n) / (y_(n + 1) - y_n) $
  *Atenție:* Aceasta este o condiție suficientă, nu necesară. Dacă limita diferențelor nu există, nu înseamnă că limita șirului nu există!
]

*Sfaturi pentru execuție:*
- Folosește binomul lui Newton sau formule de sumare pentru a simplifica diferențele $x_(n + 1) - x_n$.
- Logaritmii transformă produsele (precum factorialul) în sume: $ln n! = ln 1 + ln 2 + dots + ln n$.

=== Exerciții de calcul (Nivel Seminar)

8. Calculați $lim_(n -> infinity) (1^2 + 2^2 + dots + n^2) / n^3$.
9. Determinați $lim_(n -> infinity) (1^p + 2^p + dots + n^p) / n^(p + 1)$, unde $p > 0$.
10. Calculați $lim_(n -> infinity) 1 / n^2 sum_(k = 1)^n ln ( (k + 1) / k )$.
11. Determinați limita șirului $a_n = (ln n!) / (n ln n)$.
12. Fie $x_n = sum_(k = 1)^n 1 / sqrt(k)$. Calculați $lim_(n -> infinity) x_n / sqrt(n)$.
13. Calculați $lim_(n -> infinity) (1/1 dot 2 + 1/2 dot 3 + dots + 1/n (n + 1)) / n$.
14. (Dificil) Determinați $lim_(n -> infinity) (1/1 + 1/2 + dots + 1/n) / (ln n)$.

== Secțiunea 3: Criteriul Cauchy-D'Alembert și Criteriul Cleștelui

#block(fill: rgb("#e8f8f5"), inset: 12pt, radius: 4pt)[
  *Teorie (Criteriul Radicalului):* Dacă $a_n > 0$, atunci $lim_(n -> infinity) root(n, a_n) = lim_(n -> infinity) a_(n + 1) / a_n$.

  *Teorie (Criteriul Cleștelui):* Dacă $x_n <= a_n <= y_n$ și ambele șiruri marginale $x_n$ și $y_n$ tind la $l$, atunci și $a_n$ tinde la $l$.
]

*Sfaturi pentru execuție:*
- Criteriul radicalului este ideal pentru a scăpa de factorial ($n!$).
- Criteriul cleștelui este util când ai sume de fracții cu numitori diferiți sau funcții trigonometrice marginite.

=== Exerciții de antrenament

15. Calculați $lim_(n -> infinity) root(n, n^2 + n + 1)$.
16. Determinați $lim_(n -> infinity) root(n, (3 n)! / (n!)^3)$.
17. Calculați $lim_(n -> infinity) (root(n, n!) / n)$. (Folosiți $a_n = (n!) / n^n$ în criteriul radicalului).
18. Folosind criteriul cleștelui, calculați: $lim_(n -> infinity) ( [x] + [2 x] + dots + [n x] ) / n^2$, unde $[.]$ este partea întreagă.
19. Determinați $lim_(n -> infinity) sum_(k = 1)^n 1 / sqrt(n^2 + k)$.
20. Calculați $lim_(n -> infinity) (n^n) / ((n + 1)!)$.
21. Determinați limita $lim_(n -> infinity) root(n, 2^n + 3^n + 5^n)$.

== Secțiunea 4: Limite Fundamentale și Numărul $e$

Nu uita limitele care servesc drept "cărămizi" pentru exerciții mai complexe:
- $lim_(n -> infinity) (1 + 1 / n)^n = e$
- $lim_(n -> infinity) (1 + x / n)^n = e^x$
- $lim_(n -> infinity) n (root(n, a) - 1) = ln a$

=== Exerciții mixte

22. Calculați $lim_(n -> infinity) ( (n^2 + 1) / (n^2 - 1) )^(n^2)$.
23. Determinați $lim_(n -> infinity) ( (n + 2) / (n + 1) )^(3 n + 5)$.
24. Calculați $lim_(n -> infinity) n [ ln (n + 3) - ln n ]$.

== Note Finale și Pattern-uri de Identificare Rapidă

#table(
  columns: (1.2fr, 2fr, 1fr),
  inset: 8pt,
  align: horizon,
  table.header([*Componentă Șir*], [*Acțiune Recomandată*], [*Dificultate*]),
  [Polinom / Polinom], [Factor comun forțat (gradul maxim)], [Scăzută],
  [Suma $sum_{k=1}^n f(k)$], [Stolz-Cesaro neapărat], [Medie],
  [Factorial $n!$], [Criteriul Raportului $a_(n+1) / a_n$], [Medie],
  [Rădăcină de ordin $n$], [Criteriul Radicalului], [Ridicată],
  [Partea întreagă $[x]$], [Criteriul Cleștelui: $x - 1 < [x] <= x$], [Medie],
  [Diferențe de radicali], [Amplificare cu conjugatul], [Scăzută],
)

#v(1cm)

#block(stroke: 1pt + black, inset: 10pt)[
  *Sfat pentru examen:* La subiectul 1.a), unde trebuie să folosești definiția, scrie clar: "Fie $epsilon > 0$ arbitrar fixat. Căutăm $n_0 (epsilon)$ astfel încât...". Această structură îi arată corectorului că înțelegi rigoarea matematică, chiar dacă greșești un calcul la final.
]
