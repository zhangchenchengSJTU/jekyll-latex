---
title: A Note on Brown Representability and Resolutions
author: Chencheng Zhang
layout: post
category: notes
---

## Note on Brown Representability and DG-categories

### Basic Facts of Triangulated Categories

#### The Abelianisation of Additive Categories

Let $k$ be any commutative ring (for instance, take $k = \mathbb Z$ or a field for convenience). All categories are assumed to be $k$-enriched (for example, $\mathbb Z$-enriched categories are preadditive).

{% def %}
Let $\mathcal{T}$ be arbitrary. There exists the Yoneda embedding
$$\begin{equation}
\mathcal{T} \hookrightarrow (\mathcal{T}^{\mathrm{op}}, \mathrm{Mod}_k),\quad X \mapsto X^\wedge := (-, X).
\end{equation}$$

This enables the formal closure under cokernels, i.e., the category of **locally finitely presented functors** (or **coherent functors**)
$$\begin{equation}
\mathrm{mod}_{\mathcal{T}} := \{\operatorname{cok}(f^\wedge) \mid f \in \mathsf{Mor}(\mathcal{T})\}.
\end{equation}$$
{% enddef %}

The Yoneda lemma yields the following result.

{% ex %}
$\mathrm{mod}_\mathcal{T}$ has enough projectives. All projectives are precisely the representable functors and their retracts.
{% endex %}

In particular, once $\mathcal{T}$ is idempotent complete, $(\mathcal{T})^\wedge$ identifies the class of projective objects in $\mathrm{mod}_\mathcal{T}$.

{% thm %}
If and only if $\mathcal{T}$ has weak-kernels, $\mathrm{mod}_\mathcal{T}$ is Abelian.
{% endthm %}

{% def %}
Suppose $j : K \to X$ is a **weak kernel** of $f :X \to Y$, provided $\operatorname{im}(j^\wedge) = \ker (f^\wedge)$. In diagrams, any $\alpha : W \to X$ such that $f\alpha = 0$ factors through $j$.
{% enddef %}

We remark that

* a weak kernel is a kernel if and only if $\alpha$ factors through $j$ uniquely;
* for Abelian categories, $j$ is a weak kernel of $f$ if and only if $K \xrightarrow j X \xrightarrow f Y$ is exact at $X$.

We have the following significant correspondences.

{% thm %}
Let $\mathcal{T}$ be an arbitrary $k$-category.

1. When $\mathcal{T}$ has cokernels, then $(-)^\wedge : \mathcal{T} \to \mathrm{mod}_\mathcal{T}$ admits a left adjoint sending $\operatorname{cok}(f^\wedge)$ to $\operatorname{cok}f$.
2. Suppose that $\mathcal{A}$ has cokernels. The pullback $F \mapsto F\circ (-)^\wedge$ gives a $1:1$ correspondence between
1. the right exact functors of type $\mathrm{mod}_\mathcal{T} \to \mathcal{A}$, and
2. the functors of the type $\mathcal{T} \to \mathcal{A}$.
3. Suppose that $\mathcal{A}$ is Abelian, and $\mathcal{T}$ has weak kernels. The pullback $F \mapsto F\circ (-)^\wedge$ gives a $1:1$ correspondence between
1. the exact functors of type $\mathrm{mod}_\mathcal{T} \to \mathcal{A}$, and
2. the functors of the type $\mathcal{T} \to \mathcal{A}$ preserving weak kernels.

{% endthm %}

#### When $\mathcal{T}$ is (pre)Triangulated

We employ the standard definition of a **pretriangulated category**, with axioms TR1, TR2, and TR3.

{% def %}
Let $\mathcal{A}$ be Abelian. Say $F: \mathcal{T} \to \mathcal{A}$ is a **(Co)homological functor** if and only if $F$ sends triangles to long exact sequences in $\mathcal{A}$. In particular, the covariant functor $(-)^\wedge$ is homological.
{% enddef %}

{% lem %}
Homological functors preserve weak kernels. Hence, any exact functor of the type $\mathcal{T}\to \mathcal{A}$ extends along the **universal homological functor** $(-)^\wedge$.
{% endlem %}

{% ex %}
When $\mathcal{T}$ is pretriangulated, then so is $\mathcal{T}^{\mathrm{op}}$. Both $\mathcal{T}$ and $\mathcal{T}^{\mathrm{op}}$ have weak kernels and weak cokernels. We conclude the following

1. $((-)^\wedge)^{\mathrm{op}}$ and $((-)^{\mathrm{op}})^\wedge$ factor through each other,
2. $\mathrm{mod}_\mathcal{T}$ and $(\mathrm{mod}_{\mathcal{T}^{\mathrm{op}}})^{\mathrm{op}}$ are equivalent by identification $(-,X) \leftrightarrow (X,-)$.
3. $\mathrm{mod}_\mathcal{T}$ is a Frobenius Abelian category.

{% endex %}

The symmetry arises from universal cohomological functors. This fails when $\mathcal{T}$ is replaced by general $\mathrm{mod}_R$, as one may observe that the identification must be of the form $(-, M) \leftrightarrow M \otimes -$ when tracking projectives.

{% ex %}
Suppose that $\mathcal{T}$ has arbitrary coproducts. We must caution that, as we work in the smallest Abelian category of representatives by adding formal cokernels, the coproduct $\coprod _i \operatorname{cok}(-, f_i)$ in $\mathrm{mod}_\mathcal{T}$ **is no longer defined by pointwise valuation** as is done in the functor category!

For instance, let $f_i : X_i \to Y_i$ be a set of morphisms. We set $F_i : = \operatorname{cok}(-, f_i)$, and shall show that $\coprod  _i$ exists. We take arbitrary $G(-) := \operatorname{cok}(-, \varphi)$ and find that

$$\begin{equation}
\mathrm{Nat}(\coprod_i F_i , G) \simeq \prod_i \ker \mathrm{Nat}((-, f_i), G) \simeq \ker \prod _iG(f_i).
\end{equation}$$

Since $\prod$ is exact for $\mathrm{Mod}_k$, we see that

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMiwwLCJcXHByb2QgRyhZX2kgKSJdLFsyLDEsIlxccHJvZCBHKFhfaSkiXSxbMSwwLCJcXHByb2QgKFlfaSxCKSAiXSxbMSwxLCJcXHByb2QgKFhfaSxCKSAiXSxbMCwxLCJcXHByb2QgKFhfaSxBKSAiXSxbMCwwLCJcXHByb2QgKFlfaSxBKSAiXSxbMywwLCIwIl0sWzMsMSwiMCJdLFs1LDJdLFsyLDBdLFs0LDNdLFszLDFdLFswLDZdLFsxLDddLFswLDEsIlxccHJvZCBHKGZfaSApIl0sWzIsMywiXFxwcm9kIChmX2ksQikiXSxbNSw0LCJcXHByb2QgKGZfaSxBKSJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
{\prod (Y_i,A) } \& {\prod (Y_i,B) } \& {\prod G(Y_i )} \& 0 \\
{\prod (X_i,A) } \& {\prod (X_i,B) } \& {\prod G(X_i)} \& 0
\arrow[from=1-1, to=1-2]
\arrow["{\prod (f_i,A)}", from=1-1, to=2-1]
\arrow[from=1-2, to=1-3]
\arrow["{\prod (f_i,B)}", from=1-2, to=2-2]
\arrow[from=1-3, to=1-4]
\arrow["{\prod G(f_i )}", from=1-3, to=2-3]
\arrow[from=2-1, to=2-2]
\arrow[from=2-2, to=2-3]
\arrow[from=2-3, to=2-4]
\end{tikzcd}
{% endtikz %}

The natural isomorphism $\prod _iG(X_i) \simeq G(\coprod _i X_i)$ corresponds $\prod _iG(f_i)$ to $G(\coprod _i f_i)$. Now we continue with the Yoneda lemma

$$\begin{equation}
\ker G(\coprod _if_i) \simeq \ker \mathrm{Nat}((-, \coprod _if_i), G) \simeq \mathrm{Nat}(\operatorname{cok}(-, \coprod _if_i), G).
\end{equation}$$

Hence, $\operatorname{cok}(-, \coprod _if_i) \simeq \coprod _i \operatorname{cok}(-, f_i)$ as a coproduct object.

{% endex %}

The key is that $\prod \sim \coprod^{\mathrm{op}}$ is an exact limit in $\mathrm{Mod}_k$. Another well-known kind of exact limit is the Mittag-Leffler condition.

#### Triangulated Categories with Enough Coproducts

Suppose $(\mathcal{T}, [1], \mathcal{E})$ is **triangulated**, provided TR1, TR2, and TR4, wherein TR3 is a corollary of them. $\mathcal{E}$ consists of **distinguished triangles**.

{% def %}
The homotopy colimit of the cotower $\{f_{i+1,i} : X_i \to X_{i+1}\}_{i \geq 0}$ is the object $X$ in the distinguished triangle
$$\begin{equation}
\coprod_{i\geq 0}X_i \xrightarrow{1-\coprod e_{i+1}\circ(f_{i+1,i})\circ p'_i} \coprod_{i\geq 0}X_i \to X \to \left(\coprod_{i\geq 0}X_i \right) [1].
\end{equation}$$

Here, $1-\coprod e_{i+1}\circ(f_{i+1,i})\circ p'_i$ may be interpreted as an infinite upper triangular matrix, with $1$ on the diagonal, $f_{i+1,i}$ in the $(i, i+1)$-th entry, and zero elsewhere.

{% enddef %}

A typical example is to derive $\mathcal{P}(\mathcal{A})$ from $\mathcal{P}^-(\mathcal{A})$, as each $X \in \mathcal{P}(\mathcal{A})$ is a homotopy colimit of $\{X_{\leq i} \hookrightarrow X_{\leq i+1}\}_{i \geq 0}$ where $X_{\leq n}$ is the truncation

$$\begin{equation}
\cdots \to X_{n-1}\xrightarrow{d_{n-1}} X_n \to 0 \to 0\to \cdots.
\end{equation}$$

{% lem %}
Suppose that $\mathcal{T}$ is triangulated with arbitrary coproducts. Then $\mathcal{T}$ is idempotent complete (by homotopy colimit or a direct proof).
{% endlem %}

Idempotent completeness arises from the Eilenberg swindle.

{% prop %}
The arbitrary (co)product (if it exists) of distinguished triangles is again a distinguished triangle (by adjunction or a straightforward proof).
{% endprop %}

### Brown Representability

#### Perfect Generator

We assume $\mathcal{T}$ is triangulated with arbitrary $\coprod$. This version of Brown representability concerns triangulated categories with coproducts and a perfect generator.

{% def %}
The object $S \in \mathcal{T}$ is a **perfect generator** provided the following two conditions hold:

1. $\mathcal{T}$ is the smallest triangulated subcategory with coproducts containing $S$.
2. Let $\{f_i : X_i \to Y_i\}_{i \in \mathbb N}$ be any countable set of morphisms, such that each $(S, f_i)$ is surjective. Then $(S, \coprod _{i \in \mathbb N} f_i)$ is also surjective.

We use $\mathrm{Loc}(\mathcal{X})$ to denote the **localising subcategory** of $\mathcal{T}$, that is, the smallest category generated by a subclass $\mathcal{X} \subseteq \mathcal{T}$ under extensions and coproducts.

{% enddef %}

The condition of having coproducts yields that, for any $X \in \mathcal{T}$, one has the projective cover

$$\begin{equation}
(-, \coprod _{f \in (S, X), S \in \mathcal{B}} S) _{\mathcal{S}}\twoheadrightarrow (-, X)_\mathcal{T}
\end{equation}$$

in the category $\mathrm{mod}_\mathcal{S}$. Hence,

- $\mathcal{S}$ is contravariantly finite, i.e. every $X \in \mathcal{T}$ admits a right $\mathcal{S}$-approximation;
- $\mathcal{S}$ admits weak kernels, thus $\mathrm{mod}_\mathcal{S}$ is Abelian.

***Recall this technique: enough pre-covers yield enough weak kernels.***

{% ex %}
We reformulate the second condition. Recall the previous warning that $\operatorname{cok}(-, \coprod f_i)$ is the coproduct of $\operatorname{cok}(-, f_i)$'s. Equivalently, the kernel of the functor
$$\begin{equation}
\mathrm{mod}_\mathcal{T} \to \mathrm{mod}_\mathcal{S},\quad \operatorname{cok}(-, f) \mapsto \operatorname{cok}(-|_\mathcal{S}, f),
\end{equation}$$
is closed under countable coproducts.
{% endex %}

In fact, the above assignment admits bi-adjunction!

{% ex %}
Suppose that $j : \mathcal{S} \to \mathcal{T}$ is a functor between general additive categories possessing weak kernels. Such a functor $j$ induces the following functors between $\mathrm{mod}_\mathcal{S}$ and $\mathrm{mod}_\mathcal{T}$:

1. ($j_! : \mathrm{mod}_\mathcal{S} \to \mathrm{mod}_\mathcal{T}$). This functor is determined by sending $(-, S)_\mathcal{S}$ to $(-, j(S))_\mathcal{T}$.
* It is well-defined provided that $j$ preserves weak kernels.
1. ($j^! = j_\ast : \mathrm{mod}_\mathcal{T} \to \mathrm{mod}_\mathcal{S}$). This functor is given by $F \mapsto F \circ j$.
* It is well-defined if, in addition, both $\mathrm{mod}_\mathcal{S}$ and $\mathrm{mod}_\mathcal{T}$ have coproducts.
1. ($j^\ast : \mathrm{mod}_\mathcal{S} \to \mathrm{mod}_\mathcal{T}$). This functor is defined by $G \mapsto \mathrm{Funct}_{\mathrm{mod}_\mathcal{S}}[(j(\cdot), ?)_\mathcal{T}, G(\cdot)]$, where $?$ denotes the argument.
* It is well-defined if, moreover, $\mathcal{S}$ is essentially small.

In this case, $j_!\dashv j^! = j_\ast \dashv j^\ast$ are adjunctions.
\\
\\
Let $j : \mathcal{S} \to \mathcal{T}$ be the above inclusion of triangulated categories with coproducts.

- $j_! \dashv j^!$ exists.
- The assignment $1_{\mathrm{mod}_\mathcal{S}} \to j^! j_!$ is a natural isomorphism.
- $j^!$ is always exact since $\mathcal{T} \to \mathrm{mod}_\mathcal{S}$ preserves weak kernels, even though the occasionally right adjoint $j^\ast$ may not exist.

{% endex %}

{% prop %}
Under the assumptions for $\mathcal{T}$ and condition 1., the assignment $X \mapsto (- |_\mathcal{S}, T)$ preserves countable coproducts if and only if the second condition holds.

{% pf %}

We commence by considering the functor $\mathcal{T} \to \mathrm{mod}_\mathcal{S}$ and the exact right adjoint $j^!$, and first demonstrate that $\mathcal{T} \to \mathrm{mod}_\mathcal{S}$ preserves coproducts if and only if $j^!$ does so.

- Assume that $j^!$ preserves coproducts. Since a fully faithful functor reflects limits and colimits, it follows that $\mathcal{T} \to \mathrm{mod}_\mathcal{S}$ also preserves coproducts.
- Conversely, suppose that $\mathcal{T} \to \mathrm{mod}_\mathcal{S}$ preserves coproducts. All structural morphisms characterising coproducts lift to $\mathrm{mod}_\mathcal{T}$ by the universal property, and thus the isomorphism $(\varphi, \varphi^{-1}) : (j(-), \coprod T_i) \simeq \coprod (j(-), T_i)$ holds. This demonstrates that $(\widetilde{\varphi}, \widetilde{\varphi}^{-1}) : (-, \coprod T_i) \simeq \coprod (-, T_i)$ is also an isomorphism.

Since $1_{\mathrm{mod}_\mathcal{S}} \simeq j^! j_!$, $j^!$ preserves coproducts if and only if $\ker j^!$ is closed under coproducts. Now by a well-known result,

- the endofunctor $j^! j_! : \mathrm{mod}_\mathcal{T}$ along with the unit $\eta$ induces the localisation sequence $\ker j^! \to \mathrm{mod}_\mathcal{T} \to \mathrm{mod}_\mathcal{S}$.

This yields the equivalence from the Serre quotient $\frac{\mathrm{mod}_\mathcal{T}}{\ker j^!} \simeq \mathrm{mod}_\mathcal{S}$.

Consider $\coprod \operatorname{cok}(-, f_i) \simeq \operatorname{cok}(-, \coprod f_i)$. The Serre subcategory $\ker j^!$ is closed under countable $\coprod$ if and only if the second condition holds.

{% endpf %}

{% endprop %}

#### Proof (PG version)

Recall the conditions for a perfect generator $S$.

1. $\mathcal{T} = \mathrm{Loc}(S)$, that is, $\mathcal{T}$ is the smallest triangulated subcategory with coproducts containing $S$.
2. Let $\{f_i : X_i \to Y_i\}_{i \in \mathbb{N}}$ be any countable collection of morphisms such that each $(S, f_i)$ is surjective. Then $(S, \coprod_{i \in \mathbb{N}} f_i)$ is also surjective.

We further remark upon certain adjustments:

1. Without loss of generality, one may assume $S[1] \simeq S$, since the substitution $S \mapsto \coprod_{d \in \mathbb{Z}} S_d$ does not affect the aforementioned conditions.
2. The second condition is equivalent to the assertion that the assignment $\mathcal{T} \to \mathrm{mod}_\mathcal{S}$, given by $T \mapsto (j(-), T)_\mathcal{T}$, preserves countable coproducts.

{% thm %}
The first part of Brown representability states that the presheaf $F: \mathcal{T}^{\mathrm{op}} \to \mathrm{Mod}_k$ is representable if and only if it is cohomological and sends arbitrary coproducts to the corresponding products.

* Before the proof, we discuss what should appear in the proof.

We shall construct the cotower $\{\phi_i : X_i \to X_{i+1}\}_{i \geq 0}$ whose homotopy colimit $X$ represents
$$\begin{equation}
\pi : (-, X)_\mathcal{T} \simeq F(-)\quad \text{in} \ \mathrm{mod}_\mathcal{T}.
\end{equation}$$

By Yoneda, $\pi \in FX$. Such a pair $(FX, \pi)$ (pointed topological spaces) is supposed to fit in the mapping tower
$$\begin{equation}
(FX_0, \pi _0) \gets (FX_1, \pi _1) \gets \cdots (FX, \pi),
\end{equation}$$

and induced by homotopy colimit

$$\begin{aligned}
\coprod X_i \xrightarrow {1 - \phi} \coprod X_i &\to X \to \coprod X_i[1]\\
F\Downarrow\\
\prod F(X_i) \xleftarrow {F(1 - \phi)} \prod F(X_i) &\gets FX \gets \coprod F(X_i[1])\\\\
(\pi_i)_{i \geq 0}& \dashleftarrow \pi.
\end{aligned}$$

To see that the natural transformation $\pi$ is an isomorphism, the best approach is the five lemma, i.e., something like

$$\begin{equation}
\begin{matrix}
\cdots &\to& (-, \coprod_i X_i)_\mathcal{T} &\xrightarrow{(1-\phi)_\ast}& (-, \coprod_i X_i)_\mathcal{T} &\to& (-,X)_\mathcal{T} &\to& \cdots\\
& & \parallel & & \parallel & & \downarrow & &\\
\cdots &\to& (-, \coprod_i X_i)_\mathcal{T} &\xrightarrow{(1-\phi)_\ast}& (-, \coprod_i X_i)_\mathcal{T} &\to& F(-)_\mathcal{T} & \to & \cdots\\
\end{matrix}
\end{equation}$$

To take $\coprod$ out of the $\mathrm{Hom}$-set, we may firstly show this in $(-)|_\mathcal{S}$.
\\
\\
Recall the proof in the resolution of the unbounded derived category, we wish the following short exact sequence

$$\begin{equation}
0 \to \coprod _i (-|_\mathcal{S}, X_i) \xrightarrow {1-\phi _\ast} \coprod _i (-|_\mathcal{S}, X_i) \to F(-)|_\mathcal{S} \to 0.
\end{equation}$$

{% pf %}
We begin the proof by an iterative construction of the triple $(X_i, \phi _i, \pi _i)$. We take the initial terms as $(X_0, \phi _0, \pi _0) = (0,0,0)$.
\\
\\
Set $X_1 = S^{\coprod FS}$ so that $\pi _1 \in FX_1 \simeq \mathrm{End}_{\mathrm{Sets}}(FS) \in 1_{FS}$. We construct the distinguished triangle
$$\begin{equation}
\cdots \to S^{\coprod \left\{S \xrightarrow \alpha X_1 : \begin{bmatrix} FX_1 &\xrightarrow {F\alpha}& FS\\ \pi _1 & \mapsto & 0\end{bmatrix}\right\}} \xrightarrow \ast X_1 \xrightarrow {\phi _1} X_2 \to \cdots.
\end{equation}$$

Here $\ast$ is the canonical morphism with isomorphic image
$$\begin{equation}
\prod_{ \left\{S \xrightarrow \alpha X_1 : \begin{bmatrix} FX_1 &\xrightarrow {F\alpha}& FS\\ \pi _1 & \mapsto & 0\end{bmatrix}\right\}} (S, X_1) \ni (\alpha)_\alpha.
\end{equation}$$

Since $F$ is cohomological, we take arbitrary $\pi_2$ via $\begin{bmatrix} FX_2 & \xrightarrow {F(\phi_1)} & FX_1 &\xrightarrow {F\ast} &S^{[\dots]} \\ \pi _2 & \mapsto & \pi_1 & \mapsto &0\end{bmatrix}$. This is how we obtain $(X_2, \phi _2, \pi _2)$ from $(X_1, \phi _1, \pi_1)$.
\\
\\
The peculiar construction of $X_i$'s is not necessarily unique, provided it demonstrates that $\pi _i : (-, X_i) \to F(-),\quad f \mapsto (Ff)(\pi_i)$ is epic for all $\coprod_{j \in J} S$. By AB4 for $\mathrm{Mod}_k$, it suffices to show the case $J = 1$. For $i = 1$, the morphism becomes
$$\begin{equation}
(S,S^{\coprod FS}) \xrightarrow {(\pi _1)_S} FS,\quad (f_i) \mapsto \sum (Ff_i)(\pi _1).
\end{equation}$$
Any $a \in FS$ admits a preimage $e_a \circ 1_S$. Suppose that $(S, X_i) \xrightarrow {(\pi _i )_S}F(S)$ is epic. By the distinguished triangle $? \xrightarrow{\kappa _i} X_i \xrightarrow {\phi_i} X_{i+1}$, we see the factorisation

{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzIsMSwiKFMsIFhfaSlfe1xcbWF0aGNhbCBUfSJdLFszLDEsIkZTIl0sWzIsMiwiKFMsIFhfe2krMX0pX3tcXG1hdGhjYWwgVH0iXSxbMiwwLCIoUywgPylfe1xcbWF0aGNhbCBUfSJdLFszLDIsIkZTIl0sWzEsMSwiXFxrZXIgWyhcXHBpIF9pKV9TXSJdLFsxLDIsIlxca2VyIFsoXFxwaSBfe2krMX0pX1NdIl0sWzQsMiwiMCJdLFs0LDEsIjAiXSxbMCwyLCIwIl0sWzAsMSwiMCJdLFswLDIsIihcXHBoaSBfaSlfXFxhc3QiXSxbMywwLCIoXFxrYXBwYSBfaSlfXFxhc3QiXSxbMCwxLCIoXFxwaSBfaSlfUyJdLFsxLDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsNCwiKFxccGkgX3tpKzF9KV9TIl0sWzUsMF0sWzYsMl0sWzUsNl0sWzQsN10sWzEsOF0sWzksNl0sWzEwLDVdLFszLDEsIjAiLDAseyJjdXJ2ZSI6LTIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDMsIiIsMCx7ImN1cnZlIjotMiwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
&& {(S, ?)_{\mathcal T}} \\
0 & {\ker [(\pi _i)_S]} & {(S, X_i)_{\mathcal T}} & FS & 0 \\
0 & {\ker [(\pi _{i+1})_S]} & {(S, X_{i+1})_{\mathcal T}} & FS & 0
\arrow["{(\kappa _i)_\ast}", from=1-3, to=2-3]
\arrow["0", curve={height=-12pt}, dashed, from=1-3, to=2-4]
\arrow[from=2-1, to=2-2]
\arrow[curve={height=-12pt}, dashed, from=2-2, to=1-3]
\arrow[from=2-2, to=2-3]
\arrow[from=2-2, to=3-2]
\arrow["{(\pi _i)_S}", from=2-3, to=2-4]
\arrow["{(\phi _i)_\ast}", from=2-3, to=3-3]
\arrow[from=2-4, to=2-5]
\arrow[equals, from=2-4, to=3-4]
\arrow[from=3-1, to=3-2]
\arrow[from=3-2, to=3-3]
\arrow["{(\pi _{i+1})_S}", from=3-3, to=3-4]
\arrow[from=3-4, to=3-5]
\end{tikzcd}
{% endtikz %}

In the diagram,

- $(\pi _i)_S$ extends along $(\phi _i)_\ast$ via the long exact sequence induced by the triangle, which precisely formalises the manner in which we construct $(\pi _i)_S$;
- all $(\pi _i)_S$ are epimorphic by induction;
- the exact rows are split (although this fact is not utilised);
- the induced morphism at the kernel terms is $0$, since $\ker [(\pi _i)_S] \to (-, X_i)_\mathcal{T}$ factors through $(\kappa _i)_\ast$ by construction;
- this explains why $(\kappa _i)_\ast$ arises from a somewhat peculiar coproduct object, and elucidates the universal property it is required to satisfy.

We replace $S$ with $S^{\coprod J}$, and take the products, yielding

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiXFxwcm9kIF97aVxcZ2VxIDB9KFNee1xcY29wcm9kIEp9LCBYX2kpX3tcXG1hdGhjYWwgVH0iXSxbMiwxLCJcXHByb2QgX3tpIFxcZ2VxIDB9RihTXntcXGNvcHJvZCBKfSkiXSxbMSwyLCJcXHByb2QgX3tpXFxnZXEgMH0oU157XFxjb3Byb2QgSn0sIFhfe2krMX0pX3tcXG1hdGhjYWwgVH0iXSxbMiwyLCJcXHByb2QgX3tpIFxcZ2VxIDB9RihTXntcXGNvcHJvZCBKfSkiXSxbMCwxLCJcXHByb2QgX3tpXFxnZXEgMH1cXGtlciBbKFxccGkgX2kpX3tTXntcXGNvcHJvZCBKfX1dIl0sWzAsMiwiXFxwcm9kIF97aVxcZ2VxIDB9XFxrZXIgWyhcXHBpIF9pKV97U157XFxjb3Byb2QgSn19XSJdLFsyLDAsIjAiXSxbMiwzLCJGKFNee1xcY29wcm9kIEp9KSJdLFswLDMsIjAiXSxbMCwwLCIwIl0sWzEsMCwiPyJdLFsxLDMsIj8iXSxbMCwyLCIxLVxcc3VtIChcXHBoaSBfaSlfXFxhc3QiXSxbMCwxLCIoXFxwaSBfaSlfe1Nee1xcY29wcm9kIEp9fSIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsyLDMsIihcXHBpIF97aSsxfSlfe1Nee1xcY29wcm9kIEp9fSIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs1LDIsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbNCw1LCIxLVxcc3VtIDAiXSxbMSwzLCIxLVxcc3VtIDEiXSxbNiwxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzMsNywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzksNCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFs1LDgsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxMCwwXSxbMiwxMSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzExLDcsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs5LDEwXSxbMTAsNiwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFs4LDExXSxbNCwwLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV1d
\begin{tikzcd}
0 & {?} & 0 \\
{\prod _{i\geq 0}\ker [(\pi _i)_{S^{\coprod J}}]} & {\prod _{i\geq 0}(S^{\coprod J}, X_i)_{\mathcal T}} & {\prod _{i \geq 0}F(S^{\coprod J})} \\
{\prod _{i\geq 0}\ker [(\pi _i)_{S^{\coprod J}}]} & {\prod _{i\geq 0}(S^{\coprod J}, X_{i+1})_{\mathcal T}} & {\prod _{i \geq 0}F(S^{\coprod J})} \\
0 & {?} & {F(S^{\coprod J})}
\arrow[from=1-1, to=1-2]
\arrow[tail, from=1-1, to=2-1]
\arrow[tail, from=1-2, to=1-3]
\arrow[from=1-2, to=2-2]
\arrow[tail, from=1-3, to=2-3]
\arrow[tail, from=2-1, to=2-2]
\arrow["{1-\sum 0}", from=2-1, to=3-1]
\arrow["{(\pi _i)_{S^{\coprod J}}}", two heads, from=2-2, to=2-3]
\arrow["{1-\sum (\phi _i)_\ast}", from=2-2, to=3-2]
\arrow["{1-\sum 1}", from=2-3, to=3-3]
\arrow[tail, from=3-1, to=3-2]
\arrow[two heads, from=3-1, to=4-1]
\arrow["{(\pi _{i+1})_{S^{\coprod J}}}", two heads, from=3-2, to=3-3]
\arrow[two heads, from=3-2, to=4-2]
\arrow[two heads, from=3-3, to=4-3]
\arrow[from=4-1, to=4-2]
\arrow[two heads, from=4-2, to=4-3]
\end{tikzcd}
{% endtikz %}
Here, $1 - \sum f$ denotes an infinite lower triangular matrix with $1$ on the diagonal, $-f_i$ in the $(i+1,i)$-th entry, and $0$ elsewhere.

Now by the snake lemma, we obtain the short exact sequence:

$$\begin{equation}
0\to \prod _{i\geq 0}(S^{\coprod J}, X_i)_{\mathcal T} \xrightarrow {1-\sum (\phi _i)_\ast} \prod _{i\geq 0}(S^{\coprod J}, X_{i+1})_{\mathcal T} \to F(S^{\coprod J}) \to 0.
\end{equation}$$

Now we apply the universal cohomological functor at the distinguished triangle
$$\begin{equation}
\cdots \to \coprod_{i \geq 0} X_i \xrightarrow {1 - \sum \phi} \coprod_{i \geq 0} X_i \to X \to \cdots,
\end{equation}$$
and obtain (recall the coproduct in $\mathrm{mod}_\mathcal{T}$)
$$\begin{equation}
\cdots \to \coprod_{i \geq 0} (-, X_i) \xrightarrow {1 - \sum \phi_\ast } \coprod_{i \geq 0} (-, X_i) \to (-, X) \to \cdots.
\end{equation}$$

***We restrict to $S^{\coprod J}$'s***, then $(1- \sum \varphi _\ast)$ is monic with cokernel $F(-)$. By $S \simeq S[1]$, the shifted morphism $(1- \sum \varphi _\ast [1])$ is also monic. Hence,
$$\begin{equation}
\coprod_{i \geq 0} (-, X_i) \xrightarrow {1 - \sum \phi_\ast } \coprod_{i \geq 0} (-, X_i) \to (-, X)
\end{equation}$$
is a short exact sequence. Moreover, $\pi : (-, X) \to F(-)$ are isomorphic cokernels.
\\
\\
We claim that $\pi : (-, X) \to F(-)$. Clearly $\mathcal{D} := \{T \mid \pi _T \ \text{iso}\}$ forms a localising subcategory. Since $\mathrm{Loc}(S) \subseteq \mathcal{D} \subseteq \mathcal{T}$, $\pi$ must be an isomorphism.

{% endpf %}

{% endthm %}

We shall dispense with the word **countable** by the following corollary.

{% cor %}
Let $\{f_i : X_i \to Y_i\}_{i \in \mathbb{N}}$ be an arbitrary set of morphisms such that each $(S, f_i)$ is surjective. Then $(S, \coprod_{i \in \mathbb{N}} f_i)$ is also surjective.

{% pf %}
As we restrict to $S^{\coprod J}$'s, the assignment $X \mapsto (-, X)_\mathcal{T}$ preserves arbitrary coproducts. Hence, $S \in \operatorname{cok}(-, f_i)$ if and only if $S \in \operatorname{cok}(-, \coprod f_i)$.
{% endpf %}

{% endcor %}

#### Special Case: Compact Generators

Brown representability for compactly generated triangulated categories is a corollary of the case with a perfect generator.

{% def %}
For a general additive category (especially a triangulated category), $G$ is **compact (or small)** if and only if $(G,-)$ preserves arbitrary coproducts (if they exist).
{% enddef %}

***The definition of a compact object is slightly different from that in Abelian categories***; a compact object $K$ of the latter category satisfies that $K^\vee$ preserves filtered colimits.

{% def %}
Let $\mathcal{T}$ be triangulated with

- (1) a set of compact objects $\mathcal{G}$.

Say $\mathcal{T}$ is compactly generated by $\mathcal{G}$ if the following equivalent condition holds:

- (2) $\mathrm{Loc}(\mathcal{G}) = \mathcal{T}$;
- (2') $\bigcap _{G \in \mathcal{G}}\bigcap _{d \in \mathbb Z}\ker (G[d] , -) = 0$.

{% enddef %}

Clearly, (2') is obtained from (1) and (2). $^{\perp_{\mathrm{Hom}}}(\mathcal{G}^{\perp_{\mathrm{Hom}}})$ is a localising category containing $\mathcal{G}$, thus equals $\mathcal{T}$. By Galois connection, $\bigcap _{G \in \mathcal{G}}\bigcap _{d \in \mathbb Z}\ker (G[d] , -)$ is precisely $\mathcal{T}^{\perp_{\mathrm{Hom}}} = 0$.

(2) is also obtained from (1) and (2'), ***once we prove Brown representability*** for the triangulated category $\mathrm{Loc}(\mathcal{G})$. For arbitrary $X \in \mathcal{T}$, the following cohomological functor is representable
$$\begin{equation}
\alpha : (-|_{\mathrm{Loc}(\mathcal{G})}, X)_\mathcal{T} \simeq (-, X_G)_{\mathrm{Loc}(\mathcal{G})}.
\end{equation}$$
We write $\alpha = (-, f)$ as in $\mathrm{mod}_\mathcal{T}$. By (2'), $\mathrm{Cone}(f) \in \mathcal{G}^{\perp_{\mathrm{Hom}}} = 0$. Hence $X \in \mathrm{Loc}(\mathcal{G})$.

We next conclude Brown representability by showing that $\mathcal{G}$ is perfectly generating, which serves as a refinement of the above.

{% lem %}
$\mathcal{T}$ is compactly generated by $\mathcal{G}$, thus is perfectly generated by $\mathcal{G}$.

{% pf %}
We invoke conditions (1) and (2') for a compactly generated subset $\mathcal{G}$. It suffices to establish that, for any $G \in \mathcal{G}$, the surjectivity of $(G, \coprod f_i)$ is a consequence of the surjectivity of each $(G, f_i)$.
\\
\\
By virtue of the compactness condition, $G^\vee$ commutes with coproducts. For morphisms of Abelian groups $\phi_i := (G, f_i)$, each $\phi_i$ is surjective if and only if $\coprod \phi_i$ is surjective.
{% endpf %}

{% endlem %}

We are thus led to consider the class of compact objects $\mathcal{K}$ in $\mathcal{T}$, and enquire as to the manner in which they are generated by $\mathcal{G}$. We denote
$$\begin{equation}
\mathcal{G}\quad \subseteq \quad \mathcal{K}\quad \subseteq \quad \mathcal{T}
\end{equation}$$
where $\mathcal{G}$ is the set of compact generators, $\mathcal{K}$ the class of compact objects, and $\mathcal{T}$ the compactly generated category as a whole.

{% thm %}
$\mathcal{K}$ is exactly the smallest triangulated subcategory of $\mathcal{T}$ generated by $\mathcal{G}$ under suspensions, extensions, and direct summands.

{% pf %}
We denote $\mathcal{K}'$ as such a subcategory. It is clear that $\mathcal{K}'$ is a subcategory whose objects are compact. Now we show that every compact object $X \in \mathcal{K}$ lies in such a $\mathcal{K}'$.

Recall in the proof of Brown's representability, $X \in \mathcal{K}$ is both

- a homotopy colimit of some cotower $\{\phi _i : X_i \to X_{i+1}\}$, with $X_i \in (\mathcal{K}')^{\coprod}$, and
- $X$ also falls into some $\mathcal{G}$-exact sequence $0 \to \coprod _{i \geq 0}X_i  \xrightarrow{1-\sum \phi _i}\coprod _{i \geq 0}X_i  \to X \to 0$.

By the five lemma, and the fact that $(\mathcal{G}, -)$ preserves coproducts, we obtain the isomorphism

$$\begin{equation}
\varinjlim (-, X_i) \xrightarrow \sim (-, \mathrm{ho \ colim}X_i).
\end{equation}$$

We apply $X \simeq \mathrm{ho \ colim}X_i$ to the isomorphism and see that $1_{X}$ factors through some $X_i$. In particular, $X$ is the summand of $\coprod _{j\in J} K_j$ for $K_j \in \mathcal{K}'$, i.e., $\iota : X \hookrightarrow \coprod _{j\in J} K_j$ splits. Since $X$ is compact, such $\iota$ factors through $\coprod _{j\in J_0} K_j$ for some finite index set $J_0 \subseteq J$. Hence, $X \in \mathcal{K}'$.

{% endpf %}

{% endthm %}

#### Duality

We unify the conditions of PG (perfectly generated) and CG (compactly generated). Since all triangulated categories are assumed to possess arbitrary coproducts, one may substitute a perfect generator with a perfect generating set.

- [G0] $\mathcal{T}$ admits arbitrary coproducts;
- [PG1] For $S \in \mathcal{S}$, an arbitrary set of epimorphisms $(S,f_i)$ implies the epimorphism $(S, \coprod f_i)$;
- [CG1] For $G \in \mathcal{G}$, the canonical morphism $\coprod (G,X_i )_\mathcal{T} \to (G, \coprod X_i)_\mathcal{T}$ is an isomorphism;
- [G2] $\mathcal{X} = \mathrm{Loc}(\mathcal{X})$, the subcategory generated by coproducts, extensions and direct summands;
- [G2'] $\bigcap _{X \in \mathcal{X}} \bigcap _{d \in \mathbb Z} (X[d] , -)_\mathcal{T} = 0$.

Say a triangulated category is

- perfectly generated, provided G0, PG1, and G2;
- compactly generated, provided G0, CG1, and G2.

We remark that

- compactly generated $\implies$ perfectly generated;
- assuming either G0+PG1 or G0+CG1, we have G2 $\Leftrightarrow$ G2'.

The proof of dual statements depends on **injective cogenerators**. We take $C:= \mathrm{Hom}_{\mathrm{Ab}}(k, \mathbb Q / \mathbb Z)$ as the most convenient injective cogenerator of $\mathrm{Mod}_k$, such that

- $C$ is injective, i.e., $C^\wedge$ is exact;
  - In particular, $f$ is mono (epi) ***only if*** $f^+$ is epi (mono);
- $C$ is a cogenerator, i.e., $C^\wedge$ is faithful;
  - In particular, $f$ is mono (epi) ***if*** $f^+$ is epi (mono);

We usually denote $(-)^+ := C^\wedge = (-, C)$ for convenience. The following lemma serves as a partial duality.

{% lem %}
Suppose that $\mathcal{T}$ is compactly generated by $\mathcal{G}$. Then $\mathcal{T}^{\mathrm{op}}$ is perfectly generated by $\mathcal{G}^C$. Here $\mathcal{G}^C := \{G^C \mid G \in \mathcal{G}\} \subseteq \mathcal{T}^{\mathrm{op}}$, via
$$\begin{equation}
((G, -), C)_{\mathrm{Mod}_k} \xrightarrow \sim (-, G^C)_{\mathcal{T}}.
\end{equation}$$

{% pf %}
We verify G0, PG1 and G2'.
\\
\\
(G0). We shall show that $\mathcal{T}$ has arbitrary products, thus $\mathcal{T}^{\mathrm{op}}$ has arbitrary coproducts. By exactness of $\prod$, we see that $\prod _i (-, X_i)$ is cohomological. By Brown representability, such a functor is representable by the product object $\prod_i X_i$.
\\
\\
(PG1). Now we show that $\mathcal{G}^C$ is indeed a perfectly generating set. Notice that for arbitrary $G^C \in \mathcal{G}^C$,
$$\begin{aligned}
& \{((G^C)^{\mathrm{op}}, (\phi _i)^{\mathrm{op}})_{\mathcal{T}^{\mathrm{op}}}\}\quad \text{a set of epi.}\\
\Leftrightarrow \ & \{(\phi _i, G^C)_{\mathcal{T}}\}\quad \text{epi.}\\
\Leftrightarrow \ & \{((G, \phi _i)_\mathcal{T}, C)_{\mathrm{Mod}_k}\}\quad \text{a set of epi.}\\
\text{(by inj. cogen.)} \ \Leftrightarrow \ & \{(G, \phi _i)_\mathcal{T}\}\quad \text{a set of mono.}\\
\Leftrightarrow \ & \prod (G, \phi _i)_\mathcal{T}\quad \text{a mono.}\\
\text{(by inj. cogen.)} \ \Leftrightarrow \ &( \prod (G, \phi _i)_\mathcal{T}, C)_{\mathrm{Mod}_k} \quad \text{an epi.}\\
\Leftrightarrow \ &( (G, \prod \phi _i)_\mathcal{T}, C)_{\mathrm{Mod}_k} \quad \text{an epi.}\\
\Leftrightarrow \ &( \prod \phi _i, G^C)_{\mathrm{Mod}_k} \quad \text{an epi.}\\
\Leftrightarrow \ &((G^C)^{\mathrm{op}}, \coprod(\phi _i)^{\mathrm{op}})_{\mathcal{T}^{\mathrm{op}}}\quad \text{an epi.}
\end{aligned}$$

(PG2'). Suppose that $((G^C)^{\mathrm{op}}[d], X^{\mathrm{op}})_{\mathcal{T}^{\mathrm{op}}} = 0$ for arbitrary $G^C \in \mathcal{G}^C$ and $d \in \mathbb Z$. By definition,
$$\begin{equation}
((G^C)^{\mathrm{op}}[d], X^{\mathrm{op}})_{\mathcal{T}^{\mathrm{op}}} \simeq (X, G^C[-d])_{\mathcal{T}} \simeq ((G[-d], X)_\mathcal{T},C)_{\mathrm{Mod}_k},
\end{equation}$$

Since $(-)^+$ preserves and reflects non-zero objects, we complete the proof.

{% endpf %}

{% endlem %}

Hence, if $\mathcal{T}$ is compactly generated, then both $\mathcal{T}$ and $\mathcal{T}^{\mathrm{op}}$ are perfectly generated.

{% cor %}
Let $\mathcal{T}$ be compactly generated (hence it has arbitrary products). Any homological functor preserving arbitrary products is corepresentable, e.g., of the form $(X, -)$.
{% endcor %}

The notion of symmetric generator.

#### On Adjoint Functors

Any perfectly generated (especially compactly generated) triangulated category $\mathcal{T}$ admits Brown representability.

{% cor %}
Let $\mathcal{T}$ be triangulated with Brown representability, and $L : \mathcal{T} \to \mathcal{V}$ be an exact functor. If $L$ preserves coproducts, then $L$ is a left adjoint.

{% pf %}
The assumptions state that $(L(-), X)$ is cohomological, and takes $\coprod$ to $\prod$. Hence, such a functor is representable, yielding the functorial assignment $X \mapsto (-, RX)$. By the Yoneda lemma, $R$ is indeed a functor.
{% endpf %}

{% endcor %}

{% cor %}
Suppose that $i : \mathcal{B} \hookrightarrow \mathcal{T}$ is a fully faithful inclusion of triangulated categories. If $\mathcal{B}$ admits Brown representability, then $i$ admits a right adjoint.
{% endcor %}

{% prop %}
Let $L : \mathcal{U} \to \mathcal{V}$ and $R : \mathcal{V} \to \mathcal{U}$ be adjoint exact functors between triangulated categories with arbitrary coproducts.

- In particular, for adjoints between additive categories, $L \dashv R$, $L$ is exact if so is $R$.

If $R$ preserves coproducts, then $L$ preserves compact objects; if $\mathcal{T}$ is morever compactly generated, then the converse holds.

{% pf %}
We show that if $R$-preserves coproducts, then $L(G)$ is compact for $G$ compact:
$$\begin{equation}
(L(G),\coprod_i Y_i) \simeq (G, R(\coprod _i Y_i)) \simeq (G, \coprod _i R(Y_i)) \simeq \coprod_i (G, R(Y_i)) \simeq \coprod_i (L(G), Y_i).
\end{equation}$$

Conversely, if $L$ preserves the compactness, then $(G, R(\coprod (-))) \simeq (G, \coprod R(-))$ for $G$. When $\mathcal{T}$ is moreover compactly generated, $(X, R(\coprod (-))) \simeq (X, \coprod R(-))$ for arbitrary $X$. We complete the proof by Yoneda lemma.
{% endpf %}

{% endprop %}
