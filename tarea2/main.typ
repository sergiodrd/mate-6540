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

#prob[
  _Sean $(X, topo_X)$ y $(Y, topo_Y)$ espacios topológicos. Una función
  $f: (X, topo_X) -> (Y, topo_Y)$ es fuertemente continua si
  $f(overline(A)) subset.eq f(A) sp forall A subset.eq X$. Demuestre que $f$ es fuertemente continua $<==> f^(-1)(B)$ es cerrado, $forall B subset.eq
  Y$._

  == Demo:

  *MEP*
]

#prob[
  _Sean $(X, topo_X)$ y $(Y, topo_Y)$ espacios topológicos y $cal(U)$ la
  topología producto sobre $X times X$. Demuestre que $(X, topo_X)$ es Hausdorff
  $<==>$ la diagonal $Delta = {(x, y) in X times X | x = y}$ es un subconjunto
  cerrado de $(X times X, cal(U))$._

  == Demo:

  *MEP*
]

#prob[
  _Sean $(X, topo_X)$ y $(Y, topo_Y)$ espacios topológicos. Demuestre que si
  $f: (X, topo_X) -> (Y, topo_Y)$ es sobreyectiva, continua, y abierta, entonces
  $topo_Y = topo_"FIN"$, donde $space topo_"FIN" space$ es la topología final inducida por
  $f$._

  == Demo:

  *MEP*
]

#prob[
  _Sea $p: (X, topo_X) -> (Y, topo_Y)$ una función continua. Demuestre que si
  existe una función continua $f: (Y, topo_Y) -> (X, topo_X)$ tal que
  $p compose f$ es la identidad en $Y$, entonces $p$ es una aplicación
  cociente._

  == Demo:

  *MEP*
]
