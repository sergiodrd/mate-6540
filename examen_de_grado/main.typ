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
#let intB = $mono("int")(B)$
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

  == Proof (i):

  Let $(X, topo_x)$ be a pseudocompact topological space, and let $phi: (X,
  topo_X) -> (phi(X), topo_phi(X))$ be a continuous function. Now let $f:
  (phi(X), topo_phi(X)) -> euclsp$ be a continuous funcion. Then \ $(f compose
  phi): (X, topo_X) -> euclsp$ is continuous. But $(X, topo_X)$ is
  pseudocompact, so $f compose phi$ is bounded \ $==> f$ is bounded. Then
  $(phi(X), topo_phi(X))$ is pseudocompact.

  $therefore$ pseudocompactness is a continuous invariant.

  *MEP*

  == Proof (ii):

  We claim that $(Y, topo_Y)$ compact $==> (Y, topo_Y)$ pseudocompact, we show
  the contrapositive.

  Suppose that $(Y, topo_Y)$ is not pseudocompact, then there exists a
  continuous function \ $f: (Y, topo_Y) -> euclsp$ that is unbounded. Then
  $f(Y)$ extends infinitely in at least one direction. Suppose, without loss of
  generality, that it extends infinitely to the right. Then $f(Y) sub
  (a, +infinity)$, for some $a in RR union {-infinity}$. Now define the family
  ${(a, i)}_(n = 1)^infinity$ and note that: \ $countun (a, i) = (a, +infinity)
  supset.eq f(Y)$. But note that $(a, i) in eucl, forall i in NN ==>
  f^(-1)((a, i)) in topo_Y, forall i in NN$ because $f$ is continuous. And:
  $ countun f^(-1)((a, i)) = f^(-1)(countun (a, i)) = f^(-1)((a, +infinity))
  supset.eq f^(-1)(f(Y)) supset.eq Y $ This implies that the collection
  $C := {f^(-1)((a, i)) inter Y | i in NN}$ is an open cover for $Y$, but note
  that, for any finite subcollection $C' := {f^(-1)((a, i_j)) | i_j in NN sp
  forall j in {1, ..., n}} sub C$, there exists a natural number $n$ such that
  $i_n$ is an upper bound of $C'$. But $f(Y)$ extends infinitely to the right,
  so $C'$ cannot be an open cover for $Y$.

  $therefore (Y, topo_Y)$ is not compact.

  Now we show that the converse does not hold.
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

  == Lemma 1:

  Let $C_1, C_2, D_1, D_2$ be sets. Then $(C_1 times C_2) inter (D_1 times D_2)
  = (C_1 inter D_1) times (C_2 inter D_2)$.

  == Proof:

  Note that:
  $ &(x, y) in (C_1 times C_2) inter (D_1 times D_2) \
  <==> &(x, y) in (C_1 times C_2) and (x, y) in (D_1 times D_2) \
  <==> &(x in C_1 and y in C_2) and (x in D_1 and y in D_2) \
  <==> &(x in C_1 and x in D_1) and (y in C_2 and y in D_2) \
  <==> &x in (C_1 inter D_1) and y in (C_2 inter D_2) \
  <==> &(x, y) in (C_1 inter D_1) times (C_2 inter D_2) $

  $therefore (C_1 times C_2) inter (D_1 times D_2) = (C_1 inter D_1) times
  (C_2 inter D_2)$

  == Proof (i):

  Take $(x, y) in overline(A_1 times A_2)$, and take $U_1 in topo_1, U_2 in
  topo_2$ such that $x in U_1$ and $y in U_2$. \ Then $(x, y) in U_1 times U_2$
  and $U_1 times U_2 in topo_Pi$ by the definition of the product topology (for
  finite products). But: $ (x, y) in overline(A_1 times A_2) &==> (U_1 times
  U_2) inter (A_1 times A_2) != nothing \ &==> exists (x', y') in (U_1 times
  U_2) inter (A_1 times A_2) \ &==> (x', y') in (U_1 inter A_1) times (U_2 inter
  A_2) \ &==> x' in U_1 inter A_1 and y' in U_2 inter A_2 \ &==> U_1 inter A_1
  != nothing and U_2 inter A_2 != nothing \ &==> x in overline(A_1) and y in
  overline(A_2) \ &==> (x, y) in overline(A_1) times overline(A_2) $

  $therefore overline(A_1 times A_2) sub overline(A_1) times overline(A_2)$

  Similarly, take $(a, b) in overline(A_1) times overline(A_2)$, and take
  $U_1 times U_2 in topo_Pi$ such that $(a, b) in U_1 times U_2$. \ Then $a in
  U_1 in topo_1$ and $b in U_2 in topo_2$ by the definition of the product
  topology (for finite products). But: $ (a, b) in overline(A_1) times
  overline(A_2) &==> a in overline(A_1) and b in overline(A_2) \ &==> U_1 inter
  A_1 != nothing and U_2 inter A_2 != nothing \ &==> exists a' in U_1 inter A_1
  and exists b' in U_2 inter A_2 \ &==> (a', b') in (U_1 inter A_1) times (U_2
  inter A_2) \ &==> (a', b') in (U_1 times U_2) inter (A_1 times A_2) \ &==>
  (U_1 times U_2) inter (A_1 times A_2) != nothing \ &==> (a, b) in
  overline(A_1 times A_2) $

  $therefore overline(A_1) times overline(A_2) sub overline(A_1 times A_2)$

  $therefore overline(A_1 times A_2) = overline(A_1) times overline(A_2)$

  *MEP*

  == Proof (ii):

  Note that, for any subset $B$ of a topological space $(Y, topo_Y)$, we have
  that \ $z in intB <==> exists U in topo_Y$ such that $z in U sub B$. Here's a
  brief proof: \ Take $z in intB = union.big {V in topo_Y | V sub B} sub B$.
  This proves ($==>$). Now suppose $exists U in topo_Y$ such that $z in U sub
  B$, then $U in union.big {V in topo_Y | V sub B} = intB$. This proves ($<==$).

  Now for the main proof. Take $(x, y) in intA1xA2$, then $exists U_1 times U_2
  in topo_Pi$ such that \ $(x, y) in U_1 times U_2 sub A_1 times A_2 ==> x in
  U_1 sub A_1$ and $y in U_2 sub A_2 ==> x in intA1$ and \ $y in intA2$. Then
  $(x, y) in intA1 times intA2$.

  $therefore intA1xA2 sub intA1 times intA2$.

  Now take $(a, b) in intA1 times intA2$, then $a in intA1$ and $b in intA2 ==>
  exists U_1 in topo_1$ such that $a in U_1 sub A_1$ and $exists U_2 in topo_2$
  such that $b in U_2 sub A_2$. Then $(a, b) in U_1 times U_2 sub A_1 times
  A_2$, which implies that $(a, b) in intA1xA2$.

  $therefore intA1 times intA2 sub intA1xA2$.

  $therefore intA1xA2 = intA1 times intA2$.

  *MEP*
]
