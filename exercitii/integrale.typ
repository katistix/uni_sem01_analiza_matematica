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

#set math.equation(numbering: none)
#show math.equation: set block(spacing: 1.2em)
#set enum(spacing: 1.2em)
#set list(spacing: 1.2em)
#set heading(numbering: "1.1.")

#align(center)[
  #block(inset: 10pt)[
    #text(weight: "bold", size: 20pt)[Culegere Extinsă de Integrale Definite și Duble] \
    #text(size: 14pt)[Pregătire pentru Examenul de Analiză Matematică - Subiectul 3] \
    #text(style: "italic", size: 10pt)[Focus: Calcul numeric, tehnici de integrare și gestionarea limitelor funcționale]
  ]
]

#line(length: 100%, stroke: 0.5pt)

Acest document este conceput pentru un antrenament riguros, pornind de la consolidarea calculului integralelor definite (materie de liceu) și progresând către integrarea pe domenii plane compacte specifice examenului.

== Integrale Definite: Consolidarea Calculului Numeric
_Scop: Aplicarea corectă a formulei Leibniz-Newton și schimbarea limitelor de integrare._

=== Substituția de ordin I și II
1. $integral_0^1 (x^3 + 3 x^2 - 1) d x$
2. $integral_1^2 1 / (2 x + 5) d x$
3. $integral_0^(sqrt(pi)) x sin(x^2) d x$
4. $integral_0^1 x^2 sqrt(x^3 + 1) d x$
5. $integral_0^(ln 2) e^x / (e^x + 1) d x$
6. $integral_1^e (1 + ln x) / x d x$
7. $integral_0^(pi/4) (tg x) / (cos^2 x) d x$
8. $integral_0^1 1 / (sqrt(1 - x^2/4)) d x$
9. $integral_0^1 x e^(-x^2) d x$
10. $integral_(pi/6)^(pi/3) ctg x d x$

=== Integrarea prin Părți (Recurență și Tehnici)
11. $integral_1^e ln x d x$
12. $integral_0^1 x^2 e^x d x$
13. $integral_1^2 x^2 ln x d x$
14. $integral_0^(pi/2) e^x sin x d x$
15. $integral_0^1 x "arctg" x d x$

=== Funcții Raționale și Fracții Simple
16. $integral_2^3 1 / (x^2 - 1) d x$
17. $integral_0^1 x / (x^2 + 3 x + 2) d x$
18. $integral_0^2 1 / (x^2 + 4) d x$
19. $integral_2^4 (x + 1) / (x^2 - 4 x + 5) d x$
20. $integral_0^1 1 / (x^2 + 1)^2 d x$ (Sfat: Folosiți substituția $x = tg t$)

== Integrala "Interioară" cu Parametru
_Esențial pentru Subiectul 3: Calculul integralei în raport cu o variabilă, considerând-o pe cealaltă constantă._

21. $integral_0^1 (x^2 y + x y^2) d x$ (unde $y$ este parametru)
22. $integral_1^2 e^(x + y) d y$ (unde $x$ este parametru)
23. $integral_0^x (x - t)^2 d t$
24. $integral_1^y ln(x / y) d x$
25. $integral_0^(pi/2) sin(x + y) d x$
26. $integral_x^(x^2) 1 / (t + x) d t$
27. $integral_0^1 1 / (1 + x + y)^2 d y$
28. $integral_0^(sqrt(x)) y e^x d y$
29. $integral_1^2 (x y + 1 / x) d x$
30. $integral_x^1 y / (x^2 + y^2) d y$

== Integrale Improprii (Justificare și Calcul)
_Probleme de tip Subiectul 1.c)_

31. Justificați convergența integralei $integral_0^1 (x ln x)^2 d x$.
32. Calculați valoarea integralei improprii $integral_0^infinity e^(-x) d x$.
33. Studiați natura integralei $integral_1^infinity 1 / (x^2 + x) d x$.
34. Calculați $integral_0^1 1 / sqrt(1 - x^2) d x$.

#block(fill: rgb("#f9f9f9"), inset: 10pt, radius: 4pt)[
  *Notă Teoretică:* O integrală pe un interval mărginit $[a, b]$ a unei funcții care are limită finită în capete este, de fapt, o integrală definită standard (funcția se extinde prin continuitate). Exemplu: $x ln x$ tind la $0$ când $x$ tinde la $0$.
]

== Integrale Duble pe Domenii Compacte (Subiectul 3)
_Calculați $integral.double_A f(x, y) d x d y$ pentru următoarele configurații:_

35. $f(x, y) = x + y$, $A = [0, 1] times [0, 2]$.
36. $f(x, y) = x^2 y$, $A = { (x, y) | 0 <= x <= 1, 0 <= y <= x }$.
37. $f(x, y) = 1 / (x + y)^2$, $A = [1, 2] times [1, 2]$.
38. $f(x, y) = y cos(x y)$, $A = [0, pi] times [0, 1]$.
39. $f(x, y) = x$, $A$ fiind regiunea dintre $y = x^2$ și $y = x$.
40. $f(x, y) = 1$, $A$ fiind discul unitate $x^2 + y^2 <= 1$ (sfertul din cadranul I).

== Probleme de Sinteză (Model Examen 2026)

*Problema 41:* Calculați integrala dublă $integral.double_A 1 / (x + y)^2 d x d y$ unde $A$ este mulțimea definită de $x >= 0$, $y >= 0$ și $1 <= x + y <= 2$.
_Pași recomandați:_
- Desenați trapezul format de axele de coordonate și dreptele $x + y = 1$, $x + y = 2$.
- Scrieți $A$ ca reuniune de două mulțimi simple sau folosiți limitele: $1 <= x <= 2$ și $0 <= y <= 2 - x$ (atenție la regiune!).
- Integrați succesiv.

*Problema 42:* Evaluați integrala iterată schimbând ordinea de integrare:
$I = integral_0^1 ( integral_sqrt(x)^1 1 / (1 + y^3) d y ) d x$

== Sfaturi pentru Eficiență în Calcul
#list(
  [*Simetria:* Dacă $f(x, y) = f(y, x)$ și domeniul este simetric față de prima bisectoare, poți simplifica mult calculul.],
  [*Schimbarea ordinii:* Nu te bloca la o integrală interioară dificilă. Uneori $d x d y$ este mult mai ușor decât $d y d x$.],
  [*Constantele:* Scoate întotdeauna factorii ce nu depind de variabila de integrare curentă în afara integralei interioare.],
)

#line(length: 100%, stroke: 0.5pt)
#align(center)[_Document generat pentru pregătirea individuală intensivă._]
