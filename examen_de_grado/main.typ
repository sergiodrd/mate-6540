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

  Consider the collection: $topo := {U sub RR | U = nothing or 0 in U}$.
  Note that $nothing in topo$ by construction and \ $0 in RR ==> RR in topo$,
  and that arbitrary unions and finite intersections of sets containing $0$ also
  contain $0$. Then $topo$ is a topology over $RR$. Suppose $f: (RR, topo) ->
  euclsp$ is a continuous function. Then, since $RR without {f(0)} = (-infinity,
  0) union (0, +infinity) in eucl$, we have that $A := f^(-1)(RR without f({0}))
  in topo$. But note that $A = f^(-1)(RR without f({0})) = f^(-1)(RR) without
  f^(-1)(f({0})) = RR without f^(-1)(f({0}))$, and \ ${0} sub f^(-1)(f({0}))$,
  it then follows that $0 in.not A$, but $A in topo$, therefore $A =
  f^(-1)(RR without f({0})) = nothing$. This implies that $f$ doesn't ever map
  to anything other than $0$, so $f(x) = 0$, which is a bounded function.

  $therefore (RR, topo)$ is pseudocompact.

  Consider the collection $D := {(-i, i) | i in NN}$. Note that $forall i in NN
  sp 0 in (-i, i) ==> (-i, i) in topo$. Also, $countun (-i, i) = RR$. Therefore,
  $D$ is an open cover for $RR$. Now take a finite subcollection \ $D' :=
  {(-i_j, i_j) | i_j in NN sp forall j in {1, ..., n}} sub D$. But clearly
  $D'$ does not cover $RR$.

  $therefore (RR, topo)$ is not compact.

  *MEP*
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

  == Proof:

  This proof is incomplete, but I left what I tried here as a little extra.
  My chosen 5 problems do not include this one :).

  #line(length: 100%)
  We claim that $nothing, X in topo$.
  #line(length: 100%)

  Note that $c(X) in powerX$ and $X in c(X)$ imply that $c(X) = X$. Then $X
  without c(X) = X without X = nothing in topo$. Similarly, note that
  $c(nothing) = nothing ==> X without c(nothing) = X without nothing = X in
  topo$.

  $therefore nothing, X in topo$.

  #line(length: 100%)
  We claim that $topo$ is closed under finite intersections.
  #line(length: 100%)

  Take $U, V in topo$, then $exists A, B in powerX$ such that $U = X without
  c(A)$ and $V = X without c(B)$. Then:
  $ U inter V &= (X without c(A)) inter (X without c(B)) \
  &= X without (c(A) union c(B)) \ &= X without c(A union B) in topo $

  $therefore U inter V in topo$.

  $therefore topo$ is closed under finite intersections, by induction.
]

// problema 3
#prob[
  _Let $A$ be a subset of a topological space $(X, topo_X)$. Show that the
  following are equivalent:_

  _(i) $intclA = nothing$._

  _(ii) $X without overline(A)$ is dense in $X$._

  _(iii) $X without overline((X without overline(A))) = nothing$._

  _(iv) $A sub overline((X without overline(A)))$._

  == Proof:

  #line(length: 100%)
  _((i) $==>$ (ii))_
  #line(length: 100%)

  Suppose that $intclA = union.big {U in topo_X | U sub overline(A)} = nothing$.
  Note that $overline((X without overline(A))) sub X$. We claim that \
  $X sub overline((X without overline(A)))$. Take $x in X$ and $U in topo_X$
  such that $x in U$. Then $U != nothing$. Now suppose that $U sub overline(A)$,
  then $U sub union.big {U in topo_X | U sub overline(A)} = nothing ==> U =
  nothing$, which is a contradiction. $contradiction$ \ #v(.01mm) Then $U inter
  (X without overline(A)) != nothing ==> x in overline((X without overline(A)))
  ==> X sub overline((X without overline(A)))$.

  $therefore overline((X without overline(A))) = X$.

  $therefore X without overline(A)$ is dense in $X$.

  #line(length: 100%)
  _((ii) $==>$ (iii))_
  #line(length: 100%)

  Suppose that $X without overline(A)$ is dense in $X$, then $overline((X
  without overline(A))) = X$ by definition. \ Then $X without overline((X
  without overline(A))) = X without X = nothing$.

  $therefore X without overline((X without overline(A))) = nothing$.

  #line(length: 100%)
  _((iii) $==>$ (iv))_
  #line(length: 100%)

  Suppose that $X without overline((X without overline(A))) = nothing$. Then
  $overline((X without overline(A))) = X$. But $A sub X$ by hypothesis.

  $therefore A sub overline((X without overline(A)))$

  #line(length: 100%)
  _((iv) $==>$ (i))_
  #line(length: 100%)

  Suppose that $A sub overline((X without overline(A)))$. Now suppose, by
  contradiction, that $intclA != nothing$. Then \ $exists x in intclA ==>
  exists U in topo_X$ such that $x in U sub overline(A)$. But $x in overline(A)$
  and $U$ neighborhood of $x$ imply that $U inter A != nothing$. So $exists y
  in U$ such that $y in A sub overline((X without overline(A)))$. But now $y in
  overline((X without overline(A)))$ and $U$ neighborhood of $y$ imply that
  $U inter (X without overline(A)) != nothing$. But this contradics the fact
  that $U in overline(A)$. $contradiction$

  $therefore intclA = nothing$.

  *MEP*
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

  == Proof (a):

  Suppose, without loss of generality, that $A in eucl$. Now take $(x + y) in
  C$, then $x in A$, which is open, so $exists delta in (0, infinity)$ such that
  $(x - delta, x + delta) sub A$.

  We claim that $D := ((x + y) - delta, (x + y) + delta) sub C$.

  Take $d in D$, then: $ &(x + y) - delta < d < (x + y) + delta \ ==> &x - delta
  < d - y < x + delta \ ==> &(d - y) in (x - delta, x + delta) sub A \ ==>
  &((d - y) + y) in C \ ==> &d in C $ $therefore D sub C$

  $therefore C$ is open.

  *MEP*

  == Proof (b):

  Suppose that $A, B$ are compact. Then, by Tychonoff's Theorem, $A times B$ is
  compact when given the product topology. Note that the product topology
  $topo_(A times B)$ is a relative topology inherited from $RR^2$. Define a
  function $phi: (A times B, topo_(A times B)) -> euclsp$ by $phi(a, b) =
  a + b$. Note that this is a polynomial function, and thus continuous.
  Also note that: $ phi(A times B) = {phi(a, b) | (a, b) in A times B} =
  {a + b | a in A and b in B} = C $
  But $A times B$ is compact and compactness is a continuous invariant.

  $therefore C$ is compact.

  *MEP*
]

// problema 6
#prob[
  _(Intermediate value theorem) Let $f: (X, topo_X) -> euclsp$ be a continuous
  function, where $(X, topo_X)$ is connected. Show that if $a, b$ are two points
  in $X$ and if $r$ is a real number lying between $f(a)$ and $f(b)$, then there
  is a $c in X$ such that $f(c) = r$._

  == Proof:

  Note that $f^(-1)(RR) = X$. Now, suppose, by contradiction, that $exists.not
  c in X$ such that $f(c) = d$. Then the previous equation still holds when
  you remove $d$ from $RR$. That is: $ f^(-1)(RR without {d}) =
  f^(-1)((-infinity, d) union (d, +infinity)) = X $ Now, let $A :=
  f^(-1)((-infinity, d))$, and $B := f^(-1)((d, +infinity))$, and note that:
  $ &"(i)    " &&a in A &&==> A != nothing and b in B ==> B != nothing \
  &"(ii)    " &&A union B &&= f^(-1)((-infinity, d)) union f^(-1)((d,
  +infinity)) \ &&&&&= f^(-1)((-infinity, d) union (d, +infinity)) = X \
  &"(iii)    " &&A inter B &&= f^(-1)((-infinity, d)) inter f^(-1)((d,
  +infinity)) \ &&&&&= f^(-1)((-infinity, d) inter (d, +infinity)) =
  f^(-1)(nothing) = nothing $
  Then ${A, B}$ forms a separation for $X$, which is a contradiction.
  $contradiction$

  $therefore exists c in RR$ such that $f(c) = d$.

  *MEP*
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
