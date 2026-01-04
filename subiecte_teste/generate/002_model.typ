#set text(lang: "ro", font: "New Computer Modern", size: 11pt)
#set page(margin: 2cm)

#align(center)[
  #block(inset: 10pt, stroke: 1pt, width: 100%)[
    #text(weight: "bold", size: 14pt)[Set Extins Practice - Subiectul I (Blitz)] \
    #text(style: "italic")[Analist Sesiune v1 - Pregătire Examen 2026]
  ]
]

=== I. Limite cu definitia $epsilon$ (Fundamente)

1. Justificați, folosind definiția cu $epsilon$, valoarea limitei: $ lim_{n -> infinity} (2n + 1) / (n + 1) = 2 $
2. Demonstrați prin definiție că: $ lim_{n -> infinity} (n^2 - 1) / (n^2 + 1) = 1 $
3. Arătați că: $ lim_{n -> infinity} 1 / sqrt(n + 3) = 0 $

*Sugestii Teoretice:*
- Trebuie să găsești un rang $N_epsilon$ astfel încât pentru orice $n > N_epsilon$, să avem $|x_n - l| < epsilon$[cite: 521].
- *Pro-tip:* În loc să rezolvi inecuația exactă, majorează expresia $|x_n - l|$ cu ceva mai simplu (ex: $1/n$) pentru a-l izola pe $n$ mai rapid[cite: 522].

---

=== II. Sume de serii numerice (Calcul Operațional)

1. Calculați suma seriei: $ sum_{n=2}^{infinity} ln(1 - 1 / n^2) $
2. Determinați suma seriei geometrice: $ sum_{n=0}^{infinity} (2^n + 3^n) / 6^n $
3. Folosind descompunerea în fracții simple, calculați: $ sum_{n=1}^{infinity} 1 / (n(n+2)) $

*Sugestii Teoretice:*
- Pentru seriile telescopice, scrie termenul general ca $a_n = b_n - b_{n+1}$. Suma va fi $b_{#start} - lim_{n -> infinity} b_{n+1}$[cite: 523].
- Pentru serii geometrice $sum q^n$, suma este $1 / (1-q)$ dacă $|q| < 1$[cite: 134].
- La logaritmi, folosește proprietatea $ln(A/B) = ln A - ln B$ pentru a crea structura telescopică[cite: 114].

---

=== III. Integrale Improprii (Convergență și Calcul)

1. Evaluați integrala improprie: $ integral_0^{infinity} x e^(-x^2) dif x $
2. Studiați convergența integralei: $ integral_1^{infinity} (x + 1) / (x^3 + x) dif x $
3. Calculați valoarea integralei (dacă este convergentă): $ integral_0^1 1 / sqrt(x) dif x $

*Sugestii Teoretice:*
- O integrală improprie se calculează ca limită: $lim_{t -> infinity} integral_a^t f(x) dif x$[cite: 524].
- Pentru convergență fără calcul, folosește criteriul de comparație cu integrala de tip Dirichlet $integral 1 / x^p dif x$ (convergentă la $infinity$ dacă $p > 1$)[cite: 372, 386].

---

=== IV. Calcul Diferențial în $RR^n$ (Gradienți și Diferențiale)

1. Pentru $f(x, y) = x^2 y + sin(x y)$, calculați gradientul $nabla f(0, 1)$.
2. Determinați diferențiala de ordinul I, $d f$, pentru $f(x, y) = ln(x^2 + y^2)$ în punctul $(1, 1)$.
3. Fie $f(x, y, z) = x y z$. Calculați $d f$ în punctul $(1, 2, 3)$.

*Sugestii Teoretice:*
- Gradientul $nabla f$ este vectorul derivatelor parțiale: $( (partial f) / (partial x), (partial f) / (partial y) )$[cite: 449, 536].
- Diferențiala este $d f = (partial f) / (partial x) d x + (partial f) / (partial y) d y$[cite: 526].
- Atenție la derivarea funcțiilor compuse (ex: $ln(u)$ sau $sin(u)$)[cite: 527].

#v(1em)
#line(length: 100%)
#text(
  size: 9pt,
)[*Notă:* Aceste exerciții sunt selectate din tematica seminariilor 2, 3, 8 și 11, fiind cele mai frecvente apariții la Subiectul I.]
