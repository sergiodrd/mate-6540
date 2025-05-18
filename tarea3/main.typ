#import "template.typ": *
#let title = "Tarea 3"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 6540"
#let instructor = "Iván Cardona"
#let semester = "C41"
#let due_time = "19 de mayo"
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: "la ecuación")
#show: assignment_class.with(title, author, course_id, instructor, semester,
  due_time)

#let contradiction = text($refmark$, size: 1.75em)
#let sub = $subset.eq$
#let topo = $cal(T)$
#let disc = $topo_"disc"$
#let cof = $topo_"cof"$
#let eucl = $topo_(epsilon^1)$
#let eucl2 = $topo_(epsilon^2)$
#let euclsp = $(RR, topo_(epsilon^1))$
#let eucl2sp = $(RR^2, topo_(epsilon^2))$
#let base = $cal(B)$
#let case = $cal(C)$
#let arbfama = ${U_alpha}_(alpha in Lambda)$
#let finfamn = ${U_i}_(i = 1)^n$
#let arbuna = $limits(union.big)_(alpha in Lambda)$
#let arbung = $limits(union.big)_(gamma in Lambda')$
#let arbungG = $limits(union.big)_(gamma in Gamma)$
#let tilgam = $tilde(gamma)$
#let tilGam = $tilde(Gamma)$
#let tilj = $tilde(j)$
#let tilSig = $tilde(Sigma)$
#let arbungtilG = $limits(union.big)_(tilgam in tilGam)$
#let arbina = $limits(inter.big)_(alpha in Lambda)$
#let arbing = $limits(inter.big)_(gamma in Lambda')$
#let arbingG = $limits(inter.big)_(gamma in Gamma)$
#let arbingtilG = $limits(inter.big)_(tilgam in tilGam)$
#let sp = $,space space$
#let binsp = $bold(accent(2, \u{23DC}))$

// problema 1
#prob[
  _Considere al espacio $binsp = {0, 1}$ con la topología discreta $disc$. \
  Demuestre la proposición: \ El espacio topológico $(X, topo_X)$ es conexo
  $<==>$ No existe una función continua $g:(X, topo_X) -> (binsp, disc)$ que
  sea suprayectiva._

  == Demo:

  #line(length: 100%)
  $(==>)$
  #line(length: 100%)

  Suponga que $(X, topo_X)$ es conexo. Sea $g: (X, topo_X) -> (binsp, disc)$ una
  función continua. Afirmamos que $g$ no es suprayectiva. Note que ${0}, {1} in
  disc$ son disjuntos con ${0} union {1} = binsp$. Entonces ${{0}, {1}}$ es una
  separación de $(binsp, disc)$. Por otra parte, $g(X) sub binsp$ es imagen continua de
  un espacio conexo. Entonces, por un teorema demostrado en clase, $g(X)$ es
  conexo. Pero $(binsp, disc)$ no es conexo, entonces $g(X) sub {0}$ o $g(X) sub {1}$
  pero no ambos.

  $therefore g$ no es suprayectiva.

  #line(length: 100%)
  $(<==)$
  #line(length: 100%)

  Demostramos el contrapositivo. Suponga que $(X, topo_X)$ no es conexo,
  entonces existe una separación ${A, B}$. Ahora defina $g: (X, topo_X) ->
  (binsp, disc)$ de la siguiente manera: $ g(x) := cases(
    0 "si" x in A,
    1 "si" x in B
  ) $
  Note que: \ (a) $A inter B = nothing and A union B = X==> g$ está bien
  definida. \
  (b) $A, B != nothing ==> g$ es suprayectiva. \
  (c) $g^(-1)(nothing) = nothing in topo_X sp g^(-1)({0}) = A in topo_X sp
  g^(-1)({1}) = B in topo_X sp g^(-1)({0, 1}) = X in topo_X$ \ $==> g$ es
  continua.

  $therefore$ existe una función continua $g: (X, topo_X) -> (binsp, disc)$ que
  es suprayectiva.

  *MEP*
]

// problema 2
#prob[
  _Sea $X$ un conjunto infinito dotado de la siguiente topología \ $cof = {
  U sub X | X without U "es finito o" U = nothing}$ (i.e. la topología de los
  complementos finitos) \ (a) Demuestre: $(X, cof)$ es conexo. \ (b) Demuestre:
  $(X, cof)$ es compacto._

  == Demo (a):

  Suponga, por contradicción, que $(X, cof)$ no es conexo. Entonces, existe una
  separación ${A, B}$ de $(X, cof)$. Como $A != nothing$ es abierto, $X without
  A = B$ es finito. Similarmente, como $B != nothing$ es abierto, \ $X without B
  = A$ es finito. Entonces $X = A union B$ es unión de conjuntos finitos, por lo
  tanto $X$ es finito, lo cual contradice nuestra hipótesis. $contradiction$

  $therefore (X, cof)$ es conexo.

  *MEP*

  == Demo (b):

  Si $X = nothing$, entonces es compacto por convención. Suponga que
  $X != nothing$, y sea $C := {C_alpha}_(alpha in Lambda)$ una cubierta abierta
  de $(X, cof)$. Como $X != nothing$, la cubierta no es vacía. Tome $C_(alpha_0)
  in C$, y note que \ $nothing != C_(alpha_0) in cof ==> A := X without
  C_(alpha_0)$ es finito. Pero $A sub X = arbuna C_alpha$, entonces, para cada
  elemento $x_i in A$, con $i in {1, ..., |A|}$, existe por lo menos algún
  $C_(alpha_i) in C$ con $x_i in C_(alpha_i)$. \

  Entonces $C' := {C_(alpha_0), C_(alpha_1), ..., C_(alpha_(|A|))}$ es una
  subcolección finita de $C$. Afirmamos que $C'$ cubre a #v(0.01cm) $X$, es
  decir, que $limits(union.big)_(i = 0)^(|A|) C_(alpha_i) = X$. Primero,
  $C_(alpha_i) sub X sp forall i in {0, 1, ..., |A|} ==>
  limits(union.big)_(i = 0)^(|A|) C_(alpha_i) sub X$. Ahora tome $x in X$, si
  $x in C_(alpha_0) sub limits(union.big)_(i = 0)^(|A|) C_(alpha_i)$,
  terminamos. Si $x in A = X without C_(alpha_0)$, entonces $exists j in
  {1, ..., |A|}$ tal que $x = x_j in A ==> x in C_(alpha_j) sub
  limits(union.big)_(i = 0)^(|A|) C_(alpha_i)$.

  $therefore limits(union.big)_(i = 0)^(|A|) C_(alpha_i) = X$

  $therefore (X, cof)$ es compacto.

  *MEP*
]

// problema 3
#prob[
  _Dé ejemplos de subespacios $A$ y $B$ de $eucl2sp$ tales que: \ (a) $A$ y $B$
  son conexos, pero $A inter B$ no es conexo. \
  (b) $A$ y $B$ no son conexos, pero $A union B$ es conexo. \
  (c) $A$ y $B$ son conexos pero $A without B$ no es conexo. \
  (d) $A$ y $B$ son conexos y $overline(A) inter overline(B) != nothing$, pero
  $A union B$ no es conexo._

  == Lema 1:

  Sea $X$ un subespacio conexo de $euclsp$, y $f: X -> euclsp$ una
  función continua. Entones, el conjunto ${ (x, f(x)) in RR^2 | x in X }$ es un
  subespacio conexo de $eucl2sp$.

  === Demo:

  Sea $phi: X -> eucl2sp$ una función definida por $phi(x) = (x, f(x))$.
  Tome $V in eucl2$, entonces $phi^(-1)(V) = {x in X | (x, f(x)) in V}$. Tome
  $y in phi^(-1)(V)$, entonces $(y, f(y)) in V$, pero $V in eucl2 ==> exists
  r in (0, infinity)$ tal que $B_(d_2)((y, f(y)); r) sub V$. Donde $d_2$ es la
  métrica usual sobre $RR^2$. Entonces: $ f^(-1)(B_(d_2)((y, f(y)); r)) &=
  {x in X | d_2((x, f(x)), (y, f(y)) < r} \ &= {x in X | sqrt((y - x)^2 +
    (f(y) - f(x))^2) < r} \ &= {x in X | abs(y - x) < r}
  "(porque estamos tomando una proyección)" \ &= {x in X | d_1(x, y) < r}
  "donde" d_1 "es la métrica usual sobre" RR \ &= B_(d_1)(y; r) in eucl $
  Pero $B_(d_1)(y; r) = f^(-1)(B_(d_2)((y, f(y); r))) sub f^(-1)(V)$.

  $therefore phi$ es continua.

  Pero, por el corolario 4.8, $X$ conexo y $phi$ continua $==> phi(X) =
  {(x, f(x)) in RR^2 | x in X}$ es un subespacio conexo de $eucl2sp$.

  *MEP*

  == Ejemplo (a):

  Sean $f_1, g_1: ([-1, 1], topo_"rel") -> euclsp$ definidas por $f(x) = x^2,
  g(x) = 1/2$. Note que $f_1, g_1$ son continuas y que $[-1, 1]$ es conexo.
  Entonces, por el lema 1, \ $A := {(x, f(x)) in RR^2 | x in [-1, 1]}, B := {
  (x, g(x)) in RR^2 | x in [-1, 1]}$ son subespacios conexos de $RR^2$. Pero
  note que $A inter B = {(-1/sqrt(2), 1/2), (1/sqrt(2), 1/2)}$, y
  ${{(-1/sqrt(2), 1/2)}, {(1/sqrt(2), 1/2)}}$ sirve de separación para $A inter
  B$.

  $therefore A inter B$ no es conexo.

  == Ejemplo (b):

  Sea $A := [0, 1/4] union.sq [1/2, 3/4]$ y sea $B := [1/4, 1/2] union.sq
  [3/4, 1]$. Note que ambos $A$ y $B$ no son conexos, pues están definidos como
  uniones disjuntas de dos subespacios propios. Ahora, note que:
  $ A union B &= ([0, 1/4] union.sq [1/2, 3/4]) union ([1/4, 1/2] union.sq
  [3/4, 1]) \ &= ([0, 1/4] union [1/4, 1/2]) union ([1/2, 3/4] union [3/4, 1]) \
  &= [0, 1/2] union [1/2, 1] = [0, 1] $ $therefore A union B = [0, 1]$ es
  conexo.

  == Ejemplo (c):

  Sea $A := [0, 1]$ y sea $B := [1/4, 3/4]$. Ambos son conexos pues son
  intervalos. \ Pero $A without B = [0, 1] without [1/4, 3/4] = [0, 1/4) union.sq
  (3/4, 1]$, pero esto es la unión disjunta de dos subespacios propios.

  $therefore A without B$ no es conexo.

  == Ejemplo (d):

  Sea $A := [0, 1/2)$ y sea $B := (1/2, 1]$. Note que ambos son conexos pues son
  intervalos, además note que $overline(A) = [0, 1/2]$ y $overline(B) =
  [1/2, 1]$. Entonces $overline(A) inter overline(B) = {1/2} != nothing$. Pero
  $A union B = [0, 1/2) union.sq (1/2, 1]$, que es una unión disjunta de
  subespacios propios.

  $therefore A union B$ no es conexo.
]

// problema 4
#prob[
  _Sean $(X, topo_X)$ un espacio topológico y ${infinity}$ un objeto que no
  pertenezca a $X$. Defina $Y = X union {infinity}$_ y \
  $topo_infinity = {U sub Y | U in topo_X " o " Y without U
  "es compacto y cerrado en" X}$. \ (a) Demuestre que $topo_infinity$ es una
  topología sobre $Y$. \ (b) Sea $topo'$ la topología relativa sobre $X$, la que
  hereda como subconjunto de $Y$. Demuestre que $topo' = topo_X$.
]

// problema 5
#prob[
  _Sean $(X, topo_X)$ un espacio topológico y ${infinity}$ un objeto que no
  pertenezca a $X$. Defina $Y = X union {infinity}$_ y \
  $topo_infinity = {U sub Y | U in topo_X " o " Y without U
  "es compacto y cerrado en" X}$. \ (c) Demuestre que $(Y, topo_infinity)$ es
  compacto.
]
