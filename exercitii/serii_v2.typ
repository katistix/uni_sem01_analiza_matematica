#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  numbering: "1",
)

#set text(
  font: "New Computer Modern",
  size: 10.5pt,
  lang: "ro",
)

#set math.equation(numbering: none)
#show math.equation: set block(spacing: 1.2em)
#set enum(spacing: 1.2em)
#set list(spacing: 1.2em)

#align(center)[
  #block(text(weight: "bold", size: 1.6em)[Culegere Extinsă de Probleme: Serii Numerice])
  #v(0.4em)
  #text(style: "italic")[Metodologii de calcul pentru natura și suma seriilor - Pregătire Intensivă]
]

#line(length: 100%, stroke: 0.5pt)

== Note Metodologice și Strategii de Recunoaștere

Pentru a aborda orice problemă de tipul "stabiliți natura și calculați suma", trebuie să identificați rapid *tiparul* termenului general $a_n$.

1. *Tiparul Geometric:* Dacă $a_n$ conține constante la puteri $n$ (ex: $q^n$), seria este convergentă pentru $|q| < 1$. Suma este $S = ("primul_term") / (1 - q)$.
2. *Tiparul Telescopic Rațional:* Dacă $a_n$ este o fracție cu polinoame la numitor, se descompune în fracții simple: $a_n = b_n - b_(n+k)$.
3. *Tiparul Telescopic cu Funcții:*
  - *Logaritmi:* $ln(f(n+1) / f(n)) = ln f(n+1) - ln f(n)$.
  - *Arctan:* $arctan ( (u - v) / (1 + u v) ) = arctan u - arctan v$.
  - *Radicali:* $sqrt{n+1} - sqrt{n}$ (folosiți conjugata pentru a vedea telescoparea).
  - *Factoriale:* $n / (n+1)! = ( (n+1) - 1 ) / (n+1)! = 1 / n! - 1 / (n+1)!$.

#v(1em)

== Set Complet de Exerciții

Stabiliți natura următoarelor serii numerice și, în caz de convergență, calculați suma acestora:

1. $ sum_(n=1)^(infinity) 1 / (3^n) $

2. $ sum_(n=1)^(infinity) (2^n + 5^n) / 10^n $

3. $ sum_(n=0)^(infinity) ((-1)^n 3^n) / 4^(n+1) $

4. $ sum_(n=1)^(infinity) (2^(2n+1)) / 5^n $

5. $ sum_(n=2)^(infinity) ( (1) / (2^n) + ((-1)^n) / (3^n) ) $

6. $ sum_(n=1)^(infinity) (1) / (n(n+1)) $

7. $ sum_(n=1)^(infinity) (1) / (n(n+2)) $

8. $ sum_(n=1)^(infinity) (1) / ((2n-1)(2n+1)) $

9. $ sum_(n=1)^(infinity) (1) / (n(n+1)(n+2)) $

10. $ sum_(n=1)^(infinity) (2n+1) / (n^2 (n+1)^2) $
#h(1em) *Sfat:* Scrieți $2n+1 = (n+1)^2 - n^2$.

11. $ sum_(n=1)^(infinity) (1) / (n^2 + 3n + 2) $

12. $ sum_(n=1)^(infinity) (n) / ((n+1)!) $

13. $ sum_(n=1)^(infinity) (n+1) / ((n+2)!) $

14. $ sum_(n=1)^(infinity) (n^2 + n - 1) / ((n+2)!) $

15. $ sum_(n=2)^(infinity) ln ( (n^2 - 1) / n^2 ) $

16. $ sum_(n=1)^(infinity) ln ( (n+1)(n+3) / (n+2)^2 ) $

17. $ sum_(n=1)^(infinity) (sqrt(n+1) - sqrt(n)) / (sqrt(n^2 + n)) $

18. $ sum_(n=1)^(infinity) (sqrt(n+2) - 2sqrt(n+1) + sqrt(n)) $

19. $ sum_(n=1)^(infinity) arctan (1) / (n^2 + n + 1) $

20. $ sum_(n=1)^(infinity) arctan (1) / (2n^2) $
#h(1em) *Sfat:* Scrieți $1 / (2n^2) = ( (2n+1) - (2n-1) ) / (1 + (2n-1)(2n+1) )$.

21. $ sum_(n=0)^(infinity) arctan (2^n) / (1 + 2^(2n+1)) $

22. $ sum_(n=1)^(infinity) arctan (x) / (1 + n(n+1)x^2), quad x > 0 $

23. $ sum_(n=1)^(infinity) (1) / (n^2 + 5n + 6) $

24. $ sum_(n=1)^(infinity) (1) / (4n^2 + 8n + 3) $

25. $ sum_(n=1)^(infinity) (3^n + 2^n) / 6^n $

26. $ sum_(n=1)^(infinity) (n!) / ((n+k)!) , quad k >= 2 $

27. $ sum_(n=1)^(infinity) (2n+1) / (n^2 + n)^2 $

28. $ sum_(n=1)^(infinity) ( arctan (n+1) - arctan (n) ) $

29. $ sum_(n=1)^(infinity) (n) / (n^4 + n^2 + 1) $
#h(1em) *Sfat:* Folosiți identitatea $n^4 + n^2 + 1 = (n^2 + 1)^2 - n^2 = (n^2 + n + 1)(n^2 - n + 1)$.

30. $ sum_(n=1)^(infinity) arctan (2) / (n^2) $

31. $ sum_(n=1)^(infinity) (1) / (n sqrt(n+1) + (n+1) sqrt(n)) $
#h(1em) *Sfat:* Raționalizați prin amplificare cu $ (n+1) sqrt(n) - n sqrt(n+1) $.

32. $ sum_(n=2)^(infinity) ln ( 1 - (2) / (n(n+1)) ) $

33. $ sum_(n=1)^(infinity) ( (n-1) 2^n ) / (n!) $

34. $ sum_(n=1)^(infinity) (2n+1) / (n! (n+2)) $

35. $ sum_(n=1)^(infinity) (1) / (k^n) , quad |k| > 1 $

36. $ sum_(n=1)^(infinity) (n-1) / (n!) $

37. $ sum_(n=1)^(infinity) (1) / ( (n+k)(n+k+1) ) $

38. $ sum_(n=1)^(infinity) (2n+3) / ( 3^n ) $
#h(1em) *Sfat:* Aceasta este o serie aritemtico-geometrică. Folosiți $S - q S$.

39. $ sum_(n=1)^(infinity) ( 2n-1 ) / ( 2^n ) $

40. $ sum_(n=1)^(infinity) arctan ( (n+1) - n ) / ( 1 + n(n+1) ) $

== Sinteză: Cum să nu eșuezi la Subiectul 2

*Eroarea de tip 1: Ignorarea limitei.*
Dacă încerci să calculezi suma unei serii care nu tinde la zero (ex: $sum ln((n+1)/n)$), vei ajunge la o sumă infinită. Verifică mereu $lim a_n = 0$.

*Eroarea de tip 2: Greșeli de indexare.*
La seriile telescopice, dacă $a_n = b_n - b_(n+2)$, în suma parțială $S_N$ vor rămâne *doi* termeni de la început și *doi* de la sfârșit: $S_N = (b_1 + b_2) - (b_(N+1) + b_(N+2))$.

*Eroarea de tip 3: Formula Arctan.*
Nu uita că $arctan u - arctan v$ este egal cu $arctan ( (u-v) / (1+u v) )$ doar dacă $u v > -1$. În contextul seriilor cu termeni pozitivi de la examen, această condiție este aproape mereu îndeplinită.

#v(1em)
#box(stroke: 1pt, inset: 12pt, fill: blue.lighten(95%))[
  *Pattern Recognition:*
  - Apare $n!$ la numitor? Încearcă să formezi $1/(n-1)! - 1/n!$.
  - Apare $n^2$ la numitor? Încearcă descompunerea în fracții simple sau telescoparea cu $arctan$.
  - Apare o diferență de radicali? Este aproape sigur o serie telescopică.
]

#align(right)[
  *Generat pentru pregătirea examenului de Analiză Matematică.*
]
