#import "template.typ": *
#let title = "Tarea 1"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 6540"
#let instructor = "Iván Cardona"
#let semester = "C41"
#let due_time = "20 de septiembre"
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: "la ecuación")
#show: assignment_class.with(title, author, course_id, instructor, semester, 
  due_time)

#let contradiction = text($refmark$, size: 1.75em)
#let topo = $cal(T)$
#let base = $cal(B)$
#let case = $cal(C)$
#let arbuna = $limits(union.big)_(alpha in Lambda)$
#let arbung = $limits(union.big)_(gamma in Lambda')$
#let arbina = $limits(sect.big)_(alpha in Lambda)$
#let arbing = $limits(sect.big)_(gamma in Lambda')$
#let sp = $,space space$

#prob[
  _Sea $d$ una métrica sobre $X$, entonces: $ d'(x, y) = d(x, y) / (1 + d(x, y))
  $ es una métrica acotada tal que $topo_d = topo_(d')$._

  #line(length: 100%)

  Demostraremos lo siguiente:
  + $d'$ define una métrica \ 1. $d'(x, y) >= 0 sp forall x, y in X$ \ 2. $d'(x, y) = 0 <==> x = y sp forall x, y in X$ \ 3. $d'(x, y) = d'(y, x) sp forall x, y in X$ \ 4. $d'(x, z) <= d'(x, y) + d'(y, z) sp forall x, y, z in X$
  + $d'$ es acotada
  + $topo_d = topo_(d')$

  #line(length: 100%)

  == Demo:
  + Usamos las propiedades métricas de $d$ para demostrar las mismas para $d'$: \ 1. $d(x, y) >= 0 sp forall x, y in X ==> d(x, y)/(1+d(x, y)) = d'(x, y) >= 0 sp forall x, y in X$. \ 2. $(d(x, y) = 0 <==> x = y sp forall x, y in X) ==> (d(x, y)/(1+d(x, y)) = d'(x, y) = 0 <==> x = y sp forall x, y in X)$. \ 3. $d'(x, y) = d(x, y)/(1+d(x, y)) = d(y, x)/(1+d(y, x)) = d'(y, x) sp forall x, y in X$. \ 4. No me dio tiempo...
  + Al ser métrica, sabemos que $d'$ está acotada por abajo. Falta demostrar que está acotada por arriba. Suponga, por contradicción, que $d'(x, y) > 1$. Entonces $d(x, y)/(1+d(x, y)) > 1$, y como $d$ es no negativa, $d(x, y) > 1 + d(x, y)$. Lo cual es una contradicción. $contradiction$ \ $therefore d'$ es acotada.
  + No me dio tiempo, mi idea era usar el corolario 1.10 para comparar las bases dadas por las bolas abiertas dependientes de cada métrica.

  *MEP*
]

#prob[
  _Si ${topo_alpha}_(alpha in Lambda)$ es una familia de topologías sobre $X$,
  demuestre que $arbina topo_alpha$ es una topología sobre X. $quest.inv$Es
  $arbuna topo_alpha$ una topología?_

  #line(length: 100%)

  Sea $topo = arbina$. Tenemos que demostrar:
  + $nothing, X in topo$,
  + $U, V in topo ==> U sect V in topo$, y
  + ${U_gamma}_(gamma in Lambda') subset.eq topo ==>
  limits(union.big)_(gamma in Lambda') topo_gamma in topo$.

  #line(length: 100%)

  == Demo:

  + Tome $beta in Lambda$, entonces $topo_beta$ es una topología sobre $X$, por lo tanto, $nothing, X in topo_beta$, pero $beta$ fue seleccionada arbitrariamente, por lo tanto, $nothing, X in topo_alpha sp forall alpha in Lambda ==> nothing, X in topo$, por definición de la intersección.
  + Tome $U, V in topo$, entonces $U, V in topo_alpha sp forall alpha in Lambda$ por definición de intersección. Pero $topo_alpha$ es una topología $forall alpha in Lambda$, por lo tanto $U sect V in topo_alpha forall alpha in Lambda ==> U sect V in topo$.
  + Tome ${U_gamma}_(gamma in Lambda') subset.eq topo$, entonces ${U_gamma}_(gamma in Lambda') subset.eq topo_alpha sp forall alpha in Lambda$, pero $topo_alpha$ es una topología $forall alpha in Lambda$, por lo tanto $limits(union.big)_(gamma in Lambda') U_gamma in topo_alpha sp forall alpha in Lambda ==> limits(union.big)_(gamma in Lambda') U_gamma in topo$.

  $therefore topo = arbina topo_alpha$ es una
  topología sobre $X$.

  *MEP*

  En general, $arbuna topo_alpha$ no es una topología. Considere el siguiente
  contraejemplo:

  $X := {a, b, c} sp
  topo_1 := {nothing, {a}, {b}, {a, b}, {a, c}, X} sp
  topo_2 := {nothing, {a}, {c}, {a, b}, {b, c}, X}$.

  No es difícil verificar que ambos $topo_1$ y $topo_2$ son topologías sobre
  $X$. Note que ${b}, {c} in topo_1 union topo_2$, pero ${b} union {c} =
  {b, c} in.not topo_1 union topo_2$.

  $therefore topo_1 union topo_2$ no es una topología.
]

#prob[
  _Sea ${cal(T)_alpha}_(alpha in Lambda)$ una familia de topologías sobre X.
  Demuestre que existe una topología única más pequeña que contiene todas las
  colecciones $cal(T)_alpha$, y una topología única más grande contenida en
  todas las colecciones $cal(T)_alpha$._

  == Demo:
  Sea $topo := arbina topo_alpha$. Note que, por la definición de la
  intersección, $topo subset.eq topo_beta sp forall beta in Lambda$. Además,
  $topo$ es una topología, por el problema 2. Entonces $topo$ es una topología
  que contiene todas las colecciones $topo_alpha$, falta demostrar que $topo$
  es la colección más grande que cumple con ambas condiciones. Sea $topo'$ una
  topología tal que $topo' subset.eq topo_beta sp forall beta in Lambda$. Pero
  entonces $topo' subset.eq arbina topo_alpha = topo$.
  $therefore topo$ es la topología más grande contenida en todas las colecciones
  $topo_alpha$.

  El otro lado no me dio tiempo, pero mi idea era utilizar $arbuna topo_alpha$
  como base para una topología y argumentar que es la topología más pequeña que
  contiene a $topo_alpha sp forall alpha in Lambda$.

  *MEP*
]

#prob[
  _Demuestre que la colección $ case = {[a, b) | a < b and a, b in QQ} $ es
  una base que genera una topología distinta a la topología de límites
  inferiores sobre $RR$._

  #line(length: 100%)

  Para demostrar que $case$ es una base para cierta topología, tenemos que
  demostrar:
  + $union.big case = X$, y
  + $forall B_1, B_2 in case$, y $forall x in B_1 sect B_2, exists B_3 in case$ tal que $x in B_3 subset.eq B_1 sect B_2$.

  #line(length: 100%)

  == Demo:
  + Note que $RR = limits(union.big)_(n=1)^infinity subset.eq limits(union.big)_([a, b) in case) [a, b) = union.big case subset.eq RR$. \ $therefore union.big case = RR$.
  + Tome $[a, b), [c, d) in case$. Si $b <= c$, entonces $[a, b) sect [c, d) = nothing$, y la proposición b) es vacíamente cierta. Si $b > c$, entonces $[a, b) sect [c, d) != nothing$. Ahora tome $x in [a, b) sect [c, d) = [c, b) in case$. \ $therefore exists [c, b) in case$ tal que $x in [c, b) subset.eq [a, b) sect [c, d)$.

  $therefore case$ es una base para cierta topología sobre $X$.

  Ahora, note que $[sqrt(pi), sqrt(pi)+1)$ es abierto en $RR_l$, pero
  $[sqrt(pi), sqrt(pi)+1) in.not topo_case$, ya que no es unión arbitraria de
  elementos básicos (note que el extremo izquierdo tiene que estar incluido,
  pero es irracional).

  $therefore topo_case$ es una topología distinta a la topología de límites
  inferiores sobre $RR$.

  *MEP*
]

#prob[
  _Sea $X = {f | f: [0, 1] -> [0, 1]}$. Para cada subconjunto $A$ de $[0, 1]$,
  defina $ B_A = {f in X | f(x) = 0, forall x in A}. $ Demuestre que $base =
  {B_A | A subset.eq [0, 1]}$ es una base para una topología sobre $X$._

  #line(length: 100%)

  Nuevamente, tenemos que demostrar:
  + $union.big base = X$, y
  + $forall B_1, B_2 in base$, y $forall x in B_1 sect B_2, exists B_3 in base$ tal que $x in B_3 subset.eq B_1 sect B_2$.

  #line(length: 100%)

  == Demo:
  + Note que $union.big base = limits(union.big)_(A subset.eq [0, 1]) B_A$, entonces es claro que $union.big base subset.eq X$. Ahora, tome $f in X$, y considere $A := { x in [0, 1] | f(x) = 0} subset.eq [0, 1]$. Entonces $f in B_A$ por construcción, por lo tanto, \ $f in limits(union.big)_(A subset.eq [0, 1]) B_A = union.big base ==> X subset.eq base$. \ $therefore union.big base = X$
  + Ahora tome $B_A, B_C in base$, y tome: $ g in B_A sect B_C &= {f in X | f(x) = 0, forall x in A and f(x) = 0, forall x in C} \ &= {f in X | f(x) = 0, forall x in A sect C} = B_(A sect C) in base $ $therefore exists B_(A sect C) in base$ tal que $g in B_(A sect C) subset.eq B_A sect B_C$

  $therefore base$ es una base para cierta topología sobre $X$.

  *MEP*
]
