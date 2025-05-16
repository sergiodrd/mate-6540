#import "template.typ": *
#let title = "Topology Qualifying Exam"
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
#let powerX = $cal(P)(X)$
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
#let countun = $union.big_(i = 1)^infinity$
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
#let intA = $mono("int")(A)$
#let intA1 = $mono("int")(A_1)$
#let intA2 = $mono("int")(A_2)$
#let intA1xA2 = $mono("int")(A_1 times A_2)$
#let intclA = $mono("int")(overline(A))$

// problema 1
#prob[
  _A topological space $(X, topo_X)$ is pseudocompact $<==>$ every continuous
  function $f: (X, topo_X) -> euclsp$ is bounded. Here $eucl$ is the usual
  topology over $RR$._

  _(i) Show that pseudocompactness is a continuous invariant. Explain._

  _(ii) Show that if $(Y, topo_Y)$ is compact, then $(Y, topo_Y)$ is
  pseudocompact, but that the converse does not hold._
]

// problema 2
#prob[
  _(Kuratowski's closure operator) Let $X$ be a set, $powerX$ be its powerset,
  and $c: powerX -> powerX$ be a function that satisfies:_

  _(i) $c(nothing) = nothing$_

  _(ii) $A sub c(A) sp forall A in powerX$_

  _(iii) $c(c(A)) = c(A) sp forall A in powerX$_

  _(iv) $c(A union B) = c(A) union c(B) sp forall A, B in powerX$_

  _Show that the collection $topo = {X without c(A) | A in powerX}$ is a
  topology over $X$, and that in this topology $overline(A) = c(A) sp forall A
  in powerX$. Here $overline(A)$ is the closure of $A$ in $(X, topo)$._
]

// problema 3
#prob[
  _Let $A$ be a subset of a topological space $(X, topo_X)$. Show that the
  following are equivalent:_

  _(i) $intclA = nothing$._

  _(ii) $X without overline(A)$ is dense in $X$._

  _(iii) $X without overline((X without overline(A))) = nothing$._

  _(iv) $A sub overline((X without overline(A)))$._
]

// problema 4
#prob[
  _A subset of a topological space is a $G_delta$-set if it is the intersection
  of countably many open sets. On the other hand, a subset of a topological
  space is an $F_delta$-set if it is the union of countably many closed sets._

  _(i) Let $A$ be an $F_delta$-set of a topological space $(X, topo_X)$. Show
  that there is a nested sequence of closed sets $C_1 sub C_2 sub C_3 sub ...$
  such that $A = countun C_i$._

  _(ii) Show that every closed set in a metric space $(X, d)$ is a
  $G_delta$-set._
]

// problema 5
#prob[
  _Let $A, B$ be two non-empty subsets of $RR$ with the usual topology. Define:_
  $ C := {x + y | x in A and y in B}. $

  _(a) Show that, if $A$ or $B$ is open, then $C$ is open._

  _(b) Show that, if $A$ and $B$ are compact, then $C$ is compact._
]

// problema 6
#prob[
  _(Intermediate value theorem) Let $f: (X, topo_X) -> euclsp$ be a continuous
  function, where $(X, topo_X)$ is connected. Show that if $a, b$ are two points
  in $X$ and if $r$ is a real number lying between $f(a)$ and $f(b)$, then there
  is a $c in X$ such that $f(c) = r$._
]

// problema 7
#prob[
  _Let $(X_1, topo_1)$ and $(X_2, topo_2)$ be topological spaces and suppose
  $X_1 times X_2$ has the product topology. For each $i = 1, 2$, let $A_i sub
  X_i$. Prove that:_

  _(i) $overline(A_1 times A_2) = overline(A_1) times overline(A_2)$._

  _(ii) $intA1xA2 = intA1 times intA2$._
]
