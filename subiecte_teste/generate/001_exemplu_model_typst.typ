#set text(lang: "ro", font: "New Computer Modern", size: 11pt)
#set page(margin: 2cm)

#align(center)[
  #block(inset: 10pt, stroke: 1pt, width: 100%)[
    #text(weight: "bold", size: 14pt)[001 Model Examen Analiză Matematică] \
    #text(style: "italic")[Focus: Fundamente și Calcul Operațional]
  ]
]

#v(1em)

=== Exercițiul 1 (4 puncte)

+ *[1p]* Justificați, folosind definiția cu $epsilon$, valoarea limitei:
  $ lim_{n -> infinity} (n+1) / (n^2 + 2) = 0 $

+ *[1p]* Calculați suma seriei numerice (folosind eventual descompunerea în fracții simple):
  $ sum_{n=1}^{infinity} 1 / (4n^2 - 1) $

+ *[1p]* Studiați convergența integralei improprii:
  $ integral_0^1 1 / sqrt(1 - x^2) dif x $

+ *[1p]* Pentru funcția $f(x, y) = arctan(y / x)$, calculați diferențiala de ordinul I, $d f$, în punctul $(1, 1)$.

#line(length: 100%)

=== Sugestii Teoretice (Pragmatic Refresher)

- *Limita cu definitia ($epsilon$):* Trebuie să arăți că pentru orice $epsilon > 0$, există un rang $N_epsilon$ astfel încât pentru orice $n > N_epsilon$ să avem $|x_n - l| < epsilon$[cite: 45, 523].
  - _Sfat:_ Simplifică fracția $|(n+1)/(n^2+2)|$ prin majorări succesive (ex. $n+1 < 2n$ și $n^2+2 > n^2$) pentru a izola mai ușor pe $n$.

- *Suma seriilor:* Dacă seria este telescopică, se scrie termenul general ca $a_n = b_n - b_{n+1}$. Suma va fi $S = b_1 - lim_{n -> infinity} b_{n+1}$.
  - _Formula utilă:_ $1/((2n-1)(2n+1)) = 1/2 (1/(2n-1) - 1/(2n+1))$.

- *Integrale Improprii:* O integrală pe un interval unde funcția este nemărginită (aici în $x=1$) se calculează ca limită: $integral_a^b f(x) dif x = lim_{t -> b^-} integral_a^t f(x) dif x$[cite: 334, 336].
  - _Reamintire:_ $integral 1/sqrt(1-x^2) dif x = arcsin(x) + C$.

- *Diferențiala de ordinul I:* Formula este $d f(x, y) = frac(partial f, partial x) dif x + frac(partial f, partial y) dif y$[cite: 449, 452].
  - _Derivate utile:_ $(arctan u)' = u' / (1+u^2)$.
  - $frac(partial, partial x) (y/x) = -y/x^2$ și $frac(partial, partial y) (y/x) = 1/x$.
