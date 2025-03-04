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
#let arbina = $limits(sect.big)_(alpha in Lambda)$
#let arbing = $limits(sect.big)_(gamma in Lambda')$
#let sp = $,space space$

#prob[
  _Sean $(X, topo_X)$ y $(Y, topo_Y)$ espacios topológicos y sea
  $f: (X, topo_X) -> (Y, topo_Y)$ una biyección. Demuestre que las siguientes
  son equivalentes:_

  _(a) $f$ es un homeomorfismo._

  _(b) $f$ y $f^(-1)$ son funciones abiertas._

  _(c) $f$ y $f^(-1)$ son funciones cerradas._

  == Demo:

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
  $topo_Y = topo_"FIN"$, donde $topo_"FIN"$ es la topología final inducida por
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
