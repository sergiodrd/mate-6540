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
#let base = $cal(B)$
#let case = $cal(C)$
#let arbuna = $limits(union.big)_(alpha in Lambda)$
#let arbung = $limits(union.big)_(gamma in Lambda')$
#let arbina = $limits(inter.big)_(alpha in Lambda)$
#let arbing = $limits(inter.big)_(gamma in Lambda')$
#let sp = $,space space$
#let binsp = $bold(accent(2, \u{23DC}))$

// problema 1
#prob[
  _Considere al espacio $binsp$ con la topología discreta $disc$. \ Demuestre la
  proposición: \ El espacio topológico $(X, topo_X)$ es conexo $<==>$ No existe
  una función continua $g:(X, topo_X) -> (binsp, disc)$ que sea suprayectiva._
]

// problema 2
#prob[
  _Sea $X$ un conjunto infinito dotado de la siguiente topología \ $cof = {
  U sub X | X without U "es finito o" U = nothing}$ (i.e. la topología de los
  complementos finitos) \ (a) Demuestre: $(X, cof)$ es conexo. \ (b) Demuestre:
  $(X, cof)$ es compacto._
]

// problema 3
#prob[
  _Dé ejemplos de subespacios $A$ y $B$ de $(RR^2, topo_(epsilon^2))$ tales
  que: \ (a) $A$ y $B$ son conexos, pero $A inter B$ no es conexo. \
  (b) $A$ y $B$ no son conexos, pero $A union B$ es conexo. \
  (c) $A$ y $B$ son conexos pero $A without B$ no es conexo. \
  (d) $A$ y $B$ son conexos y $overline(A) inter overline(B) != nothing$, pero
  $A union B$ no es conexo._
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
