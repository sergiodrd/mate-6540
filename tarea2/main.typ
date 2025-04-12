#import "template.typ": *
#let title = "Tarea 2"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 6540"
#let instructor = "Iván Cardona"
#let semester = "C41"
#let due_time = "21 de marzo"
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
#let arbina = $limits(inter.big)_(alpha in Lambda)$
#let arbing = $limits(inter.big)_(gamma in Lambda')$
#let sp = $,space space$

// problema 1
#prob[
  _Sean $(X, topo_X)$ y $(Y, topo_Y)$ espacios topológicos y sea
  $f: (X, topo_X) -> (Y, topo_Y)$ una biyección. Demuestre que las siguientes
  son equivalentes:_

  _(a) $f$ es un homeomorfismo._

  _(b) $f$ y $f^(-1)$ son funciones abiertas._

  _(c) $f$ y $f^(-1)$ son funciones cerradas._

  == Demo:

  #line(length: 100%)
  $(a ==> b)$
  #line(length: 100%)

  Suponga que $f$ es un homeomorfismo, y sea $U in topo_X$, como $f$ es
  biyectiva y un homeomorfismo, $f^(-1)$ es continua, entonces
  $(f^(-1))^(-1)(U)=f(U) in topo_Y$.

  $therefore f$ es función abierta.

  Similarmente, sea $V in topo_X$, como $f$ es homeomorfismo, $f$ es continua,
  entonces $f^(-1)(V)=(f^(-1))^(-1)(V) in topo_X$.

  $therefore f^(-1)$ es función abierta.

  #line(length: 100%)
  $(b ==> c)$
  #line(length: 100%)

  Suponga que $f$ y $f^(-1)$ son funciones abiertas. Sea $C subset.eq X$ cerrado
  y note que: $ f^(-1)(Y without f(C)) = f^(-1)(Y) without f^(-1)(f(C))
  = X without C in topo_X text("(porque f es inyectiva)") $

  Pero $f$ es función abierta, entonces:
  $ f(f^(-1)(Y without f(C))) = Y without f(C) in topo_Y ==> f(C)
  text("es cerrado") $
  $therefore f$ es función cerrada.

  Similarmente, sea $K subset.eq Y$ cerrado y note que:
  $ f(X without f^(-1)(K)) &= (f^(-1))^(-1)(X without f^(-1)(K)) = (f^(-1))^(-1)
  (X) without (f^(-1))^(-1)(f^(-1)(K)) \ &= f(X) without f(f^(-1)(K)) =
  Y without K in topo_Y $
  $==> f^(-1)(f(X without f^(-1)(K))) = X without f^(-1)(K) in topo_X ==>
  f^(-1)(K)$ es cerrado

  $therefore f^(-1)$ es función cerrada.

  #line(length: 100%)
  $(c ==> a)$
  #line(length: 100%)

  Suponga que $f$ y $f^(-1)$ son funciones cerradas, y sea $C_Y$ un conjunto
  cerrado en $(Y, topo_Y)$, entonces $f^(-1)(C_Y)$ es cerrado en $(X, topo_X)
  ==> f$ es continua.

  Similarmente, suponga que $C_X$ es cerrado en
  $(X, topo_X)$, entonces $(f^(-1))^(-1)(C_X) = f(C_X)$ es cerrado en
  $Y ==> f^(-1)$ es continua.

  $therefore f$ es un homeomorfismo.

  *MEP*
]

// problema 2
#prob[
  _Sean $(X, topo_X)$ y $(Y, topo_Y)$ espacios topológicos. Una función
  $f: (X, topo_X) -> (Y, topo_Y)$ es fuertemente continua si
  $f(overline(A)) subset.eq f(A) sp forall A subset.eq X$. Demuestre que $f$ es fuertemente continua $<==> f^(-1)(B)$ es cerrado, $forall B subset.eq
  Y$._

  == Demo:

  #line(length: 100%)
  $(==>)$
  #line(length: 100%)

  Suponga que $f$ es fuertemente continua y tome $B subset.eq Y$. Entonces:
  $ &B subset.eq Y  ==> f^(-1)(B) &&subset.eq X \
  ==> &f(overline(f^(-1)(B))) &&subset.eq f(f^(-1)(B)) &&"(continuidad fuerte)" \
  ==> &f^(-1)(f(overline(f^(-1)(B)))) &&subset.eq f^(-1)(f(f^(-1)(B)))
  &&"(TMA A.4 (ii))" $

  Por otro lado:
  $ &f(f^(-1)(B)) &&subset.eq B &&"(TMA A.4 (vii))" \
  ==> &f^(-1)(f(f^(-1)(B))) &&subset.eq f^(-1)(B) &&"(TMA A.4 (ii))" $

  Adicionalmente:
  $ overline(f^(-1)(B)) subset.eq f^(-1)(f(overline(f^(-1)(B))))
  "(TMA A.4 (viii))" $

  Entonces, por la transitividad de las inclusiones $(6) subset.eq (4)
  subset.eq (5)$, tenemos que $overline(f^(-1)(B)) subset.eq f^(-1)(B)$.

  $therefore f^(-1)(B)$ es cerrado.

  *MEP*
]

// problema 3
#prob[
  _Sea $(X, topo_X)$ un espacio topológico y $cal(U)$ la
  topología producto sobre $X times X$. Demuestre que $(X, topo_X)$ es Hausdorff
  $<==>$ la diagonal $Delta = {(x, y) in X times X | x = y}$ es un subconjunto
  cerrado de $(X times X, cal(U))$._

  == Demo:

  Dado $z in X$, denotaremos como $U_z$ a una vecindad de $z$.

  #line(length: 100%)
  $(==>)$
  #line(length: 100%)

  Dados $x, y in X$ con $x != y$, defina $H_(x, y) := { U_x times U_y |
  U_x inter U_y = nothing }$. Note que $(X, topo_X)$ Hausdorff $==> H_(x, y)
  != nothing sp forall x, y in X$ con $x != y$. Considere la familia
  ${H_(x, y)}_((x, y) in Lambda)$ donde \ $Lambda := X times X without Delta$.
  Por el axioma del escogido, existe una función de selección:
  $ c:&{H_(x, y)}_((x, y) in Lambda) -> union.big_((x, y) in Lambda) H_(x, y) \
  &c(A) in A sp forall A in {H_(x, y)}_((x, y) in Lambda) $
  Ahora, sea $ B := union.big_((x, y) in Lambda) c(H_(x, y)) $
  Note que $c(H_(x, y)) in H_(x, y) ==> exists x', y' in X$ tal que $c(H_(x, y))
  = U_x' times U_y'$. Entonces $B$ es unión arbitraria de elementos básicos de
  $cal(U) ==> B in cal(U)$.

  Afirmamos que $B = X times X without Delta$:

  Tome $(a, b) in B$. Entonces $exists (a', b') in Lambda$ tal que $(a, b) in
  U_a' times U_b'$, pero $(a', b') in Lambda$ \ $==> U_a' inter U_b' = nothing
  ==> a != b ==> (a, b) in X times X without Delta ==> B subset.eq X times X
  without Delta$.

  Ahora tome $(c, d) in X times X without Delta$, entonces $c != d ==> U_c, U_d$
  con $U_c inter U_d = nothing$, pero \ $(c, d) in U_c times U_d subset.eq B
  ==> (c, d) in B ==> X times X without Delta subset.eq B$.

  $therefore B = X times X without Delta$

  Entonces, $X times X without Delta = B in cal(U) ==> Delta$ es cerrado en
  $cal(U)$.

  #line(length: 100%)
  $(<==)$
  #line(length: 100%)

  Suponga que $Delta$ es cerrado, entonces $X times X without Delta in cal(U)$.
  Tome $(x, y) in X times X without Delta$. \ Como $X times X without Delta$ es
  abierto, existe un elemento básico $U times V$ tal que \ $(x, y) in U times V
  subset.eq X times X without Delta ==> U inter V = nothing$. Entonces
  encontramos abiertos disjuntos que contienen a dos puntos arbitrarios
  distintos.

  $therefore X$ es Hausdorff.

  *MEP*
]

// problema 4
#prob[
  _Sean $(X, topo_X)$ y $(Y, topo_Y)$ espacios topológicos. Demuestre que si
  $f: (X, topo_X) -> (Y, topo_Y)$ es sobreyectiva, continua, y abierta, entonces
  $topo_Y = topo_"FIN"$, donde $space topo_"FIN" space$ es la topología final inducida por
  $f$._

  == Demo:

  Por definición, $T_"FIN"$ es la topología más grande que hace que $f$ sea
  continua. Pero: \ $f:(X, topo_X) -> (Y, topo_Y)$ es continua por hipótesis.

  $therefore topo_Y subset.eq topo_"FIN"$

  Tome $V in topo_"FIN"$. Como $f$ es continua, $f^(-1)(V) in topo_X$. Pero
  $f:(X, topo_X) -> (Y, topo_Y)$ también es abierta, lo que implica que
  $f(f^(-1)(V)) in topo_Y$. Finalmente, $f$ sobreyectiva $==> f(f^(-1)(V)) = V$.
  Entonces $V in topo_Y$.

  $therefore topo_"FIN" subset.eq topo_Y$

  $therefore topo_Y = topo_"FIN"$

  *MEP*
]

// problema 5
#prob[
  _Sea $p: (X, topo_X) -> (Y, topo_Y)$ una función continua. Demuestre que si
  existe una función continua \ $f: (Y, topo_Y) -> (X, topo_X)$ tal que
  $p compose f$ es la identidad en $Y$, entonces $p$ es una aplicación
  cociente._
  == Demo:

  Para demostrar que $p$ es una aplicación cociente, debemos demostrar que
  $p$ es sobreyectiva, y que $topo_Y = topo' := { V subset.eq Y | p^(-1)(V) in
  topo_X }$.

  Tome $y in Y$ y note que $y = id_(Y)(y) = (p compose f)(y) = p(f(y))$. Entonces,
  dado un elemento arbitrario $y in Y$, encontramos un elemento $x in X$ tal que
  $y = p(x)$.

  $therefore p$ es sobreyectiva.

  Tome $U in topo_Y$, como $p$ es continua, $p^(-1)(U) in topo_X ==> topo_Y
  subset.eq topo'$.

  Ahora, tome $V in topo'$, entonces $p^(-1)(V) in topo_X$ por definición.
  Entonces, $f^(-1)(p^(-1)(V)) in topo_Y$ por la continuidad de $f$. Pero
  $f^(-1)(p^(-1)(V)) = (f^(-1) compose p^(-1))(V) = (p compose f)^(-1)(V) =
  id_(Y)(V) = V$, lo que implica que $V in topo_Y$.

  $therefore topo_Y = topo'$.

  $therefore p$ es una aplicación cociente.

  *MEP*
]
