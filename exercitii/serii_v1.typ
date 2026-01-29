#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  numbering: "1",
)
#set text(
  font: "New Computer Modern",
  size: 11pt,
  lang: "ro",
)

#set math.equation(numbering: none)
#show math.equation: set block(spacing: 1.2em)
#set enum(spacing: 1.2em)
#set list(spacing: 1.2em)

#align(center)[
  #block(text(weight: "bold", size: 1.5em)[Set de Probleme: Serii Numerice (Natură și Sumă)])
  #v(0.5em)
  #text(style: "italic")[Pregătire pentru Subiectul 2 - Examen Analiză Matematică 2026]
]

#line(length: 100%, stroke: 0.5pt)

== Note Teoretice și Sfaturi Metodologice

Pentru a rezolva cu succes Subiectul 2, care solicită stabilitatea naturii unei serii și calculul sumei acesteia, trebuie să urmezi trei pași fundamentali:

1. *Verificarea Condiției Necesare:* Calculează $lim_(n -> infinity) a_n$. Dacă limita nu este $0$, seria este divergentă.
2. *Determinarea Naturii:* Folosește criterii de convergență (Criteriul raportului, Criteriul rădăcinii, Criteriul comparării) pentru serii cu termeni pozitivi.
3. *Calculul Sumei:* Majoritatea seriilor de acest tip sunt fie *serii geometrice*, fie *serii telescopice*.
  - Pentru serii telescopice, caută o scriere de forma $a_n = b_n - b_(n+1)$. Suma parțială va fi $S_N = b_1 - b_(N+1)$.
  - Pentru serii cu funcții trigonometrice inverse, folosește identitatea:
    $ arctan A - arctan B = arctan ( (A - B) / (1 + A B) ) $

== Nivel 1: Fundamente (Serii Geometrice)

Aceste exerciții te ajută să recunoști structurile exponențiale unde suma se calculează prin formula $S = a_1 / (1 - q)$.

*Problema 1.1:* Stabiliți natura și calculați suma seriei:
$ sum_(n=1)^(infinity) (2^n + 3^n) / 6^n $

*Problema 1.2:* Stabiliți natura și calculați suma seriei:
$ sum_(n=0)^(infinity) ((-1)^n / 2^(3n+1)) $

*Sfat:* Descompune fracția în mai multe serii geometrice separate dacă este necesar.

== Nivel 2: Serii Telescopice Raționale

Învață să folosești descompunerea în fracții simple pentru a anula termenii intermediari.

*Problema 2.1:* Stabiliți natura și suma seriei:
$ sum_(n=1)^(infinity) 1 / (n^2 + n) $

*Problema 2.2:* Determinați suma seriei:
$ sum_(n=1)^(infinity) 2 / (n^2 + 2n) $

*Problema 2.3:* Folosind descompunerea în fracții simple, calculați:
$ sum_(n=1)^(infinity) 1 / (4n^2 - 1) $

== Nivel 3: Telescopare prin Proprietăți Logaritmice

Folosește relația $ln(A/B) = ln A - ln B$.

*Problema 3.1:* Arătați că seria următoare este convergentă și calculați-i suma:
$ sum_(n=2)^(infinity) ln (1 - 1 / n^2) $

*Problema 3.2:* Calculați suma seriei:
$ sum_(n=1)^(infinity) ln ( (n+1) / n ) $
*Notă:* Atenție la natura acestei serii înainte de a încerca calculul sumei!

== Nivel 4: Serii cu Arctan (Nivel de Examen)

Acesta este formatul specific Subiectului 2 din modelul 2026. Cheia este să scrii argumentul funcției sub forma $(A-B)/(1+A B)$.

*Problema 4.1:* Stabiliți natura și calculați suma seriei:
$ sum_(n=1)^(infinity) arctan 1 / (n^2 + n + 1) $
*Indiciu:* Observați că $n^2 + n + 1 = 1 + n(n+1)$. Folosiți formula pentru diferența de arctan.

*Problema 4.2:* Calculați suma seriei:
$ sum_(n=1)^(infinity) arctan 2 / n^2 $
*Indiciu:* Scrieți $2/n^2$ sub forma $( (n+1) - (n-1) ) / ( 1 + (n+1)(n-1) )$.

*Problema 4.3 (Model 2026):* Stabiliți natura și calculați suma seriei:
$ sum_(n=0)^(infinity) arctan 2^n / (1 + 2^(2n+1)) $

== Nivel 5: Probleme Avansate de Sinteză

*Problema 5.1:* Fie seria $sum_(n=1)^(infinity) x_n$ unde $x_n = (n 2^n) / (n+2)!$. Demonstrați convergența și calculați suma.
*Sfat:* Încercați să scrieți $n = (n+2) - 2$.

*Problema 5.2:* Studiați natura și calculați suma seriei:
$ sum_(n=1)^(infinity) 1 / (n (n+1) (n+2)) $

== Ghid de rezolvare pentru Problema 4.3 (Model 2026)

*Pasul 1: Identificarea structurii.*
Observăm argumentul funcției $arctan$: $2^n / (1 + 2^(2n+1))$.
Vrem să îl scriem sub forma $(A - B) / (1 + A B)$.
Numitorul este $1 + 2^n dot 2^(n+1)$. Astfel, $A = 2^(n+1)$ și $B = 2^n$.
Verificăm numărătorul: $A - B = 2^(n+1) - 2^n = 2^n (2 - 1) = 2^n$. Corespunde exact!

*Pasul 2: Telescoparea.*
$ a_n = arctan 2^(n+1) - arctan 2^n $
$ S_N = sum_(n=0)^N (arctan 2^(n+1) - arctan 2^n) = arctan 2^(N+1) - arctan 2^0 $

*Pasul 3: Trecerea la limită.*
$ S = lim_(N -> infinity) (arctan 2^(N+1) - pi / 4) = pi / 2 - pi / 4 = pi / 4 $

== Exerciții Suplimentare de Antrenament

1. $sum_(n=1)^(infinity) 1 / (n^2 + 4n + 3)$
2. $sum_(n=1)^(infinity) (sqrt(n+1) - sqrt(n)) / sqrt(n^2 + n)$
3. $sum_(n=1)^(infinity) arctan 1 / (2n^2)$
4. $sum_(n=0)^(infinity) (2^n + 5) / 5^n$

#v(1em)
#box(stroke: 1pt, inset: 10pt, fill: gray.lighten(90%))[
  *Recunoașterea tiparelor:* Dacă vezi un $arctan$ cu un numitor de tipul $1 + dots$, gândește-te imediat la formula de telescopare. Dacă vezi polinoame la numitor, folosește fracțiile simple.
]

#align(right)[
  _Succes la examen!_
]
