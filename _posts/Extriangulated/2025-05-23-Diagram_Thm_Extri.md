---
title: On Diagrams Lemmas of Ex-$\triangle$ Cats
author: Chencheng Zhang
layout: post
category: caprice
---

* toc
{: toc}

## On Diagrams Lemmas of Ex-$\triangle$ Cats

{% abs %}
We summarise the diagram lemmas for extriangulated categories.
{% endabs %}

### The Definition of an Extriangulated Category

In brief, an extriangulated category is a triple $(𝒞, 𝔼, 𝔰)$, where

* $𝒞$ is a locally small additive category;
* $𝔼 : 𝒞^{\mathrm{op}} × 𝒞 → 𝐀𝐛$ is an additive bifunctor;
* $𝔰$ is termed an additive realisation, assigning to each $δ ∈ 𝔼(Z, X)$ an isomorphism class in the comma category $X \backslash 𝒞 / Z$.

Furthermore, the triple satisfies certain axioms labelled ET-$k$.

We commence with the ET1 axiom and the associated terminologies.

#### ET1

{% def %}
(Terminology for ET1). The pair $(𝒞, 𝔼)$ is said to satisfy ET1 if

* $𝒞$ is a locally small additive category; and
* $𝔼 : 𝒞^{\mathrm{op}} × 𝒞 → 𝐀𝐛$ is an additive bifunctor.

We employ the following terminologies:

* An **element of extension** is an element $δ ∈ 𝔼(Z, X)$ in the $𝔼$-group. It may also be denoted by the triple $(X, δ, Z)$, or simply $δ$ when unambiguous.
* A **pre-composition** is a group homomorphism $𝔼(f, X) : 𝔼(Z', X) → 𝔼(Z, X)$, given $f : Z → Z'$. We denote this by $f^∗$ when unambiguous.
* A **post-composition** is a group homomorphism $𝔼(Z, g) : 𝔼(Z, X) → 𝔼(Z, X')$, given $g : X → X'$. We denote this by $g_∗$ when unambiguous.
* Since $𝔼(-,-)$ is a bifunctor, one has $f^∗ g_∗ = g_∗ f^∗ : 𝔼(Z', X) → 𝔼(Z, X')$.
* A **communication of two extensions** is described as the pair of maps $(α , β ) : (X , δ , Z) → (X' , δ' , Z')$, such that $α_∗ δ = β ^∗ δ '$.

{% enddef %}

{% ex %}
(The group structure of $𝔼(- , -)$). The additive structure of $𝔼(-,-)$ is induced by the standard Baer sum. For objects $X$ and $Z$, one may firstly define
$$\begin{equation}
(δ_1 + δ_2) := \binom{1}{1}^∗ (1,1)_∗ (δ_1 ⊕ δ_2),
\end{equation}$$
where the group homomorphism is given by
$$\begin{equation}
\binom{1}{1}^∗ (1,1)_∗ : 𝔼(Z ⊕ Z, X ⊕ X) → 𝔼(Z, X),\quad δ_1 ⊕ δ_2 ↦ δ_1 + δ_2.
\end{equation}$$

It is straightforward to verify that

* both $f_∗$ and $g^∗$ preserve the additive structure;
* $𝔼(Z, X)$ possesses a zero element, and satisfies the laws of associativity and commutativity.

{% endex %}

#### ET2

Before we proceed to the ET2 axiom, we need to introduce the notion of an **additive realisation**. Firstly, we define the equivalence relation for the class of objects of the functor category $𝐅𝐮𝐧𝐜𝐭(1 → 2 → 3, 𝒞) / ∼$, where
$$\begin{equation}
[X \xrightarrow{f} Z \xrightarrow{g} Y] = [X' \xrightarrow{f'} Z' \xrightarrow{g'} Y']
\end{equation}$$
if and only if $X = X'$, $Z = Z'$, and there exists an isomorphism $φ : Y → Y'$ making the following diagram commutative
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCJYIl0sWzMsMCwiWSJdLFs1LDAsIloiXSxbMSwxLCJYJyJdLFs1LDEsIlonIl0sWzMsMSwiWSciXSxbMCwxLCJcXCwiXSxbNiwxLCJcXCwiXSxbMCwzLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMSwiZiJdLFsxLDIsImciXSxbMyw1LCJmJyJdLFs1LDQsImcnIl0sWzEsNSwiXFx2YXJwaGkgIl0sWzEsNSwiXFxzaW1lcSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
\& X \&\& Y \&\& Z \\
{\,} \& {X'} \&\& {Y'} \&\& {Z'} \& {\,}
\arrow["f", from=1-2, to=1-4]
\arrow[equals, from=1-2, to=2-2]
\arrow["g", from=1-4, to=1-6]
\arrow["{\varphi }", from=1-4, to=2-4]
\arrow["\simeq"', draw=none, from=1-4, to=2-4]
\arrow[equals, from=1-6, to=2-6]
\arrow["{f'}", from=2-2, to=2-4]
\arrow["{g'}", from=2-4, to=2-6]
\end{tikzcd}
{% endtikz %}

The equivalency class preserve the standard $⊕$ of the functor category.

{% def %}
(ET2). The map between classes $𝔰$ is called an **additive realisation** of the pair $(𝒞, 𝔼)$, provided the following (denoted by ET2):

- $𝔰$ sends $(X, δ, Z)$ to some equivalency class of the form $[X \xrightarrow f  E \xrightarrow g  Z]$;
- $𝔰$ sends $(X, 0, Z)$ to the class of split short exact sequences $[X \xrightarrow {e_1} X ⊕ Z \xrightarrow {p_2} Z]$;
- $𝔰(δ _1 ⊕ δ _2) = 𝔰(δ _1) ⊕ 𝔰(δ _2)$ (recall that $⊕$ is compatible with the equivalent class);
- If there is a communication of extensions $(α , β): (X, δ , Z) → (X', δ', Z')$, then for any representatives of $𝔼 (δ )$ and $𝔼 (δ ')$, there exists a morphism $β$ making the following diagram commutative:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCJYIl0sWzMsMCwiWSJdLFs1LDAsIloiXSxbMSwxLCJYJyJdLFs1LDEsIlonIl0sWzMsMSwiWSciXSxbMCwxLCJcXCwiXSxbNiwxLCJcXCwiXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFszLDUsImYnIl0sWzUsNCwiZyciXSxbMSw1LCJcXGJldGEiXSxbMCwzLCJcXGFscGhhIl0sWzIsNCwiXFxnYW1tYSJdLFsxLDUsIlxcc2ltZXEiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
\& X \&\& Y \&\& Z \\
{\,} \& {X'} \&\& {Y'} \&\& {Z'} \& {\,}
\arrow["f", from=1-2, to=1-4]
\arrow["\alpha", from=1-2, to=2-2]
\arrow["g", from=1-4, to=1-6]
\arrow["\beta", from=1-4, to=2-4]
\arrow["\simeq"', draw=none, from=1-4, to=2-4]
\arrow["\gamma", from=1-6, to=2-6]
\arrow["{f'}", from=2-2, to=2-4]
\arrow["{g'}", from=2-4, to=2-6]
\end{tikzcd}
{% endtikz %}

{% enddef %}

One should be aware that, the morphism of triangles are not necessasy a communication of triangles.

{% def %}
(Terminologies for ET2). We define the following terminologies:

- The equivalency class $𝔰(δ)$ is called **the realisation** of $δ$;
- A element of $𝔰 (δ)$ is called **a realisation** of $δ$;
- A realisation is also known as an ($𝔼$-)**triangle**, denoted by $X \xrightarrow f Y \xrightarrow g Z \xrightarrow δ (\text{blank}).$
- A realisation is also known as an ($𝔼$-)**conflation**, denoted by a pair of morphisms $(f,g)$.
{% enddef %}

The expression of realisation may cause problems, **we use triangles or conflations instead for most of the time**. For instance, consider the following sentences

- The beneficiaries of this policy were students.
- The victims of this rollover accident were students.
- He/She is a student.

The use of *$x$ be students* means either $x = {\text{students}}$, $x ⊆ {\text{students}}$ or $x ∈ {\text{students}}$.

#### ET3

{% def %}
(ET3, and ET3'). For the triple $(𝒞, 𝔼, 𝔰)$ satisfying ET1 and ET2, we say that it satisfies ET3 if the following holds: for any commutative diagram ($f'α = β f$) between triangles, there exists a dashed morphism ($γ$) rendering it simultaneously a communication of extensions and a commutative diagram.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzAsMCwiWCJdLFsyLDAsIlkiXSxbNCwwLCJaIl0sWzAsMSwiWCciXSxbNCwxLCJaJyJdLFsyLDEsIlknIl0sWzUsMSwiXFwsIl0sWzUsMCwiXFwsIl0sWzYsMCwiXFxhbHBoYSBfXFxhc3QgXFxkZWx0YSJdLFs2LDEsIlxcZ2FtbWEgXlxcYXN0XFxkZWx0YSAnIl0sWzAsMSwiZiJdLFsxLDIsImciXSxbMyw1LCJmJyJdLFs1LDQsImcnIl0sWzEsNSwiXFxiZXRhIl0sWzAsMywiXFxhbHBoYSJdLFsyLDQsIlxcZ2FtbWEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiw3LCJcXGRlbHRhIl0sWzQsNiwiXFxkZWx0YSciXSxbOSw4LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
X \&\& Y \&\& Z \& {\,} \& {\alpha _\ast \delta} \\
{X'} \&\& {Y'} \&\& {Z'} \& {\,} \& {\gamma ^\ast\delta '}
\arrow["f", from=1-1, to=1-3]
\arrow["\alpha", from=1-1, to=2-1]
\arrow["g", from=1-3, to=1-5]
\arrow["\beta", from=1-3, to=2-3]
\arrow["\delta", from=1-5, to=1-6]
\arrow["\gamma", dashed, from=1-5, to=2-5]
\arrow["{f'}", from=2-1, to=2-3]
\arrow["{g'}", from=2-3, to=2-5]
\arrow["{\delta'}", from=2-5, to=2-6]
\arrow[equals, from=2-7, to=1-7]
\end{tikzcd}
{% endtikz %}

The statement of ET3' is dual: given the commutative diagram $γ g = g' β$, the morphism $α$ is to be determined. The completed diagram is required to satisfy the same properties as above.

{% enddef %}

#### ET4

{% def %}
(ET4, and ET4'). For the ⊤-shaped diagram of triangles, there exists a way to complete the  diagram to a commutative diagram of four triangles:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMCwiWCJdLFsyLDAsIlkiXSxbMywwLCJaIl0sWzIsMSwiVyJdLFsyLDIsIksiXSxbMywyLCJLIl0sWzEsMSwiWCJdLFszLDEsIk0iXSxbNCwwLCJcXCwiXSxbNCwxLCJcXCwiXSxbMiwzLCJcXCwiXSxbMywzLCJcXCwiXSxbNSwyLCJcXCwiXSxbMCwyLCJcXCwiXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFsxLDMsIlxcYWxwaGEiXSxbMyw0LCJcXGJldGEiXSxbNCw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMywicCIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDcsInIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNyw1LCJzIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNywicSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDgsIlxcZGVsdGFfe3IxfSJdLFs3LDksIlxcZGVsdGFfe3IyfSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDExLCJcXGRlbHRhX3tjMn0iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwxMCwiXFxkZWx0YV97YzF9Il1d
\begin{tikzcd}[ampersand replacement=\&]
\& X \& Y \& Z \& {\,} \\
\& X \& W \& M \& {\,} \\
{\,} \&\& K \& K \&\& {\,} \\
\&\& {\,} \& {\,}
\arrow["f", from=1-2, to=1-3]
\arrow["g", from=1-3, to=1-4]
\arrow["\alpha", from=1-3, to=2-3]
\arrow["{\delta_{r1}}", from=1-4, to=1-5]
\arrow["r", dashed, from=1-4, to=2-4]
\arrow[equals, from=2-2, to=1-2]
\arrow["p", dashed, from=2-2, to=2-3]
\arrow["q", dashed, from=2-3, to=2-4]
\arrow["\beta", from=2-3, to=3-3]
\arrow["{\delta_{r2}}", dashed, from=2-4, to=2-5]
\arrow["s", dashed, from=2-4, to=3-4]
\arrow[equals, from=3-3, to=3-4]
\arrow["{\delta_{c1}}", from=3-3, to=4-3]
\arrow["{\delta_{c2}}", dashed, from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

and, satisfying $r^∗ δ_{r2} = δ _{r1}$, $g_∗ δ _{c1} = δ _{c2}$, and $f_∗ δ _{r2} = s^∗ δ _{c1}$. The final one reveals a very special the communciation of extensions:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzAsMSwiWSJdLFsyLDEsIlciXSxbNCwxLCJLIl0sWzUsMSwiXFwsIl0sWzUsMCwiXFwsIl0sWzIsMCwiVyJdLFs0LDAsIk0iXSxbMCwxLCJmIl0sWzEsMiwiXFxhbHBoYSJdLFsyLDMsIlxcYmV0YSJdLFszLDQsIlxcZGVsdGFfe2MxfSJdLFswLDYsInAiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNyw1LCJcXGRlbHRhX3tyMn0iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNywzLCJzIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsMiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiw3LCJxIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
X && W && M & {\,} \\
Y && W && K & {\,}
\arrow["p", dashed, from=1-1, to=1-3]
\arrow["f", from=1-1, to=2-1]
\arrow["q", dashed, from=1-3, to=1-5]
\arrow[equals, from=1-3, to=2-3]
\arrow["{\delta_{r2}}", dashed, from=1-5, to=1-6]
\arrow["s", dashed, from=1-5, to=2-5]
\arrow["\alpha", from=2-1, to=2-3]
\arrow["\beta", from=2-3, to=2-5]
\arrow["{\delta_{c1}}", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

The statement of ET4' is dual, where the dashed morphisms are given, and the solid morphisms are to be determined. The completed diagram is required to satisfy the same properties as above.

{% enddef %}

In short, ET4 means that one ⊤-shaped diagram of triangles implies another ⊣-shaped diagram of triangles, and vice versa.

### (Co)homological Long Exact Sequence

The following notation is based on Yoneda lemma. Recall that the category $𝒞$ is locally small, and the bifunctor $𝔼(-,-)$ takes values in Abelian groups. Now there is an isomorphism between Abelian groups

$$\begin{equation}
𝖭𝖺𝗍 [(X,-), 𝔼 (Z,-)] ↔ 𝔼(Z,X),\quad Φ ↦ Φ_X(1_X).
\end{equation}$$

{% def %}
($δ ^!$ and $δ _!$). Conversely, and element $δ ∈ 𝔼(Z, X)$ induces the following two natural transformations

1. $δ^! : (X,-) → 𝔼(Z,-)$, given by $δ^! (f) = f_∗ δ$.
2. $δ_! : (-,Z) → 𝔼(-,X)$, given by $δ_! (g) = g^∗ δ$.

We employ $(⋅)_∗$ to denote post-composition, and $(⋅)^!$ to denote post-composer, the same for $(⋅)_!$ and $(⋅)^!$.

{% enddef %}

#### The Proof

Now we shall prove the homological long exact sequence. For any triangle $X \xrightarrow f Y \xrightarrow g Z \xrightarrow δ$, we have the following long exact sequence of natural transformations:

$$\begin{equation}
(Z,-) \xrightarrow{g^∗} (Y,-) \xrightarrow{f^∗} (X,-) \xrightarrow{δ^!} 𝔼(Z,-) \xrightarrow{g^∗} 𝔼(Y,-) \xrightarrow{f^∗} 𝔼(X,-).
\end{equation}$$

There are no $0$ terms in this long exact sequence. Moreover, the exactness of the first 5-terms can be proved without ET4 (ET4').

{% lem %}
We show the exactness at $(Z,-) \xrightarrow{g^∗} (Y,-) \xrightarrow{f^∗} (X,-)$.
{% pf %}
We take the solid map $\{f,g,β,1_M\}$ in the following diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJaIl0sWzIsMCwiVyJdLFs0LDAsIlgiXSxbMiwxLCJNIl0sWzQsMSwiTSJdLFswLDEsIjAiXSxbNSwwLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFs1LDNdLFszLDQsIjFfTSIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNywiMCJdLFsyLDYsIlxcZGVsdGEiXSxbMSwzLCJcXGJldGEiXSxbMCw1LCJcXGFscGhhICIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDQsIlxcZ2FtbWEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
Z \&\& Y \&\& X \& {\,} \\
0 \&\& M \&\& M \& {\,}
\arrow["f", from=1-1, to=1-3]
\arrow["{\alpha }", dashed, from=1-1, to=2-1]
\arrow["g", from=1-3, to=1-5]
\arrow["\beta", from=1-3, to=2-3]
\arrow["\delta", from=1-5, to=1-6]
\arrow["\gamma", dashed, from=1-5, to=2-5]
\arrow[from=2-1, to=2-3]
\arrow["{1_M}", equals, from=2-3, to=2-5]
\arrow["0", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

By ET3 and ET3', if there exists a dashed morphism $α$ makes the left rectangle commutative (equiv., $β ∈ \ker f^∗$), then there exists a dashed morphism $γ$ making the right rectangle commutative (equiv., $β ∈ \operatorname{im} g^∗$), and vise versa.

{% endpf %}
{% endlem %}

{% lem %}
We show the exactness at $(Y,-) \xrightarrow{f^∗} (X,-) \xrightarrow{δ^!} 𝔼(Z,-)$.
{% pf %}
One one hand, we shall show that $0 = δ^! ∘ f^∗$. For any $g : Y → W$, one has
$$\begin{equation}
δ^! ∘ f^∗ (g) = (f^∗ g)_∗ δ = g_∗ f^∗ δ = (f^∗ δ)^! g.
\end{equation}$$
It suffices to show that $f^∗ δ = 0$. We take the following commutative diagram of triangles:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJaIl0sWzIsMCwiVyJdLFs0LDAsIlgiXSxbMiwxLCJXIl0sWzQsMSwiMCJdLFswLDEsIlciXSxbNSwwLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFs1LDMsIjFfVyIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNywiMCJdLFsyLDYsIlxcZGVsdGEiXSxbMSwzLCIxX1ciLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDUsImYiXSxbMiw0LCJcXGdhbW1hIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNF1d
\begin{tikzcd}[ampersand replacement=\&]
Z \&\& Y \&\& X \& {\,} \\
Y \&\& Y \&\& 0 \& {\,}
\arrow["f", from=1-1, to=1-3]
\arrow["f", from=1-1, to=2-1]
\arrow["g", from=1-3, to=1-5]
\arrow["{1_Y}", equals, from=1-3, to=2-3]
\arrow["\delta", from=1-5, to=1-6]
\arrow["\gamma", dashed, from=1-5, to=2-5]
\arrow["{1_Y}", equals, from=2-1, to=2-3]
\arrow[from=2-3, to=2-5]
\arrow["0", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}
By ET3, there exists a dashed morphism $γ$ making the right rectangle commutative, and $f_∗ δ = γ ^∗ 0 = 0$.
\\
\\
On the other hand, we show that any $h : Z → M$ with $h_∗ δ = 0$ factors through $g$. We take the canonical split short exact sequence as the realisation of $h_∗δ$, and obtain a commutative diagram
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJaIl0sWzIsMCwiRSJdLFs0LDAsIlgiXSxbNCwxLCJLIl0sWzAsMSwiTSJdLFs1LDAsIlxcLCJdLFs1LDEsIlxcLCJdLFsyLDEsIlcgXFxvcGx1cyBLIl0sWzAsMSwiZiJdLFsxLDIsImciXSxbMyw2LCIwIl0sWzIsNSwiXFxkZWx0YSJdLFswLDQsImgiXSxbMiwzLCJcXGdhbW1hIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsNywiZV8xIl0sWzcsMywicF8xIl0sWzEsNywiXFxiaW5vbSBhIGIiXV0=
\begin{tikzcd}[ampersand replacement=\&]
Z \&\& E \&\& X \& {\,} \\
M \&\& {Y \oplus K} \&\& K \& {\,}
\arrow["f", from=1-1, to=1-3]
\arrow["h", from=1-1, to=2-1]
\arrow["g", from=1-3, to=1-5]
\arrow["{\binom a b}", from=1-3, to=2-3]
\arrow["\delta", from=1-5, to=1-6]
\arrow["\gamma", dashed, from=1-5, to=2-5]
\arrow["{e_1}", from=2-1, to=2-3]
\arrow["{p_1}", from=2-3, to=2-5]
\arrow["0", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

Now $h = a ∘ f ∈ \operatorname{im}f^∗$.
{% endpf %}
{% endlem %}

{% lem %}
We show the exactness at $(X,-) \xrightarrow{δ^!} 𝔼(Z,-) \xrightarrow{g^∗} 𝔼(Y,-)$.

{% pf %}
One one hand, we show that $0 = g^∗ ∘ δ^!$. For any $h : X → M$, one has
$$\begin{equation}
g^∗ ∘ δ^! (h) = g^∗ (h_∗ δ) = h_∗ (g^∗ δ).
\end{equation}$$
It suffices to show that $g^∗ δ = 0$. We omit the proof since it is dual to the proof of $f_∗ δ =0$.
\\
\\
One the other hand, we show that any $η ∈ 𝔼 (Z,M)$ with $g^∗ η = 0$ must takes the form $α _∗ δ$. We take the canonical split short exact sequence as the realisation of $g^∗η$, and obtain a commutative diagram of triangles:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMSwiTSJdLFsyLDEsIlQiXSxbNCwxLCJaIl0sWzUsMSwiXFwsIl0sWzQsMCwiWSJdLFs1LDAsIlxcLCJdLFswLDAsIk0iXSxbMiwwLCJNIFxcb3BsdXMgWSJdLFswLDIsIlgiXSxbNCwyLCJaIl0sWzIsMiwiWSJdLFs1LDIsIlxcLCJdLFswLDEsInAiXSxbMSwyLCJxIl0sWzIsMywiXFxldGEiXSxbNCwyLCJnIl0sWzQsNSwiZ15cXGFzdCBcXGV0YSJdLFs2LDAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsNywiZV8xIl0sWzcsNCwicF8yIl0sWzcsMSwiXFxiaW5vbSBzdCJdLFsxMCw5LCJnIl0sWzgsMTAsImYiXSxbMTAsMSwidCJdLFs5LDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzksMTEsIlxcZGVsdGEiXSxbOCwwLCJcXGFscGhhIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
M \&\& {M \oplus Y} \&\& Y \& {\,} \\
M \&\& T \&\& Z \& {\,} \\
X \&\& Y \&\& Z \& {\,}
\arrow["{e_1}", from=1-1, to=1-3]
\arrow[equals, from=1-1, to=2-1]
\arrow["{p_2}", from=1-3, to=1-5]
\arrow["{(s,t)}", from=1-3, to=2-3]
\arrow["{g^\ast \eta}", from=1-5, to=1-6]
\arrow["g", from=1-5, to=2-5]
\arrow["p", from=2-1, to=2-3]
\arrow["q", from=2-3, to=2-5]
\arrow["\eta", from=2-5, to=2-6]
\arrow["\alpha", dashed, from=3-1, to=2-1]
\arrow["f", from=3-1, to=3-3]
\arrow["t", from=3-3, to=2-3]
\arrow["g", from=3-3, to=3-5]
\arrow[equals, from=3-5, to=2-5]
\arrow["\delta", from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

Here row-III is due induced by $t$ and ET3. Now there exists $α$ such that $α_∗ δ = η$.

{% endpf %}
{% endlem %}

{% lem %}
We show the exactness at $𝔼(Z,-) \xrightarrow{g^∗} 𝔼(Y,-) \xrightarrow{f^∗} 𝔼(X,-)$.

{% pf %}
One one hand, one has shows that $0 = f^∗ ∘ g^∗ = (gf)^∗$.
\\
\\
One the other hand, once $f^∗ η = 0$ for some $η ∈ 𝔼 (Y, M)$, we use ET4' and obtain the following commutative diagram:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMSwiTSJdLFszLDEsIlkiXSxbMiwxLCJUIl0sWzQsMSwiXFwsIl0sWzMsMCwiWCJdLFszLDIsIloiXSxbMywzLCJcXCwiXSxbMSwwLCJNIl0sWzIsMiwiWiJdLFsyLDAsIlEiXSxbMiwzLCJcXCwiXSxbNCwwLCJcXCwiXSxbMCwyLCJcXCwiXSxbNSwyLCJcXCwiXSxbMSwzLCJcXGV0YSJdLFswLDIsInAiXSxbMiwxLCJxIl0sWzQsMSwiZiJdLFsxLDUsImciXSxbNSw2LCJcXGRlbHRhIl0sWzcsMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs3LDksImEiXSxbOSw0LCJiIl0sWzksMl0sWzIsOF0sWzQsMTEsImZeXFxhc3QgXFxldGEiXSxbOCwxMCwiXFxkZWx0YSciXV0=
\begin{tikzcd}[ampersand replacement=\&]
\& M \& Q \& X \& {\,} \\
\& M \& T \& Y \& {\,} \\
{\,} \&\& Z \& Z \&\& {\,} \\
\&\& {\,} \& {\,}
\arrow["a", from=1-2, to=1-3]
\arrow[equals, from=1-2, to=2-2]
\arrow["b", from=1-3, to=1-4]
\arrow[from=1-3, to=2-3]
\arrow["{f^\ast \eta}", from=1-4, to=1-5]
\arrow["f", from=1-4, to=2-4]
\arrow["p", from=2-2, to=2-3]
\arrow["q", from=2-3, to=2-4]
\arrow[from=2-3, to=3-3]
\arrow["\eta", from=2-4, to=2-5]
\arrow["g", from=2-4, to=3-4]
\arrow[equals, from=3-3, to=3-4]
\arrow["{\delta'}", from=3-3, to=4-3]
\arrow["\delta", from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

By ET4, $a_∗ η = g^∗ δ '$. Since $f^∗ η = 0$, $a$ is split monomorphism whose left inverse is denoted by $x$. One has $η = g^∗ x_∗ δ '$. Hence, $η = g^∗ (x_∗ δ ')$.

{% endpf %}

{% endlem %}

#### Corollaries on Trivial Conflations

There is an analogous result, in comparison with pre-triangulated categories, concerning split morphisms.

{% prop %}
Let $X \xrightarrow f Y \xrightarrow g Z \xrightarrow δ$ be the triangle. We only concern the first five terms of the long exact sequence (there is no ET4).

1. $g$ is a monomorphism, iff $f = 0$, iff $g$ is a split monomorphism, iff $δ^!$ is a monomorphism.
2. $f$ is an epimorphism, iff $g = 0$, iff $f$ is a split epimorphism, iff $δ_!$ is an epimorphism.

{% endprop %}

There are no trivial results in the case that $f$ is monomorphism or $g$ is an epimorphism, since exact categories are extriangulated.

#### The Hom Complex

* May there be interesting theorems on adjoint functors.

We use the exact Hom complex to explore some useful lemmas. The following lemma is useful in the proof of lifting property.

{% lem %}
(Extension lifting lemma). Consider the following morphism between triangles:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMiwwLCJBIl0sWzQsMCwiQiJdLFsyLDEsIlgiXSxbNCwxLCJZIl0sWzAsMSwiSyJdLFs2LDAsIkMiXSxbNywwLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwxLCJqIl0sWzEsNSwicSJdLFswLDIsImYiXSxbMSwzLCJnIl0sWzQsMiwiaSJdLFsyLDMsInAiXSxbMSwyLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSw2LCJcXGRlbHRhICJdLFszLDcsIlxcdmFyZXBzaWxvbiAiXV0=
\begin{tikzcd}[ampersand replacement=\&]
\&\& A \&\& B \&\& C \& {\,} \\
K \&\& X \&\& Y \& {\,}
\arrow["j", from=1-3, to=1-5]
\arrow["f", from=1-3, to=2-3]
\arrow["q", from=1-5, to=1-7]
\arrow[dashed, from=1-5, to=2-3]
\arrow["g", from=1-5, to=2-5]
\arrow["{\delta }", from=1-7, to=1-8]
\arrow["i", from=2-1, to=2-3]
\arrow["p", from=2-3, to=2-5]
\arrow["{\varepsilon }", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

Suppose that $𝔼(C, K) = 0$. Then there exists some dashed arrows making the entire diagram commutative.

{% pf %}
We take the following complex and make homological truncations (we denoted the syzygies by $∙$). By homological algebra, a bounded bicomplex with all exact rows is exact as a total complex. This is proved by induction on length or simply the spectral sequence. We use $↙_k$ to denote the degree $k$ part in the bicomplex.
{% tikz %}
% https://q.uiver.app/#q=WzAsMzEsWzEsMSwiKEMsSykiXSxbMiwxLCIoQyxYKSJdLFszLDEsIihDLFkpIl0sWzQsMSwiMCJdLFsxLDIsIihCLEspIl0sWzIsMiwiKEIsWCkiXSxbMywyLCIoQixZKSJdLFsxLDMsIihBLEspIl0sWzIsMywiKEEsWCkiXSxbMywzLCIoQSxaKSJdLFsxLDQsIjAiXSxbMiw0LCJcXG1hdGhiYiBFKEMsWCkiXSxbMyw0LCJcXG1hdGhiYiBFKEMsWSkiXSxbNCwyLCJcXG1hdGhiYiBFKEIsSykiXSxbNCwzLCJcXG1hdGhiYiBFKEEsSykiXSxbNCw0LCJNIl0sWzAsMSwiXFxidWxsZXQiXSxbMCwyLCJcXGJ1bGxldCJdLFswLDMsIlxcYnVsbGV0Il0sWzEsMCwiMCJdLFsyLDAsIjAiXSxbMiw1LCIwIl0sWzMsMCwiMCJdLFszLDUsIjAiXSxbNSwyLCJcXGJ1bGxldCJdLFs1LDMsIlxcYnVsbGV0Il0sWzUsMCwiXFxzd2Fycm93XzAiXSxbNSwxLCJcXHN3YXJyb3dfMSJdLFs0LDAsIlxcc3dhcnJvd197LTF9Il0sWzUsNCwiXFxidWxsZXQiXSxbNCw1LCIwIl0sWzEsMiwicF9cXGFzdCAiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNCw3LCJqXlxcYXN0ICIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxMywxNCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMTEsMTIsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzAsMSwiaV9cXGFzdCJdLFs0LDUsImlfXFxhc3QiXSxbNSw2LCJwX1xcYXN0ICJdLFs2LDEzLCJcXHZhcmVwc2lsb24gXyEiXSxbNyw4LCJpX1xcYXN0Il0sWzgsOSwicF9cXGFzdCAiXSxbOSwxNCwiXFx2YXJlcHNpbG9uIF8hIl0sWzEwLDExXSxbMTIsMTVdLFsxNCwxNV0sWzIsM10sWzE2LDAsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzE3LDQsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzE4LDcsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzE5LDBdLFswLDQsInFeXFxhc3QgIl0sWzcsMTBdLFsyMCwxXSxbMSw1LCJxXlxcYXN0ICJdLFs1LDgsImpeXFxhc3QgIl0sWzgsMTEsIlxcZGVsdGEgXiEiXSxbMTEsMjFdLFsyMiwyXSxbMiw2LCJxXlxcYXN0ICJdLFs2LDksImpeXFxhc3QgIl0sWzksMTIsIlxcZGVsdGEgXiEiXSxbMTIsMjNdLFszLDEzXSxbMTMsMjQsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxNCwyNSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzE1LDI5LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMTUsMzBdLFsxNiwxN10sWzE3LDE4XSxbMjQsMjVdLFsyNSwyOV1d
\begin{tikzcd}[ampersand replacement=\&]
\& 0 \& 0 \& 0 \& {\swarrow_{-1}} \& {\swarrow_0} \\
\bullet \& {(C,K)} \& {(C,X)} \& {(C,Y)} \& 0 \& {\swarrow_1} \\
\bullet \& {(B,K)} \& {(B,X)} \& {(B,Y)} \& {\mathbb E(B,K)} \& \bullet \\
\bullet \& {(A,K)} \& {(A,X)} \& {(A,Z)} \& {\mathbb E(A,K)} \& \bullet \\
\& 0 \& {\mathbb E(C,X)} \& {\mathbb E(C,Y)} \& M \& \bullet \\
\&\& 0 \& 0 \& 0
\arrow[from=1-2, to=2-2]
\arrow[from=1-3, to=2-3]
\arrow[from=1-4, to=2-4]
\arrow[hook, from=2-1, to=2-2]
\arrow[from=2-1, to=3-1]
\arrow["{i_\ast}", from=2-2, to=2-3]
\arrow["{q^\ast }", from=2-2, to=3-2]
\arrow["{p_\ast }", two heads, from=2-3, to=2-4]
\arrow["{q^\ast }", from=2-3, to=3-3]
\arrow[from=2-4, to=2-5]
\arrow["{q^\ast }", from=2-4, to=3-4]
\arrow[from=2-5, to=3-5]
\arrow[hook, from=3-1, to=3-2]
\arrow[from=3-1, to=4-1]
\arrow["{i_\ast}", from=3-2, to=3-3]
\arrow["{j^\ast }", two heads, from=3-2, to=4-2]
\arrow["{p_\ast }", from=3-3, to=3-4]
\arrow["{j^\ast }", from=3-3, to=4-3]
\arrow["{\varepsilon _!}", from=3-4, to=3-5]
\arrow["{j^\ast }", from=3-4, to=4-4]
\arrow[two heads, from=3-5, to=3-6]
\arrow[hook, from=3-5, to=4-5]
\arrow[from=3-6, to=4-6]
\arrow[hook, from=4-1, to=4-2]
\arrow["{i_\ast}", from=4-2, to=4-3]
\arrow[from=4-2, to=5-2]
\arrow["{p_\ast }", from=4-3, to=4-4]
\arrow["{\delta ^!}", from=4-3, to=5-3]
\arrow["{\varepsilon _!}", from=4-4, to=4-5]
\arrow["{\delta ^!}", from=4-4, to=5-4]
\arrow[two heads, from=4-5, to=4-6]
\arrow[from=4-5, to=5-5]
\arrow[from=4-6, to=5-6]
\arrow[from=5-2, to=5-3]
\arrow[hook, from=5-3, to=5-4]
\arrow[from=5-3, to=6-3]
\arrow[from=5-4, to=5-5]
\arrow[from=5-4, to=6-4]
\arrow[two heads, from=5-5, to=5-6]
\arrow[from=5-5, to=6-5]
\end{tikzcd}
{% endtikz %}

Since the non-existence of so-called $𝔼^2$, the exactness of $\mathbb E(C,X) → \mathbb E(C,Y) → M$ is given by the following construction:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzAsMCwiKEEsWCkiXSxbMSwwLCIoQSxaKSJdLFswLDIsIlxcbWF0aGJiIEUoQyxYKSJdLFsxLDIsIlxcbWF0aGJiIEUoQyxZKSJdLFszLDAsIlxcbWF0aGJiIEUoQSxLKSJdLFszLDIsIlxcZnJhY3tcXG1hdGhiYiBFKEMsWSl9e1xcbWF0aGJiIEUoQyxYKX0gXFxzcWN1cF97XFxvcGVyYXRvcm5hbWUge2ltfVxcdmFyZXBzaWxvbiBfIX0gXFxtYXRoYmIgRShBLEspIl0sWzQsMCwiXFxidWxsZXQiXSxbNCwyLCJcXGJ1bGxldCJdLFsyLDMsIlxcZnJhY3tcXG1hdGhiYiBFKEMsWSl9e1xcbWF0aGJiIEUoQyxYKX0iXSxbMiwxLCJcXG9wZXJhdG9ybmFtZSB7aW19XFx2YXJlcHNpbG9uIF8hIl0sWzIsMywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMCwxLCJwX1xcYXN0ICJdLFsxLDQsIlxcdmFyZXBzaWxvbiBfISJdLFszLDVdLFs0LDVdLFswLDIsIlxcZGVsdGEgXiEiXSxbMSwzLCJcXGRlbHRhIF4hIl0sWzQsNiwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzUsNywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzYsN10sWzEsOSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzksNCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMyw4LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbOSw4LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOCw1LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
{(A,X)} \& {(A,Z)} \&\& {\mathbb E(A,K)} \& \bullet \\
\&\& {\operatorname {im}\varepsilon _!} \\
{\mathbb E(C,X)} \& {\mathbb E(C,Y)} \&\& {\frac{\mathbb E(C,Y)}{\mathbb E(C,X)} \sqcup_{\operatorname {im}\varepsilon _!} \mathbb E(A,K)} \& \bullet \\
\&\& {\frac{\mathbb E(C,Y)}{\mathbb E(C,X)}}
\arrow["{p_\ast }", from=1-1, to=1-2]
\arrow["{\delta ^!}", from=1-1, to=3-1]
\arrow["{\varepsilon _!}", from=1-2, to=1-4]
\arrow[two heads, from=1-2, to=2-3]
\arrow["{\delta ^!}", from=1-2, to=3-2]
\arrow[two heads, from=1-4, to=1-5]
\arrow[from=1-4, to=3-4]
\arrow[from=1-5, to=3-5]
\arrow[hook, from=2-3, to=1-4]
\arrow[dashed, from=2-3, to=4-3]
\arrow[hook, from=3-1, to=3-2]
\arrow[from=3-2, to=3-4]
\arrow[two heads, from=3-2, to=4-3]
\arrow[two heads, from=3-4, to=3-5]
\arrow[hook, from=4-3, to=3-4]
\end{tikzcd}
{% endtikz %}

We take $(f,g)$ the element of degree $0$. Now we show that $d(f,g) = 0$.

* By commutative diagram, the entry at $(A,Z)$ is zero.
* Since $ε_!(j^∗ g) = ε (p^∗ f) = 0$ and $\mathbb E(B,K) ↪ \mathbb E(A,K)$, we see that $ε_!(g) = 0$. That is, the entry at $𝔼 (B,K)$ is zero.
* Similarly, the entry at $𝔼 (C,X)$ is zero.

By exactness of the total complex, there is an triple
$$\begin{equation}
(a,b,c) ∈ (A,K) ⊕ (B,X) ⊕ (C,Y)
\end{equation}$$

whose differential is $(f,g)$. We want this preimage to be of the form $(0, ? , 0)$. Thanks to the surjectivity of $p_∗$ and $j^∗$, there exists some element $(s,t) ∈ (B, K) ⊕ (C,X)$ such that $d(s,t) = (a,?,b)$. Hence, $(a,b,c) - d(s,t)$ is the element of the form $(0,?,0)$ whose differential is $(f,g)$.

{% endpf %}

{% endlem %}

### On Isomorphisms

#### Conflations are Closed under Isomorphisms

Here are some results of being closed under isomorphisms.

{% prop %}
All conflations are closed under isomorphisms. To be explicit, for any conflation $X \xrightarrow{f} Y \xrightarrow{g} Z\xrightarrow{δ}$ isomorphisms $α : X → X'$, $β : Y → Y'$ and $γ : Z → Z'$, the following is also a conflation:
$$\begin{equation}
X' \xrightarrow{β ∘ f ∘ α ⁻¹} Y' \xrightarrow{γ ∘ g ∘ β ⁻¹ } Z' \xrightarrow {α _∗ γ ⁻¹ δ}.
\end{equation}$$

{% pf %}
We first demonstrate that there exists a realisation of $ε ∈ 𝔼 (Z', X)$ such that $𝔰 (δ)$ and $𝔰 (ε )$ are isomorphic as objects in $𝐅𝐮𝐧𝐜𝐭(1 → 2 → 3, 𝒞)$. We now exhibit the invertible communication of extensions:
$$\begin{equation}
(X, δ , Z) \xrightarrow{(1_X, γ)} (X, ε , Z') \xrightarrow{(α , 1_{Z})} (X', δ ', Z').
\end{equation}$$
At this point, we deduce the isomorphism between the conflations in $\text{row 2}$ and $\text{row 3}$. $\text{row 1}$ is isomorphic to $\text{row 2}$, yet it remains unknown whether $\text{row 1}$ is a conflation.
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMSwiWCJdLFszLDEsIlkiXSxbNSwxLCJaIl0sWzYsMSwiXFwsIl0sWzYsMiwiXFwsIl0sWzUsMiwiWiciXSxbMSwyLCJYJyJdLFszLDIsIkUiXSxbMSwwLCJYJyJdLFswLDEsIlxcdGV4dHtyb3cgMn0iXSxbMCwyLCJcXHRleHR7cm93IDN9Il0sWzAsMCwiXFx0ZXh0e3JvdyAxfSJdLFs1LDAsIlonIl0sWzMsMCwiWSciXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFsyLDMsIlxcZGVsdGEiXSxbMiw1LCJcXGdhbW1hIl0sWzUsNCwiXFxkZWx0YSAnIl0sWzAsNiwiXFxhbHBoYSAiXSxbNiw3XSxbNyw1XSxbMSw3XSxbMCw4LCJcXGFscGhhICJdLFsxLDEzLCJcXGJldGEiXSxbMiwxMiwiXFxnYW1tYSJdLFs4LDEzXSxbMTMsMTJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
{\text{row 1}} \& {X'} \&\& {Y'} \&\& {Z'} \\
{\text{row 2}} \& X \&\& Y \&\& Z \& {\,} \\
{\text{row 3}} \& {X'} \&\& E \&\& {Z'} \& {\,}
\arrow[from=1-2, to=1-4]
\arrow[from=1-4, to=1-6]
\arrow["{\alpha }", from=2-2, to=1-2]
\arrow["f", from=2-2, to=2-4]
\arrow["{\alpha }", from=2-2, to=3-2]
\arrow["\beta", from=2-4, to=1-4]
\arrow["g", from=2-4, to=2-6]
\arrow[from=2-4, to=3-4]
\arrow["\gamma", from=2-6, to=1-6]
\arrow["\delta", from=2-6, to=2-7]
\arrow["\gamma", from=2-6, to=3-6]
\arrow[from=3-2, to=3-4]
\arrow[from=3-4, to=3-6]
\arrow["{\delta '}", from=3-6, to=3-7]
\end{tikzcd}
{% endtikz %}
We apply ET2 to $\text{row 1}$ and $\text{row 3}$, and thereby obtain that they belong to the same realisation.
{% endpf %}

{% endprop %}

#### Remarks on Two out of Three Principle

The two out of three principles roughly means that, if we have two morphisms between triangles, then there exists the third. For extriangulated categories, it means that for any two morphism $\{α , β , γ \}$ making the small square diagram commutative, then there exists a morphism on the remaining side making the other two squares commutative.
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzIsMCwiWSJdLFs0LDAsIloiXSxbNiwwLCJcXCwiXSxbNiwxLCJcXCwiXSxbMCwxLCJYJyJdLFsyLDEsIlknIl0sWzQsMSwiWiciXSxbMCwxXSxbMSwyXSxbMiwzLCJcXGRlbHRhIl0sWzUsNl0sWzYsN10sWzcsNCwiXFxkZWx0YSciXSxbMCw1LCJcXGFscGhhICIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDYsIlxcYmV0YSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDcsIlxcZ2FtbWEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMyw0LCJcXGFscGhhIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
X \&\& Y \&\& Z \&\& {\,} \\
{X'} \&\& {Y'} \&\& {Z'} \&\& {\,}
\arrow[from=1-1, to=1-3]
\arrow["{\alpha }", dashed, from=1-1, to=2-1]
\arrow[from=1-3, to=1-5]
\arrow["\beta", dashed, from=1-3, to=2-3]
\arrow["\delta", from=1-5, to=1-7]
\arrow["\gamma", dashed, from=1-5, to=2-5]
\arrow["\alpha", dashed, from=1-7, to=2-7]
\arrow[from=2-1, to=2-3]
\arrow[from=2-3, to=2-5]
\arrow["{\delta'}", from=2-5, to=2-7]
\end{tikzcd}
{% endtikz %}

The commutativity of the right most square means that $(α, γ) : δ → δ '$ is a communication. This is exactly what ET3, ET3' and (part of the) ET2 means.

The following lemma is an analogous result for pre-triangulated categories.

{% lem %}
In the diagram, suppose that $β$ is an isomorphism, then $α$ is isomorphism whenever $γ$ is.
{% pf %}
We apply $(Z', -)$ to the diagram, and obtain the isomorphism $(Z', Z) \xrightarrow {(- ∘ γ)} (Z', Z')$ by five lemma. Now $γ$ has a left inverse. The right inverse of $γ$ is shown dually. Hence $γ$ is an isomorphism.
{% endpf %}
{% endlem %}

#### Uniqueness of Morphism Embedding

The above lemma shows the uniqueness (regardless of the existence) of morphism embedding

- when $f$ is an inflation, then the conflation is unique up to isomorphism of $Z$;
- when $g$ is a deflation, then the conflation is unique up to isomorphism of $X$;
- when $δ$ is an extension element, then the conflation is unique up to isomorphism of $Y$.

### Remarks on ET4 Axiom

#### On Exact Categories and Triangulated Categories

We recommend the readers to convince themselves that

- An $\mathrm{Ext}^1$-small (e.g., $𝒜$ has enough injectives) exact category $(𝒜, ℰ)$ is extriangulated, where $𝔼 = \mathrm{Ext}^1$ and the realisation is derived from the definition of the $\mathrm{Ext}^1$-group;
- A triangulated category $(𝒯, Σ, \triangle)$ is extriangulated, where $𝔼(?,-) := \mathrm{Hom}(?, -[1])$ and the realisation is defined by embedding a morphism into a unique triangle.

{% ex %}
(ET4 in for exact categories). As $\mathrm{Ext}^1$-small exact categories are extriangulated ET4 states the following axioms or propositions of exact categories.

- Before the completion of conflations, the composition of two inflations should be an inflation;
- The rest is the usual Noether isomorphism, i.e., $W / Y ≃ (W/X) / (Y/X)$.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzIsMCwiWCJdLFszLDAsIlkiXSxbNCwwLCJaIl0sWzMsMSwiVyJdLFszLDIsIlEiXSxbNCwyLCJRIl0sWzIsMSwiWCJdLFs0LDEsIkUiXSxbNywxLCJcXCwiXSxbMCwxLCJcXCwiXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsMywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFszLDQsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxLDIsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs0LDUsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsNiwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiwzLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDcsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifSwiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNywiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs3LDUsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJlcGkifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
\&\& X \& Y \& Z \\
{\,} \&\& X \& W \& E \&\&\& {\,} \\
\&\&\& Q \& Q
\arrow[tail, from=1-3, to=1-4]
\arrow[equals, from=1-3, to=2-3]
\arrow[two heads, from=1-4, to=1-5]
\arrow[tail, from=1-4, to=2-4]
\arrow[dashed, tail, from=1-5, to=2-5]
\arrow[dashed, tail, from=2-3, to=2-4]
\arrow[dashed, two heads, from=2-4, to=2-5]
\arrow[two heads, from=2-4, to=3-4]
\arrow[dashed, two heads, from=2-5, to=3-5]
\arrow[equals, from=3-4, to=3-5]
\end{tikzcd}
{% endtikz %}

{% endex %}

{% ex %}
(ET4 in for triangulated categories). As triangulated categories are extriangulated, ET4 is nothing but the TR4 axiom:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTUsWzEsMCwiQSJdLFsyLDAsIkIiXSxbMywwLCJDIl0sWzIsMSwiRCJdLFsyLDIsIkUiXSxbMSwxLCJBIl0sWzMsMSwiRiJdLFszLDIsIkUiXSxbNCwwLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzMsMywiXFxidWxsZXQiXSxbMiwzLCJcXGJ1bGxldCJdLFs0LDIsIlxcYnVsbGV0Il0sWzAsMSwiXFwsIl0sWzUsMSwiXFwsIl0sWzAsMSwieCJdLFsxLDIsInkiXSxbMSwzLCJhIl0sWzMsNCwiYiJdLFs1LDMsInAiXSxbMyw2LCJxIl0sWzAsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw3LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDYsInIiXSxbNiw3LCJzIl0sWzIsOCwiXFxkZWx0YV97cjF9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsOSwiXFxkZWx0YV97cjJ9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzcsMTAsIlxcZGVsdGFfe2MzfSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs0LDExLCJcXGRlbHRhX3tjMn0iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTEsMTAsInlfXFxhc3QgIl0sWzgsOSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsMTIsIlxcZGVsdGFfe2MyfSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs5LDEyLCJ4X1xcYXN0IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsMTAsIlxcYm94ZWQgMSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDksIlxcYm94ZWQgMiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDEyLCJcXGJveGVkIDMiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
& A & B & C & \bullet \\
{\,} & A & D & F & \bullet & {\,} \\
&& E & E & \bullet \\
&& \bullet & \bullet
\arrow["x", from=1-2, to=1-3]
\arrow[equals, from=1-2, to=2-2]
\arrow["y", from=1-3, to=1-4]
\arrow["a", from=1-3, to=2-3]
\arrow["{\delta_{r1}}", dashed, from=1-4, to=1-5]
\arrow["r", from=1-4, to=2-4]
\arrow["{\boxed 2}"{description}, draw=none, from=1-4, to=2-5]
\arrow[equals, dashed, from=1-5, to=2-5]
\arrow["p", from=2-2, to=2-3]
\arrow["q", from=2-3, to=2-4]
\arrow["b", from=2-3, to=3-3]
\arrow["{\delta_{r2}}", dashed, from=2-4, to=2-5]
\arrow["s", from=2-4, to=3-4]
\arrow["{\boxed 3}"{description}, draw=none, from=2-4, to=3-5]
\arrow["{x_\ast}", dashed, from=2-5, to=3-5]
\arrow[equals, from=3-3, to=3-4]
\arrow["{\delta_{c2}}", dashed, from=3-3, to=4-3]
\arrow["{\boxed 1}"{description}, draw=none, from=3-3, to=4-4]
\arrow["{\delta_{c2}}", dashed, from=3-4, to=3-5]
\arrow["{\delta_{c3}}", dashed, from=3-4, to=4-4]
\arrow["{y_\ast }", from=4-3, to=4-4]
\end{tikzcd}
{% endtikz %}

The commutative squares $\boxed k$ are precisely the identities in ET4.

1. For $\boxed 1$, $δ _{c3} = y_∗ ∘ δ _{c2}$ is just $δ _{c3} = y_∗δ _{c2}$;
2. For $\boxed 2$, $δ _{r1} = δ _{r2} ∘ r$ is just $r^∗ δ _{r2} = δ _{r1}$;
3. For $\boxed 3$, $δ _{c2} ∘ s = x_∗ ∘ δ _{c3}$ is just $s^∗ δ _{c2} = x_∗δ _{r2}$.

{% endex %}

#### Strict ET4

In certain circumstances we use the strict form of ET4, which differs from the original (lax) version.

* (ET4). This formulation asserts that, given any ⊤-shaped diagram of triangles, it is possible to simultaneously construct the ⊣-component of these triangles in such a way that the resulting diagram commutes, and the identities of extensions hold.
* (SET4). In contrast, the strict formulation imposes a stronger condition: for any ⊤-shaped diagram of triangles, there must exist a triangle that completes the associated ∓-shaped diagram. Furthermore, for any such ∓-shaped configuration, one must be able to derive the remaining morphisms and verify the commutativity of the entire diagram.

{% lem %}
We show that ET4 implies SET4.
{% pf %}
For any diagram on the left, we firstly complete it to a full ET4 diagram on the right:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTgsWzAsMCwiWCJdLFsxLDAsIlkiXSxbMCwxLCJYIl0sWzEsMSwiQSJdLFsyLDEsIkIiXSxbMSwyLCJDIl0sWzMsMCwiWCJdLFs0LDAsIlkiXSxbNSwwLCJaIl0sWzMsMSwiWCJdLFs0LDEsIkEiXSxbNSwxLCJCJyJdLFs0LDIsIkMiXSxbNSwyLCJDIl0sWzQsMywiXFx0ZXh0e0VUNH0iXSxbMSwzLCJcXHRleHR7U0VUNH0iXSxbMiwyLCJDIl0sWzIsMCwiWiJdLFswLDEsImYiXSxbMCwyLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDMsIngiXSxbMyw0LCJ5Il0sWzEsMywicCJdLFszLDUsInEiXSxbNywxMCwicCJdLFsxMCwxMiwicSJdLFs2LDcsImYiXSxbNyw4LCJnIl0sWzksMTAsIngiXSxbMTAsMTEsInknIl0sWzYsOSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTIsMTMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzgsMTEsIlxcbGFtYmRhJyJdLFsxMSwxMywiXFxtdSciXSxbNSwxNiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSwxNywiZyJdXQ==
\begin{tikzcd}
X & Y & Z & X & Y & Z \\
X & A & B & X & A & {B'} \\
& C & C && C & C \\
& {\text{SET4}} &&& {\text{ET4}}
\arrow["f", from=1-1, to=1-2]
\arrow[equals, from=1-1, to=2-1]
\arrow["g", from=1-2, to=1-3]
\arrow["p", from=1-2, to=2-2]
\arrow["f", from=1-4, to=1-5]
\arrow[equals, from=1-4, to=2-4]
\arrow["g", from=1-5, to=1-6]
\arrow["p", from=1-5, to=2-5]
\arrow["{\lambda'}", from=1-6, to=2-6]
\arrow["x", from=2-1, to=2-2]
\arrow["y", from=2-2, to=2-3]
\arrow["q", from=2-2, to=3-2]
\arrow["x", from=2-4, to=2-5]
\arrow["{y'}", from=2-5, to=2-6]
\arrow["q", from=2-5, to=3-5]
\arrow["{\mu'}", from=2-6, to=3-6]
\arrow[equals, from=3-2, to=3-3]
\arrow[equals, from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

By two out of three principle of isomorphism, $y'$ factors through $y$ by an isomorphism $φ : B' → B$. Now we complete the remaining triangle in the left diagram, that is,
$$\begin{equation}
Z \xrightarrow {φ ∘ λ '} B \xrightarrow {μ ' ∘ λ} C.
\end{equation}$$

{% endpf %}
{% endlem %}

### Lemmas on Verdier Diagram and Noether Diagram

#### The Squares

We mainly discuss the following two kinds of diagrams:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzEsMCwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzIsMiwiXFxidWxsZXQiXSxbMCwxLCJcXGJ1bGxldCJdLFsxLDIsIlxcYnVsbGV0Il0sWzAsMiwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFs0LDAsIlxcYnVsbGV0Il0sWzUsMCwiXFxidWxsZXQiXSxbNSwxLCJcXGJ1bGxldCJdLFs1LDIsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbNCwxLCJcXGJ1bGxldCJdLFs0LDIsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMCwxXSxbMSwyXSxbMiwzXSxbNCwxXSxbMSw1XSxbNSwzXSxbNCw2LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDVdLFs3LDhdLFs4LDldLFs5LDEwXSxbMTAsMTFdLFs3LDEyLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMiwxM10sWzEzLDE0XSxbMTQsMTEsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzgsMTNdLFsxMywxMF0sWzE1LDJdLFswLDE1LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDMsIlxcc3F1YXJlIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzgsMTAsIlxcc3F1YXJlIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}
& \bullet & \bullet & \bullet & \bullet & \bullet \\
\bullet & \bullet & \bullet & \bullet & \bullet & \bullet \\
\bullet & \bullet & \bullet && \bullet & \bullet
\arrow[equals, from=1-2, to=1-3]
\arrow[from=1-2, to=2-2]
\arrow[from=1-3, to=2-3]
\arrow[from=1-4, to=1-5]
\arrow[equals, from=1-4, to=2-4]
\arrow[from=1-5, to=1-6]
\arrow[from=1-5, to=2-5]
\arrow["\square"{description}, draw=none, from=1-5, to=2-6]
\arrow[from=1-6, to=2-6]
\arrow[from=2-1, to=2-2]
\arrow[equals, from=2-1, to=3-1]
\arrow[from=2-2, to=2-3]
\arrow[from=2-2, to=3-2]
\arrow["\square"{description}, draw=none, from=2-2, to=3-3]
\arrow[from=2-3, to=3-3]
\arrow[from=2-4, to=2-5]
\arrow[from=2-5, to=2-6]
\arrow[from=2-5, to=3-5]
\arrow[from=2-6, to=3-6]
\arrow[from=3-1, to=3-2]
\arrow[from=3-2, to=3-3]
\arrow[equals, from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

The first impression should be

- The left diagram ≈ Verdier ≈ 4×4 axiom;
- The right diagram ≈ Noether ≈ octagon axiom.

The main feature of this section is are weak PBPO squares.

#### Noether Square and ET4

We refer to the square arising in ET4 (or ET4'), comprising two inflations and two deflations, as a **Noether square**. For exact categories, it is a PBPO square.

{% prop %}
(A restatement of ET4 and ET4'). Let $i$ be an inflation and $p$ a deflation.

- Suppose that $i$ and $p$ share the same domain; then there exists a unique (up to composition with isomorphisms) completion to a diagram comprising four conflations.
- Suppose that $i$ and $p$ share the same codomain; then there exists a unique (up to composition with isomorphisms) completion to a diagram comprising four conflations.

One may verify this assertion by tracing the extension elements.

{% endprop %}

#### Verdier Square and 4×4 Lemma

Analogously, a Verdier square arises in a diagram consisting of four deflations or four inflations. For exact categories, it is a PBPO square. We shall first examine the behaviour of pullbacks along two deflations in extriangulated categories.

{% thm %}
Any two realisations of $δ_{i} ∈ 𝔼 (C, A_i)$ complets into a diagram consisting of four conflations:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzIsMSwiTSJdLFszLDEsIkJfMiJdLFszLDAsIkFfMiJdLFsyLDAsIkFfMiJdLFsxLDEsIkFfMSJdLFsxLDIsIkFfMSJdLFsyLDIsIkJfMSJdLFs0LDIsIlxcLCJdLFszLDIsIkMiXSxbMywzLCJcXCwiXSxbMiwzLCJcXCwiXSxbNCwxLCJcXCwiXSxbNSwyLCJcXCwiXSxbMCwyLCJcXCwiXSxbMCwxLCJcXGxhbWJkYV8yIl0sWzIsMSwieF8yIl0sWzMsMiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywwLCJtXzIiXSxbMCw2LCJcXGxhbWJkYV8xIl0sWzQsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwwLCJtXzEiXSxbMSw4LCJ5XzIiXSxbNiw4LCJ5XzEiXSxbNSw2LCJ4XzEiXSxbMSwxMSwiKHlfMileXFxhc3RcXGRlbHRhIF8xIl0sWzgsNywiXFxkZWx0YV8xIl0sWzgsOSwiXFxkZWx0YV8yIl0sWzYsMTAsIih5XzEpXlxcYXN0IFxcZGVsdGFfMiJdXQ==
\begin{tikzcd}
&& {A_2} & {A_2} \\
& {A_1} & M & {B_2} & {\,} \\
{\,} & {A_1} & {B_1} & C & {\,} & {\,} \\
&& {\,} & {\,}
\arrow[equals, from=1-3, to=1-4]
\arrow["{m_2}", from=1-3, to=2-3]
\arrow["{x_2}", from=1-4, to=2-4]
\arrow["{m_1}", from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow["{\lambda_2}", from=2-3, to=2-4]
\arrow["{\lambda_1}", from=2-3, to=3-3]
\arrow["{(y_2)^\ast\delta _1}", from=2-4, to=2-5]
\arrow["{y_2}", from=2-4, to=3-4]
\arrow["{x_1}", from=3-2, to=3-3]
\arrow["{y_1}", from=3-3, to=3-4]
\arrow["{(y_1)^\ast \delta_2}", from=3-3, to=4-3]
\arrow["{\delta_1}", from=3-4, to=3-5]
\arrow["{\delta_2}", from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

The middle row (column) is the realisations of $(y_i)_∗ δ_j$.

{% pf %}
We introduce an intermediate conflation $\binom 11 ^∗ (δ _1 ⊕ δ _2)$.
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwxLCJBXzFcXG9wbHVzIEFfMiJdLFsyLDEsIkJfMVxcb3BsdXMgQl8yIl0sWzQsMSwiQ1xcb3BsdXMgQyJdLFs0LDAsIkMiXSxbMCwwLCJBXzFcXG9wbHVzIEFfMiJdLFsyLDAsIk0iXSxbNSwxLCJcXCwiXSxbNSwwLCJcXCwiXSxbMCwxLCJ4XzEgXFxvcGx1cyB4XzIiXSxbMSwyLCJ5XzEgXFxvcGx1cyB5XzIiXSxbMywyLCJcXGJpbm9tIDExIl0sWzQsMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNSwzLCJrIl0sWzQsNSwibSJdLFs1LDEsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDcsIlxcYmlub217MX17MX1eXFxhc3QgKFxcZGVsdGFfezF9IFxcb3BsdXMgXFxkZWx0YSBfMikiXSxbMiw2LCJcXGRlbHRhXzEgXFxvcGx1cyBcXGRlbHRhXzIiXV0=
\begin{tikzcd}
{A_1\oplus A_2} && M && C & {\,} \\
{A_1\oplus A_2} && {B_1\oplus B_2} && {C\oplus C} & {\,}
\arrow["m", from=1-1, to=1-3]
\arrow[equals, from=1-1, to=2-1]
\arrow["k", from=1-3, to=1-5]
\arrow[dashed, from=1-3, to=2-3]
\arrow["{\binom{1}{1}^\ast (\delta_{1} \oplus \delta _2)}", from=1-5, to=1-6]
\arrow["{\binom 11}", from=1-5, to=2-5]
\arrow["{x_1 \oplus x_2}", from=2-1, to=2-3]
\arrow["{y_1 \oplus y_2}", from=2-3, to=2-5]
\arrow["{\delta_1 \oplus \delta_2}", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

Here $(p_i)_∗ \binom 11^∗(δ_1 ⊕ δ_2) = δ_i$. By ET4, we have the following diagrams:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzEsMywiQyJdLFsxLDEsIkFfMVxcb3BsdXMgQV8yIl0sWzEsMiwiTSJdLFsyLDEsIkFfMiJdLFswLDEsIkFfMSJdLFswLDIsIkFfMSJdLFsyLDIsIkJfMiJdLFsyLDMsIkMiXSxbMywwLCJBXzIiXSxbNCwwLCJBXzIiXSxbMywxLCJBXzFcXG9wbHVzIEFfMiJdLFszLDIsIkFfMSJdLFs0LDIsIkJfMSJdLFs1LDIsIkMiXSxbNSwxLCJDIl0sWzQsMSwiTSJdLFsyLDAsImsiXSxbMSwyLCJtIl0sWzEsMywicF8yIl0sWzMsNiwieF8yIl0sWzYsNywieV8yIl0sWzUsMiwibV8xIl0sWzQsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNywwLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDYsIlxcbGFtYmRhXzIiXSxbOCw5LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs4LDEwLCJlXzIiLDJdLFs0LDEsImVfMSJdLFsxMCwxMSwicF8xIiwyXSxbMTAsMTUsIm0iLDJdLFsxNSwxNCwiayIsMl0sWzksMTUsIm1fMiIsMl0sWzExLDEyLCJ4XzEiLDJdLFsxMiwxMywieV8xIiwyXSxbMTUsMTIsIlxcbGFtYmRhXzEiLDJdLFsxNCwxMywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
&&& {A_2} & {A_2} \\
{A_1} & {A_1\oplus A_2} & {A_2} & {A_1\oplus A_2} & M & C \\
{A_1} & M & {B_2} & {A_1} & {B_1} & C \\
& C & C
\arrow[equals, from=1-4, to=1-5]
\arrow["{e_2}"', from=1-4, to=2-4]
\arrow["{m_2}"', from=1-5, to=2-5]
\arrow["{e_1}", from=2-1, to=2-2]
\arrow[equals, from=2-1, to=3-1]
\arrow["{p_2}", from=2-2, to=2-3]
\arrow["m", from=2-2, to=3-2]
\arrow["{x_2}", from=2-3, to=3-3]
\arrow["m"', from=2-4, to=2-5]
\arrow["{p_1}"', from=2-4, to=3-4]
\arrow["k"', from=2-5, to=2-6]
\arrow["{\lambda_1}"', from=2-5, to=3-5]
\arrow[equals, from=2-6, to=3-6]
\arrow["{m_1}", from=3-1, to=3-2]
\arrow["{\lambda_2}", from=3-2, to=3-3]
\arrow["k", from=3-2, to=4-2]
\arrow["{y_2}", from=3-3, to=4-3]
\arrow["{x_1}"', from=3-4, to=3-5]
\arrow["{y_1}"', from=3-5, to=3-6]
\arrow[equals, from=4-3, to=4-2]
\end{tikzcd}
{% endtikz %}

We make subtle adjustments to obtain the following diagrams:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiQV8yIl0sWzEsMiwiTSJdLFsyLDEsIkFfMiJdLFsyLDIsIkJfMiJdLFsyLDMsIkMiXSxbNCwwLCJBXzIiXSxbMywxLCJBXzEiXSxbMywyLCJBXzEiXSxbNCwyLCJCXzEiXSxbNSwyLCJDIl0sWzQsMSwiTSJdLFswLDIsIkFfMSJdLFswLDEsIm1fMiJdLFswLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMywieF8yIl0sWzMsNCwieV8yIl0sWzEsMywiXFxsYW1iZGFfMiJdLFs2LDEwLCJtXzEiLDJdLFs1LDEwLCJtXzIiLDJdLFs3LDgsInhfMSIsMl0sWzgsOSwieV8xIiwyXSxbMTAsOCwiXFxsYW1iZGFfMSIsMl0sWzEwLDksImsiLDJdLFsxLDQsImsiXSxbMTEsMSwibV8xIl0sWzYsNywiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
&&&& {A_2} \\
& {A_2} & {A_2} & {A_1} & M \\
{A_1} & M & {B_2} & {A_1} & {B_1} & C \\
&& C
\arrow["{m_2}"', from=1-5, to=2-5]
\arrow[equals, from=2-2, to=2-3]
\arrow["{m_2}", from=2-2, to=3-2]
\arrow["{x_2}", from=2-3, to=3-3]
\arrow["{m_1}"', from=2-4, to=2-5]
\arrow[equals, from=2-4, to=3-4]
\arrow["{\lambda_1}"', from=2-5, to=3-5]
\arrow["k"', from=2-5, to=3-6]
\arrow["{m_1}", from=3-1, to=3-2]
\arrow["{\lambda_2}", from=3-2, to=3-3]
\arrow["k", from=3-2, to=4-3]
\arrow["{y_2}", from=3-3, to=4-3]
\arrow["{x_1}"', from=3-4, to=3-5]
\arrow["{y_1}"', from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

Gluing them together, we complete the proof.

{% endpf %}

{% endthm %}

{% prop %}
In the above diagram, $(m_1)_∗ δ _1 + (m_2)_∗ δ _2 = 0$.

{% pf %}
Recall that $(p_i)_∗ \binom 11^∗(δ_1 ⊕ δ_2) = δ_i$. Now
$$\begin{aligned}
(m_1)_∗ δ _1 + (m_2)_∗ δ _2 &= (m_1p_1 + m_2p_2)_∗ \binom 11^∗(δ_1 ⊕ δ_2)\\
&= \binom 11^∗ m_∗ (δ_1 ⊕ δ_2) \quad = 0.
\end{aligned}$$

{% endpf %}
{% endprop %}

{% ex %}
We omit the dual statement for the sake of brevity.
{% endex %}

{% prop %}
It is evident that the completion of the Verdier diagram, arising from either two inflations or two deflations, is unique up to composition with isomorphisms. One may verify this assertion by tracing the extension elements.
{% endprop %}

#### The Strict 4×4 Lemma

We know that the completion of the Verdier diagram (from either two inflations or two deflations) is unique up to composition with isomorphisms. The strict form says that any ±-shaped diagram completes to Verdier diagram.

{% prop %}
(Strict 4×4 Lemma). Consider the ±-shaped diagram of triangles realised by $η$, $δ_1$ and $ε$:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzIsMSwiTSJdLFszLDEsIkJfMiJdLFszLDAsIkFfMiJdLFsyLDAsIkFfMiJdLFsxLDEsIkFfMSJdLFsxLDIsIkFfMSJdLFsyLDIsIkJfMSJdLFs0LDIsIlxcLCJdLFszLDIsIkMiXSxbMywzLCJcXCwiXSxbMiwzLCJcXCwiXSxbNCwxLCJcXCwiXSxbNSwyLCJcXCwiXSxbMCwyLCJcXCwiXSxbMCwxLCJcXGxhbWJkYV8yIl0sWzIsMSwieF8yIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsMiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywwLCJtXzIiXSxbMCw2LCJcXGxhbWJkYV8xIl0sWzQsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwwLCJtXzEiXSxbMSw4LCJ5XzIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNiw4LCJ5XzEiXSxbNSw2LCJ4XzEiXSxbMSwxMSwiXFx2YXJlcHNpbG9uICJdLFs4LDcsIlxcZGVsdGFfMSJdLFs4LDksIlxcZGVsdGFfMiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDEwLCJcXGV0YSJdXQ==
\begin{tikzcd}
&& {A_2} & {A_2} \\
& {A_1} & M & {B_2} & {\,} \\
{\,} & {A_1} & {B_1} & C & {\,} & {\,} \\
&& {\,} & {\,}
\arrow[equals, from=1-3, to=1-4]
\arrow["{m_2}", from=1-3, to=2-3]
\arrow["{x_2}", dashed, from=1-4, to=2-4]
\arrow["{m_1}", from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow["{\lambda_2}", from=2-3, to=2-4]
\arrow["{\lambda_1}", from=2-3, to=3-3]
\arrow["{\varepsilon }", from=2-4, to=2-5]
\arrow["{y_2}", dashed, from=2-4, to=3-4]
\arrow["{x_1}", from=3-2, to=3-3]
\arrow["{y_1}", from=3-3, to=3-4]
\arrow["\eta", from=3-3, to=4-3]
\arrow["{\delta_1}", from=3-4, to=3-5]
\arrow["{\delta_2}", dashed, from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

Then there exsists $δ _2$ whose realisation makes the entire diagram commutative, while $ε = (y_2)^∗ δ _1$, $η = (y_1)^∗ δ _2$, and $(m_1)_∗ δ _1 + (m_2)_∗ δ _2 = 0$.

{% pf %}
We apply ET4' to the composition of deflations $y_1$ and $λ _1$, and obtain
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzAsMywiXFwsIl0sWzEsMywiXFwsIl0sWzIsMSwiTSJdLFsyLDIsIkJfMSJdLFs0LDEsIlxcLCJdLFsyLDAsIkFfMiJdLFszLDIsIkMiXSxbMSwyLCJBXzEiXSxbNCwyLCJcXCwiXSxbMiwzLCJcXCwiXSxbMywxLCJDIl0sWzEsMSwiQV8xXFxvcGx1cyBBXzIiXSxbMSwwLCJBXzIiXSxbMCwyLCJcXCwiXSxbMiwzLCJcXGxhbWJkYV8xIl0sWzUsMiwibV8yIl0sWzcsMywieF8xIl0sWzMsNiwieV8xIl0sWzYsOCwiXFxkZWx0YV8xIl0sWzMsOSwiXFxldGEiXSxbMTAsNiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwxMCwieV8xIFxcbGFtYmRhXzEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTIsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNywxLCIwIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEyLDExLCJlXzIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTEsNywicF8xIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzExLDIsIihzLG1fMikiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTAsNCwiXFxrYXBwYSJdXQ==
\begin{tikzcd}
& {A_2} & {A_2} \\
& {A_1\oplus A_2} & M & C & {\,} \\
{\,} & {A_1} & {B_1} & C & {\,} \\
{\,} & {\,} & {\,}
\arrow[equals, from=1-2, to=1-3]
\arrow["{e_2}", dashed, from=1-2, to=2-2]
\arrow["{m_2}", from=1-3, to=2-3]
\arrow["{(s,m_2)}", dashed, from=2-2, to=2-3]
\arrow["{p_1}", dashed, from=2-2, to=3-2]
\arrow["{y_1 \lambda_1}", dashed, from=2-3, to=2-4]
\arrow["{\lambda_1}", from=2-3, to=3-3]
\arrow["\kappa", from=2-4, to=2-5]
\arrow[equals, from=2-4, to=3-4]
\arrow["{x_1}", from=3-2, to=3-3]
\arrow["0", dashed, from=3-2, to=4-2]
\arrow["{y_1}", from=3-3, to=3-4]
\arrow["\eta", from=3-3, to=4-3]
\arrow["{\delta_1}", from=3-4, to=3-5]
\end{tikzcd}
{% endtikz %}

We realise $(x_1)^∗ η$ with standard split triangle, since $(x_1)^∗ η = (m_1)^∗ (λ _1)^∗ η = 0$. Even though $s ≠ m_1$ in general, we see that $(s-m_1) ∈ \ker (λ _1)_∗ = \operatorname{im} (m_2)_∗$. We write $l$ such that
$$\begin{equation}
A_1 \xrightarrow {l} A_2 \xrightarrow {m_2} M \quad = \quad A_1 \xrightarrow {s-m_1} M.
\end{equation}$$

Now we wish $δ_2$ could be obtained by

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMiwwLCJNIl0sWzIsMSwiQl8yIl0sWzUsMCwiXFwsIl0sWzQsMSwiQyJdLFswLDEsIkFfMiJdLFs1LDEsIlxcLCJdLFs0LDAsIkMiXSxbMCwwLCJBXzFcXG9wbHVzIEFfMiJdLFswLDEsIlxcbGFtYmRhXzIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwxLCJ4XzIiXSxbMSwzLCJ5XzIiXSxbMyw1LCJcXGRlbHRhXzIiXSxbNiwzLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDYsInlfMSBcXGxhbWJkYV8xIl0sWzcsMCwiKHMsbV8yKSJdLFs2LDIsIlxca2FwcGEiXSxbNyw0LCIoZl8xLGZfMikiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}
{A_1\oplus A_2} && M && C & {\,} \\
{A_2} && {B_2} && C & {\,}
\arrow["{(s,m_2)}", from=1-1, to=1-3]
\arrow["{(f_1,f_2)}", dashed, from=1-1, to=2-1]
\arrow["{y_1 \lambda_1}", from=1-3, to=1-5]
\arrow["{\lambda_2}", dashed, from=1-3, to=2-3]
\arrow["\kappa", from=1-5, to=1-6]
\arrow[equals, from=1-5, to=2-5]
\arrow["{x_2}", from=2-1, to=2-3]
\arrow["{y_2}", from=2-3, to=2-5]
\arrow["{\delta_2}", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

Once we take $x_2 = λ _2 m_2$, the best choice of $f_2$ is $1$. Due to the anticommutative square,

$$\begin{equation}
0 = (m_1)_∗ δ _1 + (m_2)_∗ δ _2 = (m_1p_1 + m_2f)_∗ κ.
\end{equation}$$

Hence, $(m_1 + m_2f_1, m_2f_2)$ factors through $(s,m_2)$. We take $f_1 = l$ to complete our construction. We apply SET4' to the diagram $(f_1,f_2)_∗ κ = δ _2$, and obtain:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzEsMSwiTSJdLFsxLDIsIkJfMiJdLFszLDEsIlxcLCJdLFsyLDIsIkMiXSxbMCwyLCJBXzIiXSxbMywyLCJcXCwiXSxbMiwxLCJDIl0sWzAsMSwiQV8xXFxvcGx1cyBBXzIiXSxbMSwwLCJBXzEiXSxbMCwwLCJBXzEiXSxbMSwzLCJcXCwiXSxbMCwzLCJcXCwiXSxbNCwyLCJcXCwiXSxbMCwxLCJcXGxhbWJkYV8yIl0sWzQsMSwieF8yIl0sWzEsMywieV8yIl0sWzMsNSwiXFxkZWx0YV8yIl0sWzYsMywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCw2LCJ5XzEgXFxsYW1iZGFfMSJdLFs3LDAsIihzLG1fMikiXSxbNiwyLCJcXGthcHBhIl0sWzcsNCwiKGwsMSkiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOCwwLCJtXzEiXSxbOSw4LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDcsIlxcYmlub20gMXstbH0iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSwxMCwiXFx2YXJlcHNpbG9uICJdLFs0LDExLCIwIl1d
\begin{tikzcd}
{A_1} & {A_1} \\
{A_1\oplus A_2} & M & C & {\,} \\
{A_2} & {B_2} & C & {\,} & {\,} \\
{\,} & {\,}
\arrow[equals, from=1-1, to=1-2]
\arrow["{\binom 1{-l}}", dashed, from=1-1, to=2-1]
\arrow["{m_1}", from=1-2, to=2-2]
\arrow["{(s,m_2)}", from=2-1, to=2-2]
\arrow["{(l,1)}", dashed, from=2-1, to=3-1]
\arrow["{y_1 \lambda_1}", from=2-2, to=2-3]
\arrow["{\lambda_2}", from=2-2, to=3-2]
\arrow["\kappa", from=2-3, to=2-4]
\arrow[equals, from=2-3, to=3-3]
\arrow["{x_2}", from=3-1, to=3-2]
\arrow["0", from=3-1, to=4-1]
\arrow["{y_2}", from=3-2, to=3-3]
\arrow["{\varepsilon }", from=3-2, to=4-2]
\arrow["{\delta_2}", from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}

It remains to show the commutativity of the diagram.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTUsWzIsMSwiTSJdLFszLDEsIkJfMiJdLFszLDAsIkFfMiJdLFsyLDAsIkFfMiJdLFsxLDEsIkFfMSJdLFsxLDIsIkFfMSJdLFsyLDIsIkJfMSJdLFs0LDIsIlxcLCJdLFszLDIsIkMiXSxbMywzLCJcXCwiXSxbMiwzLCJcXCwiXSxbNCwxLCJcXCwiXSxbNSwyLCJcXCwiXSxbMCwyLCJcXCwiXSxbNCwzLCJcXCwiXSxbMCwxLCJcXGxhbWJkYV8yIl0sWzIsMSwieF8yIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsMiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywwLCJtXzIiXSxbMCw2LCJcXGxhbWJkYV8xIl0sWzQsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwwLCJtXzEiXSxbMSw4LCJ5XzIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNiw4LCJ5XzEiXSxbNSw2LCJ4XzEiXSxbMSwxMSwiXFx2YXJlcHNpbG9uICJdLFs4LDcsIlxcZGVsdGFfMSJdLFs4LDksIlxcZGVsdGFfMiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDEwLCJcXGV0YSJdLFszLDEsIlxcYm94ZWQgMSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDYsIlxcYm94ZWQgMiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDgsIlxcYm94ZWQgMyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDcsIlxcYm94ZWQgNCIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDksIlxcYm94ZWQgNSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs4LDE0LCJcXGJveGVkIDYiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
&& {A_2} & {A_2} \\
& {A_1} & M & {B_2} & {\,} \\
{\,} & {A_1} & {B_1} & C & {\,} & {\,} \\
&& {\,} & {\,} & {\,}
\arrow[equals, from=1-3, to=1-4]
\arrow["{m_2}", from=1-3, to=2-3]
\arrow["{\boxed 1}"{description}, draw=none, from=1-3, to=2-4]
\arrow["{x_2}", dashed, from=1-4, to=2-4]
\arrow["{m_1}", from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow["{\boxed 2}"{description}, draw=none, from=2-2, to=3-3]
\arrow["{\lambda_2}", from=2-3, to=2-4]
\arrow["{\lambda_1}", from=2-3, to=3-3]
\arrow["{\boxed 3}"{description}, draw=none, from=2-3, to=3-4]
\arrow["{\varepsilon }", from=2-4, to=2-5]
\arrow["{y_2}", dashed, from=2-4, to=3-4]
\arrow["{\boxed 4}"{description}, draw=none, from=2-4, to=3-5]
\arrow["{x_1}", from=3-2, to=3-3]
\arrow["{y_1}", from=3-3, to=3-4]
\arrow["\eta", from=3-3, to=4-3]
\arrow["{\boxed 5}"{description}, draw=none, from=3-3, to=4-4]
\arrow["{\delta_1}", from=3-4, to=3-5]
\arrow["{\delta_2}", dashed, from=3-4, to=4-4]
\arrow["{\boxed 6}"{description}, draw=none, from=3-4, to=4-5]
\end{tikzcd}
{% endtikz %}

The square 1., 2., 3. and 6. are commutative due to our construction. To show that 4. is commutative, we see that ($†$ for communications in ET4).
$$\begin{equation}
(y_2)^∗ δ _1 = (y_2)^∗ (p_1)_∗ κ = (p_1)_∗ (y_2)^∗ κ \overset †= (p_1)_∗ \binom {1}{-l}_∗ ε = ε.
\end{equation}$$

To show that 5. is commutative, we see that
$$\begin{equation}
(y_1)^∗ δ_2 = (y_1)^∗ (l,1)_∗ κ = (l,1)_∗ (y_1)^∗ κ \overset †= (l,1)_∗ (e_2)_∗ η  = η.
\end{equation}$$

{% endpf %}

{% endprop %}

#### The Weak PBPO Squares

{% def %}
(Weak PO Square). A **weak PO square** (or **weak coCatersian square**) is an 2×2 diagram ($wf = hg$), such that for any $α f = β g$, there exists some $φ$ making the triangles commutative.

{% tikz %}
% https://q.uiver.app/#q=WzAsNyxbMiwwLCJBIl0sWzMsMCwiQiJdLFsyLDEsIkMiXSxbMywxLCJEIl0sWzQsMiwiWiJdLFswLDEsIlxcLCJdLFs2LDEsIlxcLCJdLFswLDEsImYiXSxbMSwzLCJ3Il0sWzAsMiwiZyJdLFsyLDMsImgiXSxbMSw0LCJcXGFscGhhICIsMCx7ImN1cnZlIjotM31dLFsyLDQsIlxcYmV0YSIsMCx7ImN1cnZlIjozfV0sWzMsNCwiXFxleGlzdHNcXHZhcnBoaSAiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}
&& A & B \\
{\,} && C & D &&& {\,} \\
&&&& Z
\arrow["f", from=1-3, to=1-4]
\arrow["g", from=1-3, to=2-3]
\arrow["w", from=1-4, to=2-4]
\arrow["{\alpha }", curve={height=-18pt}, from=1-4, to=3-5]
\arrow["h", from=2-3, to=2-4]
\arrow["\beta", curve={height=18pt}, from=2-3, to=3-5]
\arrow["{\exists\varphi }", dashed, from=2-4, to=3-5]
\end{tikzcd}
{% endtikz %}

Equivalently, the following sequence of functors is exact at $(B ⊕ C, -)$:
$$\begin{equation}
(D, -) \xrightarrow{(-w,h)^∗} (B ⊕ C, -) \xrightarrow {\binom f g^∗ } (A, -).
\end{equation}$$

{% enddef %}

{% def %}
We define **weak PB squares** dually, which is also called a weak Catersian square. If a square is both weak PB and weak PO, then we call it a **weak PBPO square**.
{% enddef %}

{% thm %}
Noether squares are weakly PBPO.

{% pf %}
Since the opposite category of an extriangulated category is still extriangulated, we only prove the weak PO part.
\\
\\
We introduce arbitrary $T$, $n$ and $m$ in ET4 diagram such that $ng = mα$. It remains to show the existence of $M ⇢ T$ making the entire diagram commutative.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzAsMCwiWCJdLFsxLDAsIlkiXSxbMiwwLCJaIl0sWzEsMSwiVyJdLFsxLDIsIksiXSxbMiwyLCJLIl0sWzAsMSwiWCJdLFsyLDEsIk0iXSxbMywwLCJcXCwiXSxbMywxLCJcXCwiXSxbMSwzLCJcXCwiXSxbMiwzLCJcXCwiXSxbNCwyLCJUIl0sWzAsMSwiZiJdLFsxLDIsImciXSxbMSwzLCJcXGFscGhhIl0sWzMsNCwiXFxiZXRhIl0sWzQsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiwwLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDMsInAiXSxbMiw3LCJyIl0sWzcsNSwicyJdLFszLDcsInEiXSxbMiw4LCJcXGRlbHRhX3tyMX0iXSxbNyw5LCJcXGRlbHRhX3tyMn0iXSxbNSwxMSwiXFxkZWx0YV97YzJ9Il0sWzQsMTAsIlxcZGVsdGFfe2MxfSJdLFsyLDEyLCJuIiwwLHsibGFiZWxfcG9zaXRpb24iOjYwLCJjdXJ2ZSI6LTIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDEyLCJtIiwwLHsibGFiZWxfcG9zaXRpb24iOjYwLCJjdXJ2ZSI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
X & Y & Z & {\,} \\
X & W & M & {\,} \\
& K & K && T \\
& {\,} & {\,}
\arrow["f", from=1-1, to=1-2]
\arrow["g", from=1-2, to=1-3]
\arrow["\alpha", from=1-2, to=2-2]
\arrow["{\delta_{r1}}", from=1-3, to=1-4]
\arrow["r", from=1-3, to=2-3]
\arrow["n"{pos=0.6}, curve={height=-12pt}, dashed, from=1-3, to=3-5]
\arrow[equals, from=2-1, to=1-1]
\arrow["p", from=2-1, to=2-2]
\arrow["q", from=2-2, to=2-3]
\arrow["\beta", from=2-2, to=3-2]
\arrow["m"{pos=0.6}, curve={height=12pt}, dashed, from=2-2, to=3-5]
\arrow["{\delta_{r2}}", from=2-3, to=2-4]
\arrow["s", from=2-3, to=3-3]
\arrow[equals, from=3-2, to=3-3]
\arrow["{\delta_{c1}}", from=3-2, to=4-2]
\arrow["{\delta_{c2}}", from=3-3, to=4-3]
\end{tikzcd}
{% endtikz %}

We beigns with

$$\begin{equation}
0 = (mα )_∗ δ _{c1} = (ng)_∗ δ _{c1} = δ _{c2}^! (n).
\end{equation}$$

By long exact sequence, $n$ factors through $r$. Hence, we take $l : M → T$ such that $lr = m$. Even though it is not necessary that $m = l q$, we see that

$$\begin{equation}
(m - lq) ∈ \ker α ^∗  = \operatorname{im} β ^∗.
\end{equation}$$

This introduce some $λ : K → T$ such that $(m - lq) = λ β$. We claim that $l + λ s$ is the desired morphism:

* $(l + λ s)r = lr + λ(sr) = lr = n$;
* $(l + λ s)q = lq + λ sq = (m - λ β ) + λ sq = m + λ (β - sq) = m$.

The following diagram shows where $λ$ and $l$ appears:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzAsMCwiWCJdLFsxLDAsIlkiXSxbMiwwLCJaIl0sWzEsMSwiVyJdLFsxLDIsIksiXSxbMiwyLCJLIl0sWzAsMSwiWCJdLFsyLDEsIk0iXSxbMywwLCJcXCwiXSxbMywxLCJcXCwiXSxbMSwzLCJcXCwiXSxbMiwzLCJcXCwiXSxbNCwyLCJUIl0sWzAsMSwiZiJdLFsxLDIsImciXSxbMSwzLCJcXGFscGhhIl0sWzMsNCwiXFxiZXRhIl0sWzQsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiwwLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDMsInAiXSxbMiw3LCJyIl0sWzcsNSwicyJdLFszLDcsInEiXSxbMiw4LCJcXGRlbHRhX3tyMX0iXSxbNyw5LCJcXGRlbHRhX3tyMn0iXSxbNSwxMSwiXFxkZWx0YV97YzJ9Il0sWzQsMTAsIlxcZGVsdGFfe2MxfSJdLFsyLDEyLCJuIiwwLHsibGFiZWxfcG9zaXRpb24iOjYwLCJjdXJ2ZSI6LTIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDEyLCJtIiwwLHsibGFiZWxfcG9zaXRpb24iOjYwLCJjdXJ2ZSI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzcsMTIsImwiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSwxMiwiXFxsYW1iZGEiLDAseyJjdXJ2ZSI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
X & Y & Z & {\,} \\
X & W & M & {\,} \\
& K & K && T \\
& {\,} & {\,}
\arrow["f", from=1-1, to=1-2]
\arrow["g", from=1-2, to=1-3]
\arrow["\alpha", from=1-2, to=2-2]
\arrow["{\delta_{r1}}", from=1-3, to=1-4]
\arrow["r", from=1-3, to=2-3]
\arrow["n"{pos=0.6}, curve={height=-12pt}, dashed, from=1-3, to=3-5]
\arrow[equals, from=2-1, to=1-1]
\arrow["p", from=2-1, to=2-2]
\arrow["q", from=2-2, to=2-3]
\arrow["\beta", from=2-2, to=3-2]
\arrow["m"{pos=0.6}, curve={height=12pt}, dashed, from=2-2, to=3-5]
\arrow["{\delta_{r2}}", from=2-3, to=2-4]
\arrow["s", from=2-3, to=3-3]
\arrow["l", dashed, from=2-3, to=3-5]
\arrow[equals, from=3-2, to=3-3]
\arrow["{\delta_{c1}}", from=3-2, to=4-2]
\arrow["\lambda", curve={height=18pt}, dashed, from=3-3, to=3-5]
\arrow["{\delta_{c2}}", from=3-3, to=4-3]
\end{tikzcd}
{% endtikz %}

{% endpf %}

{% endthm %}

{% thm %}
Verdier squares obtained from two deflations is weak PB.

{% pf %}
We take arbitrary $W$, $α$ and $β$ such that the $y_2 β = y_2 α$, it remains to show the existence of $W ⇢ M$ making the entire diagram commutative.
{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzIsMiwiTSJdLFszLDIsIkJfMiJdLFszLDEsIkFfMiJdLFsyLDEsIkFfMiJdLFsxLDIsIkFfMSJdLFsxLDMsIkFfMSJdLFsyLDMsIkJfMSJdLFs0LDMsIlxcLCJdLFszLDMsIkMiXSxbMyw0LCJcXCwiXSxbMiw0LCJcXCwiXSxbNCwyLCJcXCwiXSxbMCwwLCJXIl0sWzAsMSwiXFxsYW1iZGFfMiJdLFsyLDEsInhfMiJdLFszLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMCwibV8yIl0sWzAsNiwiXFxsYW1iZGFfMSJdLFs0LDUsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsMCwibV8xIl0sWzEsOCwieV8yIl0sWzYsOCwieV8xIl0sWzUsNiwieF8xIl0sWzgsNywiXFxkZWx0YV8xIl0sWzgsOSwiXFxkZWx0YV8yIl0sWzYsMTAsIih5XzEpXlxcYXN0IFxcZGVsdGFfMiJdLFsxLDExLCIoeV8yKV5cXGFzdFxcZGVsdGEgXzEiXSxbMTIsNiwiXFxiZXRhIiwwLHsibGFiZWxfcG9zaXRpb24iOjIwLCJjdXJ2ZSI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEyLDEsIlxcYWxwaGEgIiwwLHsibGFiZWxfcG9zaXRpb24iOjIwLCJjdXJ2ZSI6LTMsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}
W \\
&& {A_2} & {A_2} \\
& {A_1} & M & {B_2} & {\,} \\
& {A_1} & {B_1} & C & {\,} \\
&& {\,} & {\,}
\arrow["{\alpha }"{pos=0.2}, curve={height=-18pt}, dashed, from=1-1, to=3-4]
\arrow["\beta"{pos=0.2}, curve={height=18pt}, dashed, from=1-1, to=4-3]
\arrow[equals, from=2-3, to=2-4]
\arrow["{m_2}", from=2-3, to=3-3]
\arrow["{x_2}", from=2-4, to=3-4]
\arrow["{m_1}", from=3-2, to=3-3]
\arrow[equals, from=3-2, to=4-2]
\arrow["{\lambda_2}", from=3-3, to=3-4]
\arrow["{\lambda_1}", from=3-3, to=4-3]
\arrow["{(y_2)^\ast\delta _1}", from=3-4, to=3-5]
\arrow["{y_2}", from=3-4, to=4-4]
\arrow["{x_1}", from=4-2, to=4-3]
\arrow["{y_1}", from=4-3, to=4-4]
\arrow["{(y_1)^\ast \delta_2}", from=4-3, to=5-3]
\arrow["{\delta_1}", from=4-4, to=4-5]
\arrow["{\delta_2}", from=4-4, to=5-4]
\end{tikzcd}
{% endtikz %}

We begin with

$$\begin{equation}
0 = (y_2α )^∗ δ _2 = β ^∗ (y_1)^∗  δ _2 = ((y_1)^∗  δ _2)_! (β).
\end{equation}$$

Since $β ∈ \ker ((y_1)^∗  δ _2)_! = \operatorname{im} (λ _1)_∗$, we take $l : W → M$ such that $λ _1 l = β$. Even though $α ≠ λ _2 l$ in general, we consider
$$\begin{equation}
(α - λ _2 l) = \ker (y_2)_∗ = \operatorname{im} (x_2)_∗ .
\end{equation}$$
This introduce $s: W → A_2$ such that $x_2 s = (α - λ _2 l)$. Finally, we verify that $l + m_2s$ is our desired morphism:

* $λ _2 (l + m_2s) = λ _2 l + λ _2 m_2 s = α - x_2 s + λ _2 m_2 s = α - (λ _2 m_2 -x_2)s = α$.
* $λ _1 (l + m_2s) = λ _1l + (λ _1 m_2) s = λ _1l = β$.

The following diagram shows where $λ _1$, $λ _2$ and $l$ appears:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzIsMiwiTSJdLFszLDIsIkJfMiJdLFszLDEsIkFfMiJdLFsyLDEsIkFfMiJdLFsxLDIsIkFfMSJdLFsxLDMsIkFfMSJdLFsyLDMsIkJfMSJdLFs0LDMsIlxcLCJdLFszLDMsIkMiXSxbMyw0LCJcXCwiXSxbMiw0LCJcXCwiXSxbNCwyLCJcXCwiXSxbMCwwLCJXIl0sWzAsMSwiXFxsYW1iZGFfMiJdLFsyLDEsInhfMiJdLFszLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMCwibV8yIl0sWzAsNiwiXFxsYW1iZGFfMSJdLFs0LDUsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsMCwibV8xIl0sWzEsOCwieV8yIl0sWzYsOCwieV8xIl0sWzUsNiwieF8xIl0sWzgsNywiXFxkZWx0YV8xIl0sWzgsOSwiXFxkZWx0YV8yIl0sWzYsMTAsIih5XzEpXlxcYXN0IFxcZGVsdGFfMiJdLFsxLDExLCIoeV8yKV5cXGFzdFxcZGVsdGEgXzEiXSxbMTIsNiwiXFxiZXRhIiwwLHsibGFiZWxfcG9zaXRpb24iOjIwLCJjdXJ2ZSI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEyLDEsIlxcYWxwaGEgIiwwLHsibGFiZWxfcG9zaXRpb24iOjIwLCJjdXJ2ZSI6LTMsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMiwwLCJsIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEyLDMsInMiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}
W \\
&& {A_2} & {A_2} \\
& {A_1} & M & {B_2} & {\,} \\
& {A_1} & {B_1} & C & {\,} \\
&& {\,} & {\,}
\arrow["s", dashed, from=1-1, to=2-3]
\arrow["l", dashed, from=1-1, to=3-3]
\arrow["{\alpha }"{pos=0.2}, curve={height=-18pt}, dashed, from=1-1, to=3-4]
\arrow["\beta"{pos=0.2}, curve={height=18pt}, dashed, from=1-1, to=4-3]
\arrow[equals, from=2-3, to=2-4]
\arrow["{m_2}", from=2-3, to=3-3]
\arrow["{x_2}", from=2-4, to=3-4]
\arrow["{m_1}", from=3-2, to=3-3]
\arrow[equals, from=3-2, to=4-2]
\arrow["{\lambda_2}", from=3-3, to=3-4]
\arrow["{\lambda_1}", from=3-3, to=4-3]
\arrow["{(y_2)^\ast\delta _1}", from=3-4, to=3-5]
\arrow["{y_2}", from=3-4, to=4-4]
\arrow["{x_1}", from=4-2, to=4-3]
\arrow["{y_1}", from=4-3, to=4-4]
\arrow["{(y_1)^\ast \delta_2}", from=4-3, to=5-3]
\arrow["{\delta_1}", from=4-4, to=4-5]
\arrow["{\delta_2}", from=4-4, to=5-4]
\end{tikzcd}
{% endtikz %}

{% endpf %}

{% endthm %}

#### The Homotopic Square

Recall that in ET2, we made no more assumption on the middle dashed arrow between conflations. However, there is a way to take a good morphism, enlightened by Neeman's octagon axiom.

{% thm %}
(The homotopic square theorem). For any realisations of the communication of extensions $(λ, 1): δ → λ_∗ δ$, there exists a suitable morphism $w$ rendering both diagrams commutative, and $y^∗ δ$ admits a realisation as depicted in the diagram below:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiWCJdLFs0LDAsIloiXSxbMiwwLCJZIl0sWzUsMCwiXFwsIl0sWzAsMSwiQSJdLFsyLDEsIkIiXSxbNCwxLCJaIl0sWzUsMSwiXFwsIl0sWzAsMiwiWCJdLFsyLDIsIkEgXFxvcGx1cyBZIl0sWzQsMiwiQiJdLFs1LDIsIlxcLCJdLFswLDIsImEiXSxbMiwxLCJiIl0sWzEsMywiXFxkZWx0YSAiXSxbNCw1LCJ4IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzUsNiwieSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDYsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsNSwidyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDcsIlxcbGFtYmRhIF9cXGFzdCBcXGRlbHRhICJdLFs4LDksIlxcYmlub20gXFxsYW1iZGEgYSJdLFs5LDEwLCIoLXgsdykiXSxbMCw0LCJcXGxhbWJkYSAiXSxbMTAsMTEsInleXFxhc3QgXFxkZWx0YSAiXV0=
\begin{tikzcd}
X && Y && Z & {\,} \\
A && B && Z & {\,} \\
X && {A \oplus Y} && B & {\,}
\arrow["a", from=1-1, to=1-3]
\arrow["{\lambda }", from=1-1, to=2-1]
\arrow["b", from=1-3, to=1-5]
\arrow["w", dashed, from=1-3, to=2-3]
\arrow["{\delta }", from=1-5, to=1-6]
\arrow[equals, from=1-5, to=2-5]
\arrow["x", dashed, from=2-1, to=2-3]
\arrow["y", dashed, from=2-3, to=2-5]
\arrow["{\lambda _\ast \delta }", from=2-5, to=2-6]
\arrow["{\binom \lambda a}", from=3-1, to=3-3]
\arrow["{(-x,w)}", from=3-3, to=3-5]
\arrow["{y^\ast \delta }", from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

{% pf %}
We construct the Verdier diagram from $b$ and $y$:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMiwiWCJdLFsyLDIsIlkiXSxbMywyLCJaIl0sWzMsMSwiQiJdLFszLDAsIkEiXSxbMiwxLCJBIFxcb3BsdXMgWSJdLFsxLDEsIlgiXSxbMiwwLCJBIl0sWzQsMiwiXFwsIl0sWzQsMSwiXFwsIl0sWzMsMywiXFwsICJdLFsyLDMsIlxcLCJdLFswLDIsIlxcLCJdLFs1LDIsIlxcLCJdLFswLDEsImEiXSxbMSwyLCJiIl0sWzMsMiwieSJdLFs0LDMsIngiXSxbNiw1LCJcXGJpbm9tICB7XFxsYW1iZGEgJ30gYSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs3LDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNyw1LCJlXzEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSwxLCJwXzIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSwzLCIoeCwtdycpIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsOCwiXFxkZWx0YSAiXSxbMyw5LCJ5XlxcYXN0IFxcZGVsdGEgIl0sWzIsMTAsIlxcbGFtYmRhX1xcYXN0IFxcZGVsdGEgIl0sWzEsMTEsImJeXFxhc3QgXFxsYW1iZGEgX1xcYXN0IFxcZGVsdGEgIl1d
\begin{tikzcd}
&& A & A \\
& X & {A \oplus Y} & B & {\,} \\
{\,} & X & Y & Z & {\,} & {\,} \\
&& {\,} & {\, }
\arrow[equals, from=1-3, to=1-4]
\arrow["{e_1}", dashed, from=1-3, to=2-3]
\arrow["x", from=1-4, to=2-4]
\arrow["{\binom  {\lambda '} a}", dashed, from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow["{(x,-w')}", dashed, from=2-3, to=2-4]
\arrow["{p_2}", dashed, from=2-3, to=3-3]
\arrow["{y^\ast \delta }", from=2-4, to=2-5]
\arrow["y", from=2-4, to=3-4]
\arrow["a", from=3-2, to=3-3]
\arrow["b", from=3-3, to=3-4]
\arrow["{b^\ast \lambda _\ast \delta }", from=3-3, to=4-3]
\arrow["{\delta }", from=3-4, to=3-5]
\arrow["{\lambda_\ast \delta }", from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

Since $b^∗ δ =0$, we write $b^∗ λ _∗ δ$ in the standard split form which does not affect the solid arrows. By the anti commutative square in 4×4 diagram, we have
$$\begin{equation}
0 = \binom {λ '}{a} _∗ δ + \binom {1}{0} _∗  λ _∗ δ = \binom {λ ' + λ} a_∗ δ.
\end{equation}$$

Hence, $(λ ' + λ) ∈ \ker δ^!$. By long exact sequence, there exists $l$ such that $(λ + λ ' ) = l ∘ a$. To be explicit,
$$\begin{equation}
X \xrightarrow a Y \xrightarrow l A\quad  = \quad  X \xrightarrow {λ + λ '} A.
\end{equation}$$

It remains to show the existence of $w$ such that the following diagram commutes:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwxLCJYIl0sWzMsMSwiQSBcXG9wbHVzIFkiXSxbNSwxLCJCIl0sWzUsMCwiQiJdLFszLDAsIkEgXFxvcGx1cyBZIl0sWzEsMCwiWCJdLFswLDEsIlxcLCJdLFs2LDEsIlxcLCJdLFswLDEsIlxcYmlub20ge1xcbGFtYmRhfSBhIl0sWzEsMiwiKC14LCB3KSJdLFszLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsNCwiXFxiaW5vbSB7XFxsYW1iZGEgJ30gYSJdLFs1LDAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsMSwiXFxiaW5vbSB7LTEgXFwgXFwgbFxcIH17MCBcXCBcXCBcXCAxfSJdLFs0LDMsIih4LC13JykiXV0=
\begin{tikzcd}
& X && {A \oplus Y} && B \\
{\,} & X && {A \oplus Y} && B & {\,}
\arrow["{\binom {\lambda '} a}", from=1-2, to=1-4]
\arrow[equals, from=1-2, to=2-2]
\arrow["{(x,-w')}", from=1-4, to=1-6]
\arrow["{\binom {-1 \ \ l\ }{0 \ \ \ 1}}", from=1-4, to=2-4]
\arrow[equals, from=1-6, to=2-6]
\arrow["{\binom {\lambda} a}", from=2-2, to=2-4]
\arrow["{(-x, w)}", from=2-4, to=2-6]
\end{tikzcd}
{% endtikz %}

The left square commutes due to the choice of $l$. Taking $w = xl - w'$, we see that

- $wa - x λ = xla - w'a - xλ = xla - x λ ' - xλ = x(la - λ - λ ' ) = 0$;
- $yw - b = yxl - yw' - b = 0 l + b - b = 0$.

Hence, the right square also commutes.

{% endpf %}

{% endthm %}

{% cor %}
The homotopic square is also a weak PBPO square.
{% endcor %}

{% ex %}
(The square of ET4). Consider the Noether diagram given by ET4:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMCwiWCJdLFsyLDAsIlkiXSxbMywwLCJaIl0sWzIsMSwiVyJdLFsyLDIsIksiXSxbMywyLCJLIl0sWzEsMSwiWCJdLFszLDEsIk0iXSxbNCwwLCJcXCwiXSxbNCwxLCJcXCwiXSxbMiwzLCJcXCwiXSxbMywzLCJcXCwiXSxbNSwyLCJcXCwiXSxbMCwyLCJcXCwiXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFsxLDMsIlxcYWxwaGEiXSxbMyw0LCJcXGJldGEiXSxbNCw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMywicCJdLFsyLDcsInIiXSxbNyw1LCJzIl0sWzMsNywicSJdLFsyLDgsIlxcZGVsdGFfe3IxfSJdLFs3LDksIlxcZGVsdGFfe3IyfSJdLFs1LDExLCJcXGRlbHRhX3tjMn0iXSxbNCwxMCwiXFxkZWx0YV97YzF9Il0sWzEsNywiXFxzcXVhcmUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
& X & Y & Z & {\,} \\
& X & W & M & {\,} \\
{\,} && K & K && {\,} \\
&& {\,} & {\,}
\arrow["f", from=1-2, to=1-3]
\arrow["g", from=1-3, to=1-4]
\arrow["\alpha", from=1-3, to=2-3]
\arrow["\square"{description}, draw=none, from=1-3, to=2-4]
\arrow["{\delta_{r1}}", from=1-4, to=1-5]
\arrow["r", from=1-4, to=2-4]
\arrow[equals, from=2-2, to=1-2]
\arrow["p", from=2-2, to=2-3]
\arrow["q", from=2-3, to=2-4]
\arrow["\beta", from=2-3, to=3-3]
\arrow["{\delta_{r2}}", from=2-4, to=2-5]
\arrow["s", from=2-4, to=3-4]
\arrow[equals, from=3-3, to=3-4]
\arrow["{\delta_{c1}}", from=3-3, to=4-3]
\arrow["{\delta_{c2}}", from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

We focus on the square $\square$.

* $\square$ is a weak PBPO square, but not a homotopic square in general.
* There is a way to replace $α$ by some $α'$ which makes the square a homotopic square, and the entire diagram is still commutative. The only sacrifice is that $α$ may not be a deflation.
* There is a way to replace $q$ by some $q'$ which makes the square a homotopic square, and the entire diagram is still commutative. The only sacrifice is that $q$ may not be a deflation.

{% endex %}

The following proposition is useful for length category or something more general.

{% prop %}
If there are no retractions in $\mathrm{End}(Y)$, or there are no retractions in $\mathrm{End}(M)$, then the ET4 diagram is automatically a homotopic square.
{% pf %}
Suppose that there are no retractions in $\mathrm{End}(Y)$. We take $α': Y → W$ and obtain the homotopic square. By factorisation between two squares, one has $m$ and $n$ such that the following diagram commutes:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTUsWzEsMSwiWCJdLFsyLDEsIlkiXSxbMywxLCJaIl0sWzIsMiwiVyJdLFsyLDMsIksiXSxbMywzLCJLIl0sWzEsMiwiWCJdLFszLDIsIk0iXSxbNCwxLCJcXCwiXSxbNCwyLCJcXCwiXSxbMiw0LCJcXCwiXSxbMyw0LCJcXCwiXSxbNSwzLCJcXCwiXSxbMCwzLCJcXCwiXSxbMSwwLCJZIl0sWzAsMSwiZiJdLFsxLDIsImciXSxbMSwzLCJcXGFscGhhIl0sWzMsNCwiXFxiZXRhIl0sWzQsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiwwLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDMsInAiXSxbMiw3LCJyIl0sWzcsNSwicyJdLFszLDcsInEiXSxbMiw4LCJcXGRlbHRhX3tyMX0iXSxbNyw5LCJcXGRlbHRhX3tyMn0iXSxbNSwxMSwiXFxkZWx0YV97YzJ9Il0sWzQsMTAsIlxcZGVsdGFfe2MxfSJdLFsxLDcsIlxcc3F1YXJlIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzE0LDEsIm4iLDAseyJvZmZzZXQiOi0xLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTQsMiwiZyIsMCx7ImN1cnZlIjotMn1dLFsxNCwzLCJcXGFscGhhJyIsMCx7ImxhYmVsX3Bvc2l0aW9uIjo3MCwiY3VydmUiOjJ9XSxbMSwxNCwibSIsMCx7Im9mZnNldCI6LTEsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}
& Y \\
& X & Y & Z & {\,} \\
& X & W & M & {\,} \\
{\,} && K & K && {\,} \\
&& {\,} & {\,}
\arrow["n", shift left, dashed, from=1-2, to=2-3]
\arrow["g", curve={height=-12pt}, from=1-2, to=2-4]
\arrow["{\alpha'}"{pos=0.7}, curve={height=12pt}, from=1-2, to=3-3]
\arrow["f", from=2-2, to=2-3]
\arrow["m", shift left, dashed, from=2-3, to=1-2]
\arrow["g", from=2-3, to=2-4]
\arrow["\alpha", from=2-3, to=3-3]
\arrow["\square"{description}, draw=none, from=2-3, to=3-4]
\arrow["{\delta_{r1}}", from=2-4, to=2-5]
\arrow["r", from=2-4, to=3-4]
\arrow[equals, from=3-2, to=2-2]
\arrow["p", from=3-2, to=3-3]
\arrow["q", from=3-3, to=3-4]
\arrow["\beta", from=3-3, to=4-3]
\arrow["{\delta_{r2}}", from=3-4, to=3-5]
\arrow["s", from=3-4, to=4-4]
\arrow[equals, from=4-3, to=4-4]
\arrow["{\delta_{c1}}", from=4-3, to=5-3]
\arrow["{\delta_{c2}}", from=4-4, to=5-4]
\end{tikzcd}
{% endtikz %}

$n ∘ m$ is an isomorphism by two out of three principle. By nonexistence of retractions, $m$ and $n$ must be isomorphisms.

{% endpf %}
{% endprop %}

### Weakly Idempotent Completeness

#### Composition of Inflations

By virtue of ET4, it follows that the composition of two inflations is itself an inflation. Our primary concern is as follows: suppose that the composition $q∘p$ is an inflation; under what conditions can we conclude that $p$ is also an inflation?

{% lem %}
If $q∘p$ is an inflation, $q$ is a deflation, then $p$ is also an inflation.
{% pf %}
We apply ET4 to $q ∘ p$ and $q$. By weak PBPO, there exists $s$ making the entire diagram commutative:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzEsMiwiWCJdLFsyLDIsIlkiXSxbMywyLCJaIl0sWzIsMSwiRSJdLFsyLDAsIkEiXSxbNCwyLCJcXCwgIl0sWzIsMywiXFwsICJdLFs1LDIsIlxcLCJdLFsxLDAsIkEiXSxbMSwxLCJGIl0sWzEsMywiXFwsICJdLFswLDAsIlgiXSxbMywxLCJaIl0sWzAsMSwicSBcXGNpcmMgcCJdLFsxLDIsIlxccGkgIl0sWzQsMywiaSJdLFszLDEsInEiXSxbMiw1LCJcXGRlbHRhICJdLFsxLDYsIlxcZXRhIl0sWzgsNCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw5XSxbOSwzLCJwJyJdLFs5LDBdLFs5LDEsIlxcc3F1YXJlIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMTAsIjAiXSxbMTEsMCwiMV9YIiwwLHsiY3VydmUiOjJ9XSxbMTEsMywicCIsMCx7ImxhYmVsX3Bvc2l0aW9uIjo3MCwiY3VydmUiOi0xfV0sWzExLDksInMiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywxMl0sWzEyLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}
X & A & A \\
& F & E & Z \\
& X & Y & Z & {\, } & {\,} \\
& {\, } & {\, }
\arrow["s", dashed, from=1-1, to=2-2]
\arrow["p"{pos=0.7}, curve={height=-6pt}, from=1-1, to=2-3]
\arrow["{1_X}", curve={height=12pt}, from=1-1, to=3-2]
\arrow[equals, from=1-2, to=1-3]
\arrow[from=1-2, to=2-2]
\arrow["i", from=1-3, to=2-3]
\arrow["{p'}", from=2-2, to=2-3]
\arrow[from=2-2, to=3-2]
\arrow["\square"{description}, draw=none, from=2-2, to=3-3]
\arrow[from=2-3, to=2-4]
\arrow["q", from=2-3, to=3-3]
\arrow[equals, from=2-4, to=3-4]
\arrow["{q \circ p}", from=3-2, to=3-3]
\arrow["0", from=3-2, to=4-2]
\arrow["{\pi }", from=3-3, to=3-4]
\arrow["\eta", from=3-3, to=4-3]
\arrow["{\delta }", from=3-4, to=3-5]
\end{tikzcd}
{% endtikz %}
Since $p$ is a composition of a split monomorphism $s$ and an inflation $p'$, $p$ is an inflation.
{% endpf %}
{% endlem %}

{% cor %}
$i$ is an inflation ⇒ $\binom i f$ is an inflation.
{% pf %}
If $i$ is an inflation, then the composition of $\binom i f$ with a deflation $(1,0)$ is an inflation. Hence, $\binom i f$ must be an inflation. In this case, the diagram completes into Verdier diagram by strict 4×4 lemma.
{% endpf %}
{% endcor %}

#### Weakly Idempotent Completeness

When $q ∘ p$ is an inflation, under what conditions can we conclude that $p$ is an inflation? The following lemma comes from obscure lemma in exact categories.

{% lem %}
$q ∘ p$ is an inflation ⇒ $\binom p 0$ is an inflation.
{% pf %}
Let $X_1 \xrightarrow p X_2 \xrightarrow q X_3$ be usual morphisms. Suppose that $q ∘ p$ is an inflation, then $\binom p 0 : X_1 → X_2 ⊕ X_3$ is also an inflation. This is due to $\binom p {q ∘ p}$ is an inflation, any inflation are closed under Gaussian elimination.
{% endpf %}
{% endlem %}

To dispense with the cumbersome $0$, we introduce the following definition of weakly idempotent completeness. The initial intuition is drawn from the completion of the category of free modules.

* The weakly idempotent completion of the category of free modules is the category of stable projective modules.
* The idempotent completion of the category of free modules is the category of projective modules.

We shall not pursue the notion of idempotent completeness in detail; our attention is restricted to the weakly idempotent completion.

{% def %}
(Weakly idempotent complete) The following are equivalent for an additive category.

1. When $i$ has a left inverse $p$, then $i = \binom 1 0 : X → X ⊕ Y$;
2. When $p$ has a right inverse $i$, then $p = (1,0) : X ⊕ Y → X$.

{% pf %}
We only prove 1. ⇒ 2., the converse is dual. If $i$ has a left inverse $p$, $p$ takes the from $(1,0)$. Hence, $i$ takes the form $\binom 1 t$ so that $p ∘ i$ is an isomorphism. By the composition with an isomorphism, $i$ takes the form $\binom 1 0$.

{% endpf %}

{% enddef %}

{% def %}
For extriangulated categories, the following are equivalent conditions for being weakly idempotent complete.
1. When $i$ has a left inverse $p$, then $i = \binom 1 0 : X → X ⊕ Y$;
2. When $\binom i 0$ is an inflation, then so is $i$;
3. $\binom {i \ 0}{0 \ j}$ is an inflation, iff $i$ and $j$ are inflations;
4. When $f i$ is an inflation, then so is $i$;
5. When $p$ has a right inverse $i$, then $p = (1,0) : X ⊕ Y → X$;
6. When $(p,0)$ is a deflation, then so is $p$;
7. $\binom {p \ 0}{0 \ q}$ is a deflation, iff $p$ and $q$ are deflations;
8. When $p g$ is a deflation, then so is $p$.

{% pf %}
We only proof the first four statements, the rest are dual. The equivalence 2. ⇔ 4. is already shown above.

1. When 4. holds true, and $\binom 1 0 ∘ i$ is an inflation, then so is $i$;
2. When 2. holds true, and $f i$ is an inflation, the lemma shows that $\binom i 0$ is an inflation, hence $i$ is an inflation;

Now we show 1. ⇔ 4.. Since 1. is a special case of 4. (isomorphisms are inflations), we only need to show 1. ⇒ 2. and thus 1. ⇒ 4.. Suppose that $\binom i 0$ is an inflation, then we take conflation
$$\begin{equation}
X \xrightarrow {\binom i 0} Y ⊕ Z \xrightarrow {(s,t)} W.
\end{equation}$$
Since $(s,t) ∘ \binom {i \ 0}{0 \ 1} = 0$, by long exact sequence, there is $(a,b)$ such that $\binom {i \ 0}{0 \ 1} = (a,b) ∘ \binom i 0$. Hence, $t$ is split monomorphism, and the conflation writes as
$$\begin{equation}
X \xrightarrow {\binom i 0} Y ⊕ Z \xrightarrow {\binom {s_1 \ 0}{s_2 \ 1_Z}} Q ⊕ Z.
\end{equation}$$
Now by strict 4×4 lemma, we have the following commutative diagram consisting four conflations:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzEsMSwiWCJdLFsyLDEsIlkgXFxvcGx1cyBaIl0sWzMsMSwiUSBcXG9wbHVzIFoiXSxbMiwyLCJaIl0sWzIsMCwiWiJdLFszLDAsIloiXSxbMywyLCJRIl0sWzEsMiwiWCJdLFswLDIsIlxcLCJdLFs0LDIsIlxcLCJdLFswLDEsIlxcYmlub20gaSAwIl0sWzEsMiwiXFxiaW5vbSB7c18xIFxcIDB9e3NfMiBcXCAxX1p9Il0sWzQsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwxLCJcXGJpbm9tIDAgMSJdLFs1LDIsIlxcYmlub20gMCAxIl0sWzEsMywiKDEsMCkiXSxbMiw2LCIoMSwwKSJdLFswLDcsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsMywiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNiwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
\&\& Z \& Z \\
\& X \& {Y \oplus Z} \& {Q \oplus Z} \\
{\,} \& X \& Z \& Q \& {\,}
\arrow[equals, from=1-3, to=1-4]
\arrow["{\binom 0 1}", from=1-3, to=2-3]
\arrow["{\binom 0 1}", from=1-4, to=2-4]
\arrow["{\binom i 0}", from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow["{\binom {s_1 \ 0}{s_2 \ 1_Z}}", from=2-3, to=2-4]
\arrow["{(1,0)}", from=2-3, to=3-3]
\arrow["{(1,0)}", from=2-4, to=3-4]
\arrow[dashed, from=3-2, to=3-3]
\arrow[dashed, from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}

The only choice of the dashed arrow $X ⇢ Z$ is $i$, thus is an inflation.
\\
\\
Now we show that 3. ⇔ 2.. We firstly omit the ← part of the statement in 3., since realisation always commutes with direct product. On one hand. 3. is a corollary of 2. by composition with $\binom 1 0$ and $\binom 0 1$. On the other hand, if $\binom i 0$ is an inflation, then so is $ \binom {i \ 0_0}{0 \ 0_0}$. Hence, $i$ is an inflation by 3..

{% endpf %}
{% enddef %}

### Examples, and Counterexamples

#### Exact Categories as Extriangulated Categories

We say an exaxt category is extension-small, provided $\mathrm{Ext}^1(Z,X)$ is always an set. here are two kinds of common examples:

* The exact category is small;
* The exact category has enough projectives, or enough injectives, so that $\mathrm{Ext}^1$ is defined by dimension shift.

Suppose that $(𝒜 , ℰ)$ is an exact category which is extension-small. Then there it is automatically an extriangulated category, where

* the bifunctor is $\mathrm{Ext}^1 : 𝒜^{\mathrm{op}} × 𝒜 → 𝐀𝐛$;
* the realisation of $δ ∈ \mathrm{Ext}^1(Z,X)$ derives from the definition of $\mathrm{Ext}^1$ group.

{% lem %}
(Verification of ET2). Let $(a,c) : δ → δ '$ be communication between exact sequences. We wonder whether there is an lifting morphism $Y ⇢ Y'$ making the following diagram commutative:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzAsMSwiWCJdLFsxLDEsIlkiXSxbMiwxLCJaIl0sWzAsMiwiWCciXSxbMSwyLCJZJyJdLFsyLDIsIlonIl0sWzMsMSwiXFwsIl0sWzMsMiwiXFwsIl0sWzQsMSwiWCJdLFs0LDIsIlkiXSxbNCwzLCJaIl0sWzUsMSwiWSciXSxbNSwyLCJaJyJdLFs1LDAsIlgnIl0sWzAsMSwiZiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMCwzLCJhIl0sWzQsNSwiZyciLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMiw2LCJcXGRlbHRhIl0sWzUsNywiXFxkZWx0YSciXSxbMyw0LCJmJyIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMSwyLCJnIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsNSwiYyJdLFsxLDQsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMywxMSwiZiciLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzgsOSwiZiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMTEsMTIsImcnIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzksMTAsImciLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbOCwxMSwiYWYnIl0sWzksMTIsImNnJyJdLFs5LDExLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMjEsMjQsIiIsMCx7InNob3J0ZW4iOnsic291cmNlIjo0MCwidGFyZ2V0IjozMH0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6ImFycm93aGVhZCJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
\&\&\&\&\& {X'} \\
X \& Y \& Z \& {\,} \& X \& {Y'} \\
{X'} \& {Y'} \& {Z'} \& {\,} \& Y \& {Z'} \\
\&\&\&\& Z
\arrow["{f'}", tail, from=1-6, to=2-6]
\arrow["f", tail, from=2-1, to=2-2]
\arrow["a", from=2-1, to=3-1]
\arrow["g", two heads, from=2-2, to=2-3]
\arrow[dashed, from=2-2, to=3-2]
\arrow["\delta", from=2-3, to=2-4]
\arrow[""{name=0, anchor=center, inner sep=0}, "c", from=2-3, to=3-3]
\arrow["{af'}", from=2-5, to=2-6]
\arrow[""{name=1, anchor=center, inner sep=0}, "f", tail, from=2-5, to=3-5]
\arrow["{g'}", two heads, from=2-6, to=3-6]
\arrow["{f'}", tail, from=3-1, to=3-2]
\arrow["{g'}", two heads, from=3-2, to=3-3]
\arrow["{\delta'}", from=3-3, to=3-4]
\arrow[dashed, from=3-5, to=2-6]
\arrow["{cg'}", from=3-5, to=3-6]
\arrow["g", two heads, from=3-5, to=4-5]
\arrow[shorten <=26pt, shorten >=19pt, Rightarrow, 2tail reversed, from=0, to=1]
\end{tikzcd}
{% endtikz %}

Consider part of the exact total complex ($↙k$ denote the degree $k$ part):
{% tikz %}
% https://q.uiver.app/#q=WzAsMjEsWzAsMSwiKFosWCcpIl0sWzEsMSwiKFosWScpIl0sWzIsMSwiKFosWicpIl0sWzMsMSwiXjEoWixYJykiXSxbMCwyLCIoWSxYJykiXSxbMSwyLCIoWSxZJykiXSxbMiwyLCIoWSxaJykiXSxbMywyLCJeMShZLFgnKSJdLFswLDMsIihYLFgnKSJdLFsxLDMsIihYLFknKSJdLFsyLDMsIihYLFonKSJdLFszLDMsIl4xKFgsWCcpIl0sWzAsNCwiXjEoWixYJykiXSxbMSw0LCJeMShaLFknKSJdLFsyLDQsIl4xKFosWicpIl0sWzIsMCwiXFxzd2Fycm93IDEiXSxbMSwwLCJcXHN3YXJyb3cgMCJdLFszLDAsIlxcc3dhcnJvdyAyIl0sWzQsMCwiXFxzd2Fycm93IDMiXSxbNCwxLCJcXHN3YXJyb3cgNCJdLFs0LDIsIlxcc3dhcnJvdyA1Il0sWzAsMV0sWzEsMl0sWzIsM10sWzAsNF0sWzQsOF0sWzgsMTJdLFsxMiwxM10sWzEzLDE0XSxbNCw1XSxbNSw2XSxbNiw3XSxbMSw1XSxbNSw5XSxbOSwxM10sWzgsOV0sWzksMTBdLFsxMCwxMV0sWzIsNl0sWzYsMTBdLFsxMCwxNF0sWzMsN10sWzcsMTFdXQ==
\begin{tikzcd}[ampersand replacement=\&]
\& {\swarrow 0} \& {\swarrow 1} \& {\swarrow 2} \& {\swarrow 3} \\
{(Z,X')} \& {(Z,Y')} \& {(Z,Z')} \& {^1(Z,X')} \& {\swarrow 4} \\
{(Y,X')} \& {(Y,Y')} \& {(Y,Z')} \& {^1(Y,X')} \& {\swarrow 5} \\
{(X,X')} \& {(X,Y')} \& {(X,Z')} \& {^1(X,X')} \\
{^1(Z,X')} \& {^1(Z,Y')} \& {^1(Z,Z')}
\arrow[from=2-1, to=2-2]
\arrow[from=2-1, to=3-1]
\arrow[from=2-2, to=2-3]
\arrow[from=2-2, to=3-2]
\arrow[from=2-3, to=2-4]
\arrow[from=2-3, to=3-3]
\arrow[from=2-4, to=3-4]
\arrow[from=3-1, to=3-2]
\arrow[from=3-1, to=4-1]
\arrow[from=3-2, to=3-3]
\arrow[from=3-2, to=4-2]
\arrow[from=3-3, to=3-4]
\arrow[from=3-3, to=4-3]
\arrow[from=3-4, to=4-4]
\arrow[from=4-1, to=4-2]
\arrow[from=4-1, to=5-1]
\arrow[from=4-2, to=4-3]
\arrow[from=4-2, to=5-2]
\arrow[from=4-3, to=4-4]
\arrow[from=4-3, to=5-3]
\arrow[from=5-1, to=5-2]
\arrow[from=5-2, to=5-3]
\end{tikzcd}
{% endtikz %}

We claim that $x := (0,f'a, cg, 0)$ the element of degree $3$ is a cycle (hence a boundary).

1. The entry of $dx$ at $(X,Z')$ is zero, by commutative square;
2. The entry of $dx$ at $\mathrm{Ext}^1(Y,X')$ is also zero, since $(δ')_!(cg)= g^∗ (c^∗ δ ') = g^∗ (a_∗ δ ) = a_∗ (g^∗ δ ) = 0$.
3. The entry of $dx$ at $\mathrm{Ext}^1(Z,Y')$ is also zero, by a similar analysis.

Now there exists $(p,q,r) ∈ (X,X') ⊕ (Y,Y') ⊕ (Z,Z')$ whose differential is $x$. Since $p ∈ \ker [(X,X') → \mathrm{Ext}^1(Z,X')]$, there exists some $s ∈ (Y,X')$ such that $d(s,0)=(p,m,0)$. By similar analysis, there is $d(0,t) = (0,n,r)$. Now $x = d(0,q-m-n,0)$, hence $q-m-n$ is the desired lifting map.

{% endlem %}

{% lem %}
(Verification of ET3 and ET3'). This is due to the universal property of kernel and coker. We omit the proof.
{% endlem %}

{% lem %}
(Verification of ET4 and ET4'). We only proof SET4. The completion is due to universal property of cokernel

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzIsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFs0LDAsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzMsMiwiXFxidWxsZXQiXSxbNCwyLCJcXGJ1bGxldCJdLFs2LDEsIlxcLCJdLFswLDEsIlxcLCJdLFs1LDEsIlxcLCJdLFszLDMsIlxcLCJdLFswLDEsImoiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsMiwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzAsMywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMyw0LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsNCwiaSIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMiw1LCJcXGFscGhhIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsNSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsNiwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzYsNywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNSw3LCJcXGJldGEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSw1LCJcXHNxdWFyZSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDEwLCJcXGRlbHRhIl0sWzYsMTEsIlxcdmFyZXBzaWxvbiJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
\&\& \bullet \& \bullet \& \bullet \\
{\,} \&\& \bullet \& \bullet \& \bullet \& {\,} \& {\,} \\
\&\&\& \bullet \& \bullet \\
\&\&\& {\,}
\arrow["j", tail, from=1-3, to=1-4]
\arrow[equals, from=1-3, to=2-3]
\arrow[two heads, from=1-4, to=1-5]
\arrow["i", tail, from=1-4, to=2-4]
\arrow["\square"{description}, draw=none, from=1-4, to=2-5]
\arrow["\alpha", dashed, from=1-5, to=2-5]
\arrow[tail, from=2-3, to=2-4]
\arrow[two heads, from=2-4, to=2-5]
\arrow[two heads, from=2-4, to=3-4]
\arrow["\delta", from=2-5, to=2-6]
\arrow["\beta", dashed, from=2-5, to=3-5]
\arrow[equals, from=3-4, to=3-5]
\arrow["\varepsilon", from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

Since $\square$ is an pushout diagram, $α$ is an inflation and $\operatorname{cok}α = \operatorname{cok} i$. This complete the construction of Noether diagram. For identities in ET4, we remind the reader that both $j^∗ε$ and $β _∗ δ$ equals the conflation realised as $\mathrm{Total}(\square)$ (or maybe its negative).

{% endlem %}

#### Triangulated Categories as Extriangulated Categories

To see that triangluated categories are extriangulated, we define the functor $𝔼(-,?) := (-,?[1])$.

{% ex %}
(Yoneda lemma). For $δ ∈ 𝔼 (C,A) = (C,A[1])$, we explain $δ_!$ and $δ^!$ as follows.

1. $δ_! ∈ 𝖭𝖺𝗍 [(-, C), (-, A[1])]$ corresponds to $(-, δ)$. Hence, $δ_!(f) = δ ∘ f$.
2. $δ^! ∈ 𝖭𝖺𝗍 [(A, -), (C, -[1])]$ corresponds to $(δ, -) ∘ [1]$, where $[1] : (-,-) ≃ (-[1],-[1])$ is a natural isomorphism. Hence, $δ^!(g) = g[1] ∘ δ$.

{% endex %}

{% ex %}
(The realisation of $1$, once the triangulated category is extriangulated). This definition allows use to investigate the realisation of
$$\begin{equation}
1_{X[1]} ∈ (X[1], X[1]) = 𝔼 (X[1], X) ∋ δ.
\end{equation}$$

We take any of the realisation $X → E → X[1] \xrightarrow {δ}$ and the long exact sequence
$$\begin{equation}
(-, X) → (-, E) → (-, X[1]) \xrightarrow {δ_!} 𝔼(-, X) = (-, X[1]).
\end{equation}$$

As $δ_! = δ ∘ - = 1_{X[1]} ∘ -$ by above analysis, the realisation of one is the trivial triangle

$$\begin{equation}
X → 0 → X[1] \xrightarrow {1_{X[1]}} X[1].
\end{equation}$$

{% endex %}

{% lem %}
(Triangulated category as extriangulated category). A triangulated category is an extriangulated category with the bifunctor $𝔼(-,?) := (-,?[1])$ and the realisation of $δ ∈ 𝔼(Z,X)$ is given by the unique embedding of a morphism to a triangle, i.e.,

$$\begin{equation}
X → Y → Z \xrightarrow δ X[1].
\end{equation}$$

This shows the ET1 and ET2 axioms. Moreover, such construction satisfies the ET3 and ET4 axioms, thus making the triangulated category into an extriangulated category.

{% pf %}
The equality concers with pre-composition (post-composition) with an extension element, becomes a usual composition. Hence, the verification of ET3 is straightforward. The verification of ET4 is given in remarks on ET4 axiom.
{% endpf %}

{% endlem %}

We mention the converse statement, that is, an extriangulated category with a compatible equivalence $[1] : 𝒞 → 𝒞$ is triangulated.

{% lem %}
If an extriangulated category $(𝒞 , 𝔼 , 𝔰 )$ admits an equivalence $[1] : 𝒞 → 𝒞$, such that $𝔼 (-,?) := (-,?[1])$, then $(𝒞 , [1], \text{conflations})$ is automatically an triangulated category.

{% pf %}

The verify TR1-TR4. The most difficult part is TR2.
\\
\\
For TR1, we have analysis that split conflations are realisations of $0$, conflations are isomorphism closed. Any morphism appears in $𝔼 (-,?) = (-,?[1])$ as $[1]$ is an equivalence. Once we show TR2, we complete the verification of TR1.
\\
\\
For TR2, we take arbitrary conflation $X \xrightarrow f Y \xrightarrow g Z \xrightarrow δ X[1]$. By strict 4×4 lemma, we have the following commutative diagram of four conflations:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMCwiWCJdLFsyLDAsIlkiXSxbMywwLCJaIl0sWzMsMSwiWiJdLFsxLDEsIjAiXSxbMiwxLCJaIl0sWzEsMiwiWFsxXSJdLFsyLDIsIlhbMV0iXSxbNCwwLCJcXCwiXSxbNCwxLCJcXCwiXSxbMiwzLCJcXCwiXSxbMSwzLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwxLCJcXCwiXSxbNSwzLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMSwiZiJdLFsxLDIsImciXSxbMCw0XSxbNiw3LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDUsImciLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSw3LCJcXGxhbWJkYSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs0LDZdLFs0LDVdLFs2LDExLCIxX3tYWzFdfSJdLFs3LDEwLCJmX1xcYXN0IDFfe1hbMV19Il0sWzIsOCwiXFxkZWx0YSJdLFszLDksIjAiXV0=
\begin{tikzcd}[ampersand replacement=\&]
\& X \& Y \& Z \& {\,} \\
{\,} \& 0 \& Z \& Z \& {\,} \& {\,} \\
\& {X[1]} \& {X[1]} \\
\& {\,} \& {\,}
\arrow["f", from=1-2, to=1-3]
\arrow[from=1-2, to=2-2]
\arrow["g", from=1-3, to=1-4]
\arrow["g", dashed, from=1-3, to=2-3]
\arrow["\delta", from=1-4, to=1-5]
\arrow[equals, from=1-4, to=2-4]
\arrow[from=2-2, to=2-3]
\arrow[from=2-2, to=3-2]
\arrow[equals, from=2-3, to=2-4]
\arrow["\lambda", dashed, from=2-3, to=3-3]
\arrow["0", from=2-4, to=2-5]
\arrow[equals, from=3-2, to=3-3]
\arrow["{1_{X[1]}}", from=3-2, to=4-2]
\arrow["{f_\ast 1_{X[1]}}", from=3-3, to=4-3]
\end{tikzcd}
{% endtikz %}

We notice that $f_∗ 1_{X[1]} = (1_{X[1]})^!(f) = f[1]$. By anticommutative diagram,

$$\begin{equation}
0 = λ^∗ (1_{X[1]}) + (1_Z)^∗ δ = λ + δ.
\end{equation}$$

Hence, $λ = -δ$, and this shows that $Y \xrightarrow g Z \xrightarrow {-δ} X[1]\xrightarrow {f[1]} Y[1]$ is an triangle. By isomorphism closedness (sign rule), we deduce TR2.
\\
\\
The proof of TR3 and TR4 are easy.

{% endpf %}

{% endlem %}

#### Quotient from Happle's Theorem

#### Some Counterexamples (for Exact Categories)
