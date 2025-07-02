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
We provide a summary of the diagram lemmas pertaining to extriangulated categories. The outline of the initial sections consists solely of the fundamental theorems of extriangulated categories. The fundamental theorems include:

* the six-term long exact sequence,
* the two-out-of-three principle for isomorphisms.

Subsequently, we deduce several frequently utilised theorems, including:

* ET4 (Noether) and $4 \times 4$ (Verdier) type diagrams, together with their strict forms,
* the homotopic squares and weakly PBPO squares arising from the diagram theorems,
* EX3-analogue rules for extriangulated categories.

We then proceed to analyse various equivalent definitions of weakly idempotent completeness, with particular emphasis on the $3 \times 3$ lemma. Thereafter, we establish certain fundamental facts regarding admissible model structures, thereby unifying the admissible model structures for both exact and extriangulated categories. We discuss:

* the conception of cotorsion theory,
* Hovey's twin cotorsion pairs $⇒$ admissible model structure,
* admissible model structure $⇒$ Hovey twin cotorsion pairs,
* the triangulated structure of the homotopy category.

This note is self-contained, except for the proof of $𝖧𝗈 \mathcal{A} ≃ π (\mathcal{C} ∩ \mathcal{F})$.

{% endabs %}

## The Def of an Extri Cat

### The Data and Axioms

In brief, an extriangulated category is a triple $(\mathcal{C}, 𝔼, 𝔰)$, where

* $\mathcal{C}$ is a locally small additive category;
* $𝔼 : \mathcal{C}^{\mathrm{op}} × \mathcal{C} → 𝐀𝐛$ is an additive bifunctor;
* $𝔰$ is termed an additive realisation, assigning to each $δ ∈ 𝔼(Z, X)$ an isomorphism class in the comma category $X \backslash \mathcal{C} / Z$.

Furthermore, the triple satisfies certain axioms labelled ET.

We commence with the ET1 axiom and the associated terminologies.

{% def %}
(Terminology for ET1). The pair $(\mathcal{C}, 𝔼)$ is said to satisfy ET1 if

* $\mathcal{C}$ is a locally small additive category; and
* $𝔼 : \mathcal{C}^{\mathrm{op}} × \mathcal{C} → 𝐀𝐛$ is an additive bifunctor.

We employ the following notions and terminologies:

* An **element of extension** is an element in the $𝔼$-group, $δ ∈ 𝔼(Z, X)$. It may also be denoted by the triple $(X, δ, Z)$, or simply $δ$ when unambiguous.
* For $f : Z → Z'$, we denote the group homomorphism $𝔼(f, X) : 𝔼(Z', X) → 𝔼(Z, X)$ by $f^∗$ when unambiguous.
* For $g : X → X'$, we denote the group homomorphism $𝔼(Z, g) : 𝔼(Z, X) → 𝔼(Z, X')$ by $g_∗$ when unambiguous.
* Since $𝔼(-,-)$ is a bifunctor, one has $f^∗ g_∗ = g_∗ f^∗ : 𝔼(Z', X) → 𝔼(Z, X')$.
* A **morphism of two extensions** is described as the pair of maps $(α , β ) : (X , δ , Z) → (X' , δ' , Z')$, such that $α_∗ δ = β ^∗ δ '$.

{% enddef %}

{% ex %}
(The group structure of $𝔼(- , -)$). The additive structure of $𝔼(-,-)$ is induced by the standard Baer sum. For objects $X$ and $Z$, one may firstly define
$$\begin{equation}
(δ_1 + δ_2) := \binom{1}{1}{}^∗ (1,1)_∗ (δ_1 ⊕ δ_2),
\end{equation}$$
where the group homomorphism is given by
$$\begin{equation}
\binom{1}{1}{}^∗ (1,1)_∗ : 𝔼(Z ⊕ Z, X ⊕ X) → 𝔼(Z, X),\quad δ_1 ⊕ δ_2 ↦ δ_1 + δ_2.
\end{equation}$$

It is straightforward to verify that

* both $f_∗$ and $g^∗$ preserve the additive structure;
* $𝔼(Z, X)$ possesses a zero element, and satisfies the laws of associativity and commutativity.

{% endex %}

Before we proceed to the ET2 axiom, we need to introduce the notion of an **additive realisation**. Firstly, we define the equivalence relation for the class of objects of the functor category $𝐅𝐮𝐧𝐜𝐭(1 → 2 → 3, \mathcal{C}) / ∼$, where
$$\begin{equation}
[X \xrightarrow{f} Z \xrightarrow{g} Y] = [X' \xrightarrow{f'} Z' \xrightarrow{g'} Y']
\end{equation}$$
if and only if $X = X'$, $Z = Z'$, and there exists an isomorphism $φ : Y → Y'$ making the following diagram commutative
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCJYIl0sWzMsMCwiWSJdLFs1LDAsIloiXSxbMSwxLCJYIl0sWzUsMSwiWiJdLFszLDEsIlknIl0sWzAsMSwiXFwsIl0sWzYsMSwiXFwsIl0sWzAsMywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw0LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDEsImYiXSxbMSwyLCJnIl0sWzMsNSwiZiciXSxbNSw0LCJnJyJdLFsxLDUsIlxcdmFycGhpICJdLFsxLDUsIlxcc2ltZXEiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
& X && Y && Z \\
{\,} & X && {Y'} && Z & {\,}
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

The equivalency class preserve the standard biproduct $⊕$ of the functor category.

{% def %}
(ET2). $𝔰$ is a collection of correspondeces from sets to classes. $𝔰$ is called an **additive realisation** with respect to the pair $(\mathcal{C}, 𝔼)$, provided the following (denoted by ET2):

- $𝔰$ sends $(X, δ, Z)$ to some equivalency class of the form $[X \xrightarrow f  E \xrightarrow g  Z]$;
- $𝔰$ sends $(X, 0, Z)$ to the class of split short exact sequences $[X \xrightarrow {e_1} X ⊕ Z \xrightarrow {p_2} Z]$;
- $𝔰(δ _1 ⊕ δ _2) = 𝔰(δ _1) ⊕ 𝔰(δ _2)$ (recall that $⊕$ is compatible with the equivalency class);
- If there is a morphism of extensions $(α , β): (X, δ , Z) → (X', δ', Z')$, then for any representatives of $𝔰(δ)$ and $𝔰(δ')$, there exists a morphism $β$ making the following diagram commutative:
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

One should be aware that the morphism of triangles is not necessarily a morphism of extensions; for example, in a triangulated category, one may construct a collection of morphisms between distinguished triangles such that only two of the squares between the triangles commute.

{% def %}
(Terminologies for ET2). We define the following terminologies:

- The equivalency class $𝔰(δ)$ is called **the realisation** of $δ$;
- A element of $𝔰 (δ)$ is called **a realisation** of $δ$;
- A realisation is also known as an ($𝔼$-)**triangle**, denoted by $X \xrightarrow f Y \xrightarrow g Z \xrightarrow δ (\text{blank}).$
- A realisation is also known as an ($𝔼$-)**conflation**, denoted by a pair of morphisms $(f,g)$.
{% enddef %}

The expression of realisation may cause problems, **we use the terms conflations or triangles for most of the time**.

{% def %}
(ET3, and ET3'). For the triple $(\mathcal{C}, 𝔼, 𝔰)$ satisfying ET1 and ET2, we say that it satisfies ET3 if the following holds: for any commutative diagram ($f'α = β f$) between triangles, there exists (not unique in general) a dashed arrow ($γ$) rendering it **simultaneously** a morphism of extensions and a commutative diagram.

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

and, satisfying the following identities
$$\begin{equation}
r^∗ δ_{r2} = δ _{r1},\quad g_∗ δ _{c1} = δ _{c2},\quad f_∗ δ _{r2} = s^∗ δ _{c1}
\end{equation}$$

The final one reveals a very special morphism of extensions:
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

The statement of ET4' is dual, where the dashed arrows are given, and the solid arrows are to be determined. The completed diagram is required to satisfy the same properties as above.

{% enddef %}

In short, ET4 means that one ⊤-shaped diagram of triangles implies another ⊣-shaped diagram of triangles, and vice versa.

## (Co)homological Long Ext Seq

### Yoneda Construction

The following analysis is based on Yoneda lemma. Recall that the category $\mathcal{C}$ is locally small, and the bifunctor $𝔼(-,-)$ takes values in Abelian groups. Now there is an isomorphism between Abelian groups

$$\begin{equation}
𝖭𝖺𝗍 [(X,-), 𝔼 (Z,-)] ↔ 𝔼(Z,X),\quad Φ ↦ Φ_X(1_X).
\end{equation}$$

{% def %}
($δ ^!$ and $δ _!$). Conversely, and element $δ ∈ 𝔼(Z, X)$ induces the following two natural transformations

1. $δ^! : (X,-) → 𝔼(Z,-)$, given by $δ^! (f) = f_∗ δ$.
2. $δ_! : (-,Z) → 𝔼(-,X)$, given by $δ_! (g) = g^∗ δ$.

We employ $(⋅)_∗$ to denote post-composition, and $(⋅)^!$ to denote post-composer, the same for $(⋅)_!$ and $(⋅)^!$.

{% enddef %}

### The Proof

Now we shall prove the homological long exact sequence. For any triangle $X \xrightarrow f Y \xrightarrow g Z \xrightarrow δ$, we have the following long exact sequence of natural transformations:

$$\begin{equation}
(Z,-) \xrightarrow{g^∗} (Y,-) \xrightarrow{f^∗} (X,-) \xrightarrow{δ^!} 𝔼(Z,-) \xrightarrow{g^∗} 𝔼(Y,-) \xrightarrow{f^∗} 𝔼(X,-).
\end{equation}$$

There are no $0$ terms at the ends of the long exact sequence. Moreover, the exactness of the first 5-terms can be proved within ET≤3.

{% lem %}
We show the exactness at $(Z,-) \xrightarrow{g^∗} (Y,-) \xrightarrow{f^∗} (X,-)$.
{% pf %}
We take the morphisms $\{f,g,β,1_M\}$ (labbelled by solid arrows) in the following diagram

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

By ET3 and ET3', if there exists a dashed arrow $α$ makes the left rectangle commutative (equiv., $β ∈ \ker f^∗$), then there exists a dashed arrow $γ$ making the right rectangle commutative (equiv., $β ∈ \operatorname{im} g^∗$), and vise versa.

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
By ET3, there exists a dashed arrow $γ$ making the right rectangle commutative, and $f_∗ δ = γ ^∗ 0 = 0$.
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
% https://q.uiver.app/#q=WzAsMTUsWzEsMSwiTSJdLFszLDEsIlQiXSxbNSwxLCJaIl0sWzYsMSwiXFwsIl0sWzUsMCwiWSJdLFs2LDAsIlxcLCJdLFsxLDAsIk0iXSxbMywwLCJNIFxcb3BsdXMgWSJdLFsxLDIsIlgiXSxbNSwyLCJaIl0sWzMsMiwiWSJdLFs2LDIsIlxcLCJdLFswLDAsIlxcdGV4dHtyb3cgSX0iXSxbMCwxLCJcXHRleHR7cm93IElJfSJdLFswLDIsIlxcdGV4dHtyb3cgSUlJfSJdLFswLDEsInAiXSxbMSwyLCJxIl0sWzIsMywiXFxldGEiXSxbNCwyLCJnIl0sWzQsNSwiZ15cXGFzdCBcXGV0YSJdLFs2LDAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsNywiZV8xIl0sWzcsNCwicF8yIl0sWzcsMSwiXFxiaW5vbSBzdCJdLFsxMCw5LCJnIl0sWzgsMTAsImYiXSxbMTAsMSwidCJdLFs5LDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzksMTEsIlxcZGVsdGEiXSxbOCwwLCJcXGFscGhhIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
{\text{row I}} & M && {M \oplus Y} && Y & {\,} \\
{\text{row II}} & M && T && Z & {\,} \\
{\text{row III}} & X && Y && Z & {\,}
\arrow["{e_1}", from=1-2, to=1-4]
\arrow[equals, from=1-2, to=2-2]
\arrow["{p_2}", from=1-4, to=1-6]
\arrow["{\binom st}", from=1-4, to=2-4]
\arrow["{g^\ast \eta}", from=1-6, to=1-7]
\arrow["g", from=1-6, to=2-6]
\arrow["p", from=2-2, to=2-4]
\arrow["q", from=2-4, to=2-6]
\arrow["\eta", from=2-6, to=2-7]
\arrow["\alpha", dashed, from=3-2, to=2-2]
\arrow["f", from=3-2, to=3-4]
\arrow["t", from=3-4, to=2-4]
\arrow["g", from=3-4, to=3-6]
\arrow[equals, from=3-6, to=2-6]
\arrow["\delta", from=3-6, to=3-7]
\end{tikzcd}
{% endtikz %}

Here row-III is due induced by $(t, 1_Z)$ with ET3. Now there exists $α$ such that $α_∗ δ = η$.

{% endpf %}
{% endlem %}

{% lem %}
We show the exactness at $𝔼(Z,-) \xrightarrow{g^∗} 𝔼(Y,-) \xrightarrow{f^∗} 𝔼(X,-)$.

{% pf %}
One one hand, one shows that $0 = f^∗ ∘ g^∗ = (gf)^∗$ by functoriality.
\\
\\
One the other hand, once $f^∗ η = 0$ for some $η ∈ 𝔼 (Y, M)$, we use ET4' and obtain the following commutative diagram:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMSwiTSJdLFszLDEsIlkiXSxbMiwxLCJUIl0sWzQsMSwiXFwsIl0sWzMsMCwiWCJdLFszLDIsIloiXSxbMywzLCJcXCwiXSxbMSwwLCJNIl0sWzIsMiwiWiJdLFsyLDAsIlEiXSxbMiwzLCJcXCwiXSxbNCwwLCJcXCwiXSxbMCwyLCJcXCwiXSxbNSwyLCJcXCwiXSxbMSwzLCJcXGV0YSJdLFswLDIsInAiXSxbMiwxLCJxIl0sWzQsMSwiZiJdLFsxLDUsImciXSxbNSw2LCJcXGRlbHRhIl0sWzcsMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs3LDksImEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOSw0LCJiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksMiwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsOCwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsMTEsImZeXFxhc3QgXFxldGEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOCwxMCwiXFxkZWx0YSciLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}
& M & Q & X & {\,} \\
& M & T & Y & {\,} \\
{\,} && Z & Z && {\,} \\
&& {\,} & {\,}
\arrow["a", dashed, from=1-2, to=1-3]
\arrow[equals, from=1-2, to=2-2]
\arrow["b", dashed, from=1-3, to=1-4]
\arrow[dashed, from=1-3, to=2-3]
\arrow["{f^\ast \eta}", dashed, from=1-4, to=1-5]
\arrow["f", from=1-4, to=2-4]
\arrow["p", from=2-2, to=2-3]
\arrow["q", from=2-3, to=2-4]
\arrow[dashed, from=2-3, to=3-3]
\arrow["\eta", from=2-4, to=2-5]
\arrow["g", from=2-4, to=3-4]
\arrow[equals, from=3-3, to=3-4]
\arrow["{\delta'}", dashed, from=3-3, to=4-3]
\arrow["\delta", from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

By ET4, $a_∗ η = g^∗ δ '$. Since $f^∗ η = 0$, $a$ is split monomorphism whose left inverse is denoted by $x$. One has $η = x_∗ α _∗ η = x_∗ δ ^∗ η$. Hence, $η = g^∗ (x_∗ δ ')$.

{% endpf %}

{% endlem %}

### Corollaries on Trivial Conflations

There is an analogous result, in comparison with pre-triangulated categories, concerning split morphisms.

{% prop %}
Let $X \xrightarrow f Y \xrightarrow g Z \xrightarrow δ$ be the triangle. We only concern the first five terms of the long exact sequence (there is no ET4).

1. $g$ is a monomorphism, iff $f = 0$, iff $g$ is a split monomorphism, iff $δ^!$ is a monomorphism.
2. $f$ is an epimorphism, iff $g = 0$, iff $f$ is a split epimorphism, iff $δ_!$ is an epimorphism.

{% endprop %}

{% prop %}
Let $(α , γ ) : δ → δ '$ be a morphism of extensions, with realisations $X \xrightarrow f Y \xrightarrow g Z \xrightarrow δ$ and $X' \xrightarrow {f'} Y' \xrightarrow {g'} Z' \xrightarrow {δ'}$. Then $α$ factors through $f$ iff $α _∗ δ = γ ^∗ δ ' = 0$, iff $γ$ factors through $g'$.
{% endprop %}

There are no trivial results in the case that $f$ is monomorphism or $g$ is an epimorphism, since exact categories are extriangulated.

### The Hom Complex

We use this technique to prove the extension lifting lemma, and also verify ET2 for exact categories.

* May there be interesting theorems on adjoint functors.

We use the exact Hom complex to explore some useful lemmas. The following extension lifting lemma is usually proved by diagram-chasing techniques; we present an alternative proof by picking element in an exact bicomplex.

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
We take the following bicomplex (with all anticommutative squares) and make homological truncations (we denoted the syzygies by $∙$). By homological algebra, a bounded bicomplex with all exact rows is exact as a total complex. This well-known result is proved by induction on length or simply the spectral sequence. We use $↙_k$ to denote the degree $k$ part in the bicomplex.
{% tikz %}
% https://q.uiver.app/#q=WzAsMzEsWzEsMSwiKEMsSykiXSxbMiwxLCIoQyxYKSIsWzMwMSwxMDAsNjAsMV1dLFszLDEsIihDLFkpIixbMSwxMDAsNjAsMV1dLFs0LDEsIjAiLFsyMzYsMTAwLDYwLDFdXSxbMSwyLCIoQixLKSIsWzMwMSwxMDAsNjAsMV1dLFsyLDIsIihCLFgpIixbMSwxMDAsNjAsMV1dLFszLDIsIihCLFkpIixbMjM2LDEwMCw2MCwxXV0sWzEsMywiKEEsSykiLFsxLDEwMCw2MCwxXV0sWzIsMywiKEEsWCkiLFsyMzYsMTAwLDYwLDFdXSxbMywzLCIoQSxaKSJdLFsxLDQsIjAiLFsyMzYsMTAwLDYwLDFdXSxbMiw0LCJcXG1hdGhiYiBFKEMsWCkiXSxbMyw0LCJcXG1hdGhiYiBFKEMsWSkiXSxbNCwyLCJcXG1hdGhiYiBFKEIsSykiXSxbNCwzLCJcXG1hdGhiYiBFKEEsSykiXSxbNCw0LCJNIl0sWzAsMSwiXFxidWxsZXQiXSxbMCwyLCJcXGJ1bGxldCJdLFswLDMsIlxcYnVsbGV0IixbMzAxLDEwMCw2MCwxXV0sWzEsMCwiMCJdLFsyLDAsIjAiXSxbMiw1LCIwIl0sWzMsMCwiMCIsWzMwMSwxMDAsNjAsMV1dLFszLDUsIjAiXSxbNSwyLCJcXGJ1bGxldCJdLFs1LDMsIlxcYnVsbGV0Il0sWzUsMCwiXFxzd2Fycm93XzAiLFsyMzYsMTAwLDYwLDFdXSxbNSwxLCJcXHN3YXJyb3dfMSJdLFs0LDAsIlxcc3dhcnJvd197LTF9IixbMSwxMDAsNjAsMV1dLFs1LDQsIlxcYnVsbGV0Il0sWzQsNSwiMCJdLFsxLDIsIi1wX1xcYXN0ICIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs0LDcsImpeXFxhc3QgIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzEzLDE0LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxMSwxMiwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMCwxLCItaV9cXGFzdCJdLFs0LDUsImlfXFxhc3QiXSxbNSw2LCJwX1xcYXN0ICJdLFs2LDEzLCJcXHZhcmVwc2lsb24gXyEiXSxbNyw4LCItaV9cXGFzdCJdLFs4LDksIi1wX1xcYXN0ICJdLFs5LDE0LCItXFx2YXJlcHNpbG9uIF8hIl0sWzEwLDExXSxbMTIsMTVdLFsxNCwxNV0sWzIsM10sWzE2LDAsIi0iLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxNyw0LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxOCw3LCItIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMTksMF0sWzAsNCwicV5cXGFzdCAiXSxbNywxMF0sWzIwLDFdLFsxLDUsInFeXFxhc3QgIl0sWzUsOCwial5cXGFzdCAiXSxbOCwxMSwiXFxkZWx0YSBeISJdLFsxMSwyMV0sWzIyLDJdLFsyLDYsInFeXFxhc3QgIl0sWzYsOSwial5cXGFzdCAiXSxbOSwxMiwiXFxkZWx0YSBeISJdLFsxMiwyM10sWzMsMTNdLFsxMywyNCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzE0LDI1LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMTUsMjksIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxNSwzMF0sWzE2LDE3XSxbMTcsMThdLFsyNCwyNV0sWzI1LDI5XV0=
\begin{tikzcd}
& 0 & 0 & \color{rgb,255:red,255;green,51;blue,252}{0} & \color{rgb,255:red,255;green,54;blue,51}{\swarrow_{-1}} & \color{rgb,255:red,51;green,65;blue,255}{\swarrow_0} \\
\bullet & {(C,K)} & \color{rgb,255:red,255;green,51;blue,252}{(C,X)} & \color{rgb,255:red,255;green,54;blue,51}{(C,Y)} & \color{rgb,255:red,51;green,65;blue,255}{0} & {\swarrow_1} \\
\bullet & \color{rgb,255:red,255;green,51;blue,252}{(B,K)} & \color{rgb,255:red,255;green,54;blue,51}{(B,X)} & \color{rgb,255:red,51;green,65;blue,255}{(B,Y)} & {\mathbb E(B,K)} & \bullet \\
\color{rgb,255:red,255;green,51;blue,252}{\bullet} & \color{rgb,255:red,255;green,54;blue,51}{(A,K)} & \color{rgb,255:red,51;green,65;blue,255}{(A,X)} & {(A,Z)} & {\mathbb E(A,K)} & \bullet \\
& \color{rgb,255:red,51;green,65;blue,255}{0} & {\mathbb E(C,X)} & {\mathbb E(C,Y)} & M & \bullet \\
&& 0 & 0 & 0
\arrow[from=1-2, to=2-2]
\arrow[from=1-3, to=2-3]
\arrow[from=1-4, to=2-4]
\arrow["{-}", hook, from=2-1, to=2-2]
\arrow[from=2-1, to=3-1]
\arrow["{-i_\ast}", from=2-2, to=2-3]
\arrow["{q^\ast }", from=2-2, to=3-2]
\arrow["{-p_\ast }", two heads, from=2-3, to=2-4]
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
\arrow["{-}", hook, from=4-1, to=4-2]
\arrow["{-i_\ast}", from=4-2, to=4-3]
\arrow[from=4-2, to=5-2]
\arrow["{-p_\ast }", from=4-3, to=4-4]
\arrow["{\delta ^!}", from=4-3, to=5-3]
\arrow["{-\varepsilon _!}", from=4-4, to=4-5]
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
(a,b,c) ∈ (A,K) ⊕ (B,X) ⊕ (C,Y) \quad (\deg = -1).
\end{equation}$$

whose differential is $(f,g)$. We want this preimage to be of the form $(0, ? , 0)$. Thanks to the surjectivity of $p_∗$ and $j^∗$, there exists some element $(s,t) ∈ (B, K) ⊕ (C,X)$ such that $d(s,t) = (a,?,c)$. Hence, $(a,b,c) - d(s,t)$ is the element of the form $(0,?,0)$ whose differential is $(f,g)$.

{% endpf %}

{% endlem %}

## On Isomorphisms

### Conflations are Closed under Isomorphisms

Here are some results of being closed under isomorphisms.

{% prop %}
All conflations are closed under isomorphisms. To be explicit, for any conflation $X \xrightarrow{f} Y \xrightarrow{g} Z\xrightarrow{δ}$ isomorphisms $α : X → X'$, $β : Y → Y'$ and $γ : Z → Z'$, the following is also a conflation:
$$\begin{equation}
X' \xrightarrow{β ∘ f ∘ α^{-1}} Y' \xrightarrow{γ ∘ g ∘ β^{-1}} Z' \xrightarrow {α _∗ γ^{-1} δ}.
\end{equation}$$

{% pf %}
We first demonstrate that there exists a realisation of $ε ∈ 𝔼 (Z', X)$ such that any two realisations in $𝔰 (δ)$ and $𝔰 (ε )$ are isomorphic as objects in $𝐅𝐮𝐧𝐜𝐭 (1 → 2 → 3, \mathcal{C})$. We now exhibit the invertible morphism of extensions:
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

### Remarks on 2 ⇒ 3 Principle for Iso

The two out of three principles roughly means that, if we have two morphisms between triangles, then there exists the third. For extriangulated categories, it means that for any two morphism $\{α , β , γ \}$ making the small square diagram commutative, then there exists a morphism on the remaining side making the other two squares commutative.

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzIsMCwiWSJdLFs0LDAsIloiXSxbNiwwLCJcXCwiXSxbNiwxLCJcXCwiXSxbMCwxLCJYJyJdLFsyLDEsIlknIl0sWzQsMSwiWiciXSxbMCwxXSxbMSwyXSxbMiwzLCJcXGRlbHRhIl0sWzUsNl0sWzYsN10sWzcsNCwiXFxkZWx0YSciXSxbMCw1LCJcXGFscGhhICIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDYsIlxcYmV0YSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDcsIlxcZ2FtbWEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMyw0LCJcXGFscGhhIiwwLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fSxbMCwwLDUwLDFdXV0=
\begin{tikzcd}
X && Y && Z && {\,} \\
{X'} && {Y'} && {Z'} && {\,}
\arrow[from=1-1, to=1-3]
\arrow["{\alpha }", dashed, from=1-1, to=2-1]
\arrow[from=1-3, to=1-5]
\arrow["\beta", dashed, from=1-3, to=2-3]
\arrow["\delta", from=1-5, to=1-7]
\arrow["\gamma", dashed, from=1-5, to=2-5]
\arrow["\alpha", color={rgb,255:red,128;green,128;blue,128}, dotted, from=1-7, to=2-7]
\arrow[from=2-1, to=2-3]
\arrow[from=2-3, to=2-5]
\arrow["{\delta'}", from=2-5, to=2-7]
\end{tikzcd}
{% endtikz %}

The commutativity of the right most square means that $(α, γ) : δ → δ '$ is a morphism of extension. This is exactly what ET3, ET3' and (part of the) ET2 means.

The following lemma is an analogous result for pre-triangulated categories.

{% lem %}
In the diagram, if both $β$ and $α$ are isomorphisms, then so is $α$.

{% pf %}
We have functorial isomorphism $(-, Z) \xrightarrow [∼] {(-, γ)} (-, Z')$ by five lemma. Hence $γ : Z → Z'$ is an isomorphism by Yoneda lemma.
{% endpf %}
{% endlem %}

### Uniqueness of Morphism Embedding

The above lemma shows the uniqueness (regardless of the existence) of morphism embedding

- when $f$ is an inflation, then the conflation is unique up to isomorphism of $Z$;
- when $g$ is a deflation, then the conflation is unique up to isomorphism of $X$;
- when $δ$ is an extension element, then the conflation is unique up to isomorphism of $Y$. This is exactly what ET2 states.

## Remarks on ET4 Axiom

### On Exact Categories and Triangulated Categories

We recommend the readers to convince themselves that

- An $\mathrm{Ext}^1$-small (e.g., $\mathcal{A}$ has enough injectives) exact category $(\mathcal{A}, \mathcal{E})$ is extriangulated, where $𝔼 = \mathrm{Ext}^1$ and the realisation is derived from the definition of the $\mathrm{Ext}^1$-group;
- A triangulated category $(\mathcal{T}, Σ, \triangle)$ is extriangulated, where $𝔼(?,-) := \mathrm{Hom}(?, -[1])$ and the realisation is defined by embedding a morphism into a unique triangle.

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

### Strict ET4

In certain circumstances we use the strict form of ET4, which differs from the original (lax) version.

* (ET4). This formulation asserts that, given any ⊤-shaped diagram of two triangles, it is possible to simultaneously construct the ⊣-component of these triangles in such a way that the resulting diagram commutes, and the identities of extensions hold.
* (SET4). This formulation asserts that, for any ⊤-shaped diagram of triangles, there must exist a triangle that completes the associated ∓-shaped diagram. Furthermore, for any such ∓-shaped configuration, one must be able to derive the remaining morphisms and verify the commutativity of the entire diagram.

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

## Lemmas on V and N Diagrams

### The Squares

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

- The left diagram ≈ Verdier axiom ≈ 4×4 axiom;
- The right diagram ≈ Noether isomorphism ≈ octagon axiom.

The main feature of this section are homotopic squares, which are weakly PBPO squares.

### Noether Square and ET4

We refer to the square arising in ET4 (or ET4'), comprising two inflations and two deflations, as a **Noether square**. For exact categories, it is a PBPO square.

{% prop %}
(A restatement of ET4 and ET4'). Let $i$ be an inflation and $p$ a deflation.

- Suppose that $i$ and $p$ share the same domain; then there exists a unique (up to composition with isomorphisms) completion to a diagram comprising four conflations.
- Suppose that $i$ and $p$ share the same codomain; then there exists a unique (up to composition with isomorphisms) completion to a diagram comprising four conflations.

{% endprop %}

Note that such completion is unique up to composition of several isomorphisms.

### Verdier Square and 4×4 Lemma

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
We introduce an intermediate conflation $\binom 11 {}^∗ (δ _1 ⊕ δ _2)$.
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

Here $(p_i)_∗ \binom 11^∗(δ_1 ⊕ δ_2) = δ_i$. For $i ∈ \{1,2\}$, we apply ET4 for pulling back the first row with $(e_i)^∗$, which yields the following diagrams:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTgsWzEsMywiQyIsWzIyMSwxMDAsNDQsMV1dLFsxLDEsIkFfMVxcb3BsdXMgQV8yIixbMjIxLDEwMCw0NCwxXV0sWzEsMiwiTSIsWzIyMSwxMDAsNDQsMV1dLFsyLDEsIkFfMiJdLFswLDEsIkFfMSJdLFswLDIsIkFfMSJdLFsyLDIsIkJfMiJdLFsyLDMsIkMiXSxbMywwLCJBXzIiXSxbNCwwLCJBXzIiXSxbMywxLCJBXzFcXG9wbHVzIEFfMiIsWzIyMSwxMDAsNDQsMV1dLFszLDIsIkFfMSJdLFs0LDIsIkJfMSJdLFs1LDIsIkMiXSxbNSwxLCJDIixbMjIxLDEwMCw0NCwxXV0sWzQsMSwiTSIsWzIyMSwxMDAsNDQsMV1dLFs2LDEsIlxcLCJdLFsxLDQsIlxcLCJdLFsyLDAsImsiLDAseyJjb2xvdXIiOlsyMjEsMTAwLDQ0XX0sWzIyMSwxMDAsNDQsMV1dLFsxLDIsIm0iLDAseyJjb2xvdXIiOlsyMjEsMTAwLDQ0XX0sWzIyMSwxMDAsNDQsMV1dLFsxLDMsInBfMiJdLFszLDYsInhfMiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDcsInlfMiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDIsIm1fMSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs0LDUsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw2LCJcXGxhbWJkYV8yIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzgsOSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCwxMCwiZV8yIiwyXSxbNCwxLCJlXzEiXSxbMTAsMTEsInBfMSIsMl0sWzEwLDE1LCJtIiwyLHsiY29sb3VyIjpbMjIxLDEwMCw0NF19LFsyMjEsMTAwLDQ0LDFdXSxbMTUsMTQsImsiLDIseyJjb2xvdXIiOlsyMjEsMTAwLDQ0XX0sWzIyMSwxMDAsNDQsMV1dLFs5LDE1LCJtXzIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTEsMTIsInhfMSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMiwxMywieV8xIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzE1LDEyLCJcXGxhbWJkYV8xIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzE0LDEzLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNCwxNiwiXFxiaW5vbSAxMSB7fV4qIChcXGRlbHRhIF8xIFxcb3BsdXMgXFxkZWx0YSBfMikiLDAseyJjb2xvdXIiOlsyMjEsMTAwLDQ0XX0sWzIyMSwxMDAsNDQsMV1dLFswLDE3LCJcXGJpbm9tIDExIHt9XiogKFxcZGVsdGEgXzEgXFxvcGx1cyBcXGRlbHRhIF8yKSIsMCx7ImNvbG91ciI6WzIyMSwxMDAsNDRdfSxbMjIxLDEwMCw0NCwxXV1d
\begin{tikzcd}
&&& {A_2} & {A_2} \\
{A_1} & \color{rgb,255:red,0;green,71;blue,224}{A_1\oplus A_2} & {A_2} & \color{rgb,255:red,0;green,71;blue,224}{A_1\oplus A_2} & \color{rgb,255:red,0;green,71;blue,224}{M} & \color{rgb,255:red,0;green,71;blue,224}{C} & {\,} \\
{A_1} & \color{rgb,255:red,0;green,71;blue,224}{M} & {B_2} & {A_1} & {B_1} & C \\
& \color{rgb,255:red,0;green,71;blue,224}{C} & C \\
& {\,}
\arrow[equals, from=1-4, to=1-5]
\arrow["{e_2}"', from=1-4, to=2-4]
\arrow["{m_2}"', dashed, from=1-5, to=2-5]
\arrow["{e_1}", from=2-1, to=2-2]
\arrow[equals, from=2-1, to=3-1]
\arrow["{p_2}", from=2-2, to=2-3]
\arrow["m", color={rgb,255:red,0;green,71;blue,224}, from=2-2, to=3-2]
\arrow["{x_2}", dashed, from=2-3, to=3-3]
\arrow["m"', color={rgb,255:red,0;green,71;blue,224}, from=2-4, to=2-5]
\arrow["{p_1}"', from=2-4, to=3-4]
\arrow["k"', color={rgb,255:red,0;green,71;blue,224}, from=2-5, to=2-6]
\arrow["{\lambda_1}"', dashed, from=2-5, to=3-5]
\arrow["{\binom 11 {}^* (\delta _1 \oplus \delta _2)}", color={rgb,255:red,0;green,71;blue,224}, from=2-6, to=2-7]
\arrow[equals, from=2-6, to=3-6]
\arrow["{m_1}", dashed, from=3-1, to=3-2]
\arrow["{\lambda_2}", dashed, from=3-2, to=3-3]
\arrow["k", color={rgb,255:red,0;green,71;blue,224}, from=3-2, to=4-2]
\arrow["{y_2}", dashed, from=3-3, to=4-3]
\arrow["{x_1}"', dashed, from=3-4, to=3-5]
\arrow["{y_1}"', dashed, from=3-5, to=3-6]
\arrow["{\binom 11 {}^* (\delta _1 \oplus \delta _2)}", color={rgb,255:red,0;green,71;blue,224}, from=4-2, to=5-2]
\arrow[equals, from=4-3, to=4-2]
\end{tikzcd}
{% endtikz %}

We make subtle adjustments to the split morphisms, and obtain the following diagrams:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiQV8yIl0sWzEsMiwiTSIsWzIzMCwxMDAsNjAsMV1dLFsyLDEsIkFfMiJdLFsyLDIsIkJfMiJdLFsyLDMsIkMiLFsyMzAsMTAwLDYwLDFdXSxbNCwwLCJBXzIiXSxbMywxLCJBXzEiXSxbMywyLCJBXzEiXSxbNCwyLCJCXzEiXSxbNSwyLCJDIixbMjMwLDEwMCw2MCwxXV0sWzQsMSwiTSIsWzIzMCwxMDAsNjAsMV1dLFswLDIsIkFfMSJdLFswLDEsIm1fMiJdLFswLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMywieF8yIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNCwieV8yIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsMywiXFxsYW1iZGFfMiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDEwLCJtXzEiLDJdLFs1LDEwLCJtXzIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNyw4LCJ4XzEiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOCw5LCJ5XzEiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTAsOCwiXFxsYW1iZGFfMSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMCw5LCJrIiwyLHsiY29sb3VyIjpbMjMwLDEwMCw2MF19LFsyMzAsMTAwLDYwLDFdXSxbMSw0LCJrIiwwLHsiY29sb3VyIjpbMjMwLDEwMCw2MF19LFsyMzAsMTAwLDYwLDFdXSxbMTEsMSwibV8xIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsNywiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
&&&& {A_2} \\
& {A_2} & {A_2} & {A_1} & \color{rgb,255:red,51;green,85;blue,255}{M} \\
{A_1} & \color{rgb,255:red,51;green,85;blue,255}{M} & {B_2} & {A_1} & {B_1} & \color{rgb,255:red,51;green,85;blue,255}{C} \\
&& \color{rgb,255:red,51;green,85;blue,255}{C}
\arrow["{m_2}"', dashed, from=1-5, to=2-5]
\arrow[equals, from=2-2, to=2-3]
\arrow["{m_2}", from=2-2, to=3-2]
\arrow["{x_2}", dashed, from=2-3, to=3-3]
\arrow["{m_1}"', from=2-4, to=2-5]
\arrow[equals, from=2-4, to=3-4]
\arrow["{\lambda_1}"', dashed, from=2-5, to=3-5]
\arrow["k"', color={rgb,255:red,51;green,85;blue,255}, from=2-5, to=3-6]
\arrow["{m_1}", dashed, from=3-1, to=3-2]
\arrow["{\lambda_2}", dashed, from=3-2, to=3-3]
\arrow["k", color={rgb,255:red,51;green,85;blue,255}, from=3-2, to=4-3]
\arrow["{y_2}", dashed, from=3-3, to=4-3]
\arrow["{x_1}"', dashed, from=3-4, to=3-5]
\arrow["{y_1}"', dashed, from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

Gluing them together, we complete the proof.

{% endpf %}

{% endthm %}

**Note that this completion is unique up to composition of several isomorphisms.**

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

Here is a diagram for remembering anticommutative squares in 4×4:

{% tikz %}
% https://q.uiver.app/#q=WzAsMjAsWzIsMiwiXFxidWxsZXQiXSxbMiwzLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFszLDMsIlxcYnVsbGV0Il0sWzQsMywiXFxidWxsZXQiXSxbNCwyLCJcXGJ1bGxldCJdLFswLDIsIlxcYnVsbGV0Il0sWzAsMCwiXFxidWxsZXQiXSxbMSwwLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzEsMiwiXFxidWxsZXQiXSxbNSwzLCJcXCwiXSxbNCw0LCJcXCwiXSxbMywwLCJcXCwiXSxbMCwzLCJcXCwiXSxbMCwxLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsNCwicl8xIiwwLHsiY29sb3VyIjpbMjI2LDEwMCw2MF19LFsyMjYsMTAwLDYwLDFdXSxbNCw1XSxbMSw1XSxbNSw2XSxbMCw0LCJyXzIiLDAseyJjb2xvdXIiOlszNTcsMTAwLDYwXX0sWzM1NywxMDAsNjAsMV1dLFs0LDddLFszLDddLFs3LDZdLFsxMCwxMV0sWzksMTJdLFsxMiw4XSxbMTIsMTFdLFsxMywxNCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCwxNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTEsMTUsImxfMiIsMCx7ImNvbG91ciI6WzM1NywxMDAsNjBdfSxbMzU3LDEwMCw2MCwxXV0sWzYsMTYsIlxcdmFyZXBzaWxvbiBfMiIsMCx7ImNvbG91ciI6WzM1NywxMDAsNjBdfSxbMzU3LDEwMCw2MCwxXV0sWzYsMTcsIlxcdmFyZXBzaWxvbiBfMSIsMCx7ImNvbG91ciI6WzIyNiwxMDAsNjBdfSxbMjI2LDEwMCw2MCwxXV0sWzksMTBdLFsxMCwxM10sWzExLDE0LCJsXzEiLDAseyJjb2xvdXIiOlsyMjYsMTAwLDYwXX0sWzIyNiwxMDAsNjAsMV1dLFsxMywxOCwiXFxkZWx0YV8xIiwwLHsiY29sb3VyIjpbMjI2LDEwMCw2MF19LFsyMjYsMTAwLDYwLDFdXSxbOCwxOSwiXFxkZWx0YV8yIiwwLHsiY29sb3VyIjpbMzU3LDEwMCw2MF19LFszNTcsMTAwLDYwLDFdXV0=
\begin{tikzcd}
\bullet & \bullet & \bullet & {\,} \\
\bullet & \bullet & \bullet & \bullet & \bullet \\
\bullet & \bullet & \bullet & \bullet & \bullet \\
{\,} && \bullet & \bullet & \bullet & {\,} \\
&&&& {\,}
\arrow[from=1-1, to=1-2]
\arrow[from=1-1, to=2-1]
\arrow[from=1-2, to=1-3]
\arrow[from=1-2, to=2-2]
\arrow["{\delta_1}", color={rgb,255:red,51;green,99;blue,255}, from=1-3, to=1-4]
\arrow[equals, from=1-3, to=2-3]
\arrow[from=2-1, to=2-2]
\arrow[from=2-1, to=3-1]
\arrow["{l_1}", color={rgb,255:red,51;green,99;blue,255}, from=2-2, to=2-3]
\arrow["{l_2}", color={rgb,255:red,255;green,51;blue,61}, from=2-2, to=3-2]
\arrow[equals, from=2-4, to=2-5]
\arrow["{r_1}", color={rgb,255:red,51;green,99;blue,255}, from=2-4, to=3-4]
\arrow[from=2-5, to=3-5]
\arrow[equals, from=3-1, to=3-2]
\arrow["{\delta_2}", color={rgb,255:red,255;green,51;blue,61}, from=3-1, to=4-1]
\arrow["{r_2}", color={rgb,255:red,255;green,51;blue,61}, from=3-3, to=3-4]
\arrow[equals, from=3-3, to=4-3]
\arrow[from=3-4, to=3-5]
\arrow[from=3-4, to=4-4]
\arrow[from=3-5, to=4-5]
\arrow[from=4-3, to=4-4]
\arrow[from=4-4, to=4-5]
\arrow["{\varepsilon _2}", color={rgb,255:red,255;green,51;blue,61}, from=4-5, to=4-6]
\arrow["{\varepsilon _1}", color={rgb,255:red,51;green,99;blue,255}, from=4-5, to=5-5]
\end{tikzcd}
{% endtikz %}

Here $(l_1)^∗ δ _1 + (l_2)^∗ δ _2 = 0$, and ${(r_1)_{\ast}} \varepsilon_1 + {(r_2)_{\ast}} \varepsilon_2 = 0$.

### The S4×4 Lemma

We know that the completion of the Verdier diagram (from either two inflations or two deflations) is unique up to composition with isomorphisms. The strict form says that any ±-shaped diagram completes to a Verdier diagram (unique up to composing isomorphisms).

{% prop %}
(S4×4 Lemma). Consider the ±-shaped diagram of triangles realised by $η$, $δ_1$ and $ε$:
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

We realise $(x_1)^∗ η$ with standard split triangle, since $(x_1)^∗ η = (m_1)^∗ (λ _1)^∗ η = 0$. Even though $s ≠ m_1$ in general, we see that $(s-m_1) ∈ \ker ((λ _1)_∗) = \operatorname{im} ((m_2)_∗)$. We write $l$ such that
$$\begin{equation}
A_1 \xrightarrow {l} A_2 \xrightarrow {m_2} M \quad = \quad A_1 \xrightarrow {s-m_1} M.
\end{equation}$$

Now we wish $δ_2$ could be obtained by the morphism of extension $((f_1, f_2), 1_C) : κ → δ _2$:

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

The square 1., 2., 3. and 6. are commutative due to our construction. To show that 4. is commutative, we see that ($†$ for morphism of extensions in ET4).
$$\begin{equation}
(y_2)^∗ δ _1 = (y_2)^∗ (p_1)_∗ κ = (p_1)_∗ (y_2)^∗ κ \overset †= (p_1)_∗ \binom {1}{-l} {}_∗ ε = ε.
\end{equation}$$

To show that 5. is commutative, we see that
$$\begin{equation}
(y_1)^∗ δ_2 = (y_1)^∗ (l,1)_∗ κ = (l,1)_∗ (y_1)^∗ κ \overset †= (l,1)_∗ (e_2)_∗ η  = η.
\end{equation}$$

{% endpf %}

{% endprop %}

{% thm %}
(Full strict lemmas). We state the following lemmas (the dual statements are omitted). Consider the Verdier diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzEsMiwiXFxidWxsZXQiXSxbMiwyLCJcXGJ1bGxldCJdLFszLDIsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldCJdLFs0LDEsIlxcLCAiXSxbNCwyLCJcXCwgIl0sWzMsMywiXFwsICJdLFsyLDMsIlxcLCAiXSxbMCwyLCJcXCwiXSxbNSwyLCJcXCwiXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsMiwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzAsMywiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMyw0LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzQsNSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzEsNCwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsNSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzYsMiwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFs3LDEsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbNyw2LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDExLCJcXGRlbHRhICJdLFs1LDEwLCJcXGRlbHRhICciXSxbMiw4LCJcXHZhcmVwc2lsb24gIl0sWzUsOSwiXFx2YXJlcHNpbG9uICciXV0=
\begin{tikzcd}
&& \bullet & \bullet \\
& \bullet & \bullet & \bullet & {\, } \\
{\,} & \bullet & \bullet & \bullet & {\, } & {\,} \\
&& {\, } & {\, }
\arrow[equals, from=1-3, to=1-4]
\arrow[tail, from=1-3, to=2-3]
\arrow[tail, from=1-4, to=2-4]
\arrow[tail, from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow[two heads, from=2-3, to=2-4]
\arrow[two heads, from=2-3, to=3-3]
\arrow["{\varepsilon }", from=2-4, to=2-5]
\arrow[two heads, from=2-4, to=3-4]
\arrow[tail, from=3-2, to=3-3]
\arrow[two heads, from=3-3, to=3-4]
\arrow["{\delta }", from=3-3, to=4-3]
\arrow["{\varepsilon '}", from=3-4, to=3-5]
\arrow["{\delta '}", from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

If one of the following conditions holds:

1. $ε'$ and $δ'$ are given;
2. $ε'$, $δ$ and $δ'$ are given, and the deflation of $ε '$ gives the morphism from $δ$ to $δ'$;
3. $ε$, $δ$, and $δ'$ are given;

Then there is a way **(unique up to composition of several isomorphisms)** to complete the diagram into a Verdier diagram, such that three identities of extensions holds.
\\
\\
Similarly, consider the Noether diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMCwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbMiwyLCJcXGJ1bGxldCJdLFszLDIsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldCJdLFs0LDAsIlxcLCAiXSxbNCwxLCJcXCwgIl0sWzMsMywiXFwsICJdLFsyLDMsIlxcLCAiXSxbMCwyLCJcXCwiXSxbNSwyLCJcXCwiXSxbMSwyLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMCwzLCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDQsIiIsMSx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsyLDUsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs2LDIsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbNywxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzcsNiwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsMTEsIlxcZGVsdGEgIl0sWzUsMTAsIlxcZGVsdGEgJyJdLFs0LDUsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsNywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFszLDEsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMiw5LCJcXHZhcmVwc2lsb24gJyJdLFs2LDgsIlxcdmFyZXBzaWxvbiAiXV0=
\begin{tikzcd}
& \bullet & \bullet & \bullet & {\, } \\
& \bullet & \bullet & \bullet & {\, } \\
{\,} && \bullet & \bullet && {\,} \\
&& {\, } & {\, }
\arrow[tail, from=1-2, to=1-3]
\arrow[equals, from=1-2, to=2-2]
\arrow[two heads, from=1-3, to=1-4]
\arrow[tail, from=1-3, to=2-3]
\arrow["{\varepsilon }", from=1-4, to=1-5]
\arrow[tail, from=1-4, to=2-4]
\arrow[tail, from=2-2, to=2-3]
\arrow[two heads, from=2-3, to=2-4]
\arrow[two heads, from=2-3, to=3-3]
\arrow["{\varepsilon '}", from=2-4, to=2-5]
\arrow[two heads, from=2-4, to=3-4]
\arrow[equals, from=3-3, to=3-4]
\arrow["{\delta }", from=3-3, to=4-3]
\arrow["{\delta '}", from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

If one of the following conditions holds:

1. $ε'$ and $δ$ are given;
2. $ε'$, $δ$ and $δ'$ are given, and the deflation of $ε '$ gives the morphism from $δ$ to $δ'$;
3. $ε$, $ε'$, and $δ'$ are given;

Then there is a way **(unique up to composition of several isomorphisms)** to complete the diagram into a Noether diagram, such that three identities of extensions holds.

{% endthm %}

### The Weak PBPO Squares

{% def %}
(Weak PO Square). A **weak PO square** (or **weak coCatersian square**) is an 2×2 diagram ($wf = hg$), such that for any $α f = β g$, there exists some $φ$ making the entire diagram commutative.

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
We introduce arbitrary $T$, $n$ and $m$ such that $ng = mα$. It remains to show the existence of $M ⇢ T$ making the entire diagram commutative.

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

We beign with

$$\begin{equation}
0 = (mα )_∗ δ _{c1} = (ng)_∗ δ _{c1} = (δ _{c2})^! (n).
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

### The Homotopic Square

Recall that in ET2, we made no more assumption on the middle dashed arrow between conflations. However, there is a way to take a good morphism.

{% thm %}
(The homotopic square theorem). For any realisations of the morphism of extensions $(λ, 1): δ → λ_∗ δ$, there exists a suitable morphism $w$ rendering both diagrams commutative, and $y^∗ δ$ admits a realisation as depicted in the diagram below:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiWCJdLFs0LDAsIloiXSxbMiwwLCJZIl0sWzUsMCwiXFwsIl0sWzAsMSwiQSJdLFsyLDEsIkIiXSxbNCwxLCJaIl0sWzUsMSwiXFwsIl0sWzAsMiwiWCJdLFsyLDIsIkEgXFxvcGx1cyBZIl0sWzQsMiwiQiJdLFs1LDIsIlxcLCJdLFswLDIsImEiXSxbMiwxLCJiIl0sWzEsMywiXFxkZWx0YSAiXSxbNCw1LCJcXGNvbG9ye3JlZH0geCJdLFs1LDYsIlxcY29sb3J7Ymx1ZX0geSJdLFsxLDYsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsNSwidyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDcsIlxcbGFtYmRhIF9cXGFzdCBcXGRlbHRhICJdLFs4LDksIlxcYmlub20gXFxsYW1iZGEgYSJdLFs5LDEwLCIoe1xcY29sb3J7cmVkfSAteH0sdykiXSxbMCw0LCJcXGxhbWJkYSAiXSxbMTAsMTEsIntcXGNvbG9ye2JsdWV9IHl9XlxcYXN0IFxcZGVsdGEgIl1d
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
\arrow["{\color{red} x}", from=2-1, to=2-3]
\arrow["{\color{blue} y}", from=2-3, to=2-5]
\arrow["{\lambda _\ast \delta }", from=2-5, to=2-6]
\arrow["{\binom \lambda a}", from=3-1, to=3-3]
\arrow["{({\color{red} -x},w)}", from=3-3, to=3-5]
\arrow["{ {\color{blue} y}^\ast \delta }", from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

Remind the sign here.

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

Since $b^∗ δ =0$, we write $b^∗ λ _∗ δ$ in the standard split form which does not affect the solid arrows. By the anticommutative square in 4×4 diagram, we have

$$\begin{equation}
0 = \binom {λ '}{a} {}_∗ δ + \binom {1}{0} {}_∗  λ _∗ δ = \binom {λ ' + λ} a {}_∗ δ.
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
\arrow["{\binom {-1 \ \ l\ }{0 \ \ 1}}", from=1-4, to=2-4]
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

The following proposition shows that the square in Noether diagram is automatically a homotopic square.

{% prop %}

In the following ET4 diagram, $\square$ is a homotopic square.

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

{% pf %}
We take $α': Y → W$ and obtain the homotopic square. By factorisation between two squares, one has $m$ and $n$ such that $gn=g=gm$, $α = α m$ and $α ' = α ' n$ in the following diagram
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

Recall the two out of three principle for isomorphisms. We see that

* $n ∘ m$ is an isomorphism by considering $δ _{c1}$;
* $m ∘ n$ is an isomorphism by considering the conflation obtained by the homotopic square $\square$.

{% endpf %}
{% endprop %}

{% prop %}
Verdier squares are also homotopic!

{% pf %}
We show this by a straightforward construction.
{% endpf %}

{% endprop %}

### Weak Snake Lemmas

The weak snake lemma in Abelian category is a six-term exact sequence deriving from composition of two morphisms. In diagram,

{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbMSwyLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzMsMiwiXFxidWxsZXQiXSxbMCwyLCJcXGtlciBnXFxjaXJjIGYiLFszNTMsMTAwLDYwLDFdXSxbMSwwLCJcXGtlciBnIixbMzUzLDEwMCw2MCwxXV0sWzAsMywiXFxrZXIgZiIsWzM1MywxMDAsNjAsMV1dLFszLDAsIlxcb3BlcmF0b3JuYW1le2Nva30gZiIsWzIzNCwxMDAsNjAsMV1dLFs0LDMsIlxcb3BlcmF0b3JuYW1le2Nva30gZyIsWzIzNCwxMDAsNjAsMV1dLFs0LDIsIlxcb3BlcmF0b3JuYW1le2Nva30gZ1xcY2lyYyBmIixbMjM0LDEwMCw2MCwxXV0sWzAsMSwiZiJdLFsxLDIsImciXSxbMCwyLCJnXFxjaXJjIGYiLDJdLFs1LDAsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMSw2LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNCwxLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzIsNywiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsMCwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsyLDgsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs1LDMsIiIsMSx7ImNvbG91ciI6WzM1MywxMDAsNjBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzMsNCwiIiwwLHsiY3VydmUiOi0zLCJjb2xvdXIiOlszNTMsMTAwLDYwXX1dLFs0LDYsIiIsMCx7ImN1cnZlIjotMn1dLFs2LDgsIiIsMCx7ImN1cnZlIjotMywiY29sb3VyIjpbMjM0LDEwMCw2MF19XSxbOCw3LCIiLDEseyJjb2xvdXIiOlsyMzQsMTAwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV1d
\begin{tikzcd}
& \color{rgb,255:red,255;green,51;blue,75}{\ker g} && \color{rgb,255:red,51;green,71;blue,255}{\operatorname{cok} f} \\
&& \bullet \\
\color{rgb,255:red,255;green,51;blue,75}{\ker g\circ f} & \bullet && \bullet & \color{rgb,255:red,51;green,71;blue,255}{\operatorname{cok} g\circ f} \\
\color{rgb,255:red,255;green,51;blue,75}{\ker f} &&&& \color{rgb,255:red,51;green,71;blue,255}{\operatorname{cok} g}
\arrow[curve={height=-12pt}, from=1-2, to=1-4]
\arrow[tail, from=1-2, to=2-3]
\arrow[color={rgb,255:red,51;green,71;blue,255}, curve={height=-18pt}, from=1-4, to=3-5]
\arrow[two heads, from=2-3, to=1-4]
\arrow["g", from=2-3, to=3-4]
\arrow[color={rgb,255:red,255;green,51;blue,75}, curve={height=-18pt}, from=3-1, to=1-2]
\arrow[tail, from=3-1, to=3-2]
\arrow["f", from=3-2, to=2-3]
\arrow["{g\circ f}"', from=3-2, to=3-4]
\arrow[two heads, from=3-4, to=3-5]
\arrow[two heads, from=3-4, to=4-5]
\arrow[color={rgb,255:red,51;green,71;blue,255}, two heads, from=3-5, to=4-5]
\arrow[color={rgb,255:red,255;green,51;blue,75}, tail, from=4-1, to=3-1]
\arrow[tail, from=4-1, to=3-2]
\end{tikzcd}
{% endtikz %}

gives the following six-term exact sequence:

$$\begin{equation}
0 → \ker f → \ker g∘ f → \ker g → \operatorname{cok} f → \operatorname{cok} g∘ f → \operatorname{cok} g → 0.
\end{equation}$$

An analogous proposition holds for exact categories, although not all morphisms are admissible as candidates for $f$ or $g$. In the triangulated case, the kernel and cokernel of a given morphism are merged into a single object, whereby the weak snake lemma turns to be the standard octagon axiom.
\\
\\
Since we do not define the long conflation sequence in extriangulated categories, we only concerns the case when six-term exact sequence degenerates into three terms.

{% lem %}
(Weak snake lemma I). For composition of two inflations, we have the induced sequence given by SET4:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMSwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzMsMCwiXFxvcGVyYXRvcm5hbWV7Y29rfSBmIixbMjM3LDEwMCw2MCwxXV0sWzIsMiwiXFxvcGVyYXRvcm5hbWV7Y29rfSBnIl0sWzMsMSwiXFxvcGVyYXRvcm5hbWV7Y29rfSBnXFxjaXJjIGYiLFsyMzcsMTAwLDYwLDFdXSxbNCwwLCJcXCwiXSxbNCwxLCJcXCwiXSxbMiwzLCJcXCwiXSxbMywzLCJcXCwiXSxbMSwwLCJcXGJ1bGxldCJdLFszLDIsIlxcb3BlcmF0b3JuYW1le2Nva30gZyIsWzIzNywxMDAsNjAsMV1dLFswLDEsIlxcLCJdLFs1LDEsIlxcLCJdLFsxLDIsImciLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzAsMiwiZ1xcY2lyYyBmIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxLDMsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifSwiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsNCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9LCJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMiw1LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn0sImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFszLDUsIiIsMCx7ImNvbG91ciI6WzIzNywxMDAsNjBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzMsNiwiXFxkZWx0YV9mIl0sWzUsNywiXFxkZWx0YV97Z1xcY2lyYyBmfSJdLFsxMCwxLCJmIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxMCwwLCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDExLCIiLDAseyJjb2xvdXIiOlsyMzcsMTAwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsMTEsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzExLDksIlxcZGVsdGFfYyIsMCx7ImNvbG91ciI6WzIzNywxMDAsNjBdfSxbMjM3LDEwMCw2MCwxXV0sWzQsOCwiXFxkZWx0YV9nIl1d
\begin{tikzcd}
& \bullet & \bullet & \color{rgb,255:red,51;green,61;blue,255}{\operatorname{cok} f} & {\,} \\
{\,} & \bullet & \bullet & \color{rgb,255:red,51;green,61;blue,255}{\operatorname{cok} g\circ f}& {\,} & {\,} \\
&& {\operatorname{cok} g} & \color{rgb,255:red,51;green,61;blue,255}{\operatorname{cok} g} \\
&& {\,} & {\,}
\arrow["f", tail, from=1-2, to=1-3]
\arrow[equals, from=1-2, to=2-2]
\arrow[tail, two heads, from=1-3, to=1-4]
\arrow["g", tail, from=1-3, to=2-3]
\arrow["{\delta_f}", from=1-4, to=1-5]
\arrow[color={rgb,255:red,51;green,61;blue,255}, tail, from=1-4, to=2-4]
\arrow["{g\circ f}", tail, from=2-2, to=2-3]
\arrow[tail, two heads, from=2-3, to=2-4]
\arrow[tail, two heads, from=2-3, to=3-3]
\arrow["{\delta_{g\circ f}}", from=2-4, to=2-5]
\arrow[color={rgb,255:red,51;green,61;blue,255}, two heads, from=2-4, to=3-4]
\arrow[equals, from=3-3, to=3-4]
\arrow["{\delta_g}", from=3-3, to=4-3]
\arrow["{\delta_c}", color={rgb,255:red,51;green,61;blue,255}, from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

We omit the equalities of extensions.

{% endlem %}

{% lem %}
(Weak snake lemma II). We show a priori that if $g∘f$ is an inflation, and $g$ is a deflation, then $f$ is also an inflation. Moreover, we have the induced sequence given by S4×4 (from two deflations):

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMiwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzMsMSwiXFxvcGVyYXRvcm5hbWV7Y29rfSBmIixbMjM3LDEwMCw2MCwxXV0sWzMsMiwiXFxvcGVyYXRvcm5hbWV7Y29rfSBnXFxjaXJjIGYiLFsyMzcsMTAwLDYwLDFdXSxbMiwwLCJcXGtlciBnIl0sWzQsMiwiXFwsIl0sWzMsMywiXFwsIl0sWzQsMSwiXFwsIl0sWzIsMywiXFwsIl0sWzEsMSwiXFxidWxsZXQiXSxbMywwLCJcXGtlciBnIixbMzU5LDEwMCw2MCwxXV0sWzAsMiwiXFwsIl0sWzUsMiwiXFwsIl0sWzEsMiwiZyIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFswLDIsImdcXGNpcmMgZiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMSwzLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMiw0LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMyw0LCIiLDAseyJjb2xvdXIiOlsyMzcsMTAwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzUsMSwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFs0LDcsIlxcZGVsdGFfYyIsMCx7ImNvbG91ciI6WzIzNywxMDAsNjBdfSxbMjM3LDEwMCw2MCwxXV0sWzQsNiwiXFxkZWx0YV97Z1xcY2lyYyBmfSJdLFszLDgsIlxcZGVsdGFfZiJdLFsyLDksIlxcZGVsdGFfZyJdLFsxMCwxLCJmIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxMCwwLCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMSwzLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzExLDUsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}
&& {\ker g} & \color{rgb,255:red,255;green,51;blue,54}{\ker g} \\
& \bullet & \bullet & \color{rgb,255:red,51;green,61;blue,255}{\operatorname{cok} f} & {\,} \\
{\,} & \bullet & \bullet & \color{rgb,255:red,51;green,61;blue,255}{\operatorname{cok} g\circ f} & {\,} & {\,} \\
&& {\,} & {\,}
\arrow[tail, from=1-3, to=2-3]
\arrow[equals, from=1-4, to=1-3]
\arrow[tail, from=1-4, to=2-4]
\arrow["f", tail, from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow[two heads, from=2-3, to=2-4]
\arrow["g", two heads, from=2-3, to=3-3]
\arrow["{\delta_f}", from=2-4, to=2-5]
\arrow[color={rgb,255:red,51;green,61;blue,255}, two heads, from=2-4, to=3-4]
\arrow["{g\circ f}", tail, from=3-2, to=3-3]
\arrow[two heads, from=3-3, to=3-4]
\arrow["{\delta_g}", from=3-3, to=4-3]
\arrow["{\delta_{g\circ f}}", from=3-4, to=3-5]
\arrow["{\delta_c}", color={rgb,255:red,51;green,61;blue,255}, from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

{% endlem %}

We omit the duals statements.

## Weakly Idempotent Completeness

### Composition of Inflations

By virtue of ET4, it follows that the composition of two inflations is itself an inflation. Our primary concern is as follows: suppose that the composition $q∘p$ is an inflation; under what conditions can we conclude that $p$ is also an inflation?

{% lem %}
If $q∘p$ is an inflation, $q$ is a deflation, then $p$ is also an inflation.

* This lemma **does not requires** the condition of weakly idempotent completeness.

{% pf %}
We apply ET4 to $q ∘ p$ and $q$. By weak PBPO, there exists $s$ making the entire diagram commutative:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzEsMiwiWCIsWzIzOCwxMDAsNjAsMV1dLFsyLDIsIlkiLFsyMzgsMTAwLDYwLDFdXSxbMywyLCJaIl0sWzIsMSwiRSIsWzIzOCwxMDAsNjAsMV1dLFsyLDAsIkEiXSxbNCwyLCJcXCwgIl0sWzIsMywiXFwsICJdLFs1LDIsIlxcLCJdLFsxLDAsIkEiXSxbMSwxLCJGIl0sWzEsMywiXFwsICJdLFswLDAsIlgiLFsyMzgsMTAwLDYwLDFdXSxbMywxLCJaIl0sWzAsMSwicSBcXGNpcmMgcCIsMCx7ImNvbG91ciI6WzIzOCwxMDAsNjBdfSxbMjM4LDEwMCw2MCwxXV0sWzEsMiwiXFxwaSAiXSxbNCwzLCJpIl0sWzMsMSwicSIsMCx7ImNvbG91ciI6WzIzOCwxMDAsNjBdfSxbMjM4LDEwMCw2MCwxXV0sWzIsNSwiXFxkZWx0YSAiXSxbMSw2LCJcXGV0YSJdLFs4LDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzgsOV0sWzksMywicCciXSxbOSwwLCJcXGxhbWJkYSJdLFs5LDEsIlxcc3F1YXJlIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMTAsIlxca2FwcGEiXSxbMTEsMCwiMV9YIiwwLHsiY3VydmUiOjIsImNvbG91ciI6WzIzOCwxMDAsNjBdfSxbMjM4LDEwMCw2MCwxXV0sWzExLDMsInAiLDAseyJsYWJlbF9wb3NpdGlvbiI6NzAsImN1cnZlIjotMSwiY29sb3VyIjpbMjM4LDEwMCw2MF19LFsyMzgsMTAwLDYwLDFdXSxbMTEsOSwicyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDEyXSxbMTIsMiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
\color{rgb,255:red,51;green,58;blue,255}{X} & A & A \\
& F & \color{rgb,255:red,51;green,58;blue,255}{E} & Z \\
& \color{rgb,255:red,51;green,58;blue,255}{X} & \color{rgb,255:red,51;green,58;blue,255}{Y} & Z & {\, } & {\,} \\
& {\, } & {\, }
\arrow["s", dashed, from=1-1, to=2-2]
\arrow["p"{pos=0.7}, color={rgb,255:red,51;green,58;blue,255}, curve={height=-6pt}, from=1-1, to=2-3]
\arrow["{1_X}", color={rgb,255:red,51;green,58;blue,255}, curve={height=12pt}, from=1-1, to=3-2]
\arrow[equals, from=1-2, to=1-3]
\arrow[from=1-2, to=2-2]
\arrow["i", from=1-3, to=2-3]
\arrow["{p'}", from=2-2, to=2-3]
\arrow["\lambda", from=2-2, to=3-2]
\arrow["\square"{description}, draw=none, from=2-2, to=3-3]
\arrow[from=2-3, to=2-4]
\arrow["q", color={rgb,255:red,51;green,58;blue,255}, from=2-3, to=3-3]
\arrow[equals, from=2-4, to=3-4]
\arrow["{q \circ p}", color={rgb,255:red,51;green,58;blue,255}, from=3-2, to=3-3]
\arrow["\kappa", from=3-2, to=4-2]
\arrow["{\pi }", from=3-3, to=3-4]
\arrow["\eta", from=3-3, to=4-3]
\arrow["{\delta }", from=3-4, to=3-5]
\end{tikzcd}
{% endtikz %}

Since $κ = (1_X)_∗ κ = s^∗ (λ ^∗ κ ) = 0$, we see that $F ≃ A ⊕ X$ via the morphism in the split conflation. It follows that $s$ is a split monomorphism. Hence, $p = p' ∘ s$ is an inflation.
{% endpf %}
{% endlem %}

{% cor %}
$i$ is an inflation ⇒ $\binom i f$ is an inflation.
{% pf %}
If $i$ is an inflation, then the composition of $\binom i f$ with a deflation $(1,0)$ is an inflation. Hence, $\binom i f$ must be an inflation. In this case, the diagram completes into Verdier diagram by S4×4 lemma.
{% endpf %}
{% endcor %}

### Weakly Idempotent Completeness

When $q ∘ p$ is an inflation, under what conditions can we conclude that $p$ is an inflation? The following lemma comes from obscure lemma in exact categories.

{% lem %}
$q ∘ p$ is an inflation ⇒ $\binom p 0$ is an inflation.
{% pf %}
Let $X_1 \xrightarrow p X_2 \xrightarrow q X_3$ be usual morphisms. Suppose that $q ∘ p$ is an inflation, then $\binom p 0 : X_1 → X_2 ⊕ X_3$ is also an inflation. This is due to $\binom p {q ∘ p}$ is an inflation, any inflation are closed under Gaussian elimination.
{% endpf %}
{% endlem %}

To dispense with the cumbersome $0$, we introduce the following definition of weakly idempotent completeness.

{% ex %}

The initial intuition is drawn from the completion of the category of free modules.

* The weakly idempotent completion of the category of free modules is the category of stable projective modules.
* The idempotent completion of the category of free modules is the category of projective modules.

{% endex %}

We shall not pursue the notion of idempotent completeness in detail; our attention is restricted to the weakly idempotent completion.

{% def %}
(**Weakly idempotent completeness**) The following are equivalent for an additive category.

1. When $i$ has a left inverse $p$, then $i = \binom 1 0 : X → X ⊕ Y$;
2. When $p$ has a right inverse $i$, then $p = (1,0) : X ⊕ Y → X$.

{% pf %}
We only prove 1. ⇒ 2., the converse is dual. If $i$ has a left inverse $p$, $p$ takes the from $(1,0)$. Hence, $i$ takes the form $\binom 1 t$ so that $p ∘ i$ is an isomorphism. By the composition with an isomorphism, $i$ takes the form $\binom 1 0$.

{% endpf %}

{% enddef %}

{% def %}
For extriangulated categories, the following are equivalent conditions for being weakly idempotent complete.
1. When $i$ has a left inverse $p$, then $i$ takes the split form $\binom 1 0 : X → X ⊕ Y$;
2. When $\binom i 0$ is an inflation, then so is $i$;
3. $\binom {i \ 0}{0 \ j}$ is an inflation, iff $i$ and $j$ are inflations;
4. When $f i$ is an inflation, then so is $i$;
5. Inflations are closed under retraction;
6. When $p$ has a right inverse $i$, then $p$ takes the split form $(1,0) : X ⊕ Y → X$;
7. When $(p,0)$ is a deflation, then so is $p$;
8. $\binom {p \ 0}{0 \ q}$ is a deflation, iff $p$ and $q$ are deflations;
9. When $p g$ is a deflation, then so is $p$;
10. Deflations are closed under retraction.

{% pf %}
We only proof the first five statements, the rest are dual. The equivalence 2. ⇔ 4. is already shown above.

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
Now by S4×4 lemma, we have the following commutative diagram consisting four conflations:

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
\\
\\
We finally show 5. is equivalent to 3..

1. When 5. holds true, then so is 3.
2. When 3. holds true, then so are 1. and 4.. Suppose that $f'$ is a retract of inflation $f$, i.e., $fi = jf'$. By 1., the composition is an inflation, by 4., $f'$ is also an inflation.

{% endpf %}
{% enddef %}

### The 3×3 Diagram

We assume category to be weakly idempotent complete when concerning with 3×3 diagrams.
\\
\\
The 3×3 diagram is constructed by completing a commutative square, wherein the parallel edges consist of a pair of inflations and a pair of deflations.

{% lem %}
Given a commutative diagram of four conflations:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTUsWzEsMCwiQV8xIl0sWzIsMCwiQV8yIixbMjMzLDEwMCw2MCwxXV0sWzQsMCwiXFwsIl0sWzQsMSwiXFwsIl0sWzQsMiwiXFwsIl0sWzIsMywiXFwsIl0sWzMsMywiXFwsIl0sWzMsMCwiQV8zIixbMjMzLDEwMCw2MCwxXV0sWzEsMSwiQl8xIl0sWzIsMSwiQl8yIixbMjMzLDEwMCw2MCwxXV0sWzMsMSwiQl8zIixbMjMzLDEwMCw2MCwxXV0sWzIsMiwiQ18yIl0sWzMsMiwiQ18zIl0sWzAsMSwiXFwsIl0sWzUsMSwiXFwsIl0sWzAsMSwiZl9BIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxLDcsImdfQSIsMCx7ImNvbG91ciI6WzIzMywxMDAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19LFsyMzMsMTAwLDYwLDFdXSxbOCw5LCJmX0IiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzksMTAsImdfQiIsMCx7ImNvbG91ciI6WzIzMywxMDAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19LFsyMzMsMTAwLDYwLDFdXSxbMSw5LCJpXzIiLDAseyJjb2xvdXIiOlsyMzMsMTAwLDYwXSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX0sWzIzMywxMDAsNjAsMV1dLFs5LDExLCJwXzIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNywxMCwiaV8zIiwwLHsiY29sb3VyIjpbMjMzLDEwMCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19LFsyMzMsMTAwLDYwLDFdXSxbMTAsMTIsInBfMyIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs3LDIsIlxcZGVsdGEgX0EiXSxbMTAsMywiXFxkZWx0YSBfQiJdLFsxMSw1LCJcXHZhcmVwc2lsb24gXzIiXSxbMTIsNiwiXFx2YXJlcHNpbG9uIF8zIl1d
\begin{tikzcd}
& {A_1} & \color{rgb,255:red,51;green,75;blue,255}{A_2} & \color{rgb,255:red,51;green,75;blue,255}{A_3} & {\,} \\
{\,} & {B_1} & \color{rgb,255:red,51;green,75;blue,255}{B_2} & \color{rgb,255:red,51;green,75;blue,255}{B_3} & {\,} & {\,} \\
&& {C_2} & {C_3} & {\,} \\
&& {\,} & {\,}
\arrow["{f_A}", tail, from=1-2, to=1-3]
\arrow["{g_A}", color={rgb,255:red,51;green,75;blue,255}, two heads, from=1-3, to=1-4]
\arrow["{i_2}", color={rgb,255:red,51;green,75;blue,255}, tail, from=1-3, to=2-3]
\arrow["{\delta _A}", from=1-4, to=1-5]
\arrow["{i_3}", color={rgb,255:red,51;green,75;blue,255}, tail, from=1-4, to=2-4]
\arrow["{f_B}", tail, from=2-2, to=2-3]
\arrow["{g_B}", color={rgb,255:red,51;green,75;blue,255}, two heads, from=2-3, to=2-4]
\arrow["{p_2}", two heads, from=2-3, to=3-3]
\arrow["{\delta _B}", from=2-4, to=2-5]
\arrow["{p_3}", two heads, from=2-4, to=3-4]
\arrow["{\varepsilon _2}", from=3-3, to=4-3]
\arrow["{\varepsilon _3}", from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

There exists a method to complete the diagram to a 3×3 diagram, such that the morphism of extensions between parallel conflations are given by the morphisms present in the diagram.

{% pf %}
We begin with the ET4 for the composition of inflations $i_2 ∘ f_A$:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzIsMCwiQV8yIixbMjMyLDEwMCw2MCwxXV0sWzQsMCwiXFwsIl0sWzQsMSwiXFwsIl0sWzQsMiwiXFwsIl0sWzEsMywiXFwsIl0sWzIsMywiXFwsIl0sWzMsMCwiQV8zIixbMjMyLDEwMCw2MCwxXV0sWzIsMSwiQl8yIixbMjMyLDEwMCw2MCwxXV0sWzIsMiwiQ18yIl0sWzAsMSwiXFwsIl0sWzUsMSwiXFwsIl0sWzEsMSwiQV8xIl0sWzMsMiwiQ18yIl0sWzMsMywiXFwsIl0sWzMsMSwiRSIsWzM1OSwxMDAsNjAsMV1dLFsxLDAsIkFfMSJdLFswLDYsImdfQSIsMCx7ImNvbG91ciI6WzIzMiwxMDAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19LFsyMzIsMTAwLDYwLDFdXSxbMCw3LCJpXzIiLDAseyJjb2xvdXIiOlsyMzIsMTAwLDYwXSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX0sWzIzMiwxMDAsNjAsMV1dLFs3LDgsInBfMiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs2LDEsIlxcZGVsdGEgX0EiXSxbOCw1LCJcXHZhcmVwc2lsb24gXzIiXSxbMTEsNywiaV8yZl9BIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxMiwxMywiKGdfQSlfXFxhc3QgXFx2YXJlcHNpbG9uIF8yIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsMTQsInkiLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFszNTksMTAwLDYwLDFdXSxbNywxNCwieCIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifSwiaGVhZCI6eyJuYW1lIjoiZXBpIn19fSxbMzU5LDEwMCw2MCwxXV0sWzE0LDIsIlxcZXRhIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzE0LDEyLCJ6IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxMiw4LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNSwwLCJmX0EiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzE1LDExLCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
& {A_1} & \color{rgb,255:red,51;green,78;blue,255}{A_2} & \color{rgb,255:red,51;green,78;blue,255}{A_3} & {\,} \\
{\,} & {A_1} & \color{rgb,255:red,51;green,78;blue,255}{B_2} & \color{rgb,255:red,255;green,51;blue,54}{E} & {\,} & {\,} \\
&& {C_2} & {C_2} & {\,} \\
& {\,} & {\,} & {\,}
\arrow["{f_A}", tail, from=1-2, to=1-3]
\arrow[equals, from=1-2, to=2-2]
\arrow["{g_A}", color={rgb,255:red,51;green,78;blue,255}, two heads, from=1-3, to=1-4]
\arrow["{i_2}", color={rgb,255:red,51;green,78;blue,255}, tail, from=1-3, to=2-3]
\arrow["{\delta _A}", from=1-4, to=1-5]
\arrow["y", color={rgb,255:red,255;green,51;blue,54}, dashed, tail, from=1-4, to=2-4]
\arrow["{i_2f_A}"', tail, from=2-2, to=2-3]
\arrow["x", color={rgb,255:red,255;green,51;blue,54}, dashed, two heads, from=2-3, to=2-4]
\arrow["{p_2}", two heads, from=2-3, to=3-3]
\arrow["\eta", dashed, from=2-4, to=2-5]
\arrow["z", dashed, two heads, from=2-4, to=3-4]
\arrow["{\varepsilon _2}", from=3-3, to=4-3]
\arrow[equals, from=3-4, to=3-3]
\arrow["{(g_A)_\ast \varepsilon _2}", dashed, from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

Since the right top square in ET4 is weakly PBPO, then there is a factorisation
{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzIsMCwiQV8yIixbMjM5LDEwMCw2MCwxXV0sWzQsMiwiQl8zIixbMjM5LDEwMCw2MCwxXV0sWzEsMywiXFwsIl0sWzMsMCwiQV8zIixbMjM5LDEwMCw2MCwxXV0sWzIsMSwiQl8yIixbMjM5LDEwMCw2MCwxXV0sWzAsMSwiXFwsIl0sWzUsMSwiXFwsIl0sWzMsMSwiRSIsWzEsMTAwLDYwLDFdXSxbNCwxLCJcXCwiXSxbMywyLCJcXCwiXSxbMCwzLCJnX0EiLDAseyJjb2xvdXIiOlsyMzksMTAwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fSxbMjM5LDEwMCw2MCwxXV0sWzAsNCwiaV8yIiwwLHsiY29sb3VyIjpbMjM5LDEwMCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19LFsyMzksMTAwLDYwLDFdXSxbMyw3LCJ5IiwwLHsiY29sb3VyIjpbMSwxMDAsNjBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzEsMTAwLDYwLDFdXSxbNCw3LCJ4IiwwLHsiY29sb3VyIjpbMSwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifSwiaGVhZCI6eyJuYW1lIjoiZXBpIn19fSxbMSwxMDAsNjAsMV1dLFszLDEsImlfMyIsMCx7ImN1cnZlIjotNCwiY29sb3VyIjpbMjM5LDEwMCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19LFsyMzksMTAwLDYwLDFdXSxbNCwxLCJnX0IiLDAseyJjdXJ2ZSI6NCwiY29sb3VyIjpbMjM5LDEwMCw2MF0sInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX0sWzIzOSwxMDAsNjAsMV1dLFs3LDEsIlxcdmFycGhpICIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNyw4LCJcXHNxdWFyZSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs3LDksIlxcdHJpYW5nbGUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
&& \color{rgb,255:red,51;green,54;blue,255}{A_2} & \color{rgb,255:red,51;green,54;blue,255}{A_3} \\
{\,} && \color{rgb,255:red,51;green,54;blue,255}{B_2} & \color{rgb,255:red,255;green,54;blue,51}{E} & {\,} & {\,} \\
&&& {\,} & \color{rgb,255:red,51;green,54;blue,255}{B_3} \\
& {\,}
\arrow["{g_A}", color={rgb,255:red,51;green,54;blue,255}, two heads, from=1-3, to=1-4]
\arrow["{i_2}", color={rgb,255:red,51;green,54;blue,255}, tail, from=1-3, to=2-3]
\arrow["y", color={rgb,255:red,255;green,54;blue,51}, dashed, tail, from=1-4, to=2-4]
\arrow["{i_3}", color={rgb,255:red,51;green,54;blue,255}, curve={height=-24pt}, tail, from=1-4, to=3-5]
\arrow["x", color={rgb,255:red,255;green,54;blue,51}, dashed, two heads, from=2-3, to=2-4]
\arrow["{g_B}", color={rgb,255:red,51;green,54;blue,255}, curve={height=24pt}, two heads, from=2-3, to=3-5]
\arrow["\square", draw=none, from=2-4, to=2-5]
\arrow["\triangle"{description}, draw=none, from=2-4, to=3-4]
\arrow["{\varphi }", dashed, two heads, from=2-4, to=3-5]
\end{tikzcd}
{% endtikz %}

The induced $φ$ is a deflation since $φ ∘ x = g_B$ is a deflation and the category is weakly idempotent complete. Now we complete $\square$ into a Verdier diagram (by S4×4), and $\square$ into a Noether diagram (by SET4). This process creates $ε_1$ and $δ_C$ respectively:

{% tikz %}
% https://q.uiver.app/#q=WzAsMjQsWzYsMSwiQl8zIl0sWzUsMCwiQV8zIl0sWzUsMSwiRSJdLFswLDAsIkFfMSJdLFsxLDAsIkFfMSJdLFswLDEsIkJfMSJdLFswLDIsIkNfMSJdLFsxLDIsIkUiXSxbMSwxLCJCXzIiXSxbMiwxLCJCXzMiXSxbMiwyLCJCXzMiXSxbMywxLCJcXCwiXSxbMywyLCJcXCwiXSxbMSwzLCJcXCwiXSxbMCwzLCJcXCwiXSxbNiwwLCJBXzMiXSxbNCwxLCJDXzEiXSxbNCwyLCJDXzEiXSxbNSwyLCJDXzIiXSxbNiwyLCJDXzMiXSxbNywxLCJcXCwiXSxbNywyLCJcXCwiXSxbNiwzLCJcXCwiXSxbNSwzLCJcXCwiXSxbMSwyLCJ5IiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiwwLCJcXHZhcnBoaSAiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNCwzLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDUsImlfMSIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifSwiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzUsNiwicF8yIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs2LDcsIlxccHNpICIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbNSw4LCJmX0IiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzgsOSwiZ19CIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsOCwiaV8yIGZfQSIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbOCw3LCJ4IiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzksMTAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzksMTEsIlxcZGVsdGEgX0IiXSxbMTAsMTIsIihwXzIpX1xcYXN0IFxcZGVsdGEgX0IiXSxbNiwxNCwiXFx2YXJlcHNpbG9uIF8xIl0sWzcsMTMsIlxcZXRhIl0sWzgsMTAsIlxcdHJpYW5nbGUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTUsMCwiaV8zIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxLDE1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNywxNiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwxOSwicF8zIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzE2LDIsIlxccHNpICIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMiwxOCwieiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxNywxOCwiZl9DIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTgsMTksImdfQyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMCwyMCwiKHBfMSlfXFxhc3QgXFxkZWx0YSBfQiJdLFsxOSwyMSwiXFxkZWx0YSBfQyJdLFsxOSwyMiwiXFx2YXJlcHNpbG9uIF8zIl0sWzE4LDIzLCIoZ19BKV9cXGFzdCBcXHZhcmVwc2lsb24gXzIiXSxbMSwwLCJcXHNxdWFyZSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs3LDEwLCJcXHZhcnBoaSIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
{A_1} \& {A_1} \&\&\&\& {A_3} \& {A_3} \\
{B_1} \& {B_2} \& {B_3} \& {\,} \& {C_1} \& E \& {B_3} \& {\,} \\
{C_1} \& E \& {B_3} \& {\,} \& {C_1} \& {C_2} \& {C_3} \& {\,} \\
{\,} \& {\,} \&\&\&\& {\,} \& {\,}
\arrow["{i_1}", dashed, tail, from=1-1, to=2-1]
\arrow[equals, from=1-2, to=1-1]
\arrow["{i_2 f_A}", tail, from=1-2, to=2-2]
\arrow[equals, from=1-6, to=1-7]
\arrow["y", dashed, tail, from=1-6, to=2-6]
\arrow["\square"{description}, draw=none, from=1-6, to=2-7]
\arrow["{i_3}", tail, from=1-7, to=2-7]
\arrow["{f_B}", tail, from=2-1, to=2-2]
\arrow["{p_2}", dashed, two heads, from=2-1, to=3-1]
\arrow["{g_B}", two heads, from=2-2, to=2-3]
\arrow["x", two heads, from=2-2, to=3-2]
\arrow["\triangle"{description}, draw=none, from=2-2, to=3-3]
\arrow["{\delta _B}", from=2-3, to=2-4]
\arrow[equals, from=2-3, to=3-3]
\arrow["{\psi }", tail, from=2-5, to=2-6]
\arrow["{\varphi }", two heads, from=2-6, to=2-7]
\arrow["z", two heads, from=2-6, to=3-6]
\arrow["{(p_1)_\ast \delta _B}", from=2-7, to=2-8]
\arrow["{p_3}", two heads, from=2-7, to=3-7]
\arrow["{\psi }", tail, from=3-1, to=3-2]
\arrow["{\varepsilon _1}", from=3-1, to=4-1]
\arrow["\varphi", two heads, from=3-2, to=3-3]
\arrow["\eta", from=3-2, to=4-2]
\arrow["{(p_2)_\ast \delta _B}", from=3-3, to=3-4]
\arrow[equals, from=3-5, to=2-5]
\arrow["{f_C}", dashed, tail, from=3-5, to=3-6]
\arrow["{g_C}", dashed, two heads, from=3-6, to=3-7]
\arrow["{(g_A)_\ast \varepsilon _2}", from=3-6, to=4-6]
\arrow["{\delta _C}", from=3-7, to=3-8]
\arrow["{\varepsilon _3}", from=3-7, to=4-7]
\end{tikzcd}
{% endtikz %}

Now we verify the morphism of extensions of four pairs of parallel conflations.

1. $(i_1)_∗ δ _A = (i_3)^∗ δ _B$. Consider $(i_1)_∗ δ_A = y^∗ (i_1)_∗ η = y^∗ φ ^∗ ε _3 = (i_3)^∗ δ _B$.
2. $(p_3)^∗ δ_C = (p_1)_∗ δ_B$. This is given by the construction.
3. $(f_A)_∗ ε _1 = (f_C)^∗ ε _2$. Consider $(f_A)_∗ ε _1 = ψ ^∗ (f_A)_∗ η =ψ ^∗ z^∗ ε _2 = (f_C)^∗ ε _2$.
4. $(g_A)_∗ ε _2 = (g_C)^∗ ε _3$. This is given by the construction.

{% endpf %}

{% endlem %}

We remark that this lemma is contingent upon the condition of weakly idempotent completeness. It is straightforward to construct counterexamples in $\{X ∈ 𝐯𝐞𝐜_k ∣ \dim X ≠ 1\}$, the additive full subcategory of finite-dimensional $k$-vector spaces.
\\
\\
However, the following lemma provides a six-out-of-five criterion for conflations, which resembles the conventional 3×3 lemma and does not require the assumption of weak idempotent completeness.

{% prop %}
(Strict 3×3 lemma). Consider the following diagram consisting of five conflations, wherein $(p_1, p_3) : ε _2 → ε _3$ is a morphism of extension.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzEsMCwiQV8xIl0sWzIsMCwiQl8xIl0sWzMsMCwiQ18xIl0sWzQsMCwiXFwsIl0sWzQsMSwiXFwsIl0sWzQsMiwiXFwsIl0sWzMsMywiXFwsIl0sWzIsMywiXFwsIl0sWzEsMiwiQV8zIl0sWzEsMSwiQV8yIl0sWzIsMSwiQl8yIl0sWzMsMSwiQ18yIl0sWzMsMiwiQ18zIl0sWzIsMiwiQl8zIl0sWzAsMSwiXFwsIl0sWzUsMSwiXFwsIl0sWzEsMiwicF8xIl0sWzIsMywiXFxkZWx0YSBfMSJdLFs5LDEwLCJpXzIiXSxbMTAsMTEsInBfMiJdLFsxMSw0LCJcXGRlbHRhXzIiXSxbOCwxMywiaV8zIl0sWzEzLDEyLCJwXzMiXSxbMTIsNSwiXFxkZWx0YSBfMyJdLFswLDEsImlfMSJdLFsxLDEwLCJmX0IiXSxbMTAsMTMsImdfQiJdLFsyLDExLCJmX0MiXSxbMTEsMTIsImdfQyJdLFsxMyw3LCJcXHZhcmVwc2lsb24gX0IiXSxbMTIsNiwiXFx2YXJlcHNpbG9uIF9DIl1d
\begin{tikzcd}[ampersand replacement=\&]
\& {A_1} \& {B_1} \& {C_1} \& {\,} \\
{\,} \& {A_2} \& {B_2} \& {C_2} \& {\,} \& {\,} \\
\& {A_3} \& {B_3} \& {C_3} \& {\,} \\
\&\& {\,} \& {\,}
\arrow["{i_1}", from=1-2, to=1-3]
\arrow["{p_1}", from=1-3, to=1-4]
\arrow["{f_B}", from=1-3, to=2-3]
\arrow["{\delta _1}", from=1-4, to=1-5]
\arrow["{f_C}", from=1-4, to=2-4]
\arrow["{i_2}", from=2-2, to=2-3]
\arrow["{p_2}", from=2-3, to=2-4]
\arrow["{g_B}", from=2-3, to=3-3]
\arrow["{\delta_2}", from=2-4, to=2-5]
\arrow["{g_C}", from=2-4, to=3-4]
\arrow["{i_3}", from=3-2, to=3-3]
\arrow["{p_3}", from=3-3, to=3-4]
\arrow["{\varepsilon _B}", from=3-3, to=4-3]
\arrow["{\delta _3}", from=3-4, to=3-5]
\arrow["{\varepsilon _C}", from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

Then there exists a method to complete the diagram to a 3×3 diagram, such that the morphism of extensions between parallel conflations are given by the morphisms present in the diagram.

{% pf %}
Let $φ : B_2 → C_3$ be a composition of deflations. We apply SET4 to the compositions of $φ$ in two distinct ways, and thereby obtain the following two Noether diagrams:

{% tikz %}
% https://q.uiver.app/#q=WzAsMjIsWzAsMCwiQV8yIl0sWzAsMSwiQV8yIl0sWzEsMCwiRSJdLFsyLDAsIkNfMSJdLFsyLDEsIkNfMiJdLFsxLDEsIkJfMiJdLFsxLDIsIkNfMyJdLFsyLDIsIkNfMyJdLFszLDAsIlxcLCJdLFszLDEsIlxcLCJdLFsxLDMsIlxcLCJdLFs0LDAsIkJfMSJdLFs0LDEsIkJfMSJdLFs1LDAsIkUiXSxbNiwwLCJBXzMiXSxbNSwxLCJCXzIiXSxbNiwxLCJCXzMiXSxbNSwyLCJDXzMiXSxbNiwyLCJDXzMiXSxbNSwzLCJcXCwiXSxbNywwLCJcXCwiXSxbNywxLCJcXCwiXSxbMCwxLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDcsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzExLDEyLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNywxOCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwyLCJcXGxhbWJkYSJdLFsyLDUsIlxccHNpICJdLFsxLDUsImlfMiJdLFsxMSwxM10sWzEzLDE1LCJcXHBzaSJdLFsxMiwxNSwiZl9CIl0sWzIsM10sWzMsNCwiZl9DIl0sWzQsNywiZ19DIl0sWzUsNiwiXFx2YXJwaGkgIl0sWzUsNCwicF8yIl0sWzEzLDE0LCJcXG11ICJdLFsxNCwxNiwiaV8zIl0sWzE2LDE4LCJwXzMiXSxbMTUsMTYsImdfQiJdLFsxNSwxNywiXFx2YXJwaGkgIl0sWzMsOF0sWzQsOV0sWzYsMTAsIlxcZXRhIl0sWzE3LDE5LCJcXGV0YSJdLFsxNCwyMCwiKGlfMyleXFxhc3QgXFxkZWx0YSBfMiJdLFsxNiwyMSwiXFxkZWx0YV8yIl1d
\begin{tikzcd}[ampersand replacement=\&]
{A_2} \& E \& {C_1} \& {\,} \& {B_1} \& E \& {A_3} \& {\,} \\
{A_2} \& {B_2} \& {C_2} \& {\,} \& {B_1} \& {B_2} \& {B_3} \& {\,} \\
\& {C_3} \& {C_3} \&\&\& {C_3} \& {C_3} \\
\& {\,} \&\&\&\& {\,}
\arrow["\lambda", from=1-1, to=1-2]
\arrow[equals, from=1-1, to=2-1]
\arrow[from=1-2, to=1-3]
\arrow["{\psi }", from=1-2, to=2-2]
\arrow[from=1-3, to=1-4]
\arrow["{f_C}", from=1-3, to=2-3]
\arrow[from=1-5, to=1-6]
\arrow[equals, from=1-5, to=2-5]
\arrow["{\mu }", from=1-6, to=1-7]
\arrow["\psi", from=1-6, to=2-6]
\arrow["{(i_3)^\ast \delta _2}", from=1-7, to=1-8]
\arrow["{i_3}", from=1-7, to=2-7]
\arrow["{i_2}", from=2-1, to=2-2]
\arrow["{p_2}", from=2-2, to=2-3]
\arrow["{\varphi }", from=2-2, to=3-2]
\arrow[from=2-3, to=2-4]
\arrow["{g_C}", from=2-3, to=3-3]
\arrow["{f_B}", from=2-5, to=2-6]
\arrow["{g_B}", from=2-6, to=2-7]
\arrow["{\varphi }", from=2-6, to=3-6]
\arrow["{\delta_2}", from=2-7, to=2-8]
\arrow["{p_3}", from=2-7, to=3-7]
\arrow[equals, from=3-2, to=3-3]
\arrow["\eta", from=3-2, to=4-2]
\arrow[equals, from=3-6, to=3-7]
\arrow["\eta", from=3-6, to=4-6]
\end{tikzcd}
{% endtikz %}

The conflation $A_1 → A_2 → A_3$ is constructed by S4×4 lemma:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzMsMCwiQV8yIl0sWzMsMSwiRSJdLFs0LDEsIkFfMyJdLFs0LDAsIkFfMyJdLFsyLDAsIkFfMSJdLFsyLDEsIkJfMSJdLFszLDIsIkNfMSJdLFsyLDIsIkNfMSJdLFs1LDAsIlxcLCJdLFszLDMsIlxcLCJdLFswLDEsIlxcLCJdLFs2LDEsIlxcLCJdLFswLDEsIlxcbGFtYmRhICJdLFsxLDIsIlxcbXUgIl0sWzAsMywiZ19BIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsMiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw1LCJpXzEiXSxbNSw3LCJwXzEiXSxbNCwwLCJmX0EiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMyw4LCJcXGRlbHRhIF8xIl0sWzUsMV0sWzEsNl0sWzcsNiwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiw5XV0=
\begin{tikzcd}[ampersand replacement=\&]
\&\& {A_1} \& {A_2} \& {A_3} \& {\,} \\
{\,} \&\& {B_1} \& E \& {A_3} \&\& {\,} \\
\&\& {C_1} \& {C_1} \\
\&\&\& {\,}
\arrow["{f_A}", dashed, from=1-3, to=1-4]
\arrow["{i_1}", from=1-3, to=2-3]
\arrow["{g_A}", dashed, from=1-4, to=1-5]
\arrow["{\lambda }", from=1-4, to=2-4]
\arrow["{\varepsilon_A}", from=1-5, to=1-6]
\arrow[equals, from=1-5, to=2-5]
\arrow[from=2-3, to=2-4]
\arrow["{p_1}", from=2-3, to=3-3]
\arrow["{\mu }", from=2-4, to=2-5]
\arrow[from=2-4, to=3-4]
\arrow[equals, from=3-3, to=3-4]
\arrow[from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}
We verify in turn that

1. $(i_1)_∗ ε_A = (i_3)^∗ ε _B$ follows from the construction;
2. $(f_C)^∗ δ _2 = (f_A)_∗ δ _1$ follows from the construction;
3. $(g_A)_∗ δ _2 = μ _∗ λ _∗ δ _2 = (g_C)^∗ μ _∗ η = μ _∗ (g_C)^∗ η = (g_C)^∗ δ _3$.

This completes the proof.
{% endpf %}

{% endprop %}

## Example of Extri Cats

### Exact Cats and Extri Cats

We say an exaxt category is extension-small, provided $\mathrm{Ext}^1(Z,X)$ is always an set. here are two kinds of common examples:

* The exact category is small;
* The exact category has enough projectives, or enough injectives, so that $\mathrm{Ext}^1$ is defined by dimension shift.

Suppose that $(\mathcal{A} , \mathcal{E})$ is an exact category which is extension-small. Then there it is automatically an extriangulated category, where

* the bifunctor is $\mathrm{Ext}^1 : \mathcal{A}^{\mathrm{op}} × \mathcal{A} → 𝐀𝐛$;
* the realisation of $δ ∈ \mathrm{Ext}^1(Z,X)$ derives from the definition of $\mathrm{Ext}^1$ group.

{% lem %}
(Verification of ET2). Let $(a,c) : δ → δ '$ be morphism of extension between exact sequences. We wonder whether there is an lifting morphism $Y ⇢ Y'$ making the following diagram commutative:
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

* Recall that $\square$ is always homotopic for general extriangulated categories.

{% endlem %}

Conversely, extriangulated categories with special requirements are exact categories.

{% prop %}
Let $(\mathcal{C} , 𝔼,  𝔰 )$ be extriangulated. Suppose that all inflations are monomorphism, and all deflations are epimorphisms. Now $\mathcal{C}$ is an exact category with $𝔼 = \mathrm{Ext}^1$, and triangles as conflations.

{% pf %}
We take any triangle $X \xrightarrow{f} Y \xrightarrow{g} Z \xrightarrow{δ }$. By long exact sequence, $f$ is a weak kernel of $g$, and $g$ is a weak cokernel of $f$. Since $f$ is a monomorphism, and $g$ is an epimorphism, we see that $(f,g)$ is indeed and kernel cokernel pair. Now we show that these exact sequences gives an exact struature.

- (Verification of EX0). In fact, the triangles inclosed all split short exact sequences.
- (Veritication of EX1 and EX1'). By ET4, both inflations and deflations are closed under compositions.
- (Verification of EX2). Let $i : X → Y$ be an inflation and $f : X → Z$ be arbitrary morphism. In general, there are no PBPO squares but only homotopic squares induced by $(i,f)$. However, under the assumption, the total complex of such homotopic squares is an short exact sequence, thus it is a PBPO square.
- (Verification of EX2'). By dual analysis of EX2.

{% endpf %}

{% endprop %}

### Tri Cats and Extri Cats

To see that triangluated categories are extriangulated, we define the bifunctor $𝔼(-,?) := (-,?[1])$.

{% ex %}
(Yoneda lemma). For $δ ∈ 𝔼 (C,A) = (C,A[1])$, we explain $δ_!$ and $δ^!$ as follows.

1. $δ_! ∈ 𝖭𝖺𝗍 [(-, C), (-, A[1])]$ corresponds to $(-, δ)$. Hence, $δ_!(f) = δ ∘ f$.
2. $δ^! ∈ 𝖭𝖺𝗍 [(A, -), (C, -[1])]$ corresponds to $(δ, -) ∘ [1]$, where $[1] : (-,-) ≃ (-[1],-[1])$ is a natural isomorphism. Hence, $δ^!(g) = g[1] ∘ δ$.

{% endex %}

{% ex %}
(The realisation of $1$). Suppose that the triple $(\mathcal{C}, 𝔼 , 𝔰)$ satisfies ET1 and ET2, where $𝔼(-,?) = (-,?[1])$. This definition introduces us to the realisation of a distinguished extension

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

{% prop %}
(Triangulated categories are extriangulated). A triangulated category is an extriangulated category with the bifunctor $𝔼(-,?) := (-,?[1])$ and the realisation of $δ ∈ 𝔼(Z,X)$ is given by the unique embedding of a morphism to a triangle, i.e.,

$$\begin{equation}
X → Y → Z \xrightarrow δ X[1].
\end{equation}$$

This shows the ET1 and ET2 axioms. Moreover, such construction satisfies the ET3 and ET4 axioms, thus making the triangulated category into an extriangulated category.

{% pf %}
The equality concers with pre-composition (post-composition) with an extension element, becomes a usual composition. Hence, the verification of ET3 is straightforward. The verification of ET4 is given in remarks on ET4 axiom.
{% endpf %}

{% endprop %}

We mention the converse statement, that is, an extriangulated category with a compatible equivalence $[1] : \mathcal{C} → \mathcal{C}$ is triangulated.

{% prop %}
If an extriangulated category $(\mathcal{C} , 𝔼 , 𝔰 )$ admits an equivalence $[1] : \mathcal{C} → \mathcal{C}$, such that $𝔼 (-,?) := (-,?[1])$, then $(\mathcal{C} , [1], \text{conflations})$ automatically forms an triangulated category.

{% pf %}

The verify TR1-TR4. The most difficult part is TR2.
\\
\\
For TR1, we have analysis that split conflations are realisations of $0$, conflations are isomorphism closed. Any morphism appears in $𝔼 (-,?) = (-,?[1])$ as $[1]$ is an equivalence. Once we show TR2, we complete the verification of TR1.
\\
\\
For TR2, we take arbitrary conflation $X \xrightarrow f Y \xrightarrow g Z \xrightarrow δ X[1]$. By S4×4 lemma, we have the following commutative diagram of four conflations:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMCwiWCJdLFsyLDAsIlkiXSxbMywwLCJaIl0sWzMsMSwiWiJdLFsxLDEsIjAiXSxbMiwxLCJaIl0sWzEsMiwiWFsxXSJdLFsyLDIsIlhbMV0iXSxbNCwwLCJcXCwiXSxbNCwxLCJcXCwiXSxbMiwzLCJcXCwiXSxbMSwzLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwxLCJcXCwiXSxbNSwzLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMSwiZiJdLFsxLDIsImciXSxbMCw0XSxbNiw3LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDUsImciLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSw3LCJcXGxhbWJkYSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs0LDZdLFs0LDVdLFs2LDExLCIxX3tYWzFdfSJdLFs3LDEwLCJmX1xcYXN0IDFfe1hbMV19IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsOCwiXFxkZWx0YSJdLFszLDksIjAiXV0=
\begin{tikzcd}
& X & Y & Z & {\,} \\
{\,} & 0 & Z & Z & {\,} & {\,} \\
& {X[1]} & {X[1]} \\
& {\,} & {\,}
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
\arrow["{f_\ast 1_{X[1]}}", dashed, from=3-3, to=4-3]
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

{% endprop %}

### Almost Thick Subcats Creates Sub-Cat

We have not introduced the terminology of a sub-extriangulated category, as the notion of extriangulated functors has yet to be defined. The only purpuse of this subsection is to show that almost thick subcategories of extriangulated categories are themselves extriangulated categories, with the bifunctor and realisation inherited from the ambient category.

{% def %}
(**Almost Thick**). Let $(\mathcal{C} , 𝔼 , 𝔰)$ be an extriangulated category, and $\mathcal{D}$ is a full subcategory of $\mathcal{C}$. Say $\mathcal{D}$ is almost thick, if it satisfies the following property:

* For any conflation $X \xrightarrow fY \xrightarrow gZ \xrightarrow δ$ in $\mathcal{C}$, if two of $(X,Y,Z)$ lies in $\mathcal{D}$, then so is the third.

An almsot thick category is thick, if it is closed under diret summands.

{% enddef %}

{% lem %}
Almost thick subcategories of extriangulated categories are themselves extriangulated, with $(𝔼 , 𝔰)$ inherited from the ambient category $(\mathcal{C} , 𝔼 , 𝔰)$.

{% pf %}
There is nothing to prove for ET1. ET2 follows from the fact that $\mathcal{D}$ is closed under extensions. ET3 and ET4 are consequences of the uniqueness of embedding an inflation or a deflation into a conflation, together with the property of almost thick ness. Thus, every object introduced at each stage of the verification lies within $\mathcal{D}$.
{% endpf %}

{% endlem %}

### Happel's Construction Creates Quot-Cat

By Happel's theorem, from an Frobenius exact category $(\mathcal{A} , \mathcal{E})$, the additive quotient $\mathcal{A} / 𝐏𝐫𝐨𝐣$ is triangulated. We generalise both exact categories and triangulated categories into extriangulated ones, and quotient from some additive subcategory $\mathcal{B} ⊆ 𝐏𝐫𝐨𝐣 ∩ 𝐈𝐧𝐣$.

{% lem %}
Say $P$ is projective, if and only if the following equivalent statements holds.

1. $(P, -)$ sends deflations to epimorphisms.
2. For any $φ : P → Z$ and any deflation $f: Y → Z$, $φ$ factors through $f$.
3. $𝔼 (P, -)$ vanishes.
4. For any morphism $φ : P → Z$, one has that $φ ^∗ : 𝔼 (X, Z) → 0$.

{% pf %}
By definition, 2. ⇔ 1.. The long exact sequence shows that 3. ⇒ 1. ⇔ 2. ⇒ 4.. Now it remains to show that 4. ⇒ 3., we show by (¬ 3.) ⇒ (¬ 4.). Suppose that there is some non-split conflation $X → Y → P$, then $(1_P)^∗ : 𝔼 (P, X) → 𝔼 (P,X)$ does not vanish. This complete the proof.
{% endpf %}

{% endlem %}

{% thm %}
Let $(\mathcal{C} , 𝔼 , 𝔰)$ be an extriangulated category, and $\mathcal{B} ⊆ \mathcal{C}$ be an additive subcategory $\mathcal{B} ⊆ 𝐏𝐫𝐨𝐣 ∩ 𝐈𝐧𝐣$. Then $\mathcal{C} / \mathcal{B}$ is extriangulated wherein $\underline {𝔼(-,?)}$ and $\underline 𝔰$ are inherited from the ambient category.

{% pf %}
We show ET1. Since $𝔼 (\mathcal{B}, -)$ and $𝔼 (-, \mathcal{B})$ are zeros, there is an well-defined additive functor
$$\begin{equation}
\underline {𝔼(-,?)} : \mathcal{C} / \mathcal{B} \ × \  \mathcal{C} / \mathcal{B} → 𝐀𝐛,\quad (Z,X) ↦ \underline {𝔼 (Z,X)}.
\end{equation}$$

Remind that the localised category exhibits the same objects as the ambient category. Only the morphisms are changed. Hence, $\underline {𝔼(-,?)} =  {𝔼(-,?)}$.
\\
\\
We define $\underline 𝔰$ as follows. The realisation $\underline{𝔰}(δ)$ is defined in terms of $𝔰(δ)$. For any $X \xrightarrow{f} Y \xrightarrow{g} Z \in 𝔰(δ)$, an element of $\underline{𝔰}(δ)$ (in the second row) is of the form
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzIsMCwiWSJdLFs0LDAsIloiXSxbMCwxLCJYIl0sWzQsMSwiWiJdLFsyLDEsIlknIl0sWzUsMCwiXFwsIl0sWzUsMSwiXFwsIl0sWzEsMiwiXFx1bmRlcmxpbmUgZyJdLFswLDEsIlxcdW5kZXJsaW5lIGYiXSxbMCwzLCJcXHVuZGVybGluZSB7MV9YfSJdLFsyLDQsIlxcdW5kZXJsaW5lIHsxX1p9Il0sWzMsNSwiXFx1bmRlcmxpbmUge2YnfSJdLFs1LDQsIlxcdW5kZXJsaW5lIHtnJ30iXSxbMSw1LCJcXHVuZGVybGluZSB7XFx2YXJwaGkgfSJdLFsyLDZdLFs0LDddXQ==
\begin{tikzcd}
X && Y && Z & {\,} \\
X && {Y'} && Z & {\,}
\arrow["{\underline f}", from=1-1, to=1-3]
\arrow["{\underline {1_X}}", from=1-1, to=2-1]
\arrow["{\underline g}", from=1-3, to=1-5]
\arrow["{\underline {\varphi }}", from=1-3, to=2-3]
\arrow[from=1-5, to=1-6]
\arrow["{\underline {1_Z}}", from=1-5, to=2-5]
\arrow["{\underline {f'}}", from=2-1, to=2-3]
\arrow["{\underline {g'}}", from=2-3, to=2-5]
\arrow[from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

By localisation of the additive quotient, such a realisation $𝔰$ preserves zero objects and biproducts. For any morphism of extensions $(\underline a, \underline c) : δ \to δ'$, there exist morphisms $a'$ and $c'$ in the ambient category such that $\underline a = \underline{a'}$ and $\underline c = \underline{c'}$, with $(a', c') : δ \to δ'$.

* Such morphisms $a'$ and $c'$ can always be found, since localisation by an additive quotient is surjective on Hom-sets.

Consequently, there exists a realisation of $δ$ which is also a realisation of $δ$ in the ambient category. By ET2 in the ambient category, it follows that one may complete the $2 \times 3$ square diagram for $(\underline a, \underline c) : δ \to δ'$ in the localised category.
\\
\\
Now we show ET3. We take arbitrary commutative diagram in the localised category:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzIsMCwiWSJdLFs0LDAsIloiXSxbNCwxLCJaJyJdLFsyLDEsIlknIl0sWzAsMSwiWCciXSxbNSwwLCJcXCwiXSxbNSwxLCJcXCwiXSxbMSwyLCJcXHVuZGVybGluZSBnIl0sWzAsMSwiXFx1bmRlcmxpbmUgZiJdLFs0LDMsIlxcdW5kZXJsaW5lIHtnJ30iXSxbMSw0LCJcXHVuZGVybGluZSB7XFxiZXRhfSJdLFs1LDQsIlxcdW5kZXJsaW5lIHtmJ30iXSxbMCw1LCJcXHVuZGVybGluZSB7XFxhbHBoYSB9Il0sWzIsNiwiXFxkZWx0YSJdLFszLDcsIlxcZGVsdGEnIl1d
\begin{tikzcd}[ampersand replacement=\&]
X \&\& Y \&\& Z \& {\,} \\
{X'} \&\& {Y'} \&\& {Z'} \& {\,}
\arrow["{\underline f}", from=1-1, to=1-3]
\arrow["{\underline {\alpha }}", from=1-1, to=2-1]
\arrow["{\underline g}", from=1-3, to=1-5]
\arrow["{\underline {\beta}}", from=1-3, to=2-3]
\arrow["\delta", from=1-5, to=1-6]
\arrow["{\underline {f'}}", from=2-1, to=2-3]
\arrow["{\underline {g'}}", from=2-3, to=2-5]
\arrow["{\delta'}", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

Without loss of generality, we may assume that the realisations of $δ$ and $δ'$ are given by the corresponding realisations in the ambient category, simply by appending underscores to the morphisms. We see that $f'α - β f$ factors through some $I ∈ \mathcal{B}$, write $f'α - β f = ji$. Since $\binom fi$ is an inflation, we obtain the diagram
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzIsMCwiWVxcb3BsdXMgSSJdLFs0LDAsIlonJyJdLFs0LDEsIlonIl0sWzIsMSwiWSciXSxbMCwxLCJYJyJdLFs1LDAsIlxcLCJdLFs1LDEsIlxcLCJdLFsxLDIsImcnJyJdLFswLDEsIlxcYmlub20gZmkiXSxbNCwzLCJnJyJdLFsxLDQsIihcXGJldGEsaikiXSxbNSw0LCJmJyJdLFswLDUsIlxcYWxwaGEiXSxbMiw2LCJcXGRlbHRhJyciXSxbMyw3LCJcXGRlbHRhJyJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
X \&\& {Y\oplus I} \&\& {Z''} \& {\,} \\
{X'} \&\& {Y'} \&\& {Z'} \& {\,}
\arrow["{\binom fi}", from=1-1, to=1-3]
\arrow["\alpha", from=1-1, to=2-1]
\arrow["{g''}", from=1-3, to=1-5]
\arrow["{(\beta,j)}", from=1-3, to=2-3]
\arrow["{\delta''}", from=1-5, to=1-6]
\arrow["{f'}", from=2-1, to=2-3]
\arrow["{g'}", from=2-3, to=2-5]
\arrow["{\delta'}", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

By S4×4 lemma, we have the following commutative diagram of four conflations:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiWCJdLFsyLDEsIllcXG9wbHVzIEkiXSxbMywxLCJaJyciXSxbNCwxLCJcXCwiXSxbMSwyLCJYIl0sWzIsMiwiWSJdLFsyLDAsIkkiXSxbMywyLCJaIl0sWzQsMiwiXFwsIl0sWzMsMCwiSSJdLFswLDIsIlxcLCJdLFs1LDIsIlxcLCJdLFswLDEsIlxcYmlub20gZmkiXSxbMSwyLCJnJyciXSxbMiwzLCJcXGRlbHRhJyciXSxbMCw0LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDVdLFsxLDUsIigxLDApIl0sWzYsMSwiXFxiaW5vbSAwMSJdLFs1LDcsImciXSxbNyw4LCJcXGRlbHRhIl0sWzYsOSwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOSwyXSxbMiw3XV0=
\begin{tikzcd}
&& I & I \\
& X & {Y\oplus I} & {Z''} & {\,} \\
{\,} & X & Y & Z & {\,} & {\,}
\arrow[equals, from=1-3, to=1-4]
\arrow["{\binom 01}", from=1-3, to=2-3]
\arrow[from=1-4, to=2-4]
\arrow["{\binom fi}", from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow["{g''}", from=2-3, to=2-4]
\arrow["{(1,0)}", from=2-3, to=3-3]
\arrow["{\delta''}", from=2-4, to=2-5]
\arrow[from=2-4, to=3-4]
\arrow[from=3-2, to=3-3]
\arrow["g", from=3-3, to=3-4]
\arrow["\delta", from=3-4, to=3-5]
\end{tikzcd}
{% endtikz %}

Since $𝔼(Z, I) = 0$, we may write $I → Z'' → Z$ as the standard split form without the loss of generality, that is,
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiWCJdLFsyLDEsIllcXG9wbHVzIEkiXSxbMywxLCJaIFxcb3BsdXMgSSJdLFs0LDEsIlxcLCJdLFsxLDIsIlgiXSxbMiwyLCJZIl0sWzIsMCwiSSJdLFszLDIsIloiXSxbNCwyLCJcXCwiXSxbMywwLCJJIl0sWzAsMiwiXFwsIl0sWzUsMiwiXFwsIl0sWzAsMSwiXFxiaW5vbSBmaSJdLFsxLDIsIlxcYmlub20ge2cgXFwgMH17YyBcXCAxfSJdLFsyLDMsIlxcZGVsdGEnJyJdLFswLDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNV0sWzEsNSwiKDEsMCkiXSxbNiwxLCJcXGJpbm9tIDAxIl0sWzUsNywiZyJdLFs3LDgsIlxcZGVsdGEiXSxbNiw5LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDIsIlxcYmlub20gMDEiXSxbMiw3LCIoMSwwKSJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
\&\& I \& I \\
\& X \& {Y\oplus I} \& {Z \oplus I} \& {\,} \\
{\,} \& X \& Y \& Z \& {\,} \& {\,}
\arrow[equals, from=1-3, to=1-4]
\arrow["{\binom 01}", from=1-3, to=2-3]
\arrow["{\binom 01}", from=1-4, to=2-4]
\arrow["{\binom fi}", from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow["{\binom {g \ 0}{c \ 1}}", from=2-3, to=2-4]
\arrow["{(1,0)}", from=2-3, to=3-3]
\arrow["{\delta''}", from=2-4, to=2-5]
\arrow["{(1,0)}", from=2-4, to=3-4]
\arrow[from=3-2, to=3-3]
\arrow["g", from=3-3, to=3-4]
\arrow["\delta", from=3-4, to=3-5]
\end{tikzcd}
{% endtikz %}

We now combine the morphism of extension in the ambient category, $(\alpha, \gamma) : \delta'' \to \delta'$, with the morphism of extension in the localised category, $(1, \binom{1}{0}): \delta \to \delta'' = \delta \oplus 0_{Z,0}$. Thus, the composition yields a morphism of extension between $\delta$ and $\delta'$ in the localised category.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMSwiWCJdLFsyLDEsIllcXG9wbHVzIEkiXSxbNCwxLCJaIFxcb3BsdXMgSSJdLFs1LDEsIlxcLCJdLFswLDAsIlgiXSxbMiwwLCJZIl0sWzQsMCwiWiJdLFs1LDAsIlxcLCJdLFswLDIsIlgnIl0sWzIsMiwiWSciXSxbNCwyLCJaJyJdLFs1LDIsIlxcLCJdLFswLDEsIlxcYmlub20gZmkiXSxbMSwyLCJcXGJpbm9tIHtnIFxcIDB9e2MgXFwgMX0iXSxbMiwzLCJcXGRlbHRhJyciXSxbMCw0LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDUsImYiXSxbNSwxLCJcXGJpbm9tIDEwIl0sWzUsNiwiZyJdLFs2LDcsIlxcZGVsdGEiXSxbNiwyLCJcXGJpbm9tIDEwIl0sWzAsOCwiXFxhbHBoYSAiLDJdLFsxMCwxMSwiXFxkZWx0YSciLDJdLFs4LDksImYnIiwyXSxbOSwxMCwiZyciLDJdLFsxLDksIihcXGJldGEsaikiLDJdLFsyLDEwLCJcXGdhbW1hIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsMSwiXFxib3h0aW1lcyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDIsIlxcYm94dGltZXMiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
X && Y && Z & {\,} \\
X && {Y\oplus I} && {Z \oplus I} & {\,} \\
{X'} && {Y'} && {Z'} & {\,}
\arrow["f", from=1-1, to=1-3]
\arrow["\boxtimes"{description}, draw=none, from=1-1, to=2-3]
\arrow["g", from=1-3, to=1-5]
\arrow["{\binom 10}", from=1-3, to=2-3]
\arrow["\boxtimes"{description}, draw=none, from=1-3, to=2-5]
\arrow["\delta", from=1-5, to=1-6]
\arrow["{\binom 10}", from=1-5, to=2-5]
\arrow[equals, from=2-1, to=1-1]
\arrow["{\binom fi}", from=2-1, to=2-3]
\arrow["{\alpha }"', from=2-1, to=3-1]
\arrow["{\binom {g \ 0}{c \ 1}}", from=2-3, to=2-5]
\arrow["{(\beta,j)}"', from=2-3, to=3-3]
\arrow["{\delta''}", from=2-5, to=2-6]
\arrow["\gamma"', dashed, from=2-5, to=3-5]
\arrow["{f'}"', from=3-1, to=3-3]
\arrow["{g'}"', from=3-3, to=3-5]
\arrow["{\delta'}"', from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

For ET4, we construct the Noether diagram in the ambient category, which then automatically is a Noether diagram in the localised category.

{% endpf %}

{% endthm %}

### Frobenius Extri Cats

Broadly speaking, a Frobenius category is assumed to possess a sufficient supply of projective and injective objects. We now present the definition of Frobenius extriangulated categories.

{% def %}
(**Frobenius extriangulated category**). An extriangulated category $(\mathcal{C}, 𝔼, 𝔰)$ is said to be Frobenius if the following conditions are satisfied:

- Every object $X$ admits a conflation $K → P^X → X$, where $P^X$ is projective;
- Every object $Y$ admits a conflation $Y → I_Y → C$, where $I_Y$ is injective;
- The classes of projective and injective objects coincide.

{% enddef %}

{% ex %}
Let $\mathcal{C}$ be a Frobenius extriangulated category with projective-injective objects $\mathcal{I} = \mathcal{P}$. By definition, as will be detailed in the subsequent sections, $(\mathcal{P}, \mathcal{C}; \mathcal{C}, \mathcal{I})$ constitutes a Hovey twin cotorsion pairs with $\mathrm{Cone}(\mathcal{I}, \mathcal{P}) = \mathrm{coCone}(\mathcal{I}, \mathcal{P}) = \mathcal{P}$. If, moreover, we assume that $\mathcal{C}$ is weakly idempotent complete, then, by model structure, the localised category $𝖧𝗈 \mathcal{C} ≃ \frac{\mathcal{C} ∩ \mathcal{C}}{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{C}} = \frac{\mathcal{C}}{\mathcal{W}}$ is triangulated.
{% endex %}

In any case, we dispense with the assumption of weak idempotent completeness and provide a constructive proof. This proof closely parallels that demonstrating the triangulation of $𝖧𝗈 \mathcal{A}$. The only distinction lies in the fact that the extension element $η$ is represented by a fraction in $𝖧𝗈 \mathcal{A}$, whereas in $\mathcal{C} / \mathcal{P}$, $η$ is represented by a morphism, owing to the properties of injectives.

{% thm %}
Let $(\mathcal{C} , 𝔼 , 𝔰)$ be Frobenius extriangulated. Let $\mathcal{P}$ denote the class of proj-injectives. Then the quotient extriangulated category $(\mathcal{C} / \mathcal{P}, 𝔼 , 𝔰)$ is triangulated.

{% pf %}

We use $[-] : \mathcal{C} → \mathcal{C} / \mathcal{P}$ to denote the additive quotient functor. The auto equivalence $[1]$ is defined by suspension sequence $X \xrightarrow {i_X} I_X \xrightarrow{p_X} C_X \xrightarrow{δ _X}$. We take $[∙][1] := [C_∙]$ and verify it is well-defined, by the following procedure.

1. ($[C_∙ ] : \mathcal{C} → \mathcal{C} / \mathcal{P}$). We fix all suspension sequences, and show that the assignment $\mathcal{C} → \mathcal{C} / \mathcal{P}$, $X ↦ C_X ↦ [C_X]$, is a well-defined functor. By lifting property of injectives, and ET3, the morphism $f : X → Y$ yields $C_f : C_X → C_Y$ such that $(f, C_f) : δ _X → δ _Y$ is a morphism of extension. Such $C_f$ is not unique, whereas, $(C_f - (C_f)') ∈ \ker (δ _Y)_!$ factors through $I_Y$. It yields that $[C_f] = [(C_f)']$. Finally, it is straightforward to show that $[C_{1_X}] = 1_{[C_X]}$ and $[C_{g ∘ f}] = [C_g] ∘ [C_f]$.
2. ($[1] : \mathcal{C} / \mathcal{P} →  \mathcal{C} / \mathcal{P}$). The assignment $∙ ↦ [C_∙]$ factors through the additive quotient $[-]$. For any $P ∈ \mathcal{P}$, $C_P$ is a summand of $I_P$. Hence, $[C_P]$ vanishes. This defines $[1] : \mathcal{C} / \mathcal{P} → \mathcal{C} / \mathcal{P}$, sending $[∙]$ to $[∙] [1]$.

Now we make all $η$ morphisms in $\mathcal{C} / \mathcal{P}$, i.e., $[η] := [κ]$ in the following diagram:

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzIsMCwiWSJdLFs0LDAsIloiXSxbNSwwLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwxLCJYIl0sWzIsMSwiSV9YIl0sWzQsMSwiQ19YIl0sWzAsMSwiZiJdLFsxLDIsImciXSxbMiwzLCJcXGV0YSJdLFs1LDYsImlfWCJdLFs2LDcsInBfWCJdLFs3LDQsIlxcZGVsdGEgX1giXSxbMCw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDYsIlxcbGFtYmRhICIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDcsIlxca2FwcGEgIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
X \&\& Y \&\& Z \& {\,} \\
X \&\& {I_X} \&\& {C_X} \& {\,}
\arrow["f", from=1-1, to=1-3]
\arrow[equals, from=1-1, to=2-1]
\arrow["g", from=1-3, to=1-5]
\arrow["{\lambda }", dashed, from=1-3, to=2-3]
\arrow["\eta", from=1-5, to=1-6]
\arrow["{\kappa }", dashed, from=1-5, to=2-5]
\arrow["{i_X}", from=2-1, to=2-3]
\arrow["{p_X}", from=2-3, to=2-5]
\arrow["{\delta _X}", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

Again, the existence of $λ$ is due to the lifting property of $I_X$, $[κ]$ is uniquely defined. Now we show that $[-]: 𝔼 (Z, X) → (Z, C_X)_{\mathcal{C} / \mathcal{P} }$ is indeed a natural transformation. Firstly, it is additive by definition of morphism of extension. It is also straightforward to show that $[φ ^∗ η]= [η ] ∘ [φ]$. We finally show that $[ψ _∗ η ] = [ψ ] [1] ∘ [η ]$.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiWCJdLFsyLDAsIlkiXSxbNCwwLCJaIl0sWzUsMCwiXFwsIl0sWzUsMSwiXFwsIl0sWzAsMSwiWCJdLFsyLDEsIklfWCJdLFs0LDEsIkNfWCJdLFswLDIsIlgnIl0sWzIsMiwiSV97WCd9Il0sWzQsMiwiQ197WCd9Il0sWzUsMiwiXFwsICJdLFswLDEsImYiXSxbMSwyLCJnIl0sWzIsMywiXFxldGEiXSxbNSw2LCJpX1giXSxbNiw3LCJwX1giXSxbNyw0LCJcXGRlbHRhIF9YIl0sWzAsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSw2LCJcXGxhbWJkYSAiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiw3LCJcXGthcHBhICIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDgsIlxccHNpICJdLFs5LDEwLCJwX3tYJ30iXSxbMTAsMTEsIlxcZGVsdGFfe1gnfSJdLFs4LDksImlfe1gnfSJdLFs2LDksIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs3LDEwLCJDX3tcXHBzaX0iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
X \&\& Y \&\& Z \& {\,} \\
X \&\& {I_X} \&\& {C_X} \& {\,} \\
{X'} \&\& {I_{X'}} \&\& {C_{X'}} \& {\, }
\arrow["f", from=1-1, to=1-3]
\arrow[equals, from=1-1, to=2-1]
\arrow["g", from=1-3, to=1-5]
\arrow["{\lambda }", dashed, from=1-3, to=2-3]
\arrow["\eta", from=1-5, to=1-6]
\arrow["{\kappa }", dashed, from=1-5, to=2-5]
\arrow["{i_X}", from=2-1, to=2-3]
\arrow["{\psi }", from=2-1, to=3-1]
\arrow["{p_X}", from=2-3, to=2-5]
\arrow[dashed, from=2-3, to=3-3]
\arrow["{\delta _X}", from=2-5, to=2-6]
\arrow["{C_{\psi}}", dashed, from=2-5, to=3-5]
\arrow["{i_{X'}}", from=3-1, to=3-3]
\arrow["{p_{X'}}", from=3-3, to=3-5]
\arrow["{\delta_{X'}}", from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

By diagram, $[ψ _∗ η ] = [κ ^∗ ψ _∗ δ _X ] = [κ ^∗ (C_ψ )^∗ δ _{X'}] = [δ _{X'}] ∘ [ψ] [1] ∘  [κ]$. By construction, $[δ _{X'}] = 1_{X[1]}$ and $[κ ] = [η ]$. This shows the naturality.
\\
\\
We construct $[-1]$ dually via the desuspension sequence $K^X → P^X → X$. Now we show that $[∙ ] ↦ ([∙] [-1]) [1]$ is a natural isomorphism. First we show that it is an isomorphism:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzMsMywiXFwsIl0sWzIsMywiXFwsIl0sWzIsMCwiS15YIl0sWzIsMSwiSV97S15YfSJdLFsyLDIsIkNfe0teWH0iXSxbMywwLCJQXlgiXSxbNCwwLCJYIl0sWzUsMCwiXFwsICJdLFszLDIsIkNfe0teWH0iXSxbNCwxLCJYIl0sWzMsMSwiRSJdLFs1LDEsIlxcLCJdLFswLDEsIlxcLCJdLFs2LDEsIlxcLCJdLFs0LDEsIlxcZGVsdGEgX3tLXlh9Il0sWzIsMywiaV97S15YfSJdLFsyLDUsImpeWCJdLFs1LDYsInFeWCJdLFs2LDcsIlxcbXVfWCJdLFs2LDksIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsOCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMyw0LCJwX3tLXlh9Il0sWzMsMTBdLFsxMCw5LCJzX1giLDAseyJjb2xvdXIiOlszNTUsMTAwLDYwXX0sWzM1NSwxMDAsNjAsMV1dLFs1LDEwXSxbMTAsOCwidF5YIiwwLHsiY29sb3VyIjpbMzU1LDEwMCw2MF19LFszNTUsMTAwLDYwLDFdXSxbOCwwXSxbOSwxMV1d
\begin{tikzcd}[ampersand replacement=\&]
\&\& {K^X} \& {P^X} \& X \& {\, } \\
{\,} \&\& {I_{K^X}} \& E \& X \& {\,} \& {\,} \\
\&\& {C_{K^X}} \& {C_{K^X}} \\
\&\& {\,} \& {\,}
\arrow["{j^X}", from=1-3, to=1-4]
\arrow["{i_{K^X}}", from=1-3, to=2-3]
\arrow["{q^X}", from=1-4, to=1-5]
\arrow[from=1-4, to=2-4]
\arrow["{\mu_X}", from=1-5, to=1-6]
\arrow[equals, from=1-5, to=2-5]
\arrow[from=2-3, to=2-4]
\arrow["{p_{K^X}}", from=2-3, to=3-3]
\arrow["{s_X}", color={rgb,255:red,255;green,51;blue,68}, from=2-4, to=2-5]
\arrow["{t^X}", color={rgb,255:red,255;green,51;blue,68}, from=2-4, to=3-4]
\arrow[from=2-5, to=2-6]
\arrow[equals, from=3-3, to=3-4]
\arrow["{\delta _{K^X}}", from=3-3, to=4-3]
\arrow[from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

By identities, $(s_X)^∗ μ_X + (t^X)^∗ (δ _{K_X}) = 0$ where $[s_X]$, $[δ _{K_X}]$, $[t_X]$ are isomorphisms. Hence, $[μ _X] : [X] → [C_{K^X}]$ is an isomorphism. Before the proof of naturality, we shall find $κ _X : X → C_{K^X}$ such that $[κ _X] = [μ _X]$. By lifting property of injectives, there is $κ _X : X → C_{K^X}$ making $(1_{K^X}, κ _X) : μ _X → μ _Y$ a morphism of extension and thus $[κ _X] = [μ _X]$. Now we take $f : X → Y$, the morphism of extension of $(K^f, f): μ _X → μ _Y$ gives the equality in $\mathcal{C} / \mathcal{P}$:
$$\begin{equation}
([f][-1]) [1] ∘ [κ _X] = [C_{(K^f)}] ∘ [κ _X] = [(K^f)_∗ μ _X] = [f^∗ μ _Y] = [κ _Y] ∘ [f]
\end{equation}$$
\\
\\
Now we show the extriangulated category $(\mathcal{C} / \mathcal{P} , \underline {𝔼 (-,-)} , \underline {𝔰 (-)})$ is determined by the autoequivalence $[1]$, i.e., there is an natural isomorphism $\underline {𝔼 (-,?)} ≃ (- , ?[1])_{\mathcal{C} / \mathcal{P} }$. By naturality, it suffices to show the group isomorphism $\underline {𝔼 (Z,X)} → (Z,X[1])_{\mathcal{C} / \mathcal{P} }$ for each pair $(Z,X)$.

- On one hand, the natural transformation $[∙ ]: 𝔼 (Z,X) → (Z,X[1])_{\mathcal{C} / \mathcal{P} }$ is surjective, since every $[f]$ has the preimage $f^∗ δ _X$.
- On the other hand, the kernel of $[∙ ]: 𝔼 (Z,X) → (Z,X[1])_{\mathcal{C} / \mathcal{P} }$ contains in the kernel of $𝔼 (Z,X) ↠ \underline {𝔼 (Z,X)}$. We take arbitary $η ∈ 𝔼 (Z,X)$ such that $[η] = 0$. By definition, there is $λ :Z → C_X$ such that $λ ^∗ δ _X = η$. Since $0 = [η] = [λ]$, $λ$ factors through some $J ∈ \mathcal{I}$. Since $η$ is the image of $𝔼 (Z, J)$, it belongs to the kernel of $𝔼 (Z,X) ↠ \underline {𝔼 (Z,X)}$.

This shows that $(\mathcal{C} / \mathcal{P} , \underline {𝔼 (-,?)} = (-,?[1]), \underline {𝔰 (-)})$ is extriangulated where $[1]$ is an autoequivalence. Hence, it is triangulated.

{% endpf %}

{% endthm %}

{% cor %}
An extriangulated category is triangulated, if and only if the following equivalent conditions holds:

1. It is Frobenius with $\mathcal{P} = \mathcal{I} = 0$.
2. $𝔼 (- , ?) := (-, ?[1])$ is defined by an auto equivalence $[1]$.

Sketch of the constructional prove: once 1. holds, every $X$ fits into some conflation $X → 0 → X'$, where $X' = X[1]$; once 2. holds, $1_{X[1]} ∈ 𝔼 (X[1], X)$ is realised by $X → 0 → X[1]$.

{% endcor %}

{% cor %}
If all morphisms in an extriangulated category are both inflations and deflations, then the category is triangulated.
{% pf %}
This shows that $0 = \mathcal{P} = \mathcal{I}$, and the category has enough proj-injectives.
{% endpf %}
{% endcor %}

### Remarks on Additive Localisations

We shall prove in this section that the additivity of localisation functor provided $S ⊆ 𝖬𝗈𝗋$ is closed under direct sums. The terminology of localisation refers to the construction of Gabriel-Zimmermann. In practice, we employ the following notations (where $\mathcal{A}$ is assumed to be additive):

- $\mathcal{A} [S^{-1}]$, the standard notion of the localisation of the category $\mathcal{A}$ with respect to a class of morphisms $S$. We use the fucntor $Q : \mathcal{A} → \mathcal{A} [S^{-1}]$.
- $S^{-1}\mathcal{A}$, when $S$ is a multiplicative system, we write $S^{-1}\mathcal{A} := \mathcal{A} [S^{-1}]$.
- $\mathcal{A} / \mathcal{C}$ denotes the stable category of $\mathcal{A}$ with respect to an additive subcategory $\mathcal{C}$. In this article, we do not discuss the Verdier quotient or Serre quotient, which are commonly denoted as $\mathcal{A} / \mathcal{C}$ but are not stable categories in general.
- There exist alternative approaches to localisation, for example, Quillen's $π$-construction.

These categories possess the same class of objects as $\mathcal{A}$. Intuitively, $\mathcal{A} [S^{-1}]$ and $S^{-1}\mathcal{A}$ have larger Hom-sets (often proper classes), whereas $\mathcal{A} / \mathcal{C}$ and $π \mathcal{A}$ have smaller Hom-sets.

{% ex %}
($\mathcal{A} [S^{-1}]$ may have a large Hom-class). Let $\mathcal{C}$ be a category with

- ${A} ⊔ {B} ⊔ 𝖲𝖾𝗍𝗌$ as its class of objects,
- morphisms consisting of identities, $a_X: X → A$, and $b_X : X → B$, for $X ∈ 𝖲𝖾𝗍𝗌$.

Such a category is locally small. If we take $S = \{a_X ∣ X ∈ 𝖲𝖾𝗍𝗌 \}$, then $(X,Y)_{\mathcal{A} [S^{-1}]}$ is exceedingly large.

{% endex %}

{% ex %}
The category $\mathcal{A} / \mathcal{C}$ and $\mathcal{A} [S^{-1}]$ are solutions of typical functorial problems (problème d'application universelle).

- For $F : \mathcal{A} → \mathcal{B}$ sending $S$ to the class of isomorphisms in $\mathcal{B}$, then $F$ uniquely factors through the localisation. In other words, $F$ can be uniquely defined on $\mathcal{A} [S^{-1}]$.
- For $F : \mathcal{A} → \mathcal{A} / \mathcal{C}$ sending $\mathcal{C}$ to zero objects in $\mathcal{B}$, then $F$ uniquely factors through the localisation. In other words, $F$ can be uniquely defined on $\mathcal{A} / \mathcal{C}$.

We do not use the terminology of universal property, since it is dangerous to regard $\mathcal{A} [S^{-1}]$ as an initial or terminal object in a so-called category of categories.

{% endex %}

{% lem %}
Let $\mathcal{C}$ be an additive subcategory of $\mathcal{A}$, $S ⊆ 𝖬𝗈𝗋 (\mathcal{A})$ be the set of morphisms such that

- $f ∈ S$ if there is some $g$ such that $fg-1$ and $gf - 1$ factors through some objects in $\mathcal{C}$.

Now $\mathcal{A} / \mathcal{C} ≃ \mathcal{A} [S^{-1}]$ are isomorphic categories.

{% pf %}

One one hand, we shall prove that $Q : \mathcal{A} → \mathcal{A} [S^{-1}]$ factors through the stable category $\mathcal{A} → \mathcal{A} / \mathcal{C}$. This is due to $C → 0$ are isomorphisms in $\mathcal{A} [S^{-1}]$, thus $Q : \mathcal{C} → 0$. On the other hand, we shall show that $\mathcal{A} → \mathcal{A} / \mathcal{C}$ factors through $Q$. By definition, all morphisms in $S$ are isomorphisms in $\mathcal{A} / \mathcal{C}$.

{% endpf %}
{% endlem %}

We shall demonstrate that $Q$ is an additive functor provided $S$ is closed under direct sums. This proposition is established by means of:

- the full faithfulness of the precomposition $(-)∘ Q : 𝐅𝐮𝐧𝐜𝐭 (\mathcal{A} [S^{-1}], \mathcal{D}) \to 𝐅𝐮𝐧𝐜𝐭 (\mathcal{A}, \mathcal{D})$;
- the fact that localisation preserves adjoint pairs;
- currying of product categories.

{% lem %}
For any $\mathcal{B}$, the functor

$$\begin{equation}
Q^∗  : 𝐅𝐮𝐧𝐜𝐭 (\mathcal{A} [S^{-1}], \mathcal{B}) → 𝐅𝐮𝐧𝐜𝐭 (\mathcal{A}, \mathcal{B}),\quad F ↦ FQ
\end{equation}$$

is fully faithful.

{% pf %}
We fix $(F,G) ⇒ (FQ,GQ)$.
\\
\\
To see that it is faithful, it suffices to recover arbitrary natural transforamtion $η ∈ (F,G)$ from its image, i.e., $\{η_{QX}:FQX → GQX\}_{X ∈ \mathcal{C}}$. Since $Q$ doesnot affect on the objects, the natural transformation $\{η_Y\}_{Y∈ S^{-1}\mathcal{C}}=\{η _{QX}\}_{QX∈ S^{-1}\mathcal{C}}$ is the only preimage of $η$.
\\
\\
Now we show the fullness. We take any $θ ∈ (FQ,GQ)$. For the class of morphisms in $\mathcal{A} [S^{-1}]$, i.e.,

$$\begin{equation}
\{a\cdots s^{-1}:X→ Y\}=\mathsf{Mor}(\mathcal{C} [S^{-1}]).
\end{equation}$$

By natural transformation, there is also a zigzag commutative diagram of morphisms:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzAsMCwiRlFYIl0sWzQsMCwiRlFZIl0sWzAsMSwiR1FYIl0sWzQsMSwiR1FZIl0sWzEsMCwiRlFaIl0sWzEsMSwiR1FaIl0sWzIsMCwiXFxjZG90cyJdLFsyLDEsIlxcY2RvdHMiXSxbMywwLCJGUVciXSxbMywxLCJHUVciXSxbMCwyLCJcXHRoZXRhX1giXSxbMSwzLCJcXHRoZXRhX1kiXSxbMCw0LCJGKGEpIl0sWzIsNSwiRyhhKSJdLFs0LDUsIlxcdGhldGFfWiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs5LDMsIkcocyleey0xfSJdLFs4LDEsIkYocyleey0xfSJdLFs0LDZdLFs2LDhdLFs1LDddLFs3LDldLFs4LDksIlxcdGhldGFfVyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
FQX \& FQZ \& \cdots \& FQW \& FQY \\
GQX \& GQZ \& \cdots \& GQW \& GQY
\arrow["{F(a)}", from=1-1, to=1-2]
\arrow["{\theta_X}", from=1-1, to=2-1]
\arrow[from=1-2, to=1-3]
\arrow["{\theta_Z}", dashed, from=1-2, to=2-2]
\arrow[from=1-3, to=1-4]
\arrow["{F(s)^{-1}}", from=1-4, to=1-5]
\arrow["{\theta_W}", dashed, from=1-4, to=2-4]
\arrow["{\theta_Y}", from=1-5, to=2-5]
\arrow["{G(a)}", from=2-1, to=2-2]
\arrow[from=2-2, to=2-3]
\arrow[from=2-3, to=2-4]
\arrow["{G(s)^{-1}}", from=2-4, to=2-5]
\end{tikzcd}
{% endtikz %}

We denote $η_{QX} := θ_X$. Observe that the verification of the naturality of $η$ is accomplished by checking the commutativity of zigzag diagrams; thus, it suffices to verify the case of a 2×2 square and proceed by induction. This follows immediately from the naturality of $θ$.

{% endpf %}

{% endlem %}

{% lem %}
(Adjunction induced by localisations). Let $L : \mathcal{C} ⇆ \mathcal{D} : R$ be adjoint functors. Suppose that there are class of morphisms $S ⊆ 𝖬𝗈𝗋 (\mathcal{C})$ and $T ⊆ 𝖬𝗈𝗋 (\mathcal{D})$. Then we obtain the adjoint functors in the localised category.

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMSwwLCJcXG1hdGhzY3IgQyJdLFs0LDAsIlxcbWF0aHNjciBEIl0sWzEsMiwiXFxtYXRoc2NyIENbU157LTF9XSJdLFswLDAsIlMiXSxbNSwwLCJUIl0sWzQsMiwiXFxtYXRoc2NyIERbVF57LTF9XSJdLFswLDEsIkwiLDAseyJvZmZzZXQiOi0yLCJjdXJ2ZSI6LTF9XSxbMSwwLCJSIiwwLHsib2Zmc2V0IjotMiwiY3VydmUiOi0xfV0sWzAsMiwiUV9TIl0sWzEsNSwiUV9UIl0sWzIsNSwiXFxvdmVybGluZSBMIiwwLHsib2Zmc2V0IjotMiwiY3VydmUiOi0xfV0sWzUsMiwiXFxvdmVybGluZSBSIiwwLHsib2Zmc2V0IjotMiwiY3VydmUiOi0xfV0sWzMsMCwiXFxzdWJzZXRlcSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDQsIlxcc3Vwc2V0ZXEiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiw3LCJcXGJvdCIsMSx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCwxMSwiXFxib3QiLDEseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
S & {\mathcal C} &&& {\mathcal D} & T \\
\\
& {\mathcal C[S^{-1}]} &&& {\mathcal D[T^{-1}]}
\arrow["\subseteq"{description}, draw=none, from=1-1, to=1-2]
\arrow[""{name=0, anchor=center, inner sep=0}, "L", shift left=2, curve={height=-6pt}, from=1-2, to=1-5]
\arrow["{Q_S}", from=1-2, to=3-2]
\arrow[""{name=1, anchor=center, inner sep=0}, "R", shift left=2, curve={height=-6pt}, from=1-5, to=1-2]
\arrow["\supseteq"{description}, draw=none, from=1-5, to=1-6]
\arrow["{Q_T}", from=1-5, to=3-5]
\arrow[""{name=2, anchor=center, inner sep=0}, "{\overline L}", shift left=2, curve={height=-6pt}, from=3-2, to=3-5]
\arrow[""{name=3, anchor=center, inner sep=0}, "{\overline R}", shift left=2, curve={height=-6pt}, from=3-5, to=3-2]
\arrow["\bot"{description}, draw=none, from=0, to=1]
\arrow["\bot"{description}, draw=none, from=2, to=3]
\end{tikzcd}
{% endtikz %}

{% pf %}
All of $\overline L$, $\overline R$, $\overline η$ and $\overline ε$ are uniquely determined by localisation. It is clear that the triangle identities holds for localised categories. This completes the proof.
{% endpf %}

{% endlem %}

We shall not provide a detailed exposition of the NBGC axioms. It is worth noting, however, that difficulties may arise when forming the Cartesian product of proper classes, or when taking a subclass defined by certain well-specified conditions (aka. Axiom Schema of Class Separation).

{% prop %}
(Currying the proiduct category). For categories $\mathcal{A}$, $\mathcal{B}$ and $\mathcal{C}$, the following functor categories are isomorphic:

1. $𝐅𝐮𝐧𝐜𝐭 (\mathcal{A} × \mathcal{B}, \mathcal{E})$, that is, the functor category from the product category $\mathcal{A} × \mathcal{B}$ to $\mathcal{E}$;
2. $𝐅𝐮𝐧𝐜𝐭 (\mathcal{A}, 𝐅𝐮𝐧𝐜𝐭 (\mathcal{B}, \mathcal{E}))$, that is, the functor category from $\mathcal{A}$ to the functor category $𝐅𝐮𝐧𝐜𝐭 (\mathcal{B}, \mathcal{E})$.

{% pf %}
(1. ⇒ 2.). For any $F ∈ 𝐅𝐮𝐧𝐜𝐭 (\mathcal{A} × \mathcal{B}, \mathcal{E})$, we obtain a collection of functors $\{F(A, -)\}_{A ∈ \mathcal{A}}$ defined by bifunctor $F$:

$$\begin{equation}
𝔉 : \mathcal{A} → 𝐅𝐮𝐧𝐜𝐭 (\mathcal{B}, \mathcal{E}),\quad A ↦ F(A, -).
\end{equation}$$

To see that $𝔉$ is indeed a functor, we take the natural bitransformation $θ_{(-,-)} : F ⇒ G$ and obtain

$$\begin{equation}
[Θ_A : 𝔉(A) ⇒ 𝔊(A)] := [θ_{(A,-)} : F(A, -)⇒ G(A,-)].
\end{equation}$$

Since $θ$ is natural, any $φ: A → A'$ yields the commutative diagram

$$\begin{equation}
Θ_{A'} ∘ 𝔉(φ) = θ_{(A', -)} ∘ F(φ , -) = G(φ, -) ∘ θ_{(A, - )} = 𝔊 (φ )∘ Θ_A.
\end{equation}$$

Now we show that $𝐅𝐮𝐧𝐜𝐭 (\mathcal{A} × \mathcal{B}, \mathcal{E}) ⇒ 𝐅𝐮𝐧𝐜𝐭 (\mathcal{A}, 𝐅𝐮𝐧𝐜𝐭 (\mathcal{B}, \mathcal{E}))$ is well-defined on both objects (functors) and morphisms (natural transformations).
\\
\\
(2. ⇒ 1.). For arbitrary $𝔉 ∈ 𝐅𝐮𝐧𝐜𝐭 (\mathcal{A}, 𝐅𝐮𝐧𝐜𝐭 (\mathcal{B}, \mathcal{E}))$, we define the assignment $F$ as follows:

$$\begin{equation}
F : \mathcal{A} × \mathcal{B} → \mathcal{E},\quad (A,B) ↦ (𝔉(A))(B).
\end{equation}$$

Such $F$ is functorial on both sides, thus it is a bifunctor. Now for any natural transformation $Θ_- : 𝔉 ⇒ 𝔊$, we define the assignment

$$\begin{equation}
[θ_{(A,B)} : F(A,B) → G(A,B)] := [Θ_A(B) : (𝔉(A))(B) → (𝔊(A))(B)]
\end{equation}$$

It remains to show the naturality of $θ_{-,-}$. We take arbitrary $(f,g) : (A,B) → (A', B')$, and obtain

$$\begin{aligned}
θ_{(A',B')} ∘ F(f,g) & = Θ_{A'}(B')∘ (𝔉(f))(g) \\
& = Θ_{A'}(B') ∘ (𝔉(f)) (\mathrm{id}_{B'}) ∘ (𝔉(\mathrm{id}_{A}))(g)\\
& = (𝔊(f)) (\mathrm{id}_{B'}) ∘ Θ_{A}(B') ∘ (𝔉(\mathrm{id}_{A}))(g)\\
& = (𝔊(f)) (\mathrm{id}_{B'}) ∘ (𝔊(\mathrm{id}_{A}))(g) ∘ Θ_{A}(B)\\
& = (𝔊(f))(g) ∘ Θ_A(B) \\
& = G(f, g) ∘ θ_{(A,B)}.
\end{aligned}$$

By definition, we obtain a one-to-one correspondence between objects (functors) in $𝐅𝐮𝐧𝐜𝐭 (\mathcal{A} × \mathcal{B}, \mathcal{E})$ and $𝐅𝐮𝐧𝐜𝐭 (\mathcal{A}, 𝐅𝐮𝐧𝐜𝐭 (\mathcal{B}, \mathcal{E}))$. The correspondence of morphisms (natural transformations) is already established.

{% endpf %}

{% endprop %}

{% cor %}
(Localisation of product spaces). We shall show the equivalecy

$$\begin{equation}
(\mathcal{C}_1× \mathcal{C}_2) [(S_1× S_2)^{-1}] ≃ (\mathcal{C}_1 [S_1^{-1}])× (\mathcal{C}_2 [S_2^{-1}]),
\end{equation}$$

by demonstrating that they serve as solutions to the same problème d'application universelle (that is, they possess the same universal property).

{% pf %}
For any category $\mathcal{D}$, we consider

$$\begin{aligned}
& 𝐅𝐮𝐧𝐜𝐭((\mathcal{C}_1× \mathcal{C}_2) [(S_1× S_2)^{-1}],\mathcal{D})\\[6pt]
\xrightarrow[≅]{\text{fully-faithfulness}}&
\left\{\begin{array}{l}
F ∈ 𝐅𝐮𝐧𝐜𝐭(\mathcal{C}_1 × \mathcal{C}_2, \mathcal{D}) \\
\quad ∣ F: S_1 × S_2 → 𝐈𝐬𝐨 (\mathcal{D})
\end{array}\right\}\\[6pt]
\xrightarrow[≅]{\text{Currying}}&
\left\{\begin{array}{l}
𝔉 ∈ 𝐅𝐮𝐧𝐜𝐭(\mathcal{C}_1 , 𝐅𝐮𝐧𝐜𝐭 (\mathcal{C}_2, \mathcal{D}) )\\[6pt]
\quad ∣ 𝔉(X) : \mathcal{C}_2 → \mathcal{D} ,\quad S_2 → 𝐈𝐬𝐨 (\mathcal{D}), \text{and}\\
\quad \ \ \ 𝔉 : S_1 → \text{Nat. iso. in} \ 𝐅𝐮𝐧𝐜𝐭 (\mathcal{C} _2, \mathcal{D})
\end{array}\right\}\\[6pt]
\xrightarrow[≅]{\text{NBGC}}&
\left\{\begin{array}{l}
𝔉 ∈ 𝐅𝐮𝐧𝐜𝐭(\mathcal{C}_1 , 𝐅𝐮𝐧𝐜𝐭 (\mathcal{C}_2[S_2^{-1}], \mathcal{D}) )\\[6pt]
\quad ∣ 𝔉 : S_1 → \text{Nat. iso. in} \ 𝐅𝐮𝐧𝐜𝐭 (\mathcal{C} _2[S_2^{-1}], \mathcal{D})
\end{array}\right\}\\[6pt]
\xrightarrow[≅]{\text{Localisation}} & 𝐅𝐮𝐧𝐜𝐭(\mathcal{C}_1[S_1^{-1}] , 𝐅𝐮𝐧𝐜𝐭 (\mathcal{C}_2[S_2^{-1}], \mathcal{D}))\\[6pt]
\xrightarrow[≅]{\text{Currying}} & 𝐅𝐮𝐧𝐜𝐭(\mathcal{C}_1[S_1^{-1}] × \mathcal{C}_2[S_2^{-1}], \mathcal{D})
\end{aligned}$$

{% endpf %}

{% endcor %}

{% thm %}
(Additive localisation). Suppose that $S$ is closed under direct sums, i.e., $\binom {f \ 0}{0 \ g} ∈ S$ provided $f,g ∈ S$. The localisation $Q : \mathcal{A} → \mathcal{A} [S^{-1}]$ is additive.

{% pf %}
We see that the biproduct $⊕ : \mathcal{C} × \mathcal{C} → \mathcal{C}$ is the two sided adjoint of the functor of constant diagrams $\mathcal{C} → \mathcal{C} × \mathcal{C}$, which sends $?$ to $(?,?)$. By previous lemmas, we obtain the commutative diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsNyxbMSwwLCJcXG1hdGhzY3IgQSJdLFs0LDAsIlxcbWF0aHNjciBBXFx0aW1lcyBcXG1hdGhzY3IgQSJdLFswLDAsIlMiXSxbNSwwLCJTIFxcdGltZXMgUyJdLFsxLDIsIlxcbWF0aHNjciBBIFtTXnstMX1dIl0sWzQsMSwiKFxcbWF0aHNjciBBXFx0aW1lcyBcXG1hdGhzY3IgQSkgWyhTXFx0aW1lcyBTKV57LTF9XSJdLFs0LDIsIihcXG1hdGhzY3IgQSBbU157LTF9XSlcXHRpbWVzIChcXG1hdGhzY3IgQSBbU157LTF9XSkiXSxbMCwxLCJYIFxcbWFwc3RvIChYLFgpIiwyLHsib2Zmc2V0IjoyfV0sWzEsMCwiKFgsWSlcXG1hcHN0byBYXFxvcGx1cyBZIiwyLHsib2Zmc2V0IjoyfV0sWzAsNCwiUV9TIiwyXSxbMSw1LCJRX3tTXFx0aW1lcyBTfSIsMl0sWzUsNiwiXFxzaW0gIl0sWzYsNCwiKFgsWSlcXG1hcHN0byBYXFxvcGx1cyBZIiwyLHsib2Zmc2V0IjoyLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCw2LCJYIFxcbWFwc3RvIChYLFgpIiwyLHsib2Zmc2V0IjoyLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
S \& {\mathcal A} \&\&\& {\mathcal A\times \mathcal A} \& {S \times S} \\
\&\&\&\& {(\mathcal A\times \mathcal A) [(S\times S)^{-1}]} \\
\& {\mathcal A [S^{-1}]} \&\&\& {(\mathcal A [S^{-1}])\times (\mathcal A [S^{-1}])}
\arrow["{X \mapsto (X,X)}"', shift right=2, from=1-2, to=1-5]
\arrow["{Q_S}"', from=1-2, to=3-2]
\arrow["{(X,Y)\mapsto X\oplus Y}"', shift right=2, from=1-5, to=1-2]
\arrow["{Q_{S\times S}}"', from=1-5, to=2-5]
\arrow["{\sim }", from=2-5, to=3-5]
\arrow["{X \mapsto (X,X)}"', shift right=2, dashed, from=3-2, to=3-5]
\arrow["{(X,Y)\mapsto X\oplus Y}"', shift right=2, dashed, from=3-5, to=3-2]
\end{tikzcd}
{% endtikz %}

The composition of the right column is regarded as $Q_S × Q_S$. Since $Q_S$ preserves biproducts, it is additive.
{% endpf %}

{% endthm %}

{% cor %}
The localisation established by admissible model structure, $\mathcal{A} → 𝖧𝗈 \mathcal{A}$, is additive. This is due to $𝖶𝖾𝗊 ⊕ 𝖶𝖾𝗊 ⊆ 𝖶𝖾𝗊$.
{% endcor %}

We finish this section with a non-example.

{% ex %}
Let $\mathcal{C}$ be the category of locally 
{% endex %}

### Extri Cats Neither Tri Nor Ex

It should be noted that there exist extriangulated categories which are neither triangulated nor exact. For example, consider the bounded derived category of an algebra of infinite global dimension, denoted $D^b(A)$. This category is triangulated, and the subcategory $𝐦𝐨𝐝_A * 𝐦𝐨𝐝_A[-1] * \cdots$ forms a thick subcategory which, in general, is neither triangulated nor exact.

## The Model Structures

### Hovey twin cotorsion pairs

We first introduce several notational conventions.

{% def %}
($\mathrm{Cone}$, $\mathrm{coCone}$, and $∗$). Let $\mathcal{X}$, and $\mathcal{Y}$ be arbitrary subclasses of $\mathcal{C}$. We define

* $\mathrm{Cone}(\mathcal{X} , \mathcal{Y}) = \{Z ∣ ∃ X _{∈ \mathcal{X}}, Y _{∈ \mathcal{Y}}, f, g \ (X \xrightarrow f Y \xrightarrow g Z \ \text{is a conflation})\}$;
* $\mathrm{coCone}(\mathcal{X} , \mathcal{Y}) = \{W ∣ ∃ X _{∈ \mathcal{X}}, Y _{∈ \mathcal{Y}}, f, g \ (W \xrightarrow f X \xrightarrow g Y \ \text{is a conflation})\}$;
* $\mathcal{X} ∗ \mathcal{Y} = \{E ∣ ∃ X _{∈ \mathcal{X}}, Y _{∈ \mathcal{Y}}, f, g \ (X \xrightarrow f E \xrightarrow g Y \ \text{is a conflation})\}$.

{% enddef %}

{% lem %}
Let $\mathcal{X}$, $\mathcal{Y}$ and $\mathcal{Z}$ be arbitrary subclasses of $\mathcal{C}$. The followings are due to SET4.

1. $\mathrm{Cone}(\mathcal{X} , \mathrm{Cone}(\mathcal{Y} , \mathcal{Z} )) = \mathrm{Cone}(\mathcal{Y} ∗ \mathcal{X} , \mathcal{Z} )$;
2. $\mathrm{coCone}(\mathrm{coCone}(\mathcal{X} ,\mathcal{Y} ), \mathcal{Z} ) = \mathrm{coCone}(\mathcal{X} , \mathcal{Z} ∗ \mathcal{Y} )$;
3. $\mathrm{Cone}(\mathcal{X} , \mathrm{coCone}(\mathcal{Y}, \mathcal{Z} )) = \mathrm{coCone}(\mathrm{Cone}(\mathcal{X} , \mathcal{Y} ), \mathcal{Z} )$;
4. $\mathcal{X} ∗ (\mathcal{Y} ∗ \mathcal{Z} ) = (\mathcal{X} ∗ \mathcal{Y} )∗ \mathcal{Z}$.

{% endlem %}

{% lem %}
Let $\mathcal{X}$, $\mathcal{Y}$ and $\mathcal{Z}$ be arbitrary subclasses of $\mathcal{C}$. The followings are due to S4×4.

1. $\mathrm{coCone}(\mathcal{X} ,\mathcal{Z} )∗ \mathcal{Y} ⊆ \mathrm{coCone}(\mathcal{X} ∗ \mathcal{Y} , \mathcal{Z} )⊇ \mathrm{coCone}(\mathcal{Y} ,\mathrm{Cone}(\mathcal{X} ,\mathcal{Z} ))$;
2. $\mathcal{Y} ∗ \mathrm{Cone}(\mathcal{X} , \mathcal{Z} ) ⊆ \mathrm{Cone}(\mathcal{X} , \mathcal{Y} ∗ \mathcal{Z} ) ⊇ \mathrm{Cone}(\mathrm{coCone}(\mathcal{X} ,\mathcal{Z} ),\mathcal{Y} )$.
{% endlem %}

We mention that, if $𝔼(\mathcal{Y} , \mathcal{X}) = 0$, then $\mathcal{X} ∗ \mathcal{Y} = \mathcal{X} ⊕ \mathcal{Y}$. This is a useful dequantisation for (ex-)cotorsion pairs.

We now proceed to introduce cotorsion pairs. The cotorsion pairs employed herein are, by construction, automatically complete when specialised to the case of an exact category. We also assume the categories to be weakly idempotent complete, which is the standard assumption in the majority of the literature.

{% def %}
(The **orthogonality** determined by $𝔼$). Let $\mathcal{X}$ and $\mathcal{Y}$ be classes of objects (not necessarily additive). We employ the following notations:

* $\mathcal{X} ⟂ \mathcal{Y}$ signifies that $𝔼 (X, Y) = 0$ for all $X ∈ \mathcal{X}$ and $Y ∈ \mathcal{Y}$;
* $\mathcal{X}^⟂$ denotes the class of objects $\{Y ∣ 𝔼 (X, Y) = 0\ (∀ X ∈ \mathcal{X})\}$;
* $^⟂\mathcal{Y}$ denotes the class of objects $\{X ∣ 𝔼 (X, Y) = 0\ (∀ Y ∈ \mathcal{Y})\}$.

{% enddef %}

{% def %}
(The **complete cotorsion pair**). Let $(\mathcal{C} , 𝔼, 𝔰 )$ be extriangulated, and let $\mathcal{U}$ and $\mathcal{V}$ be additive subcategories closed under isomorphisms and direct summands. A pair of such additive categories $(\mathcal{U} , \mathcal{V})$ is termed a cotorsion pair if the following conditions are satisfied:

* $\mathcal{U} ⟂ \mathcal{V}$;
* for any $X$, there exists a conflation $X → X_V → X_U$ with $X_V ∈ \mathcal{V}$ and $X_U ∈ \mathcal{U}$;
* for any $Y$, there exists a conflation $Y^V → Y^U → Y$ with $Y_U ∈ \mathcal{U}$ and $Y_V ∈ \mathcal{V}$.

{% enddef %}

Throughtout, every cotorsion pair are considered to be complete. We use the notion of cotorsion pair to refer to complete cotorsion pairs, unless otherwise specified.
\\
\\
We recover some of the elementary properties of cotorsion pairs by definition.

{% prop %}

Let $(\mathcal{U}, \mathcal{V})$ be a cotorsion pair.

1. $\mathcal{U}^⟂ = \mathcal{V}$ and $^⟂ \mathcal{V} = \mathcal{U}$;
2. $\mathcal{U}$ and $\mathcal{V}$ are closed under extensions;
3. $\mathcal{U}$ and $\mathcal{V}$ are closed under retracts.

{% pf %}
We demonstrate that any $X ∈ \mathcal{U}^⟂$ is contained in $\mathcal{V}$. Consider any conflation $X → X_V → X_U$; this sequence splits, since $𝔼 (X_U, X) = 0$. Consequently, $X$ is a direct summand of $X_V$, and thus $X$ belongs to $\mathcal{V}$.
\\
\\
Suppose that $X ↪ U ↠ X$ is a retract of $U ∈ \mathcal{U}$. Since $𝔼$ is bi-additive, $𝔼 (X, -)|_\mathcal{V}$ is a subfunctor of $𝔼 (U, -)|_\mathcal{V}$, thus it is a zero functor. By previous analysis, $X ∈ {}^⟂ \mathcal{V} = \mathcal{U}$.
\\
\\
For conflation $U_1 → E → U_2$ ($U_i ∈ \mathcal{U}$), there is an functorial exact sequence
$$\begin{equation}
0 = 𝔼 (U_2, - )|_\mathcal{V} → 𝔼 (E, - )|_\mathcal{V} → 𝔼 (U_1, - )|_\mathcal{V} = 0.
\end{equation}$$

Hence $E ∈ {}^⟂ \mathcal{V} = \mathcal{U}$.

{% endpf %}

{% endprop %}

We remark that the property of retraction-closedness is not trivial, even though $\mathcal{U}$ and $\mathcal{V}$ are closed under direct summands. The principal consideration is that $\mathcal{C}$ may not be weakly idempotent complete.
\\
\\
We now proceed to define Hovey twin cotorsion pairs. This definition is deliberately created for defining the class of trivial objects $\mathcal{W}$ in model structures.

{% def %}
(**Hovey twin cotorsion pairs**). We say that two cotorsion pairs $(\mathcal{U}, \mathcal{V})$ and $(\mathcal{S}, \mathcal{T})$ constitute a Hovey twin cotorsion pairs if the following conditions are satisfied:

1. $\mathcal{S} ⟂ \mathcal{V}$, and hence $\mathcal{U} ⊇ \mathcal{S}$ and $\mathcal{V} ⊆ \mathcal{T}$;
2. $\mathrm{Cone}(\mathcal{V} , \mathcal{S} ) = \mathrm{coCone}(\mathcal{V} , \mathcal{S})$.

To avoid an overabundance of symbols, we denote the Hovey twin cotorsion pairs by $(\mathcal{S}, \mathcal{S} ^⟂; {}^⟂ \mathcal{V} , \mathcal{V})$. Both $\mathcal{V}$ and $\mathcal{S}$ are smaller categories, whilst $^⟂ \mathcal{V}$ and $\mathcal{S}^⟂$ are the larger categories.

{% enddef %}

The following property is customary, or forms part of the definition of a Hovey twin cotorsion pairs for exact categories.

{% prop %}
Suppose that $(\mathcal{S}, \mathcal{S} ^⟂ , {}^⟂ \mathcal{V} , \mathcal{V} )$ is Hovey cotorsion pair. We have $^⟂ \mathcal{V} ∩ \mathcal{V} = \mathcal{S} ∩ \mathcal{S} ^⟂$.

{% pf %}
We show that

$$\begin{equation}
{}^⟂ \mathcal{V} ∩ \mathcal{V} = {}^⟂ \mathcal{V} ∩ \mathrm{Cone}(\mathcal{V} , \mathcal{S}) ∩ \mathcal{S}^⟂ = {}^⟂ \mathcal{V} ∩ \mathrm{coCone}(\mathcal{V} , \mathcal{S}) ∩ \mathcal{S}^⟂ = \mathcal{S} ∩ \mathcal{S} ^⟂.
\end{equation}$$

It suffices to show that ${}^⟂ \mathcal{V} ∩ \mathrm{coCone}(\mathcal{V} , \mathcal{S}) = \mathcal{S}$.

1. ($⊇$). Both ${}^⟂ \mathcal{V}$ and $\mathrm{coCone}(\mathcal{V} , \mathcal{S})$ belongs to $\mathcal{S}$;
2. ($⊆$). We take arbitrary $X ∈ {}^⟂ \mathcal{V} ∩ \mathrm{coCone}(\mathcal{V} , \mathcal{S})$. Since $X ∈ \mathrm{Cone}(\mathcal{V} , \mathcal{S})$, there exists some conflation $V → S → X$. Since $𝔼 (X, V) = 0$, the conflation splits and $X ∈ 𝐬𝐦𝐝 (S) ⊆ \mathcal{S}$.

{% endpf %}

{% endprop %}
We remark that $\mathrm{Cone}(\mathcal{V} , \mathcal{S}) = \mathrm{coCone}(\mathcal{V} , \mathcal{S})$ is precisely the class of trivial objects to be discussed subsequently. We first demonstrate that $\mathrm{Cone}(\mathcal{V})$ is an almost thick subcategory and hence is an extriangulated subcategory.

{% thm %}
$\mathrm{Cone}(\mathcal{V} , \mathcal{S})$ is almost thick, thus it is extriangulated.

{% pf %}
We denote $\mathcal{N} := \mathrm{Cone}(\mathcal{V} , \mathcal{S})$. The following proof involves no alteration of the diagram, but relies solely upon the identities obtained from the SET4 or S4×4 lemmas. For extensions,

$$\begin{aligned}
\mathcal{N} ∗ \mathcal{N} &= \mathcal{N} ∗ \mathrm{Cone}(\mathcal{V} , \mathcal{S}) ⊆ \mathrm{Cone}(\mathcal{V} , \mathcal{N} ∗ \mathcal{S} )\\
&= \mathrm{Cone}(\mathcal{V} , \mathcal{N} ) = \mathrm{Cone}(\mathcal{V} , \mathrm{Cone}(\mathcal{V}, \mathcal{S})) \\
&= \mathrm{Cone}(\mathcal{V} ∗ \mathcal{V}, \mathcal{S}) = \mathcal{N}.
\end{aligned}$$

The proof for cones or cocones are dual, we only prove that $\mathrm{Cone}(\mathcal{N} , \mathcal{N} ) ⊆ \mathcal{N}$,

$$\begin{aligned}
\mathrm{Cone}(\mathcal{N} , \mathcal{N} ) & = \mathrm{Cone}(\mathcal{N} , \mathrm{Cone}(\mathcal{V}, \mathcal{S})) = \mathrm{Cone}(\mathcal{V} ∗ \mathcal{N} , \mathcal{S})\\
& = \mathrm{Cone}(\mathcal{V} ∗ \mathrm{Cone}(\mathcal{V} , \mathcal{S}) , \mathcal{S}) ⊆ \mathrm{Cone}(\mathrm{Cone}(\mathcal{V} , \mathcal{V} ∗ \mathcal{S}), \mathcal{S})\\
& = \mathrm{Cone}(\mathrm{Cone}(\mathcal{V} , \mathcal{V} ⊕ \mathcal{S}), \mathcal{S}) ⊆ \mathrm{Cone}(\mathrm{Cone}(\mathcal{V} , \mathcal{N}), \mathcal{S})\\
& = \mathrm{Cone}(\mathrm{Cone}(\mathcal{V} , \mathrm{Cone}(\mathcal{V} , \mathcal{S})), \mathcal{S}) = \mathrm{Cone}(\mathrm{Cone}(\mathcal{V} , \mathcal{S}), \mathcal{S})\\
& = \mathrm{Cone}(\mathcal{V} , \mathcal{S}) = \mathcal{N}.
\end{aligned}$$

{% endpf %}

{% endthm %}

We remark the dicisive step $\mathcal{V} ∗ \mathcal{S} = \mathcal{V} ⊕ \mathcal{S} ⊆ \mathcal{N}$, since $𝔼 (\mathcal{S} , \mathcal{V})$.

### Adm Model ⇒ Hovey

We omit the recapitulation of the definition of admissible model structures for either Abelian or exact categories, as these are special cases of the extriangulated case.

{% def %}
(**Admissible model structure**). Say the model structure over an extriangulated cateogry $(\mathcal{C} , 𝔼 , 𝔰)$ admissible, when there exists four classes of obejcts $(\mathcal{S} , \mathcal{T} ; \mathcal{U}, \mathcal{V})$ such that

* $f ∈ 𝖢𝗈𝖿𝗂𝖻$, iff $f$ is an inflation $⋅ \xrightarrow f ⋅ → U$ for some $U ∈ \mathcal{U}$;
* $f ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$, iff $f$ is an inflation $⋅ \xrightarrow f ⋅ → S$ for some $S ∈ \mathcal{S}$;
* $g ∈ 𝖥𝗂𝖻$, iff $g$ is an deflation $T → ⋅ \xrightarrow g ⋅$ for some $T ∈ \mathcal{T}$;
* $g ∈ 𝖳𝖥𝗂𝖻$, iff $g$ is an deflation $\mathcal{V} → ⋅ \xrightarrow g ⋅$ for some $V ∈ \mathcal{V}$.

{% enddef %}

{% ex %}
Once we have an admissible model structure descirbed by $(\mathcal{S} , \mathcal{T} ; \mathcal{U}, \mathcal{V})$, we see that

$$\begin{equation}
(\mathcal{S} , \mathcal{T} ; \mathcal{U}, \mathcal{V}) = (𝖳\mathcal{C}, \mathcal{F} , \mathcal{C} , 𝖳\mathcal{F}).
\end{equation}$$

We shall later show that $\mathcal{W} = \mathrm{Cone}(\mathcal{V} , \mathcal{S}) = \mathrm{coCone}(\mathcal{V} , \mathcal{S})$.

{% endex %}

We next show that $(\mathcal{S} , \mathcal{T} , \mathcal{U}, \mathcal{V})$ is a Hovey cotorsion pair.

{% prop %}
$(\mathcal{S} , \mathcal{T} , \mathcal{U}, \mathcal{V})$ determined by model structure is indeed a twin cotorsion pairs.

{% pf %}
It is clear that $\mathcal{S} ⊆ \mathcal{U}$ and $\mathcal{V} ⊆ \mathcal{T}$. We firstly show that $𝔼 (\mathcal{S} , \mathcal{T}) = 0$, and $𝔼(\mathcal{U} , \mathcal{V}) = 0$ is proved dually. We take abitrary $S ∈ \mathcal{S}$ and $T ∈ \mathcal{T}$. Any realisation of $δ ∈ 𝔼(T,S)$ completes to the following diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbNCwyLCJTIl0sWzQsMCwiVCJdLFs0LDEsIkUiXSxbMywyLCJTIl0sWzMsMSwiMCJdLFs0LDMsIlxcLCJdLFs3LDEsIlxcLCJdLFswLDEsIlxcLCJdLFsxLDIsIlxcbWF0aHNme1RDb2ZpYn0iXSxbMiwwLCJcXG1hdGhzZntGaWJ9Il0sWzMsMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwzLCJcXG1hdGhzZntUQ29maWJ9IiwyXSxbNCwyXSxbMCw1LCJcXGRlbHRhICJdLFszLDIsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}
&&&& T \\
{\,} &&& 0 & E &&& {\,} \\
&&& S & S \\
&&&& {\,}
\arrow["{\mathsf{TCofib}}", from=1-5, to=2-5]
\arrow[from=2-4, to=2-5]
\arrow["{\mathsf{TCofib}}"', from=2-4, to=3-4]
\arrow["{\mathsf{Fib}}", from=2-5, to=3-5]
\arrow[dashed, from=3-4, to=2-5]
\arrow[equals, from=3-4, to=3-5]
\arrow["{\delta }", from=3-5, to=4-5]
\end{tikzcd}
{% endtikz %}

By lifting property, the deflation $E → S$ splits. Hence $δ = (1_S)^∗ δ = 0$.
\\
\\
We finally show that any $X ∈ \mathcal{C}$ embeds into some conflation $X → X_T → X_S$ for $X_T ∈ \mathcal{T}$ and $X_S ∈ \mathcal{S}$. We factorise $X → 0$ into $𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$:
{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbNiwxLCJcXCwiXSxbMCwxLCJcXCwiXSxbMiwxLCJYIl0sWzMsMSwiRSJdLFszLDIsIjAiXSxbNCwxLCJTIl0sWzMsMCwiVCJdLFs1LDEsIlxcLCJdLFszLDMsIlxcLCJdLFsyLDMsIlxcbWF0aHNme1RDb2ZpYn0iXSxbMyw1XSxbMyw0LCJcXG1hdGhzZntGaWJ9Il0sWzYsM10sWzUsN10sWzQsOF1d
\begin{tikzcd}
&&& T \\
{\,} && X & E & S & {\,} & {\,} \\
&&& 0 \\
&&& {\,}
\arrow[from=1-4, to=2-4]
\arrow["{\mathsf{TCofib}}", from=2-3, to=2-4]
\arrow[from=2-4, to=2-5]
\arrow["{\mathsf{Fib}}", from=2-4, to=3-4]
\arrow[from=2-5, to=2-6]
\arrow[from=3-4, to=4-4]
\end{tikzcd}
{% endtikz %}

Since $T ≃ E$, we obtain $X ∈ \mathrm{Cone}(\mathcal{T} , \mathcal{S})$. The proof of other three identities are similar.

{% endpf %}

{% endprop %}

{% prop %}
The twin cotorsion pairs $(\mathcal{S} , \mathcal{T} , \mathcal{U}, \mathcal{V})$ determined by model structure is Hovey.

{% pf %}
We shall show that $\mathrm{Cone}(\mathcal{V} , \mathcal{S} ) = \mathrm{coCone}(\mathcal{V} , \mathcal{S} )$.

* There is a conflation $X → V → S$, iff $(X → 0) ∈ 𝖶𝖾𝗊$.
* There is a conflation $V → S → X$, iff $(0 → X) ∈ 𝖶𝖾𝗊$.

We see that $(X → 0) ∈ 𝖶𝖾𝗊$ iff $(0 → W) ∈ 𝖶𝖾𝗊$. Hence, $X ∈ \mathrm{Cone}(\mathcal{V} , \mathcal{S})$ iff $X ∈ \mathrm{coCone}(\mathcal{V} , \mathcal{S})$.

{% endpf %}

{% endprop %}

### Hovey ⇒ Adm Model

We write $(\mathcal{S} , \mathcal{S} ^⟂ ; {}^⟂ \mathcal{V} , \mathcal{V} )$ or $(\mathcal{S} , \mathcal{T} ; \mathcal{U}, \mathcal{V})$ for a Hovey twin cotorsion pairs. We now demonstrate that, provided the category is weakly idempotent complete (a decisive assumption for proving $𝖶𝖾𝗊 ∘ 𝖶𝖾𝗊 ⊆ 𝖶𝖾𝗊$), this Hovey twin cotorsion pairs determines a model structure in which

* $f ∈ 𝖢𝗈𝖿𝗂𝖻$, iff $f$ is an inflation $⋅ \xrightarrow f ⋅ → U$ for some $U ∈ {}^⟂ \mathcal{V}$;
* $f ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$, iff $f$ is an inflation $⋅ \xrightarrow f ⋅ → S$ for some $S ∈ \mathcal{S}$;
* $g ∈ 𝖥𝗂𝖻$, iff $g$ is an deflation $T → ⋅ \xrightarrow g ⋅$ for some $T ∈ \mathcal{S} ^⟂$;
* $g ∈ 𝖳𝖥𝗂𝖻$, iff $g$ is an deflation $\mathcal{V} → ⋅ \xrightarrow g ⋅$ for some $V ∈ \mathcal{V}$.

It follows that $(\mathcal{S} , \mathcal{T} ; \mathcal{U}, \mathcal{V}) = (𝖳\mathcal{C}, \mathcal{F},  \mathcal{C} , 𝖳\mathcal{F})$. We also take the almost thick subcategory $\mathcal{N} = \mathrm{Cone}(\mathcal{V} , \mathcal{S} ) = \mathrm{coCone}(\mathcal{V} , \mathcal{S} )$. Since admissible model structure creates such a Hovey cotorsion twin cotorsion pairs, $\mathcal{N}$ coincides the class of trivial objects $\mathcal{W}$.

{% lem %}
(The verification of lifting property). This follows from the extension lifting lemma.
{% endlem %}

{% lem %}
(The verification of factorisation property). We shall show that any morphism factorises into $𝖳𝖥𝗂𝖻 ∘ 𝖢𝗈𝖿𝗂𝖻$. The proof of the dual statement is similar.

{% pf %}
For any $f : X → Y$, we take the conflation $X → X_V → X_U$ for $X_V ∈ \mathcal{V}$ and $X_U ∈ \mathcal{U}$. By previous theorems, $\binom if : X → X_V ⊕ Y$ is also an inflation. We complete the following Verdier diagram and take the composition of dashed arrows

{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzEsMiwiWCJdLFsxLDEsIlgiXSxbMiwyLCJYX1YgXFxvcGx1cyBZIl0sWzMsMiwiWiJdLFszLDEsIlpeVSJdLFszLDAsIlpeViJdLFsyLDAsIlpeViJdLFsyLDEsIkUiXSxbMiwzLCJZIl0sWzQsMiwiXFwsIl0sWzAsMiwiXFwsIl0sWzAsMiwiXFxiaW5vbSBpZiJdLFsyLDNdLFs0LDNdLFs1LDRdLFs2LDUsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSw3LCJcXG1hdGhzZntDb2ZpYn0iLDAseyJjb2xvdXIiOlsyMzcsMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fSxbMjM3LDEwMCw2MCwxXV0sWzcsNF0sWzYsN10sWzIsOCwiKDAsMSkiLDIseyJjb2xvdXIiOlswLDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzAsMTAwLDYwLDFdXSxbNywyLCJcXG1hdGhzZntURmlifSIsMCx7ImNvbG91ciI6WzAsMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fSxbMCwxMDAsNjAsMV1dLFsyLDgsIlxcbWF0aHNme1RGaWJ9IiwwLHsiY29sb3VyIjpbMCwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19LFswLDEwMCw2MCwxXV1d
\begin{tikzcd}
&& {Z^V} & {Z^V} \\
& X & E & {Z^U} \\
{\,} & X & {X_V \oplus Y} & Z & {\,} \\
&& Y
\arrow[equals, from=1-3, to=1-4]
\arrow[from=1-3, to=2-3]
\arrow[from=1-4, to=2-4]
\arrow["{\mathsf{Cofib}}", color={rgb,255:red,51;green,61;blue,255}, dashed, from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow[from=2-3, to=2-4]
\arrow["{\mathsf{TFib}}", color={rgb,255:red,255;green,51;blue,51}, dashed, from=2-3, to=3-3]
\arrow[from=2-4, to=3-4]
\arrow["{\binom if}", from=3-2, to=3-3]
\arrow[from=3-3, to=3-4]
\arrow["{(0,1)}"', color={rgb,255:red,255;green,51;blue,51}, dashed, from=3-3, to=4-3]
\arrow["{\mathsf{TFib}}", color={rgb,255:red,255;green,51;blue,51}, draw=none, from=3-3, to=4-3]
\end{tikzcd}
{% endtikz %}

Now $(X → E) ∈ 𝖢𝗈𝖿𝗂𝖻$, and both $E → (X_V ⊕ Y)$ and $(X_V ⊕ Y) → Y$ belong to $𝖳𝖥𝗂𝖻$. This complete out proof.

{% endpf %}

{% endlem %}

{% lem %}
(The verification of composition). For $𝖢𝗈𝖿𝗂𝖻$, we complete the Noether diagram via SET4. This yields the following diagram wherein $C_1, C_3 ∈ \mathcal{U}$:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzIsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbNCwwLCJDXzEiXSxbNCwxLCJDXzIiXSxbMywyLCJDXzMiXSxbNCwyLCJDXzMiXSxbMCwxLCJcXCwiXSxbNiwxLCJcXCwiXSxbMCwxLCJcXG1hdGhzZntDb2ZpYn0iXSxbMSwyLCJcXG1hdGhzZntDb2ZpYn0iXSxbMywyXSxbMCwzLCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs3LDYsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsNF0sWzQsNSwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzUsNywiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsNl0sWzIsNSwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
\&\& \bullet \& \bullet \& {C_1} \\
{\,} \&\& \bullet \& \bullet \& {C_2} \&\& {\,} \\
\&\&\& {C_3} \& {C_3}
\arrow["{\mathsf{Cofib}}", from=1-3, to=1-4]
\arrow[equals, from=1-3, to=2-3]
\arrow[from=1-4, to=1-5]
\arrow["{\mathsf{Cofib}}", from=1-4, to=2-4]
\arrow[dashed, from=1-5, to=2-5]
\arrow[from=2-3, to=2-4]
\arrow[dashed, from=2-4, to=2-5]
\arrow[from=2-4, to=3-4]
\arrow[dashed, from=2-5, to=3-5]
\arrow[equals, from=3-5, to=3-4]
\end{tikzcd}
{% endtikz %}

By virtue of extension-closedness, $C_2 ∈ \mathcal{C}$. One may similarly demonstrate that $𝖳𝖢𝗈𝖿𝗂𝖻$, $𝖳𝖥𝗂𝖻$, and $𝖥𝗂𝖻$ are closed under composition.
\\
\\
The proof of $𝖶𝖾𝗊 ∘ 𝖶𝖾𝗊 ⊆ 𝖶𝖾𝗊$ is considerably more intricate. It suffices to proceed by induction, showing that $𝖳𝖢𝗈𝖿𝗂𝖻 ∘ 𝖳𝖥𝗂𝖻 ⊆ 𝖳𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$. We first factorise such a composition, $f ∈ 𝖳𝖢𝗈𝖿𝗂𝖻 ∘ 𝖳𝖥𝗂𝖻$, as $𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$. By weakly idempotent completeness, we may apply the $3 × 3$ lemma and thereby obtain the desired result.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzMsMCwiXFxidWxsZXQiXSxbNCwwLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbMiwwLCJWIl0sWzIsMSwiVCJdLFszLDIsIlNfMSJdLFs0LDIsIlNfMiJdLFsyLDIsIj8iXSxbMCwxLCJcXCwiXSxbNiwxLCJcXCwiXSxbMCwxLCJcXG1hdGhzZntURmlifSJdLFsxLDIsIlxcbWF0aHNme1RDb2ZpYn0iXSxbMCwzLCJcXG1hdGhzZntUQ29maWJ9IiwyXSxbMywyLCJcXG1hdGhzZntGaWJ9IiwyXSxbNCwwXSxbNSwzXSxbMyw2XSxbMiw3XSxbOCw2LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNiw3LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCw1LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSw4LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCwyLCJmIl1d
\begin{tikzcd}[ampersand replacement=\&]
\&\& V \& \bullet \& \bullet \\
{\,} \&\& T \& \bullet \& \bullet \&\& {\,} \\
\&\& {?} \& {S_1} \& {S_2}
\arrow[from=1-3, to=1-4]
\arrow[dashed, from=1-3, to=2-3]
\arrow["{\mathsf{TFib}}", from=1-4, to=1-5]
\arrow["{\mathsf{TCofib}}"', from=1-4, to=2-4]
\arrow["f", from=1-4, to=2-5]
\arrow["{\mathsf{TCofib}}", from=1-5, to=2-5]
\arrow[from=2-3, to=2-4]
\arrow[dashed, from=2-3, to=3-3]
\arrow["{\mathsf{Fib}}"', from=2-4, to=2-5]
\arrow[from=2-4, to=3-4]
\arrow[from=2-5, to=3-5]
\arrow[dashed, from=3-3, to=3-4]
\arrow[dashed, from=3-4, to=3-5]
\end{tikzcd}
{% endtikz %}

Since $\mathcal{N}$ is almost thick, $? ∈ \mathrm{coCone}(\mathcal{S} , \mathcal{S}) ∈ \mathcal{N}$. Therefore, $T ∈ \mathcal{S} ∗ \mathcal{N} ⊆ \mathcal{N}$, and thus $T ∈ \mathcal{V}$. It follows that $f ∈ 𝖳𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$.

{% endlem %}

{% lem %}
(The verification of 2-out-of-3 property of $𝖶𝖾𝗊$). We have already established that $𝖶𝖾𝗊 ∘ 𝖶𝖾𝗊 ⊆ 𝖶𝖾𝗊$. It remains to show that if both $gf$ and $f$ belong to $𝖶𝖾𝗊$, then so does $g$.
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCJBIl0sWzMsMCwiWCJdLFs1LDAsIkIiXSxbNSwxLCJZIl0sWzUsMiwiQyJdLFsxLDIsIkgiXSxbMCwxLCJcXCwiXSxbNiwxLCJcXCwiXSxbMCw1LCJcXG1hdGhzZntUQ29maWJ9IiwyXSxbNSw0LCJcXG1hdGhzZntURmlifSIsMl0sWzAsMSwiXFxtYXRoc2Z7Q29maWJ9Il0sWzEsMiwiXFxtYXRoc2Z7VEZpYn0iXSxbMiwzLCJcXG1hdGhzZntUQ29maWJ9Il0sWzMsNCwiXFxtYXRoc2Z7VEZpYn0iXSxbMCwyLCJmIiwyLHsiY3VydmUiOjR9XSxbMiw0LCJnIiwyLHsiY3VydmUiOjN9XSxbMCw0LCJnZiIsMix7ImN1cnZlIjozfV1d
\begin{tikzcd}
& A && X && B \\
{\,} &&&&& Y & {\,} \\
& H &&&& C
\arrow["{\mathsf{Cofib}}", from=1-2, to=1-4]
\arrow["f"', curve={height=24pt}, from=1-2, to=1-6]
\arrow["{\mathsf{TCofib}}"', from=1-2, to=3-2]
\arrow["gf"', curve={height=18pt}, from=1-2, to=3-6]
\arrow["{\mathsf{TFib}}", from=1-4, to=1-6]
\arrow["{\mathsf{TCofib}}", from=1-6, to=2-6]
\arrow["g"', curve={height=18pt}, from=1-6, to=3-6]
\arrow["{\mathsf{TFib}}", from=2-6, to=3-6]
\arrow["{\mathsf{TFib}}"', from=3-2, to=3-6]
\end{tikzcd}
{% endtikz %}

We proceed as follows:

1. By composition of $𝖶𝖾𝗊$, we write $X → B → Y → C$ as $(X → M → C) ∈ 𝖳𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$. This is the boundary of the pentagon.
2. By the lifting property, we have $(X → E → H) ∈ 𝖳𝖥𝗂𝖻 ∘ 𝖢𝗈𝖿𝗂𝖻$. We take the composition $(A → E) ∈ 𝖢𝗈𝖿𝗂𝖻$ by the way. These creates the blue arrows.
3. Again, by the lifting property, we have $(E → F → M) ∈ 𝖳𝖥𝗂𝖻 ∘ 𝖢𝗈𝖿𝗂𝖻$. We also take the composition $(X → F) ∈ 𝖢𝗈𝖿𝗂𝖻$ by the way.

{% tikz %}
% https://q.uiver.app/#q=WzAsNyxbMCwxLCJBIl0sWzIsMCwiWCJdLFs0LDEsIk0iXSxbNCwzLCJDIl0sWzAsMywiSCJdLFsxLDIsIkUiLFsyMzgsMTAwLDYwLDFdXSxbMywyLCJGIixbMzU4LDEwMCw2MCwxXV0sWzAsNCwiXFxtYXRoc2Z7VENvZmlifSIsMl0sWzQsMywiXFxtYXRoc2Z7VEZpYn0iLDJdLFswLDEsIlxcbWF0aHNme0NvZmlifSJdLFsyLDMsIlxcbWF0aHNme1RGaWJ9Il0sWzEsMiwiXFxtYXRoc2Z7VENvZmlifSJdLFsxLDUsIlxcbWF0aHNme0NvZmlifSIsMCx7ImNvbG91ciI6WzIzOCwxMDAsNjBdfSxbMjM4LDEwMCw2MCwxXV0sWzUsNCwiXFxtYXRoc2Z7VEZpYn0iLDAseyJjb2xvdXIiOlsyMzgsMTAwLDYwXX0sWzIzOCwxMDAsNjAsMV1dLFswLDUsIlxcbWF0aHNme0NvZmlifSIsMCx7ImNvbG91ciI6WzIzOCwxMDAsNjBdfSxbMjM4LDEwMCw2MCwxXV0sWzUsNiwiXFxtYXRoc2Z7Q29maWJ9IiwwLHsiY29sb3VyIjpbMzU4LDEwMCw2MF19LFszNTgsMTAwLDYwLDFdXSxbNiwyLCJcXG1hdGhzZntURmlifSIsMCx7ImNvbG91ciI6WzM1OCwxMDAsNjBdfSxbMzU4LDEwMCw2MCwxXV0sWzEsNiwiXFxtYXRoc2Z7Q29maWJ9IiwwLHsiY29sb3VyIjpbMzU4LDEwMCw2MF19LFszNTgsMTAwLDYwLDFdXSxbMCw1LCJ7XzF9IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsNiwie18yfSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDYsIntfM30iLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSw1LCJ7XzR9IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMSwie181fSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
&& X \\
A &&&& M \\
& \color{rgb,255:red,51;green,58;blue,255}{E} && \color{rgb,255:red,255;green,51;blue,58}{F} \\
H &&&& C
\arrow["{\mathsf{TCofib}}", from=1-3, to=2-5]
\arrow["{\mathsf{Cofib}}", color={rgb,255:red,51;green,58;blue,255}, from=1-3, to=3-2]
\arrow["{_4}"', draw=none, from=1-3, to=3-2]
\arrow["{\mathsf{Cofib}}", color={rgb,255:red,255;green,51;blue,58}, from=1-3, to=3-4]
\arrow["{_3}"', draw=none, from=1-3, to=3-4]
\arrow["{\mathsf{Cofib}}", from=2-1, to=1-3]
\arrow["{_5}"', draw=none, from=2-1, to=1-3]
\arrow["{\mathsf{Cofib}}", color={rgb,255:red,51;green,58;blue,255}, from=2-1, to=3-2]
\arrow["{_1}"', draw=none, from=2-1, to=3-2]
\arrow["{\mathsf{TCofib}}"', from=2-1, to=4-1]
\arrow["{\mathsf{TFib}}", from=2-5, to=4-5]
\arrow["{\mathsf{Cofib}}", color={rgb,255:red,255;green,51;blue,58}, from=3-2, to=3-4]
\arrow["{_2}"', draw=none, from=3-2, to=3-4]
\arrow["{\mathsf{TFib}}", color={rgb,255:red,51;green,58;blue,255}, from=3-2, to=4-1]
\arrow["{\mathsf{TFib}}", color={rgb,255:red,255;green,51;blue,58}, from=3-4, to=2-5]
\arrow["{\mathsf{TFib}}"', from=4-1, to=4-5]
\end{tikzcd}
{% endtikz %}

We next show in steps that $1$, $2$, $3$, $4$ and $5$ are weak equivalences.

1. For $1$, that is to show, $(f,g,gf) ∈ (𝖢𝗈𝖿𝗂𝖻, 𝖳𝖥𝗂𝖻, 𝖳𝖢𝗈𝖿𝗂𝖻) ⟹ f ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$.
2. For $2$, that is to show, $(f,g,gf) ∈ (𝖢𝗈𝖿𝗂𝖻, 𝖳𝖥𝗂𝖻, 𝖳𝖥𝗂𝖻) ⟹ f ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$.
3. For $3$, that is to show, $(f,g,gf) ∈ (𝖢𝗈𝖿𝗂𝖻, 𝖳𝖥𝗂𝖻, 𝖳𝖢𝗈𝖿𝗂𝖻) ⟹ f ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$.
4. For $4$, that is to show, $(f,g,gf) ∈ (𝖢𝗈𝖿𝗂𝖻, 𝖳𝖢𝗈𝖿𝗂𝖻, 𝖳𝖢𝗈𝖿𝗂𝖻) ⟹ f ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$.
5. For $5$, that is to show, $(f,g,gf) ∈ (𝖢𝗈𝖿𝗂𝖻, 𝖳𝖢𝗈𝖿𝗂𝖻, 𝖳𝖢𝗈𝖿𝗂𝖻) ⟹ f ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$.

The proof of $1$ and $3$ are done with extension lifting lemma. There exists a dashed $s$ making the entire diagram commutative:

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMiwxLCJcXGJ1bGxldCJdLFs0LDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbNCwxLCJcXGJ1bGxldCJdLFswLDEsIlYiXSxbNiwwLCJTIl0sWzIsMCwiXFxtYXRoc2Z7Q29mfSIsMl0sWzIsMSwiXFxtYXRoc2Z7VENvZmlifSJdLFswLDMsIlxcbWF0aHNme1RGaWJ9IiwyXSxbMSwzLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDBdLFsxLDVdLFsxLDAsInMiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}
&& \bullet && \bullet && S \\
V && \bullet && \bullet
\arrow["{\mathsf{TCofib}}", from=1-3, to=1-5]
\arrow["{\mathsf{Cof}}"', from=1-3, to=2-3]
\arrow[from=1-5, to=1-7]
\arrow["s"', dashed, from=1-5, to=2-3]
\arrow[equals, from=1-5, to=2-5]
\arrow[from=2-1, to=2-3]
\arrow["{\mathsf{TFib}}"', from=2-3, to=2-5]
\end{tikzcd}
{% endtikz %}

Hence, $g$ is an split epimorphism, and thus $s$ is an split monomorphism with cokernel $V ∈ \mathcal{N}$. It remains to show that $s ∈ 𝖶𝖾𝗊$. By 4×4 lemma, we see that $s ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzEsMiwiXFxidWxsZXQiXSxbMywyLCJWIl0sWzIsMiwiXFxidWxsZXQiXSxbMywxLCJWXlUiXSxbMywwLCJWXlYiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzIsMCwiVl5WIl0sWzQsMSwiXFxtYXRoc2NyIFUgXFxjYXAgXFxtYXRoc2NyIFYiXSxbMCwxLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwyLCJzIiwyXSxbMiwxXSxbMywxXSxbNCwzXSxbNSwwLCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDYsIlxcbWF0aHNme1RDb2Z9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsMiwiXFxtYXRoc2Z7VEZpYn0iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNyw0LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs3LDYsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDMsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDgsIlxcaW4iLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
&& {V^V} & {V^V} \\
{\,} & \bullet & \bullet & {V^U} & {\mathcal U \cap \mathcal V} & {\,} \\
& \bullet & \bullet & V
\arrow[equals, from=1-3, to=1-4]
\arrow[dashed, from=1-3, to=2-3]
\arrow[from=1-4, to=2-4]
\arrow["{\mathsf{TCof}}", dashed, from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow[dashed, from=2-3, to=2-4]
\arrow["{\mathsf{TFib}}", dashed, from=2-3, to=3-3]
\arrow["\in"{description}, draw=none, from=2-4, to=2-5]
\arrow[from=2-4, to=3-4]
\arrow["s"', from=3-2, to=3-3]
\arrow[from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}

We next show $2$. This follows from S4×4 lemma:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzMsMSwiXFxidWxsZXQiXSxbMiwyLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzMsMiwiXFxidWxsZXQiXSxbMiwwLCJWXzEiXSxbMywwLCJWXzIiXSxbNCwxLCI/Il0sWzQsMCwiPyJdLFswLDEsIlxcLCJdLFs2LDEsIlxcLCJdLFsyLDAsIlxcbWF0aHNme0NvZn0iXSxbMiwxLCJcXG1hdGhzZntURmlifSIsMl0sWzAsMywiXFxtYXRoc2Z7VEZpYn0iXSxbMSwzLCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDJdLFs1LDBdLFswLDZdLFs0LDUsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDcsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs3LDYsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMCwiZiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDMsImciLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwxLCJnZiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
&& {V_1} & {V_2} & {?} \\
{\,} && \bullet & \bullet & {?} && {\,} \\
&& \bullet & \bullet
\arrow[dashed, from=1-3, to=1-4]
\arrow[from=1-3, to=2-3]
\arrow[dashed, from=1-4, to=1-5]
\arrow[from=1-4, to=2-4]
\arrow[equals, from=1-5, to=2-5]
\arrow["{\mathsf{Cof}}", from=2-3, to=2-4]
\arrow["f"', draw=none, from=2-3, to=2-4]
\arrow["{\mathsf{TFib}}"', from=2-3, to=3-3]
\arrow["gf", draw=none, from=2-3, to=3-3]
\arrow[from=2-4, to=2-5]
\arrow["{\mathsf{TFib}}", from=2-4, to=3-4]
\arrow["g"', draw=none, from=2-4, to=3-4]
\arrow[equals, from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}

Since $\mathcal{N}$ is almost thick, $? ∈ \mathcal{N}$. By $? ∈ \mathcal{N} ∩ \mathcal{U} = \mathcal{S}$, $f ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$.
\\
\\
The proof of $4$ and $5$ are similar to $2$, just replace S4×4 lemma with SET4.

{% endlem %}

{% lem %}

(The verification of retraction closedness). For $𝖢𝗈𝖿𝗂𝖻$, $𝖥𝗂𝖻$, $𝖳𝖥𝗂𝖻$, and $𝖳𝖢𝗈𝖿𝗂𝖻$, we verify the property by means of the lifting property. We select $𝖥𝗂𝖻$ as a representative example. Suppose that $b$ is a retract of $f ∈ 𝖥𝗂𝖻$. We verify the lifting property of $b$ with respect to an arbitrarily chosen $c ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$ and an arbitrarily chosen commutative square $c ⇒ b$.

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzUsMCwiXFxidWxsZXQiXSxbNSwxLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbMCwwLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzAsMSwiaSJdLFsxLDIsInAiXSxbMiwzLCJiIiwyXSxbNCw1LCJqIiwyXSxbNSwzLCJxIiwyXSxbMSw1LCJcXG1hdGhzZntGaWJ9Il0sWzYsMCwiYSJdLFs3LDQsImQiLDJdLFs2LDcsIlxcbWF0aHNme1RDb2ZpYn0iLDJdLFs3LDEsInMiLDEseyJsYWJlbF9wb3NpdGlvbiI6NjAsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDcsImMiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCw0LCJiIiwyXSxbMSw1LCJmIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
\bullet \& \bullet \&\& \bullet \&\& \bullet \\
\bullet \& \bullet \&\& \bullet \&\& \bullet
\arrow["a", from=1-1, to=1-2]
\arrow["{\mathsf{TCofib}}"', from=1-1, to=2-1]
\arrow["c", draw=none, from=1-1, to=2-1]
\arrow["i", from=1-2, to=1-4]
\arrow["b"', from=1-2, to=2-2]
\arrow["p", from=1-4, to=1-6]
\arrow["{\mathsf{Fib}}", from=1-4, to=2-4]
\arrow["f"', draw=none, from=1-4, to=2-4]
\arrow["b"', from=1-6, to=2-6]
\arrow["s"{description, pos=0.6}, dashed, from=2-1, to=1-4]
\arrow["d"', from=2-1, to=2-2]
\arrow["j"', from=2-2, to=2-4]
\arrow["q"', from=2-4, to=2-6]
\end{tikzcd}
{% endtikz %}

We show that $p ∘ s$ is our desired lifting morphism of the most left square:

* $bps = qfs = qjd = d$;
* $psc = pia = a$.

Now we show that the retraction of $g ∈ 𝖶𝖾𝗊$, denoted by $g'$, is also an weak equivalence. We first factorise $g'$ into $𝖳𝖥𝗂𝖻 ∘ 𝖢𝗈𝖿𝗂𝖻$

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYJyJdLFsyLDAsIlgiXSxbNCwwLCJYJyJdLFsyLDIsIloiLFsyMzcsMTAwLDYwLDFdXSxbMCwyLCJaJyJdLFs0LDIsIlonIixbMjM3LDEwMCw2MCwxXV0sWzUsMSwiWSciLFsyMzcsMTAwLDYwLDFdXSxbMywxLCJZIixbMjM3LDEwMCw2MCwxXV0sWzAsMSwiaV9YIl0sWzEsMiwicF9YIl0sWzQsMywiaV9aIiwyXSxbMyw1LCJwX1oiLDIseyJjb2xvdXIiOlsyMzcsMTAwLDYwXX0sWzIzNywxMDAsNjAsMV1dLFswLDQsImcnIiwwLHsibGFiZWxfcG9zaXRpb24iOjcwfV0sWzIsNSwiZyciLDAseyJsYWJlbF9wb3NpdGlvbiI6NzB9XSxbMSwzLCJnIiwwLHsibGFiZWxfcG9zaXRpb24iOjcwfV0sWzIsNiwiXFxtYXRoc2Z7Q29maWJ9Il0sWzYsNSwiXFxtYXRoc2Z7VEZpYn0iLDAseyJjb2xvdXIiOlsyMzcsMTAwLDYwXX0sWzIzNywxMDAsNjAsMV1dLFs3LDYsIiIsMCx7ImNvbG91ciI6WzIzNywxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNywzLCJcXG1hdGhzZntURmlifSIsMCx7ImNvbG91ciI6WzIzNywxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFsyMzcsMTAwLDYwLDFdXV0=
\begin{tikzcd}
{X'} && X && {X'} \\
&&& \color{rgb,255:red,51;green,61;blue,255}{Y} && \color{rgb,255:red,51;green,61;blue,255}{Y'} \\
{Z'} && \color{rgb,255:red,51;green,61;blue,255}{Z} && \color{rgb,255:red,51;green,61;blue,255}{Z'}
\arrow["{i_X}", from=1-1, to=1-3]
\arrow["{g'}"{pos=0.7}, from=1-1, to=3-1]
\arrow["{p_X}", from=1-3, to=1-5]
\arrow["g"{pos=0.7}, from=1-3, to=3-3]
\arrow["{\mathsf{Cofib}}", from=1-5, to=2-6]
\arrow["{g'}"{pos=0.7}, from=1-5, to=3-5]
\arrow[color={rgb,255:red,51;green,61;blue,255}, dashed, from=2-4, to=2-6]
\arrow["{\mathsf{TFib}}", color={rgb,255:red,51;green,61;blue,255}, dashed, from=2-4, to=3-3]
\arrow["{\mathsf{TFib}}", color={rgb,255:red,51;green,61;blue,255}, from=2-6, to=3-5]
\arrow["{i_Z}"', from=3-1, to=3-3]
\arrow["{p_Z}"', color={rgb,255:red,51;green,61;blue,255}, from=3-3, to=3-5]
\end{tikzcd}
{% endtikz %}

The object $Y$ along with the weak pullback square is constructed by 4×4 lemma, we re-draw the diagram as follows ($g' = b'∘ a'$):

{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbMCwwLCJYJyJdLFsyLDAsIlgiXSxbNCwwLCJYJyJdLFsyLDIsIloiLFsyMzgsMTAwLDYwLDFdXSxbMCwyLCJaJyJdLFs0LDIsIlonIixbMjM4LDEwMCw2MCwxXV0sWzQsMSwiWSciXSxbMiwxLCJZIixbMjM4LDEwMCw2MCwxXV0sWzAsMSwiWSciXSxbMCwxLCJpX1giXSxbMSwyLCJwX1giXSxbNCwzLCJpX1oiLDJdLFszLDUsInBfWiIsMix7ImNvbG91ciI6WzIzOCwxMDAsNjBdfSxbMjM4LDEwMCw2MCwxXV0sWzIsNiwiYSciXSxbNiw1LCJiJyIsMCx7ImNvbG91ciI6WzIzOCwxMDAsNjBdfSxbMjM4LDEwMCw2MCwxXV0sWzcsNiwicF9ZIiwwLHsiY29sb3VyIjpbMjM4LDEwMCw2MF19LFsyMzgsMTAwLDYwLDFdXSxbNywzLCJiIiwwLHsiY29sb3VyIjpbMjM4LDEwMCw2MF19LFsyMzgsMTAwLDYwLDFdXSxbOCw0LCJiJyIsMl0sWzAsOCwiYSciLDJdLFsxLDcsImEiLDAseyJjb2xvdXIiOlszNTgsMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fSxbMzU4LDEwMCw2MCwxXV0sWzgsNywiaV9ZIiwwLHsiY29sb3VyIjpbMzU4LDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzM1OCwxMDAsNjAsMV1dLFs4LDQsIlxcbWF0aHNme1RGaWJ9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsNiwiXFxtYXRoc2Z7Q29maWJ9IiwyXSxbMCw4LCJcXG1hdGhzZntDb2ZpYn0iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiw1LCJcXG1hdGhzZntURmlifSIsMix7ImNvbG91ciI6WzIzOCwxMDAsNjBdfSxbMjM4LDEwMCw2MCwxXV0sWzcsMywiXFxtYXRoc2Z7VEZpYn0iLDIseyJjb2xvdXIiOlsyMzgsMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fSxbMjM4LDEwMCw2MCwxXV0sWzEsNywiXFxtYXRoc2Z7V2VxfSIsMix7ImNvbG91ciI6WzM1OCwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19LFszNTgsMTAwLDYwLDFdXV0=
\begin{tikzcd}
{X'} && X && {X'} \\
{Y'} && \color{rgb,255:red,51;green,58;blue,255}{Y} && {Y'} \\
{Z'} && \color{rgb,255:red,51;green,58;blue,255}{Z} && \color{rgb,255:red,51;green,58;blue,255}{Z'}
\arrow["{i_X}", from=1-1, to=1-3]
\arrow["{a'}"', from=1-1, to=2-1]
\arrow["{\mathsf{Cofib}}", draw=none, from=1-1, to=2-1]
\arrow["{p_X}", from=1-3, to=1-5]
\arrow["a", color={rgb,255:red,255;green,51;blue,58}, dashed, from=1-3, to=2-3]
\arrow["{\mathsf{Weq}}"', color={rgb,255:red,255;green,51;blue,58}, draw=none, from=1-3, to=2-3]
\arrow["{a'}", from=1-5, to=2-5]
\arrow["{\mathsf{Cofib}}"', from=1-5, to=2-5]
\arrow["{i_Y}", color={rgb,255:red,255;green,51;blue,58}, dashed, from=2-1, to=2-3]
\arrow["{b'}"', from=2-1, to=3-1]
\arrow["{\mathsf{TFib}}", draw=none, from=2-1, to=3-1]
\arrow["{p_Y}", color={rgb,255:red,51;green,58;blue,255}, from=2-3, to=2-5]
\arrow["b", color={rgb,255:red,51;green,58;blue,255}, from=2-3, to=3-3]
\arrow["{\mathsf{TFib}}"', color={rgb,255:red,51;green,58;blue,255}, draw=none, from=2-3, to=3-3]
\arrow["{b'}", color={rgb,255:red,51;green,58;blue,255}, from=2-5, to=3-5]
\arrow["{\mathsf{TFib}}"', color={rgb,255:red,51;green,58;blue,255}, from=2-5, to=3-5]
\arrow["{i_Z}"', from=3-1, to=3-3]
\arrow["{p_Z}"', color={rgb,255:red,51;green,58;blue,255}, from=3-3, to=3-5]
\end{tikzcd}
{% endtikz %}

Here the weak quivalence $a$ and the retraction $i_Y$ are taken from weak PB diagram:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzEsMiwiWiIsWzIzOCwxMDAsNjAsMV1dLFsyLDIsIlonIixbMjM4LDEwMCw2MCwxXV0sWzIsMSwiWSciLFsyMzgsMTAwLDYwLDFdXSxbMSwxLCJZIixbMjM4LDEwMCw2MCwxXV0sWzAsMCwiWSciXSxbMywwLCJYIl0sWzQsMSwiWSIsWzIzOCwxMDAsNjAsMV1dLFs1LDEsIlknIixbMjM4LDEwMCw2MCwxXV0sWzUsMiwiWiciLFsyMzgsMTAwLDYwLDFdXSxbNCwyLCJaIixbMjM4LDEwMCw2MCwxXV0sWzAsMSwicF9aIiwwLHsiY29sb3VyIjpbMjM4LDEwMCw2MF19LFsyMzgsMTAwLDYwLDFdXSxbMiwxLCJiJyIsMCx7ImNvbG91ciI6WzIzOCwxMDAsNjBdfSxbMjM4LDEwMCw2MCwxXV0sWzMsMiwicF9ZIiwwLHsiY29sb3VyIjpbMjM4LDEwMCw2MF19LFsyMzgsMTAwLDYwLDFdXSxbMywwLCJiIiwwLHsiY29sb3VyIjpbMjM4LDEwMCw2MF19LFsyMzgsMTAwLDYwLDFdXSxbNCwwLCJpX1ogYiciLDIseyJjdXJ2ZSI6Mn1dLFs0LDIsIjFfe1knfSIsMCx7ImN1cnZlIjotMn1dLFs0LDMsImlfWSIsMCx7ImNvbG91ciI6WzM1OCwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFszNTgsMTAwLDYwLDFdXSxbNiw5LCJiIiwwLHsiY29sb3VyIjpbMjM4LDEwMCw2MF19LFsyMzgsMTAwLDYwLDFdXSxbNyw4LCJiJyIsMCx7ImNvbG91ciI6WzIzOCwxMDAsNjBdfSxbMjM4LDEwMCw2MCwxXV0sWzYsNywicF9ZIiwwLHsiY29sb3VyIjpbMjM4LDEwMCw2MF19LFsyMzgsMTAwLDYwLDFdXSxbOSw4LCJwX1oiLDAseyJjb2xvdXIiOlsyMzgsMTAwLDYwXX0sWzIzOCwxMDAsNjAsMV1dLFs1LDcsImEncF9YIiwwLHsiY3VydmUiOi0yfV0sWzUsOSwiZyIsMix7ImN1cnZlIjoyfV0sWzUsNiwiYSIsMCx7ImNvbG91ciI6WzM1OCwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFszNTgsMTAwLDYwLDFdXV0=
\begin{tikzcd}
{Y'} &&& X \\
& \color{rgb,255:red,51;green,58;blue,255}{Y} & \color{rgb,255:red,51;green,58;blue,255}{Y'} && \color{rgb,255:red,51;green,58;blue,255}{Y} & \color{rgb,255:red,51;green,58;blue,255}{Y'} \\
& \color{rgb,255:red,51;green,58;blue,255}{Z} & \color{rgb,255:red,51;green,58;blue,255}{Z'} && \color{rgb,255:red,51;green,58;blue,255}{Z} & \color{rgb,255:red,51;green,58;blue,255}{Z'}
\arrow["{i_Y}", color={rgb,255:red,255;green,51;blue,58}, dashed, from=1-1, to=2-2]
\arrow["{1_{Y'}}", curve={height=-12pt}, from=1-1, to=2-3]
\arrow["{i_Z b'}"', curve={height=12pt}, from=1-1, to=3-2]
\arrow["a", color={rgb,255:red,255;green,51;blue,58}, dashed, from=1-4, to=2-5]
\arrow["{a'p_X}", curve={height=-12pt}, from=1-4, to=2-6]
\arrow["g"', curve={height=12pt}, from=1-4, to=3-5]
\arrow["{p_Y}", color={rgb,255:red,51;green,58;blue,255}, from=2-2, to=2-3]
\arrow["b", color={rgb,255:red,51;green,58;blue,255}, from=2-2, to=3-2]
\arrow["{b'}", color={rgb,255:red,51;green,58;blue,255}, from=2-3, to=3-3]
\arrow["{p_Y}", color={rgb,255:red,51;green,58;blue,255}, from=2-5, to=2-6]
\arrow["b", color={rgb,255:red,51;green,58;blue,255}, from=2-5, to=3-5]
\arrow["{b'}", color={rgb,255:red,51;green,58;blue,255}, from=2-6, to=3-6]
\arrow["{p_Z}", color={rgb,255:red,51;green,58;blue,255}, from=3-2, to=3-3]
\arrow["{p_Z}", color={rgb,255:red,51;green,58;blue,255}, from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}
We focus on the upper portion of the diagram; that is, we demonstrate that if $a ∈ 𝖶𝖾𝗊$ and $a'$ is a retraction of $a$ with $a' ∈ 𝖢𝗈𝖿𝗂𝖻$, then $a'$ is a weak equivalence.

* The original problem was $x ∈ 𝖱𝖾𝗍𝗋𝖺𝖼(𝖶𝖾𝗊) ⟹ x ∈ 𝖶𝖾𝗊$;
* We deduce this to $x ∈ 𝖱𝖾𝗍𝗋𝖺𝖼(𝖶𝖾𝗊) ∩ 𝖢𝗈𝖿𝗂𝖻 ⟹ x ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$.

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYJyJdLFsyLDAsIlgiXSxbNCwwLCJYJyJdLFs0LDIsIlknIl0sWzIsMiwiWSJdLFswLDIsIlknIl0sWzMsMSwiUCIsWzM1NywxMDAsNjAsMV1dLFsyLDEsIkUiXSxbMCwxLCJpX1giXSxbMSwyLCJwX1giXSxbMiwzLCJhJyJdLFs0LDMsInBfWSIsMl0sWzAsNSwiYSciLDJdLFs1LDQsImlfWSIsMl0sWzAsNSwiXFxtYXRoc2Z7Q29maWJ9IiwwLHsibGFiZWxfcG9zaXRpb24iOjIwLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsNywiYV97dGN9Il0sWzcsNCwiYV97dGZ9Il0sWzEsNywiXFxtYXRoc2Z7VENvZmlifSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs3LDQsIlxcbWF0aHNme1RGaWJ9IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsNiwiayIsMix7ImNvbG91ciI6WzM1NywxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFszNTcsMTAwLDYwLDFdXSxbMiw2LCJcXG1hdGhzZntUQ29maWJ9IiwwLHsiY29sb3VyIjpbMzU3LDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzM1NywxMDAsNjAsMV1dLFs3LDIsIlxcc3F1YXJlIiwxLHsiY29sb3VyIjpbMzU3LDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX0sWzM1NywxMDAsNjAsMV1dLFs1LDcsInMiLDIseyJjdXJ2ZSI6LTIsImNvbG91ciI6WzIzMCwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFsyMzAsMTAwLDYwLDFdXSxbNiwzLCJsIiwyLHsiY29sb3VyIjpbMjMwLDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzIzMCwxMDAsNjAsMV1dXQ==
\begin{tikzcd}
{X'} && X && {X'} \\
&& E & \color{rgb,255:red,255;green,51;blue,61}{P} \\
{Y'} && Y && {Y'}
\arrow["{i_X}", from=1-1, to=1-3]
\arrow["{a'}"', from=1-1, to=3-1]
\arrow["{\mathsf{Cofib}}"{pos=0.2}, no head, from=1-1, to=3-1]
\arrow["{p_X}", from=1-3, to=1-5]
\arrow["{a_{tc}}", from=1-3, to=2-3]
\arrow["{\mathsf{TCofib}}"', draw=none, from=1-3, to=2-3]
\arrow["{\mathsf{TCofib}}", color={rgb,255:red,255;green,51;blue,61}, dashed, from=1-5, to=2-4]
\arrow["{a'}", from=1-5, to=3-5]
\arrow["\square"{description}, color={rgb,255:red,255;green,51;blue,61}, draw=none, from=2-3, to=1-5]
\arrow["k"', color={rgb,255:red,255;green,51;blue,61}, dashed, from=2-3, to=2-4]
\arrow["{a_{tf}}", from=2-3, to=3-3]
\arrow["{\mathsf{TFib}}"', draw=none, from=2-3, to=3-3]
\arrow["l"', color={rgb,255:red,51;green,85;blue,255}, dashed, from=2-4, to=3-5]
\arrow["s"', color={rgb,255:red,51;green,85;blue,255}, curve={height=-12pt}, dashed, from=3-1, to=2-3]
\arrow["{i_Y}"', from=3-1, to=3-3]
\arrow["{p_Y}"', from=3-3, to=3-5]
\end{tikzcd}
{% endtikz %}

The diagram is established with the procedure:

1. We factorise $a$ as $a_{tf} ∘ a_{tc} ∈ 𝖳𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$, and obtain all solid arrows.
2. The homotopic $\square$ comes from ET4. We obtain the red part.
3. By lifting property, we obtain all dashed blue arrows.

We observe that $a'$ is a retraction of $a_{tc}$, hence $a' ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$. We finally demonstrate that $g' = b' ∘ a' ∈ 𝖳𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$ is a weak equivalence.
{% endlem %}

### Remarks on $\mathcal{W}$ and $𝖶𝖾𝗊$

For admissible model structure over extriangulated category, we remark the following features of trivial objects $\mathcal{W} \ (= \mathcal{N} = \mathrm{Cone}(\mathcal{V} , \mathcal{S} ))$ and the class the weak equivalences $𝖶𝖾𝗊$.

{% prop %}
$\mathcal{W}$ is a almost thick subcategory, and thus is an extriangulated subcategory. The proof is given apriori.
{% endprop %}

The next lemma provides a criterion for determining whether an inflation or deflation is a weak equivalence.

{% lem %}
For conflation $X \xrightarrow i Y \xrightarrow p Z$,

- $i$ is an weak equivalence, if and only if $Z ∈ \mathcal{W}$;
- $p$ is an weak equivalence, if and only if $X ∈ \mathcal{W}$.

Remind that $𝖳𝖢𝗈𝖿𝗂𝖻 ⊊ 𝖨𝗇𝖿𝗅𝖺𝗍𝗂𝗈𝗇 ∩ 𝖶𝖾𝗊$ and $𝖳𝖥𝗂𝖻 ⊊ 𝖣𝖾𝖿𝗅𝖺𝗍𝗂𝗈𝗇 ∩ 𝖶𝖾𝗊$ in general.

{% pf %}
We shall prove only the first assertion. Suppose that $i$ is a weak equivalence. We factorise $i = i_f ∘ i_c ∈ 𝖳𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$. By the S4×4 lemma, we complete $δ_{c3}$ from $\{δ _{r2}, δ _{r3}, δ _{c2}\}$. Now $Z ∈ \mathrm{Cone}(\mathcal{V} ,\mathcal{S} ) = \mathcal{W}$.
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzIsMiwiWCJdLFszLDIsIlkiXSxbNCwyLCJaIl0sWzMsMSwiRSJdLFs0LDEsIlMiXSxbMywwLCJWIl0sWzIsMSwiWCJdLFs0LDAsIlYiXSxbMCwxLCJcXCwiXSxbNiwxLCJcXCwiXSxbNSwyLCJcXCwiXSxbNSwxLCJcXCwiXSxbNCwzLCJcXCwiXSxbMywzLCJcXCwiXSxbMCwxLCJpIl0sWzMsMSwiaV9mIl0sWzMsNF0sWzUsM10sWzEsMiwicCJdLFs2LDMsImlfYyJdLFswLDYsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsNywiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNyw0XSxbNCwyXSxbNCwxMSwiXFxkZWx0YV97cjJ9Il0sWzIsMTAsIlxcZGVsdGFfe3IzfSJdLFsxLDEzLCJcXGRlbHRhX3tjMn0iXSxbMiwxMiwiXFxkZWx0YV97YzN9Il1d
\begin{tikzcd}[ampersand replacement=\&]
\&\&\& V \& V \\
{\,} \&\& X \& E \& S \& {\,} \& {\,} \\
\&\& X \& Y \& Z \& {\,} \\
\&\&\& {\,} \& {\,}
\arrow[equals, from=1-4, to=1-5]
\arrow[from=1-4, to=2-4]
\arrow[from=1-5, to=2-5]
\arrow["{i_c}", from=2-3, to=2-4]
\arrow[from=2-4, to=2-5]
\arrow["{i_f}", from=2-4, to=3-4]
\arrow["{\delta_{r2}}", from=2-5, to=2-6]
\arrow[from=2-5, to=3-5]
\arrow[equals, from=3-3, to=2-3]
\arrow["i", from=3-3, to=3-4]
\arrow["p", from=3-4, to=3-5]
\arrow["{\delta_{c2}}", from=3-4, to=4-4]
\arrow["{\delta_{r3}}", from=3-5, to=3-6]
\arrow["{\delta_{c3}}", from=3-5, to=4-5]
\end{tikzcd}
{% endtikz %}

Conversely, suppose that $Z ∈ \mathrm{Cone}(\mathcal{V} , \mathcal{S})$. We complete $\{δ_{r2}, δ _{c2}\}$ from $\{δ _{c3}, δ _{r3}\}$. This shows that $i∈ 𝖳𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$.

{% endpf %}

{% endlem %}

{% prop %}
The class of weak equivalences is compatible with ET2 and ET3 (ET3'). To be explicit, let $δ$ and $δ'$ be conflations realised by $A → B → C$ and $A' → B' → C '$ respectively.

1. (WET2). If there exists a morphism of extension $(α , γ ): δ → δ '$ such that $α$ and $γ$ are weak equivalences, then there exists a weak equivalence $β : B → B'$ rendering the entire diagram commutative.
2. (WET3). If there exists a commutative square consisting of two inflations and weak equivalences $α : A → A'$ and $γ : C → C'$, then there exists a weak equivalence $β : B → B'$ rendering the entire diagram commutative, with $(α , γ ): δ → δ '$.
3. (WET3'). The dual statement of WET3.

{% pf %}
We firstly show WET2. We write $α = α_f ∘ α_c$ such that $α _f ∈ 𝖳𝖥𝗂𝖻$ and $α _c ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$. Consider the following morphism of extensions:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiQSJdLFsyLDAsIkIiXSxbNCwwLCJDIl0sWzUsMCwiXFwsIl0sWzQsMiwiQyJdLFs1LDIsIlxcLCJdLFswLDIsIkEnIl0sWzIsMiwiRSJdLFswLDEsIkEnJyJdLFs0LDEsIkMiXSxbMiwxLCJFJyJdLFs1LDEsIlxcLCAiXSxbMiwzLCJcXGRlbHRhIl0sWzQsNSwiXFxhbHBoYSBfXFxhc3QgXFxkZWx0YSAiXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFswLDgsIlxcYWxwaGEgX2MiLDJdLFs4LDEwXSxbMTAsOV0sWzksMiwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOSwxMSwiKFxcYWxwaGEgX2MpX1xcYXN0IFxcZGVsdGEgIl0sWzEsMTBdLFsxMCw3XSxbOCw2LCJcXGFscGhhIF9mIiwyXSxbOSw0LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDddLFs3LDRdLFswLDEwLCJcXHNxdWFyZSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs4LDcsIlxcdHJpYW5nbGUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
A && B && C & {\,} \\
{A''} && {E'} && C & {\, } \\
{A'} && E && C & {\,}
\arrow["f", from=1-1, to=1-3]
\arrow["{\alpha _c}"', from=1-1, to=2-1]
\arrow["\square"{description}, draw=none, from=1-1, to=2-3]
\arrow["g", from=1-3, to=1-5]
\arrow[from=1-3, to=2-3]
\arrow["\delta", from=1-5, to=1-6]
\arrow[from=2-1, to=2-3]
\arrow["{\alpha _f}"', from=2-1, to=3-1]
\arrow["\triangle"{description}, draw=none, from=2-1, to=3-3]
\arrow[from=2-3, to=2-5]
\arrow[from=2-3, to=3-3]
\arrow[equals, from=2-5, to=1-5]
\arrow["{(\alpha _c)_\ast \delta }", from=2-5, to=2-6]
\arrow[equals, from=2-5, to=3-5]
\arrow[from=3-1, to=3-3]
\arrow[from=3-3, to=3-5]
\arrow["{\alpha _\ast \delta }", from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

Completing the square using the $4 \times 4$ lemma and the triangle using ET4, we observe that $B \to E' \to E$ is a composition of weak equivalences. We perform this procedure for $(γ)^∗ δ'$, which completes the proof.
\\
\\
Now we show WET3. Suppose that there are weak equivalences $α$ and $β$ making the diagram commutative. We forget $β$ first, and complete $(α , 1_C) : δ → α _∗ δ$ be the procedure apriori. Since both $\square$ and $\triangle$ are weak pushouts squares, there is a $φ$ making the entire diagram commutative.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTUsWzAsMCwiQSJdLFsyLDAsIkIiXSxbNCwwLCJDIl0sWzUsMCwiXFwsIl0sWzQsMiwiQyJdLFs1LDIsIlxcLCJdLFswLDIsIkEnIl0sWzIsMiwiRSJdLFswLDEsIkEnJyJdLFs0LDEsIkMiXSxbMiwxLCJFJyJdLFs1LDEsIlxcLCAiXSxbMCwzLCJBJyJdLFsyLDMsIkInIl0sWzQsMywiQyciXSxbMiwzLCJcXGRlbHRhIl0sWzQsNSwiXFxhbHBoYSBfXFxhc3QgXFxkZWx0YSAiXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFswLDgsIlxcYWxwaGEgX2MiLDJdLFs4LDEwXSxbMTAsOV0sWzksMiwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOSwxMSwiKFxcYWxwaGEgX2MpX1xcYXN0IFxcZGVsdGEgIl0sWzEsMTBdLFsxMCw3XSxbOCw2LCJcXGFscGhhIF9mIiwyXSxbOSw0LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDddLFs3LDRdLFswLDEwLCJcXHNxdWFyZSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs4LDcsIlxcdHJpYW5nbGUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiwxMiwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTIsMTMsImYnIiwyXSxbMTMsMTQsImcnIiwyXSxbNywxMywiXFx2YXJwaGkgIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsMTMsIlxcYmV0YSIsMCx7ImN1cnZlIjotM31dXQ==
\begin{tikzcd}
A && B && C & {\,} \\
{A''} && {E'} && C & {\, } \\
{A'} && E && C & {\,} \\
{A'} && {B'} && {C'}
\arrow["f", from=1-1, to=1-3]
\arrow["{\alpha _c}"', from=1-1, to=2-1]
\arrow["\square"{description}, draw=none, from=1-1, to=2-3]
\arrow["g", from=1-3, to=1-5]
\arrow[from=1-3, to=2-3]
\arrow["\beta", curve={height=-18pt}, from=1-3, to=4-3]
\arrow["\delta", from=1-5, to=1-6]
\arrow[from=2-1, to=2-3]
\arrow["{\alpha _f}"', from=2-1, to=3-1]
\arrow["\triangle"{description}, draw=none, from=2-1, to=3-3]
\arrow[from=2-3, to=2-5]
\arrow[from=2-3, to=3-3]
\arrow[equals, from=2-5, to=1-5]
\arrow["{(\alpha _c)_\ast \delta }", from=2-5, to=2-6]
\arrow[equals, from=2-5, to=3-5]
\arrow[from=3-1, to=3-3]
\arrow[equals, from=3-1, to=4-1]
\arrow[from=3-3, to=3-5]
\arrow["{\varphi }"', dashed, from=3-3, to=4-3]
\arrow["{\alpha _\ast \delta }", from=3-5, to=3-6]
\arrow["{f'}"', from=4-1, to=4-3]
\arrow["{g'}"', from=4-3, to=4-5]
\end{tikzcd}
{% endtikz %}

$φ ∈ 𝖶𝖾𝗊$ by the two-out-of-three property. We express $φ$ as $φ ∈ 𝖳𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$ and apply an analogous procedure, which yields two weak equivalences whose composition is the required $γ$.

{% endpf %}

{% endprop %}

### Equivalent Defs of $𝖧𝗈 \mathcal{A}$

We shall identify the homotopy category of $\mathcal{A}$ via by stable category $\frac{\mathcal{C} ∩ \mathcal{F}}{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}}$. We denote $[f]$ by the coset of $f$ in stable Hom groups.

{% lem %}
(In $\mathcal{C} ∩ \mathcal{F}$, $f ∈ 𝖶𝖾𝗊$ iff $[f]$ is an isomorphism in $\frac{\mathcal{C} ∩ \mathcal{F}}{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}}$). For objects $X, Y ∈ \mathcal{C} ∩ \mathcal{F}$, a morphism $f : X → Y$ is an weak equivalence, if and only if $[f]$ is an isomorphism in the quotient category $\frac{\mathcal{C} ∩ \mathcal{F}}{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}}$.

{% pf %}
Suppose that $f ∈ 𝖶𝖾𝗊$. Now we have a decomposition
$$\begin{equation}
f = p ∘ i ∈ 𝖳𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻.
\end{equation}$$
By $𝔼$-orthogonality, we complete the two conflations into two split exact sequences

{% tikz %}
% https://q.uiver.app/#q=WzAsNyxbMiwwLCJYIl0sWzQsMCwiWSJdLFszLDEsIkUiXSxbNCwyLCJWIl0sWzIsMiwiUyJdLFswLDAsIlxcLCJdLFs2LDAsIlxcLCJdLFswLDEsImYiXSxbMCwyLCJpIl0sWzIsMSwicCJdLFsyLDAsInEiLDAseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMSwyLCJqIiwwLHsib2Zmc2V0IjotMywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzQsMl0sWzIsM11d
\begin{tikzcd}[ampersand replacement=\&]
{\,} \&\& X \&\& Y \&\& {\,} \\
\&\&\& E \\
\&\& S \&\& V
\arrow["f", from=1-3, to=1-5]
\arrow["i", from=1-3, to=2-4]
\arrow["j", shift left=3, dotted, from=1-5, to=2-4]
\arrow["q", shift left=3, dotted, from=2-4, to=1-3]
\arrow["p", from=2-4, to=1-5]
\arrow[from=2-4, to=3-5]
\arrow[from=3-3, to=2-4]
\end{tikzcd}
{% endtikz %}

Here $([j],[p])$ and $([i],[q])$ are pairs of inverses morphisms. Hence $[f]$ has inverse $[q ∘ j]$ in the stable category.
\\
\\
Conversely, we assume that $[f]$ is an isomorphism in the stable category. We firstly factorise $f$ into $f = p ∘ i ∈ 𝖳𝖥𝗂𝖻 ∘ 𝖢𝗈𝖿𝗂𝖻$. This also yields two split conflations.

{% tikz %}
% https://q.uiver.app/#q=WzAsNyxbMiwwLCJYIl0sWzQsMCwiWSJdLFszLDEsIkUiXSxbNCwyLCJVIl0sWzIsMiwiUyJdLFswLDAsIlxcLCJdLFs2LDAsIlxcLCJdLFswLDEsImYiXSxbMCwyLCJpIl0sWzIsMSwicCJdLFsyLDAsInEiLDAseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMSwyLCJqIiwwLHsib2Zmc2V0IjotMywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzQsMl0sWzIsM11d
\begin{tikzcd}[ampersand replacement=\&]
{\,} \&\& X \&\& Y \&\& {\,} \\
\&\&\& E \\
\&\& S \&\& U
\arrow["f", from=1-3, to=1-5]
\arrow["i", from=1-3, to=2-4]
\arrow["j", shift left=3, dotted, from=1-5, to=2-4]
\arrow["q", shift left=3, dotted, from=2-4, to=1-3]
\arrow["p", from=2-4, to=1-5]
\arrow[from=2-4, to=3-5]
\arrow[from=3-3, to=2-4]
\end{tikzcd}
{% endtikz %}

By extension-closedness, we have $E ∈ \mathcal{C} ∩ \mathcal{F}$. Since $p$ is a weak equivalence between objects in $\mathcal{C} ∩ \mathcal{F}$, $[p]$ is an isomorphism. Since $[p ∘ i]$ is also an isomorphism, it follows that $[i]$ is an isomorphism. Furthermore, as both $[1_A]$ and $[i]$ are isomorphisms, it follows that $[q]$ is also an isomorphism. Finally,

$$\begin{equation}
[j ∘ p] = [1_E] - [i ∘ q] = [1_E] - [1_E] = 0.
\end{equation}$$

Hence, $[1_Y] = [p] ∘ [j ∘ p] ∘ [j] = 0$. It follows that $Y ∈ 𝖳\mathcal{C}$, thus $i$ is a trivial fibration.

{% endpf %}

{% endlem %}

We have already deduced that $(\mathcal{C} ∩ \mathcal{F}) [𝖶𝖾𝗊^{-1}] ≃ \frac{\mathcal{C} ∩ \mathcal{F}}{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}}$ is an isomorphism of categories. In order to establish its equivalence with $𝖧𝗈 \mathcal{A}$, we invoke Quillen's theorem and reduce the problem to $???$,
$$\begin{equation}
π(\mathcal{C} ∩ \mathcal{F}) \xleftarrow[≅]{???} (\mathcal{C} ∩ \mathcal{F}) [𝖶𝖾𝗊^{-1}] \xrightarrow[≅]{\text{proved}} \frac{\mathcal{C} ∩ \mathcal{F} }{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}}.
\end{equation}$$

{% ex %}
By Quillen's theorem, any admissible model structure on an extriangulated category $(\mathcal{A}, 𝔼, 𝔰)$ satisfies $π(\mathcal{C} ∩ \mathcal{F}) ≃ 𝖧𝗈 \mathcal{A}$. We proceed to verify the prerequisites.

1. $\mathcal{A}$ is additive, and thus possesses zero objects and finite biproducts.
2. There exists a model structure on $\mathcal{A}$.
3. Given a trivial cofibration $i : X → Y$ and an arbitrary morphism $φ : X → X'$, there exists a weakly pushout square such that $X' → Y'$ is also a trivial cofibration. Indeed, we demonstrate that such a square may, moreover, be taken to be homotopic.
4. The dual requirements for trivial fibration.

Hence, there is a diagram of functors relates the path homotopy to the localisation.

{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbMCwwLCJcXHBpIFxcbWF0aHNjciBDIl0sWzAsMiwiXFxwaSBcXG1hdGhzY3IgRiJdLFswLDEsIlxccGkgKFxcbWF0aHNjciBDIFxcY2FwIFxcbWF0aHNjciBGICkiXSxbMiwwLCJcXG1hdGhzZntIb30oXFxtYXRoc2NyIEMpIl0sWzMsMCwiXFxtYXRoc2NyIENbIFxcbWF0aHNme1RDb2ZpYn1eey0xfV0iXSxbMiwyLCJcXG1hdGhzZntIb30oXFxtYXRoc2NyIEYpIl0sWzMsMiwiXFxtYXRoc2NyIEZbIFxcbWF0aHNme1RGaWJ9XnstMX1dIl0sWzMsMSwiXFxtYXRoc2NyIENbIFxcbWF0aHNme1dlcX1eey0xfV0iXSxbMiwxLCJcXG1hdGhzZntIb30oXFxtYXRoc2NyIEEpIl0sWzIsMCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsyLDEsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMCwzLCJcXG92ZXJsaW5lIHtcXGdhbW1hIF9jfSJdLFszLDgsIlxcc2ltZXEiXSxbMSw1LCJcXG92ZXJsaW5lIHtcXGdhbW1hIF9mfSIsMl0sWzUsOCwiXFxzaW1lcSIsMl0sWzMsNCwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw3LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDYsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsOCwiXFxvdmVybGluZSBcXGdhbW1hICIsMl0sWzIsOCwiXFxzaW1lcSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDAsIiIsMix7Im9mZnNldCI6LTEsImN1cnZlIjotM31dLFs1LDEsIiIsMix7Im9mZnNldCI6MSwiY3VydmUiOjN9XSxbMTEsMjAsIlxcYm90IiwxLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIxLDEzLCJcXGJvdCIsMSx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
{\pi \mathcal C} \&\& {\mathsf{Ho}(\mathcal C)} \& {\mathcal C[ \mathsf{TCofib}^{-1}]} \\
{\pi (\mathcal C \cap \mathcal F )} \&\& {\mathsf{Ho}(\mathcal A)} \& {\mathcal C[ \mathsf{Weq}^{-1}]} \\
{\pi \mathcal F} \&\& {\mathsf{Ho}(\mathcal F)} \& {\mathcal F[ \mathsf{TFib}^{-1}]}
\arrow[""{name=0, anchor=center, inner sep=0}, "{\overline {\gamma _c}}", from=1-1, to=1-3]
\arrow[""{name=1, anchor=center, inner sep=0}, shift left, curve={height=-18pt}, from=1-3, to=1-1]
\arrow[equals, from=1-3, to=1-4]
\arrow["\simeq", from=1-3, to=2-3]
\arrow[tail, from=2-1, to=1-1]
\arrow["{\overline \gamma }"', from=2-1, to=2-3]
\arrow["\simeq", draw=none, from=2-1, to=2-3]
\arrow[tail, from=2-1, to=3-1]
\arrow[equals, from=2-3, to=2-4]
\arrow[""{name=2, anchor=center, inner sep=0}, "{\overline {\gamma _f}}"', from=3-1, to=3-3]
\arrow["\simeq"', from=3-3, to=2-3]
\arrow[""{name=3, anchor=center, inner sep=0}, shift right, curve={height=18pt}, from=3-3, to=3-1]
\arrow[equals, from=3-3, to=3-4]
\arrow["\bot"{description}, draw=none, from=0, to=1]
\arrow["\bot"{description}, draw=none, from=3, to=2]
\end{tikzcd}
{% endtikz %}

{% endex %}

{% thm %}
There is an isomorphism of categories $\frac{\mathcal{C} ∩ \mathcal{F}}{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}} → π (\mathcal{C} ∩ \mathcal{F})$, induce by $π : \mathcal{C} ∩ \mathcal{F} ↣ π (\mathcal{C} ∩ \mathcal{F})$.

{% pf %}
It suffices to show that $\frac{\mathcal{C} ∩ \mathcal{F}}{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}} → π (\mathcal{C} ∩ \mathcal{F})$ is an isomorphism induced by the  dashed arrow

{% tikz %}
% https://q.uiver.app/#q=WzAsNCxbMSwwLCJcXG1hdGhzY3IgQ1xcY2FwIFxcbWF0aHNjciBGIl0sWzEsMiwiXFxmcmFje1xcbWF0aHNjciBDXFxjYXAgXFxtYXRoc2NyIEZ9e1xcbWF0aHNjciBDXFxjYXAgXFxtYXRoc2NyIFcgXFxjYXAgXFxtYXRoc2NyIEZ9Il0sWzAsMSwiXFxwaSAoXFxtYXRoc2NyIENcXGNhcCBcXG1hdGhzY3IgRikiXSxbMiwxLCIoXFxtYXRoc2NyIENcXGNhcCBcXG1hdGhzY3IgRilbXFxtYXRoc2Z7V2VxfV57LTF9XSJdLFswLDIsIlxccGkiLDJdLFswLDEsIlxcdGV4dHtTdGFibGlzZWR9IiwxXSxbMSwyLCI/Pz8iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCwzLCJcXHRleHR7TG9jYWxpc2VkfSJdLFszLDEsIlxcY29uZyIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6ImFycm93aGVhZCJ9fX1dXQ==
\begin{tikzcd}
& {\mathcal C\cap \mathcal F} \\
{\pi (\mathcal C\cap \mathcal F)} && {(\mathcal C\cap \mathcal F) [\mathsf{Weq}^{-1}]} \\
& {\frac{\mathcal C\cap \mathcal F}{\mathcal C\cap \mathcal W \cap \mathcal F}}
\arrow["\pi"', from=1-2, to=2-1]
\arrow["{\text{Localised}}", from=1-2, to=2-3]
\arrow["{\text{Stablised}}"{description}, from=1-2, to=3-2]
\arrow["\cong", tail reversed, from=2-3, to=3-2]
\arrow["{???}", dashed, from=3-2, to=2-1]
\end{tikzcd}
{% endtikz %}

To prove that $\frac{\mathcal{C} ∩ \mathcal{F}}{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}} → π (\mathcal{C} ∩ \mathcal{F})$ is well-defined, we shall show that $π$ maps $𝖶𝖾𝗊$ to isomorphisms in $π(\mathcal{C} ∩ \mathcal{F})$. It suffices to establish that $π$ sends $𝖳𝖥𝗂𝖻$ to isomorphisms; the case for $𝖳𝖢𝗈𝖿𝗂𝖻$ is dual.
\\
Let $p : X → Y$ be such a trivial fibration. We show that $π(-,X) \xrightarrow{p_∗} π(-,Y)$ is an functorial isomorphism. We take $A ∈ \mathcal{C} ∩ \mathcal{F}$. We claim that such $p_∗ = π (A, p)$ is surjective: By lifting property of the pair $(0_{0A}, p)$, any morphism $A → Y$ factors through $p$. We also claim that such $p_∗ = π (A, p)$ is injective. We take any $f,g : A → X$ such that $pf ∼ pg$, i.e., the commutative diagram with solid arrows:
{% tikz %}
% https://q.uiver.app/#q=WzAsNyxbMSwwLCJBIFxcb3BsdXMgQSJdLFsxLDIsIkEiXSxbNCwyLCJcXHdpZGV0aWxkZSBBIl0sWzQsMCwiWSJdLFszLDAsIlgiXSxbMCwxLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwxLCIoMSwxKSIsMl0sWzIsMSwiXFxzaWdtYSAiXSxbMCw0LCIoZixnKSJdLFs0LDMsInAiXSxbMCwyLCIoXFxwYXJ0aWFsIF8wLCBcXHBhcnRpYWwgXzEpIiwyLHsibGFiZWxfcG9zaXRpb24iOjIwfV0sWzAsMiwiXFxtYXRoc2Z7Q29maWJ9IiwwLHsibGFiZWxfcG9zaXRpb24iOjQwLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwzLCJoIiwyXSxbNCwzLCJcXG1hdGhzZntURmlifSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDQsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDEsIlxcbWF0aHNme1dlcX0iLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
& {A \oplus A} && X & Y \\
{\,} &&&&& {\,} \\
& A &&& {\widetilde A}
\arrow["{(f,g)}", from=1-2, to=1-4]
\arrow["{(1,1)}"', from=1-2, to=3-2]
\arrow["{(\partial _0, \partial _1)}"'{pos=0.2}, from=1-2, to=3-5]
\arrow["{\mathsf{Cofib}}"{pos=0.4}, draw=none, from=1-2, to=3-5]
\arrow["p", from=1-4, to=1-5]
\arrow["{\mathsf{TFib}}"', draw=none, from=1-4, to=1-5]
\arrow[dashed, from=3-5, to=1-4]
\arrow["h"', from=3-5, to=1-5]
\arrow["{\sigma }", from=3-5, to=3-2]
\arrow["{\mathsf{Weq}}"', draw=none, from=3-5, to=3-2]
\end{tikzcd}
{% endtikz %}

By lifting property, there is a dashed arrow making the entire diagram commutative, which indicates $f ∼ g$. Therefore, $p_∗$ is an functoral isomorphism.

- Consider $p_∗ : π (Y,X) ≃ π (Y, Y)$, we obtain $l$ such that $pl ∼ 1_Y$;
- To show that $lp ∼ 1_X$, it suffices to show that $plp ∼ p$, which is trivial.

Conversely, we take any path homotopic morphisms (and clyder homotopic for the dual case) $f_1 ∼ f_2 : A → B$. Now there is a commutative diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMiwwLCJBXFxvcGx1cyBBIl0sWzQsMCwiQiJdLFs0LDEsIlxcd2lkZXRpbGRlIEEiXSxbMiwxLCJBIl0sWzAsMSwiXFwsIl0sWzYsMSwiXFwsIl0sWzAsMSwiKGZfMSxmXzIpIl0sWzIsMSwicCIsMl0sWzAsMiwiKFxccGFydGlhbCBfMCwgXFxwYXJ0aWFsIF8xKSJdLFsyLDMsIlxcc2lnbWEgIl0sWzAsMywiKDEsMSkiLDJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
\&\& {A\oplus A} \&\& B \\
{\,} \&\& A \&\& {\widetilde A} \&\& {\,}
\arrow["{(f_1,f_2)}", from=1-3, to=1-5]
\arrow["{(1,1)}"', from=1-3, to=2-3]
\arrow["{(\partial _0, \partial _1)}", from=1-3, to=2-5]
\arrow["p"', from=2-5, to=1-5]
\arrow["{\sigma }", from=2-5, to=2-3]
\end{tikzcd}
{% endtikz %}

Here $σ$ is a weak equivalence, thus $[σ]$ is an isomorphism. Since $0 = [σ] ∘ [(∂_0 - ∂_1)]$, it follows that $[∂_0 - ∂_1] = 0$, and hence $[f_1 - f_2] = 0$. This demonstrates that $π (\mathcal{C} ∩ \mathcal{F})$ and $\frac{\mathcal{C} ∩ \mathcal{F}}{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}}$ possess identical quotient Hom groups.

{% endpf %}

There are no differences between this proof and that of the Abelian case, as neither pushouts nor pullbacks are employed.

{% endthm %}

To conclude, $𝖧𝗈\mathcal{A} ≃ 𝖧𝗈\mathcal{C} ≃ 𝖧𝗈\mathcal{F} ≃ π (\mathcal{C} ∩ \mathcal{F})$ are equivalences of categories, while $π(\mathcal{C} ∩ \mathcal{F}) ≃ (\mathcal{C} ∩ \mathcal{F}) [𝖶𝖾𝗊^{-1}] ≃ \frac{\mathcal{C} ∩ \mathcal{F} }{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}}$ are isomorphisms of categories.

## $𝖧𝗈 \mathcal{A}$ is Triangluated

### The Suspension

Recall the basic setting. The classes of objects we works on are

- $(𝖳\mathcal{C}, \mathcal{F} ; \mathcal{C} , 𝖳\mathcal{F}) = (\mathcal{S} , \mathcal{T} ; \mathcal{U} , \mathcal{V} ) = (\mathcal{S}, \mathcal{S} ^⟂ , {}^⟂ \mathcal{V} , \mathcal{V})$;
- $\mathcal{W} = \mathrm{Cone}(\mathcal{V} , \mathcal{S}) = \mathrm{coCone}(\mathcal{V} , \mathcal{S} )$ is almost thick.

The classes of morphisms we works on are

- $𝖢𝗈𝖿𝗂𝖻$: inflations with extri-cokernel in $\mathcal{C}$;
- $𝖳𝖢𝗈𝖿𝗂𝖻$: inflations with extri-cokernel in $𝖳\mathcal{C}$;
- $𝖥𝗂𝖻$: deflations with extri-kernel in $\mathcal{F}$;
- $𝖳𝖥𝗂𝖻$: deflations with extri-kernel in $𝖳\mathcal{F}$;
- $𝖶𝖾𝗊$: $𝖳𝖥𝗂𝖻 ∘ 𝖳𝖢𝗈𝖿𝗂𝖻$.

The localised category is $\mathcal{A} [𝖶𝖾𝗊^{-1}] = 𝖧𝗈 \mathcal{A}$.

- By Quillen's theorem, $𝖧𝗈\mathcal{A} ≃ 𝖧𝗈\mathcal{C} ≃ 𝖧𝗈\mathcal{F} ≃ π (\mathcal{C} ∩ \mathcal{F})$ are equivalences of categories;
- By previous analysis, $π(\mathcal{C} ∩ \mathcal{F}) ≃ (\mathcal{C} ∩ \mathcal{F}) [𝖶𝖾𝗊^{-1}] ≃ \frac{\mathcal{C} ∩ \mathcal{F} }{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}}$ are isomorphisms of categories.
- The author call it bi-fibrant argument.

We show that $𝖧𝗈\mathcal{A}$ is triangulated. The first step is to define the suspension $[1]$ functor.

{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbMCwwLCJYIl0sWzEsMCwiVl9YIl0sWzIsMCwiVV9YIl0sWzIsMSwiWFsxXSJdLFswLDEsIlgiXSxbNCwwLCJcXG1hdGhzY3IgQSkiXSxbNCwxLCJcXG1hdGhzZntIb31cXG1hdGhzY3IgQSkiXSxbMywwLCIoXFx0ZXh0e2lufSJdLFszLDEsIihcXHRleHR7aW59Il0sWzAsMSwidl94Il0sWzEsMiwidV94Il0sWzIsMywiUSJdLFswLDQsIlEiXSxbNCwzLCJbMV0iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSw2LCJRIiwwLHsib2Zmc2V0IjoxfV1d
\begin{tikzcd}
X & {V_X} & {U_X} & {(\text{in}} & {\mathcal A)} \\
X && {X[1]} & {(\text{in}} & {\mathsf{Ho}\mathcal A)}
\arrow["{v_x}", from=1-1, to=1-2]
\arrow["Q", from=1-1, to=2-1]
\arrow["{u_x}", from=1-2, to=1-3]
\arrow["Q", from=1-3, to=2-3]
\arrow["Q", shift right, from=1-5, to=2-5]
\arrow["{[1]}", dashed, from=2-1, to=2-3]
\end{tikzcd}
{% endtikz %}

We shall firstly show that the composition of the assignments $X ↦ U_X ↦ (U_X)_{∈ 𝖧𝗈 \mathcal{A}}$ is indeed a functor. Then we show that such a functor factors through $𝖧𝗈 \mathcal{A} → 𝖧𝗈 \mathcal{A}$.

{% lem %}
Once all suspension sequences $X → V_X → U_X \xrightarrow{δ_X}$ are fixed, the composition of the assignments $X ↦ U_X ↦ (U_X)_{∈ 𝖧𝗈 \mathcal{A}}$ is uniquely defined on morphisms.

{% pf %}
We take arbitrary $f : X → Y$ and obtain the following morphism of extensions:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzIsMCwiVl9YIl0sWzQsMCwiVV9YIl0sWzQsMSwiVV9ZIl0sWzAsMSwiWSJdLFsyLDEsIlZfWSJdLFs1LDAsIlxcLCJdLFs1LDEsIlxcLCJdLFswLDEsInZfWCJdLFsxLDIsInVfWCJdLFs0LDUsInZfWSJdLFs1LDMsInVfWSJdLFswLDQsImYiXSxbMSw1LCJWX2YiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiwzLCJVX2YiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiw2LCJcXGRlbHRhIF9YIl0sWzMsNywiXFxkZWx0YSBfWSJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
X \&\& {V_X} \&\& {U_X} \& {\,} \\
Y \&\& {V_Y} \&\& {U_Y} \& {\,}
\arrow["{v_X}", from=1-1, to=1-3]
\arrow["f", from=1-1, to=2-1]
\arrow["{u_X}", from=1-3, to=1-5]
\arrow["{V_f}", dashed, from=1-3, to=2-3]
\arrow["{\delta _X}", from=1-5, to=1-6]
\arrow["{U_f}", dashed, from=1-5, to=2-5]
\arrow["{v_Y}", from=2-1, to=2-3]
\arrow["{u_Y}", from=2-3, to=2-5]
\arrow["{\delta _Y}", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

- ($V_f$). By the exact sequence $(V_X, V_Y) \xrightarrow{(v_X)^∗} (X, V_Y) → 𝔼 (U_X, V_Y) = 0$, there exists a morphism $V_f$ rendering the left square commutative.
- ($U_f$). By ET3, there exists a morphism $U_f$ rendering both the right square commutative and satisfying $(U_f)^∗ δ _Y = f_∗ δ _X$.

Then we show that $U_f$ is unique in $𝖧𝗈 \mathcal{A}$. We take arbitrary $U_f'$ such that $(U_f')^∗ δ_Y = f_∗ δ_X$, then $(U_f - U'_f) ∈ \ker ((δ_Y)_!) = \operatorname{im}((u_Y)_∗)$. It show that $U_f$ is unique in $\mathcal{A} / 𝖳\mathcal{F}$. The localisation functor $Q$ factors through $\mathcal{A} → \mathcal{A} / 𝖳\mathcal{C}$, since $Q$ sends $𝖳\mathcal{F} ⊆ 𝖶𝖾𝗊$ to zero objects. Hence, $Q(U_f)$ is uniquely defined.

{% endpf %}
{% endlem %}

{% lem %}
The assignment $Q(U_∙)$ is a functor (not necessary additive).

{% pf %}

By construction, for any $f : X → Y$, we have $Q(U_f) : Q(U_X) → Q(U_Y)$. We proceed to show that $Q(U_{1_X}) = 1_{Q(U_X)}$. Since $1_{U_X}$ is a candidate in defining the morphism of extension $(1_X, 1_{U_X}) : δ_X = δ_X$, it follows that $Q(U_{1_X}) = Q(1_{U_X})$. As $Q$ is a functor, $Q(U_{1_X}) = 1_{Q(U_X)}$. Finally, we demonstrate that $Q(U_g ∘ U_f) = Q(U_{g ∘ f})$ for $A \xrightarrow f B \xrightarrow g C$. We may simply take $U_{g ∘ f} = U_g ∘ U_f$, since $(g ∘ f, U_g ∘ U_f) : δ_A → δ_C$ constitutes a well-defined morphism of extension.

{% endpf %}

{% endlem %}

Then we show that the functor $Q(U_∙)$ is compatible with the change of suspension sequences. An explicit statement is the following lemma.

{% lem %}
($Q(U_∙)$ is unique under natural isomorphisms). Suppose that both $X ↦ Q(U_X)$ and $X ↦ Q(U'_X)$ are functors defined by different choices of suspension sequences. By previous discussion, there exists collections of morphisms $\{l_X : U_X → U_X'\}$ and $\{r_X : U'_X → U_X\}$ such that $(l_X)^∗ δ _X' = δ _X$ and $(r_X)^∗ δ _X = δ _X'$, in diagram,
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiWCJdLFsyLDAsIlZfWCJdLFs0LDAsIlVfWCJdLFs0LDEsIlVfWCciXSxbMCwxLCJYIl0sWzIsMSwiVl9YJyJdLFs1LDAsIlxcLCJdLFs1LDEsIlxcLCJdLFs0LDIsIlVfWCJdLFsyLDIsIlZfWCJdLFswLDIsIlgiXSxbNSwyLCJcXCwiXSxbMCwxLCJ2X1giXSxbMSwyLCJ1X1giXSxbNCw1LCJ2X1gnIl0sWzUsMywidV9YJyJdLFsyLDMsImxfWCJdLFsyLDYsIlxcZGVsdGEgX1giXSxbMyw3LCJcXGRlbHRhIF9YJyJdLFsxLDUsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDQsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEwLDksInZfWCJdLFs5LDgsInVfWCJdLFs1LDksIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDgsInJfWCJdLFs4LDExLCJcXGRlbHRhX1giXSxbNCwxMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
X \&\& {V_X} \&\& {U_X} \& {\,} \\
X \&\& {V_X'} \&\& {U_X'} \& {\,} \\
X \&\& {V_X} \&\& {U_X} \& {\,}
\arrow["{v_X}", from=1-1, to=1-3]
\arrow[equals, from=1-1, to=2-1]
\arrow["{u_X}", from=1-3, to=1-5]
\arrow[dashed, from=1-3, to=2-3]
\arrow["{\delta _X}", from=1-5, to=1-6]
\arrow["{l_X}", from=1-5, to=2-5]
\arrow["{v_X'}", from=2-1, to=2-3]
\arrow[equals, from=2-1, to=3-1]
\arrow["{u_X'}", from=2-3, to=2-5]
\arrow[dashed, from=2-3, to=3-3]
\arrow["{\delta _X'}", from=2-5, to=2-6]
\arrow["{r_X}", from=2-5, to=3-5]
\arrow["{v_X}", from=3-1, to=3-3]
\arrow["{u_X}", from=3-3, to=3-5]
\arrow["{\delta_X}", from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

Moreover, such $Q(l_X)$ and $Q(l_Y)$ are natural isomorphisms, in diagram,

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwwLCJRKFVfWCkiXSxbMCwxLCJRKFVfWSkiXSxbMiwwLCJRKFVfWCcpIl0sWzIsMSwiUShVX1knKSJdLFs0LDAsIlEoVV9YKSJdLFs0LDEsIlEoVV9ZKSJdLFswLDIsIlEobF9YKSJdLFswLDEsIlEoVV9mKSIsMl0sWzEsMywiUShsX1kpIiwyXSxbNCw1LCJRKFVfZikiLDJdLFsyLDQsIlEocl9YKSJdLFszLDUsIlEocl9ZKSIsMl0sWzIsMywiUShVX2YnKSIsMl0sWzAsMiwiXFxzaW0iLDJdLFsyLDQsIlxcc2ltIiwyXSxbMSwzLCJcXHNpbSJdLFszLDUsIlxcc2ltIl1d
\begin{tikzcd}[ampersand replacement=\&]
{Q(U_X)} \&\& {Q(U_X')} \&\& {Q(U_X)} \\
{Q(U_Y)} \&\& {Q(U_Y')} \&\& {Q(U_Y)}
\arrow["{Q(l_X)}", from=1-1, to=1-3]
\arrow["\sim"', from=1-1, to=1-3]
\arrow["{Q(U_f)}"', from=1-1, to=2-1]
\arrow["{Q(r_X)}", from=1-3, to=1-5]
\arrow["\sim"', from=1-3, to=1-5]
\arrow["{Q(U_f')}"', from=1-3, to=2-3]
\arrow["{Q(U_f)}"', from=1-5, to=2-5]
\arrow["{Q(l_Y)}"', from=2-1, to=2-3]
\arrow["\sim", from=2-1, to=2-3]
\arrow["{Q(r_Y)}"', from=2-3, to=2-5]
\arrow["\sim", from=2-3, to=2-5]
\end{tikzcd}
{% endtikz %}

{% pf %}
We see that $r_X ∘ l_X$ and $1_{U_X}$ are the same morphism in $𝖧𝗈 \mathcal{A}$. Hence $Q(r_X) ∘ Q(r_L) = 1_{Q(U_X)}$. We combine the dual statement and see that $l : Q(U_∙) ⇆ Q(U_∙ ') : r$ are mutually inversal natural isomorphisms.
{% endpf %}

{% endlem %}

We define the unique functor $Q(U_∙)$, up to natural isomorphism. We now demonstrate that both $𝖳𝖢𝗈𝖿𝗂𝖻$ and $𝖳𝖥𝗂𝖻$ are isomorphisms under this functor. Consequently, $Q(U_∙)$ factors through $Q$, which defines $[1]$ such that $[1] ∘ Q = Q(U_∙)$.

{% tikz %}
% https://q.uiver.app/#q=WzAsNSxbMSwwLCJcXG1hdGhzY3IgQSJdLFs1LDAsIlxcbWF0aHNme0hvfVxcbWF0aHNjciBBIl0sWzMsMSwiXFxtYXRoc2Z7SG99XFxtYXRoc2NyIEEiXSxbMCwwLCJcXCwiXSxbNiwwLCJcXCwiXSxbMCwxLCJRKFVfXFxidWxsZXQgKSJdLFswLDIsIlEiLDJdLFsyLDEsIlsxXSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
{\,} \& {\mathcal A} \&\&\&\& {\mathsf{Ho}\mathcal A} \& {\,} \\
\&\&\& {\mathsf{Ho}\mathcal A}
\arrow["{Q(U_\bullet )}", from=1-2, to=1-6]
\arrow["Q"', from=1-2, to=2-4]
\arrow["{[1]}"', dashed, from=2-4, to=1-6]
\end{tikzcd}
{% endtikz %}

{% prop %}
For any $i ∈ 𝖳𝖢𝗈𝖿𝗂𝖻$, $Q(U_i)$ is an isomorphism.

{% pf %}
We take the composition of $𝖢𝗈𝖿𝗂𝖻$, $X \xrightarrow i Y \xrightarrow {v_Y} V_Y$, and employ ET4.

{% tikz %}
% https://q.uiver.app/#q=WzAsMjIsWzEsMCwiWCJdLFsyLDAsIlkiLFsyMzYsMTAwLDYwLDFdXSxbMiwxLCJWX1kiXSxbMSwxLCJYIixbMzUyLDEwMCw2MCwxXV0sWzMsMCwiUyJdLFszLDEsIkUiLFszNTIsMTAwLDYwLDFdXSxbMiwyLCJVX1kiLFsyMzYsMTAwLDYwLDFdXSxbMywyLCJVX1kiXSxbMiwzLCJcXCwiXSxbNCwwLCJcXCwiXSxbNCwxLCJcXCwiXSxbMywzLCJcXCwiXSxbMSw0LCJYIixbMzUyLDEwMCw2MCwxXV0sWzEsNSwiWSIsWzIzNiwxMDAsNjAsMV1dLFsyLDQsIlZfWSJdLFszLDQsIkUiLFszNTIsMTAwLDYwLDFdXSxbMiw1LCJWX1kiXSxbMyw1LCJVX1kiLFsyMzYsMTAwLDYwLDFdXSxbNCw0LCJcXCwiXSxbNCw1LCJcXCwiXSxbMCwxLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwxLCJpIiwyXSxbMCwzLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDRdLFszLDIsIiIsMCx7ImNvbG91ciI6WzM1MiwxMDAsNjBdfV0sWzIsNSwiIiwwLHsiY29sb3VyIjpbMzUyLDEwMCw2MF19XSxbMSwyXSxbMiw2LCIiLDAseyJjb2xvdXIiOlsyMzYsMTAwLDYwXX1dLFs2LDcsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzUsNywiXFxsYW1iZGEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCwxLCJcXG1hdGhzZntUQ29maWJ9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsOV0sWzUsMTAsIlxcZGVsdGFfWCIsMCx7ImNvbG91ciI6WzM1MiwxMDAsNjBdfSxbMzUyLDEwMCw2MCwxXV0sWzcsMTEsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMiwxMywiaSJdLFsxMiwxNCwiIiwyLHsiY29sb3VyIjpbMzUyLDEwMCw2MF19XSxbMTQsMTUsIiIsMix7ImNvbG91ciI6WzM1MiwxMDAsNjBdfV0sWzEzLDE2LCIiLDAseyJjb2xvdXIiOlsyMzYsMTAwLDYwXX1dLFsxNiwxNywiIiwwLHsiY29sb3VyIjpbMjM2LDEwMCw2MF19XSxbMTQsMTYsIjFfe1ZfWX0iLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNywxOSwiXFxkZWx0YSBfWSIsMCx7ImNvbG91ciI6WzIzNiwxMDAsNjBdfSxbMjM2LDEwMCw2MCwxXV0sWzE1LDE4LCJcXGRlbHRhIF9YIiwwLHsiY29sb3VyIjpbMzUyLDEwMCw2MF19LFszNTIsMTAwLDYwLDFdXSxbMTUsMTcsIlxcbGFtYmRhIl0sWzYsOCwiXFxkZWx0YSBfWSIsMCx7ImNvbG91ciI6WzIzNiwxMDAsNjBdfSxbMjM2LDEwMCw2MCwxXV0sWzEsMiwiXFxtYXRoc2Z7Q29maWJ9IiwyLHsiY29sb3VyIjpbMjM2LDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX0sWzIzNiwxMDAsNjAsMV1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
\& X \& \color{rgb,255:red,51;green,65;blue,255}{Y} \& S \& {\,} \\
{\,} \& \color{rgb,255:red,255;green,51;blue,78}{X} \& {V_Y} \& \color{rgb,255:red,255;green,51;blue,78}{E} \& {\,} \& {\,} \\
\&\& \color{rgb,255:red,51;green,65;blue,255}{U_Y} \& {U_Y} \\
\&\& {\,} \& {\,} \\
\& \color{rgb,255:red,255;green,51;blue,78}{X} \& {V_Y} \& \color{rgb,255:red,255;green,51;blue,78}{E} \& {\,} \\
\& \color{rgb,255:red,51;green,65;blue,255}{Y} \& {V_Y} \& \color{rgb,255:red,51;green,65;blue,255}{U_Y} \& {\,}
\arrow["i"', from=1-2, to=1-3]
\arrow["{\mathsf{TCofib}}", draw=none, from=1-2, to=1-3]
\arrow[equals, from=1-2, to=2-2]
\arrow[from=1-3, to=1-4]
\arrow[from=1-3, to=2-3]
\arrow["{\mathsf{Cofib}}"', color={rgb,255:red,51;green,65;blue,255}, draw=none, from=1-3, to=2-3]
\arrow[from=1-4, to=1-5]
\arrow[dashed, from=1-4, to=2-4]
\arrow[color={rgb,255:red,255;green,51;blue,78}, from=2-2, to=2-3]
\arrow[color={rgb,255:red,255;green,51;blue,78}, from=2-3, to=2-4]
\arrow[color={rgb,255:red,51;green,65;blue,255}, from=2-3, to=3-3]
\arrow["{\delta_X}", color={rgb,255:red,255;green,51;blue,78}, from=2-4, to=2-5]
\arrow["\lambda", dashed, from=2-4, to=3-4]
\arrow[equals, from=3-3, to=3-4]
\arrow["{\delta _Y}", color={rgb,255:red,51;green,65;blue,255}, from=3-3, to=4-3]
\arrow[dashed, from=3-4, to=4-4]
\arrow[color={rgb,255:red,255;green,51;blue,78}, from=5-2, to=5-3]
\arrow["i", from=5-2, to=6-2]
\arrow[color={rgb,255:red,255;green,51;blue,78}, from=5-3, to=5-4]
\arrow["{1_{V_Y}}", equals, from=5-3, to=6-3]
\arrow["{\delta _X}", color={rgb,255:red,255;green,51;blue,78}, from=5-4, to=5-5]
\arrow["\lambda", from=5-4, to=6-4]
\arrow[color={rgb,255:red,51;green,65;blue,255}, from=6-2, to=6-3]
\arrow[color={rgb,255:red,51;green,65;blue,255}, from=6-3, to=6-4]
\arrow["{\delta _Y}", color={rgb,255:red,51;green,65;blue,255}, from=6-4, to=6-5]
\end{tikzcd}
{% endtikz %}
By extension closedness, $E ∈ \mathcal{U}$. Hence, $δ_X$ is a suspension sequence. By ET4 equalities, $(i, λ) : δ _A → δ _B$ is a morphism of extension. Hence, $Q(λ) =Q(i) [1]$. Since $S ∈ \mathcal{W}$, we have $λ ∈ 𝖶𝖾𝗊$. Therefore, $Q(U_i)$ is an isomorphism.
{% endpf %}

{% endprop %}

{% prop %}
For any $p ∈ 𝖳𝖥𝗂𝖻$, $Q(U_p)$ is an isomorphism.

{% pf %}
In fact, we can directly show that any candidate $U_p$ is a weak equivalence. We take arbtirary $δ_X$ and $δ_Y$ with $p : X → Y$. By S3×3 lemma, we obtain

{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzAsMSwiWCJdLFswLDIsIlkiXSxbMiwxLCJWX1ggXFxvcGx1cyBWX1kiXSxbNCwxLCJVX1ggXFxvcGx1cyBWX1kiXSxbMiwyLCJWX1kiXSxbNCwyLCJVX1kiXSxbNSwxLCJcXCwiXSxbNSwyLCJcXCwiXSxbMCwwLCJWIl0sWzIsMCwiVl9YIl0sWzQsMCwiPyJdLFswLDIsIlxcYmlub20ge3ZfWH0wIl0sWzAsMSwicCIsMl0sWzEsNCwidl9ZIl0sWzIsNCwiKFZfcCwgMSkiLDJdLFs0LDUsInVfWSJdLFsyLDMsInVfWCBcXG9wbHVzIDFfe1ZfWX0iXSxbMyw2LCJcXGRlbHRhX1ggXFxvcGx1cyAwIl0sWzUsNywiXFxkZWx0YV9ZIl0sWzMsNSwiKFVfcCx1X1kpIiwyXSxbOSwyXSxbOCwwXSxbOCw5LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOSwxMCwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEwLDNdXQ==
\begin{tikzcd}[ampersand replacement=\&]
V \&\& {V_X} \&\& {?} \\
X \&\& {V_X \oplus V_Y} \&\& {U_X \oplus V_Y} \& {\,} \\
Y \&\& {V_Y} \&\& {U_Y} \& {\,}
\arrow[dashed, from=1-1, to=1-3]
\arrow[from=1-1, to=2-1]
\arrow[dashed, from=1-3, to=1-5]
\arrow[from=1-3, to=2-3]
\arrow[from=1-5, to=2-5]
\arrow["{\binom {v_X}0}", from=2-1, to=2-3]
\arrow["p"', from=2-1, to=3-1]
\arrow["{u_X \oplus 1_{V_Y}}", from=2-3, to=2-5]
\arrow["{(V_p, 1)}"', from=2-3, to=3-3]
\arrow["{\delta_X \oplus 0}", from=2-5, to=2-6]
\arrow["{(U_p,u_Y)}"', from=2-5, to=3-5]
\arrow["{v_Y}", from=3-1, to=3-3]
\arrow["{u_Y}", from=3-3, to=3-5]
\arrow["{\delta_Y}", from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

We see that $? ∈ \mathrm{Cone} (\mathcal{V} , \mathcal{V}) ⊆ \mathcal{N}$ since $\mathcal{N}$ is almsot thick. It yields that $(U_p,u_Y) ∈ 𝖶𝖾𝗊$. Since $e_1 : U_X → U_X ⊕ V_Y$ has cokernel $V_Y$, we have $e_1 ∈ 𝖶𝖾𝗊$. Hence,

$$\begin{equation}
U_p = (U_p, u_Y) ⋅ e_1 ∈ 𝖶𝖾𝗊.
\end{equation}$$

{% endpf %}

{% endprop %}

{% ex %}
$[-1]$ is constructed by $Q(T^∙)$. Here $T^X → S^X → X \xrightarrow {ε _X}$ is the desuspension sequence.
{% endex %}

We shall not discuss the fact that $[1] ∘ [-1]$ is a natural isomorphism, as this ought properly to be addressed in terms of $𝔼$.

### Make $η$ a Morphism

We observe that a conflation $X \xrightarrow{f} Y \xrightarrow{g} Z \xrightarrow{η}$ corresponds to a triangle
$$\begin{equation}
QX \xrightarrow{Q(f)} QY \xrightarrow{Q(g)} QZ \xrightarrow{ℓ (η)} U_X = (QX) [1]
\end{equation}$$
in the homotopy category $𝖧𝗈 \mathcal{A}$. A crucial step is the definition of the natural bitransformation $ℓ : 𝔼 (Z, X) \xrightarrow{\,} (Z, X[1])_{𝖧𝗈 \mathcal{A}}$. There is, in general, no straightforward means of defining $𝔼 (Z, X) \to (Z, X[1])$, since the morphism $Z \to U_X$ is, in general, a zigzag.

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbNCwwLCJaIl0sWzAsMCwiWCJdLFsyLDAsIlkiXSxbNSwwLCJcXCwiXSxbNCwxLCJVX1giXSxbNSwxLCJcXCwiXSxbMiwxLCJWX1giXSxbMCwxLCJYIl0sWzEsMiwiZiJdLFsyLDAsImciXSxbMCwzLCJcXGV0YSJdLFswLDQsIlxcdGV4dHt6aWd6YWd9IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoic3F1aWdnbHkifX19XSxbNCw1LCJcXGRlbHRhX1giXSxbNiw0LCJ1X1giXSxbMiw2LCJcXHRleHR7emlnemFnfSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6InNxdWlnZ2x5In19fV0sWzcsNiwidl9YIl0sWzEsNywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
X && Y && Z & {\,} \\
X && {V_X} && {U_X} & {\,}
\arrow["f", from=1-1, to=1-3]
\arrow[equals, from=1-1, to=2-1]
\arrow["g", from=1-3, to=1-5]
\arrow["{\text{zigzag}}"', squiggly, from=1-3, to=2-3]
\arrow["\eta", from=1-5, to=1-6]
\arrow["{\text{zigzag}}"', squiggly, from=1-5, to=2-5]
\arrow["{v_X}", from=2-1, to=2-3]
\arrow["{u_X}", from=2-3, to=2-5]
\arrow["{\delta_X}", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

The zigzag morphism,
$$\begin{equation}
Z = N_0 \xleftarrow{s_1} M_1 \xrightarrow{a_1} N_1 \xleftarrow{s_2} M_2 \xrightarrow{a_2} N_2 \cdots \rightarrow U_X = N_d,
\end{equation}$$
is required to satisfy the following conditions:

- Each $Q(s_i)$ is an isomorphism in $𝖧𝗈 \mathcal{A}$.
- There exists a sequence of extensions $δ_k ∈ 𝔼 (N_k, X)$ such that $(s_k)^∗ δ_{k-1} = (a_k)^∗ δ_k$.

The subsequent construction demonstrates that $Z \xleftarrow[𝖳𝖥𝗂𝖻]{s} M \xrightarrow{a} U_X$ suffices.

{% def %}
(The assignment $ℓ$). For any $η$, there we take the zigzag morphism $Z \xleftarrow[𝖳𝖥𝗂𝖻]{s} M \xrightarrow{a} U_X$ given by the following 4×4 diagram:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzMsMCwiWiJdLFsxLDAsIlgiXSxbMiwwLCJZIl0sWzQsMCwiXFwsIl0sWzEsMiwiVV9YIl0sWzEsMywiXFwsIl0sWzEsMSwiVl9YIl0sWzIsMiwiVV9YIl0sWzIsMSwiRSJdLFszLDEsIloiXSxbNCwxLCJcXCwiXSxbMiwzLCJcXCwiXSxbMCwxLCJcXCwiXSxbNSwxLCJcXCwiXSxbMSwyLCJmIl0sWzIsMCwiZyJdLFswLDMsIlxcZXRhIl0sWzQsNSwiXFxkZWx0YV9YIl0sWzYsNCwidV9YIl0sWzEsNiwidl9YIl0sWzksMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw3LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs3LDExXSxbOSwxMF0sWzYsOF0sWzgsOSwiXFxtYXRoc2Z7VEZpYn0iLDAseyJsZXZlbCI6Mn1dLFsyLDhdLFs4LDcsIntcXGNvbG9ye3JlZH17LWF9fSJdLFs4LDksInMiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
& X & Y & Z & {\,} \\
{\,} & {V_X} & E & Z & {\,} & {\,} \\
& {U_X} & {U_X} \\
& {\,} & {\,}
\arrow["f", from=1-2, to=1-3]
\arrow["{v_X}", from=1-2, to=2-2]
\arrow["g", from=1-3, to=1-4]
\arrow[from=1-3, to=2-3]
\arrow["\eta", from=1-4, to=1-5]
\arrow[from=2-2, to=2-3]
\arrow["{u_X}", from=2-2, to=3-2]
\arrow["{\mathsf{TFib}}", Rightarrow, from=2-3, to=2-4]
\arrow["s"', draw=none, from=2-3, to=2-4]
\arrow["{\color{red}{-a}}", from=2-3, to=3-3]
\arrow[equals, from=2-4, to=1-4]
\arrow[from=2-4, to=2-5]
\arrow[equals, from=3-2, to=3-3]
\arrow["{\delta_X}", from=3-2, to=4-2]
\arrow[from=3-3, to=4-3]
\end{tikzcd}
{% endtikz %}

By 4×4 identities, we have $a^∗ δ = s^∗ η$. We define the assignment

$$\begin{equation}
ℓ : 𝔼 (Z, X) → (Z, X[1])_{𝖧𝗈 \mathcal{A}},\quad η ↦ Q(a) ∘ Q(s)^{-1}.
\end{equation}$$

It would also be possible to complete the remainder of the proof via $Z \xrightarrow{a} P \xleftarrow[𝖳𝖢𝗈𝖿𝗂𝖻]{s} U_X$. This approach presents no further substantive difficulties, but merely entails additional notation ($[1]$). Accordingly, we do not proceed in this manner.

{% enddef %}

We shall show that $ℓ$ is indeed an additive natural bitransformation.

{% lem %}
($ℓ$ is independent of the choice of fractions). The assigment $ℓ$ is independent of the choice of the $(s,a)$ pair in $(𝖬𝗈𝗋 × 𝖳𝖥𝗂𝖻)$. To be explicit, suppose that we have another pair $(t,b)$,

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzIsMCwiWiJdLFswLDAsIlgiXSxbMSwwLCJZIl0sWzQsMCwiXFwsIl0sWzIsMiwiVV9YIl0sWzQsMiwiXFwsIl0sWzEsMiwiVl9YIl0sWzAsMiwiWCJdLFsxLDEsIk0iLFsyLDEwMCw2MCwxXV0sWzMsMSwiTiIsWzIzNywxMDAsNjAsMV1dLFsxLDIsImYiXSxbMiwwLCJnIl0sWzAsMywiXFxldGEiXSxbNCw1LCJcXGRlbHRhX1giLDJdLFs2LDQsInVfWCIsMl0sWzEsNywiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNyw2LCJ2X1giLDJdLFs4LDAsInMiLDIseyJjb2xvdXIiOlsyLDEwMCw2MF19LFsyLDEwMCw2MCwxXV0sWzgsNCwiYSIsMix7ImNvbG91ciI6WzIsMTAwLDYwXX0sWzIsMTAwLDYwLDFdXSxbOSwwLCJ0IiwwLHsiY29sb3VyIjpbMjM3LDEwMCw2MF19LFsyMzcsMTAwLDYwLDFdXSxbOSw0LCJiIiwwLHsiY29sb3VyIjpbMjM3LDEwMCw2MF19LFsyMzcsMTAwLDYwLDFdXSxbOSwwLCJcXG1hdGhzZntURmlifSIsMix7ImNvbG91ciI6WzIzNywxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19LFsyMzcsMTAwLDYwLDFdXSxbOCwwLCJcXG1hdGhzZntURmlifSIsMCx7ImNvbG91ciI6WzIsMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fSxbMiwxMDAsNjAsMV1dXQ==
\begin{tikzcd}
X & Y & Z && {\,} \\
& \color{rgb,255:red,255;green,58;blue,51}{M} && \color{rgb,255:red,51;green,61;blue,255}{N} \\
X & {V_X} & {U_X} && {\,}
\arrow["f", from=1-1, to=1-2]
\arrow[equals, from=1-1, to=3-1]
\arrow["g", from=1-2, to=1-3]
\arrow["\eta", from=1-3, to=1-5]
\arrow["s"', color={rgb,255:red,255;green,58;blue,51}, from=2-2, to=1-3]
\arrow["{\mathsf{TFib}}", color={rgb,255:red,255;green,58;blue,51}, draw=none, from=2-2, to=1-3]
\arrow["a"', color={rgb,255:red,255;green,58;blue,51}, from=2-2, to=3-3]
\arrow["t", color={rgb,255:red,51;green,61;blue,255}, from=2-4, to=1-3]
\arrow["{\mathsf{TFib}}"', color={rgb,255:red,51;green,61;blue,255}, draw=none, from=2-4, to=1-3]
\arrow["b", color={rgb,255:red,51;green,61;blue,255}, from=2-4, to=3-3]
\arrow["{v_X}"', from=3-1, to=3-2]
\arrow["{u_X}"', from=3-2, to=3-3]
\arrow["{\delta_X}"', from=3-3, to=3-5]
\end{tikzcd}
{% endtikz %}

such that $s^∗ η = a^∗ δ _X$ and $t^∗ η = b^∗ δ _X$. Then $Q(a) ∘ Q(s)^{-1} = Q(b) ∘ Q(t)^{-1}$.

{% pf %}

We attempt to reverse $N \xrightarrow[𝖳𝖥𝗂𝖻]{t} F \xleftarrow[𝖳𝖥𝗂𝖻]{s} M$ to
$$\begin{equation}
N \xleftarrow[𝖳𝖥𝗂𝖻]{s'} F \xrightarrow[𝖳𝖥𝗂𝖻]{t'} M.
\end{equation}$$

The construction is given by 4×4 lemma.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzMsMiwiWiJdLFs0LDMsIlVfWCJdLFszLDEsIk0iLFsyLDEwMCw2MCwxXV0sWzIsMiwiTiIsWzIzNywxMDAsNjAsMV1dLFsxLDIsIlYnIl0sWzMsMCwiViJdLFsyLDAsIlYiXSxbMSwxLCJWJyJdLFsyLDEsIkYiXSxbMCwyLCJcXCwiXSxbMiwwLCJzIiwyLHsiY29sb3VyIjpbMiwxMDAsNjBdfSxbMiwxMDAsNjAsMV1dLFsyLDEsImEiLDAseyJjdXJ2ZSI6LTMsImNvbG91ciI6WzIsMTAwLDYwXX0sWzIsMTAwLDYwLDFdXSxbMywwLCJ0IiwwLHsiY29sb3VyIjpbMjM3LDEwMCw2MF19LFsyMzcsMTAwLDYwLDFdXSxbMywxLCJiIiwyLHsiY3VydmUiOjMsImNvbG91ciI6WzIzNywxMDAsNjBdfSxbMjM3LDEwMCw2MCwxXV0sWzMsMCwiXFxtYXRoc2Z7VEZpYn0iLDIseyJjb2xvdXIiOlsyMzcsMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fSxbMjM3LDEwMCw2MCwxXV0sWzIsMCwiXFxtYXRoc2Z7VEZpYn0iLDAseyJjb2xvdXIiOlsyLDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX0sWzIsMTAwLDYwLDFdXSxbMCwxLCJcXG92ZXJsaW5lIHtcXGVsbChcXGRlbHRhICl9IiwyLHsib2Zmc2V0IjoxLCJjb2xvdXIiOlsyMzcsMTAwLDYwXX0sWzIzNywxMDAsNjAsMV1dLFswLDEsIlxcZWxsKFxcZGVsdGEgKSIsMCx7Im9mZnNldCI6LTEsImNvbG91ciI6WzIsMTAwLDYwXX0sWzIsMTAwLDYwLDFdXSxbNyw0LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDUsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsOF0sWzgsMiwidCciXSxbNiw4XSxbOCwzLCJzJyIsMl0sWzQsM10sWzUsMl0sWzgsMiwiXFxtYXRoc2Z7VEZpYn0iLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCwzLCJcXG1hdGhzZntURmlifSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
&& V & V \\
& {V'} & F & \color{rgb,255:red,255;green,58;blue,51}{M} \\
{\,} & {V'} & \color{rgb,255:red,51;green,61;blue,255}{N} & Z \\
&&&& {U_X}
\arrow[equals, from=1-3, to=1-4]
\arrow[from=1-3, to=2-3]
\arrow[from=1-4, to=2-4]
\arrow[from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow["{t'}", from=2-3, to=2-4]
\arrow["{\mathsf{TFib}}"', draw=none, from=2-3, to=2-4]
\arrow["{s'}"', from=2-3, to=3-3]
\arrow["{\mathsf{TFib}}", draw=none, from=2-3, to=3-3]
\arrow["s"', color={rgb,255:red,255;green,58;blue,51}, from=2-4, to=3-4]
\arrow["{\mathsf{TFib}}", color={rgb,255:red,255;green,58;blue,51}, draw=none, from=2-4, to=3-4]
\arrow["a", color={rgb,255:red,255;green,58;blue,51}, curve={height=-18pt}, from=2-4, to=4-5]
\arrow[from=3-2, to=3-3]
\arrow["t", color={rgb,255:red,51;green,61;blue,255}, from=3-3, to=3-4]
\arrow["{\mathsf{TFib}}"', color={rgb,255:red,51;green,61;blue,255}, draw=none, from=3-3, to=3-4]
\arrow["b"', color={rgb,255:red,51;green,61;blue,255}, curve={height=18pt}, from=3-3, to=4-5]
\arrow["{\overline {\ell(\delta )}}"', shift right, color={rgb,255:red,51;green,61;blue,255}, from=3-4, to=4-5]
\arrow["{\ell(\delta )}", shift left, color={rgb,255:red,255;green,58;blue,51}, from=3-4, to=4-5]
\end{tikzcd}
{% endtikz %}

The Verdier square consists of four trivial fibrations. This step serves as a reduction of fractions to a common denominator, i.e.,

$$\begin{equation}
(s,a) ∼ (st', at') \overset ? ∼ (ts', bs') ∼ (tb).
\end{equation}$$

In diagram, $Z \xleftarrow[𝖳𝖥𝗂𝖻]{ts'} F \xrightarrow[𝖳𝖥𝗂𝖻]{bs'} U_X$ and $Z \xleftarrow[𝖳𝖥𝗂𝖻]{st'} F \xrightarrow[𝖳𝖥𝗂𝖻]{at'} U_X$:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzIsMCwiWiJdLFswLDAsIlgiXSxbMSwwLCJZIl0sWzQsMCwiXFwsIl0sWzIsMiwiVV9YIl0sWzQsMiwiXFwsIl0sWzEsMiwiVl9YIl0sWzAsMiwiWCJdLFsxLDEsIk0iLFsyLDEwMCw2MCwxXV0sWzMsMSwiTiIsWzIzNywxMDAsNjAsMV1dLFsyLDEsIkYiXSxbMSwyLCJmIl0sWzIsMCwiZyJdLFswLDMsIlxcZXRhIl0sWzQsNSwiXFxkZWx0YV9YIiwyXSxbNiw0LCJ1X1giLDJdLFsxLDcsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsNiwidl9YIiwyXSxbOCwwLCJzIiwwLHsiY29sb3VyIjpbMiwxMDAsNjBdfSxbMiwxMDAsNjAsMV1dLFs4LDQsImEiLDIseyJjb2xvdXIiOlsyLDEwMCw2MF19LFsyLDEwMCw2MCwxXV0sWzksMCwidCIsMix7ImNvbG91ciI6WzIzNywxMDAsNjBdfSxbMjM3LDEwMCw2MCwxXV0sWzksNCwiYiIsMCx7ImNvbG91ciI6WzIzNywxMDAsNjBdfSxbMjM3LDEwMCw2MCwxXV0sWzEwLDgsInQnIiwyLHsiY29sb3VyIjpbMiwxMDAsNjBdfSxbMiwxMDAsNjAsMV1dLFsxMCw5LCJzJyIsMCx7ImNvbG91ciI6WzIzNywxMDAsNjBdfSxbMjM3LDEwMCw2MCwxXV0sWzEwLDAsIiIsMCx7ImNvbG91ciI6WzI3MywxMDAsNjBdfV0sWzEwLDQsIiIsMCx7ImN1cnZlIjotMSwiY29sb3VyIjpbMjM3LDEwMCw2MF19XSxbMTAsNCwiIiwwLHsiY3VydmUiOjEsImNvbG91ciI6WzIsMTAwLDYwXX1dXQ==
\begin{tikzcd}
X & Y & Z && {\,} \\
& \color{rgb,255:red,255;green,58;blue,51}{M} & F & \color{rgb,255:red,51;green,61;blue,255}{N} \\
X & {V_X} & {U_X} && {\,}
\arrow["f", from=1-1, to=1-2]
\arrow[equals, from=1-1, to=3-1]
\arrow["g", from=1-2, to=1-3]
\arrow["\eta", from=1-3, to=1-5]
\arrow["s", color={rgb,255:red,255;green,58;blue,51}, from=2-2, to=1-3]
\arrow["a"', color={rgb,255:red,255;green,58;blue,51}, from=2-2, to=3-3]
\arrow[color={rgb,255:red,163;green,51;blue,255}, from=2-3, to=1-3]
\arrow["{t'}"', color={rgb,255:red,255;green,58;blue,51}, from=2-3, to=2-2]
\arrow["{s'}", color={rgb,255:red,51;green,61;blue,255}, from=2-3, to=2-4]
\arrow[color={rgb,255:red,51;green,61;blue,255}, curve={height=-6pt}, from=2-3, to=3-3]
\arrow[color={rgb,255:red,255;green,58;blue,51}, curve={height=6pt}, from=2-3, to=3-3]
\arrow["t"', color={rgb,255:red,51;green,61;blue,255}, from=2-4, to=1-3]
\arrow["b", color={rgb,255:red,51;green,61;blue,255}, from=2-4, to=3-3]
\arrow["{v_X}"', from=3-1, to=3-2]
\arrow["{u_X}"', from=3-2, to=3-3]
\arrow["{\delta_X}"', from=3-3, to=3-5]
\end{tikzcd}
{% endtikz %}

Now it suffices to show that $Q(at') = Q(bs')$. In fact,
$$\begin{equation}
(at' - bs')^∗ δ _X = (st' - ts')^∗ η = 0.
\end{equation}$$
Hence, $(at' - bs')$ vanishes in $\mathcal{A} / \mathcal{V}$, thus $Q(at') = Q(bs')$ in $𝖧𝗈 \mathcal{A}$.

{% endpf %}

{% endlem %}

{% lem %}
($ℓ$ is additive). To see that $ℓ (η + η ') = ℓ (η ) + ℓ (η ')$, we use 4×4 lemma to reduce the fractions associated with $η$ and $η'$ to a common denominator. Such procedure does not affect results in $Q(𝖬𝗈𝗋)$, by the previous lemma. Hence, we assume $ℓ (η) = Q(a)Q(s)$ and $ℓ (n) = Q(b) Q(s)$. Now
$$\begin{equation}
ℓ (η + η ') = Q(a + b)Q(s)^{-1} = Q(a)Q(s)^{-1} + Q(b)Q(s)^{-1}  = ℓ (η ) + ℓ (η ').
\end{equation}$$
{% endlem %}

{% lem %}
($ℓ$ is natural). Suppose that we have the morphism of extension $f_∗ η  = g^∗ η '$ in the left diagram. Then the right diagram commutes in $𝖧𝗈 \mathcal{A}$:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiWCJdLFsxLDAsIlkiXSxbMiwwLCJaIl0sWzAsMSwiWCciXSxbMSwxLCJZJyJdLFsyLDEsIlonIl0sWzMsMCwiXFwsIl0sWzMsMSwiXFwsIl0sWzQsMCwiUVoiXSxbNSwwLCJRVV9YIl0sWzUsMSwiUVVfe1gnfSJdLFs0LDEsIlFaJyJdLFswLDFdLFsxLDJdLFszLDRdLFs0LDVdLFswLDMsImYiXSxbMiw1LCJnIl0sWzIsNiwiXFxldGEiXSxbNSw3LCJcXGV0YSciXSxbOCw5LCJcXGVsbCAoXFxldGEpIl0sWzgsMTEsIlEoZykiLDJdLFs5LDEwLCJRKFVfZikiXSxbMTEsMTAsIlxcZWxsIChcXGV0YScpIiwyXSxbMSw0XV0=
\begin{tikzcd}
X & Y & Z & {\,} & QZ & {QU_X} \\
{X'} & {Y'} & {Z'} & {\,} & {QZ'} & {QU_{X'}}
\arrow[from=1-1, to=1-2]
\arrow["f", from=1-1, to=2-1]
\arrow[from=1-2, to=1-3]
\arrow[from=1-2, to=2-2]
\arrow["\eta", from=1-3, to=1-4]
\arrow["g", from=1-3, to=2-3]
\arrow["{\ell (\eta)}", from=1-5, to=1-6]
\arrow["{Q(g)}"', from=1-5, to=2-5]
\arrow["{Q(U_f)}", from=1-6, to=2-6]
\arrow[from=2-1, to=2-2]
\arrow[from=2-2, to=2-3]
\arrow["{\eta'}", from=2-3, to=2-4]
\arrow["{\ell (\eta')}"', from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

{% pf %}
We unfold the right diagram in $\mathcal{A}$, and then use 4×4 and ET4 squares to translate the the trivial fibration $t$ to $t'$ along the parallel edges. The left top square consisting of four $𝖳𝖥𝗂𝖻$ is given by 4×4 lemma.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzAsMCwiWiJdLFs0LDAsIlVfWCJdLFs0LDQsIlVfe1gnfSJdLFswLDQsIlonIl0sWzIsMCwiTSJdLFsyLDQsIk4iXSxbMSwzLCJBIl0sWzMsMywiQiJdLFsyLDIsIkMiXSxbNCwyLCJVX3tYJ30iXSxbMCwyLCJaIl0sWzIsMSwiRSJdLFszLDEsIj8/PyJdLFs0LDAsInMiLDIseyJjb2xvdXIiOlszNTksMTAwLDU5XX0sWzM1OSwxMDAsNTksMV1dLFs1LDMsInQiLDAseyJjb2xvdXIiOlszNTksMTAwLDU5XX0sWzM1OSwxMDAsNTksMV1dLFs0LDEsImEiXSxbNSwyLCJiIiwyXSxbNiwzLCJcXG1hdGhzZntGaWJ9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzcsNiwiIiwyLHsiY29sb3VyIjpbMzU5LDEwMCw1OV19XSxbNyw1LCJwIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzgsNywicSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDMsIlxcbGFtYmRhIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsOSwiVV9mIl0sWzksMiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw5LCJiJyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMCwzLCJnIiwyXSxbMTAsNiwiXFxtYXRoc2Z7VENvZn0iLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOCwxMCwidCciLDIseyJjb2xvdXIiOlszNTksMTAwLDU5XX0sWzM1OSwxMDAsNTksMV1dLFswLDEwLCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCw2LCJcXG11IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzExLDQsIlxcb3ZlcmxpbmUgcyIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNTldfSxbMzU5LDEwMCw1OSwxXV0sWzExLDgsIlxcb3ZlcmxpbmUge310JyIsMix7ImNvbG91ciI6WzM1OSwxMDAsNTldfSxbMzU5LDEwMCw1OSwxXV0sWzE0LDE4LCJcXHRleHR7NMOXNH0iLDEseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9fV0sWzE4LDI3LCJcXHRleHR7RVQ0fSIsMSx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH19XSxbMTEsMjgsIlxcdGV4dHs0w5c0fSIsMSx7InNob3J0ZW4iOnsidGFyZ2V0IjoyMH0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
Z && M && {U_X} \\
&& E & {???} \\
Z && C && {U_{X'}} \\
& A && B \\
{Z'} && N && {U_{X'}}
\arrow[""{name=0, anchor=center, inner sep=0}, equals, from=1-1, to=3-1]
\arrow["s"', color={rgb,255:red,255;green,46;blue,49}, from=1-3, to=1-1]
\arrow["a", from=1-3, to=1-5]
\arrow["{U_f}", from=1-5, to=3-5]
\arrow["{\overline s}", color={rgb,255:red,255;green,46;blue,49}, from=2-3, to=1-3]
\arrow["{\overline {}t'}"', color={rgb,255:red,255;green,46;blue,49}, from=2-3, to=3-3]
\arrow["{\mathsf{TCof}}"', dashed, from=3-1, to=4-2]
\arrow["\mu", draw=none, from=3-1, to=4-2]
\arrow["g"', from=3-1, to=5-1]
\arrow[""{name=1, anchor=center, inner sep=0}, "{t'}"', color={rgb,255:red,255;green,46;blue,49}, from=3-3, to=3-1]
\arrow["{b'}", dashed, from=3-3, to=3-5]
\arrow["q", dashed, from=3-3, to=4-4]
\arrow[equals, from=3-5, to=5-5]
\arrow["{\mathsf{Fib}}", dashed, from=4-2, to=5-1]
\arrow["\lambda"', draw=none, from=4-2, to=5-1]
\arrow[""{name=2, anchor=center, inner sep=0}, draw={rgb,255:red,255;green,46;blue,49}, from=4-4, to=4-2]
\arrow["p", dashed, from=4-4, to=5-3]
\arrow[""{name=3, anchor=center, inner sep=0}, "t", color={rgb,255:red,255;green,46;blue,49}, from=5-3, to=5-1]
\arrow["b"', from=5-3, to=5-5]
\arrow["{\text{4×4}}"{description}, draw=none, from=2-3, to=0]
\arrow["{\text{ET4}}"{description}, shorten <=7pt, shorten >=7pt, Rightarrow, from=2, to=1]
\arrow["{\text{4×4}}"{description}, shorten <=7pt, shorten >=7pt, Rightarrow, from=3, to=2]
\end{tikzcd}
{% endtikz %}

Now it suffices to show that the $???$ square commutes in $𝖧𝗈 \mathcal{A}$. It suffices to show that $(\overline {s}aU_f)^∗ δ _{X'}$ equals $(b't')^∗ δ _{X'}$. Since $(\overline {s}aU_f - b't')$ factors through $\mathcal{V}$, it vanishes in $𝖧𝗈 \mathcal{A}$. We chase the diagram and obtain

$$\begin{aligned}
(b'\overline {t'})^∗ δ _{X'} &= (\overline {t'})^∗ (b')^∗ δ _{X'}\ \ \ \qquad =(\overline {t'})^∗ [(b')^∗] δ _{X'}\\
&= (\overline {t'})^∗ [q^∗ p^∗ b^∗ ] δ _{X'}\ \ \quad = (\overline {t'})^∗ q^∗ p^∗ [b^∗  δ _{X'}]\\
&= (\overline {t'})^∗ q^∗ p^∗ [t^∗  η ']\ \qquad = (\overline {t'})^∗ [q^∗ p^∗ t^∗]  η '\\
&= (\overline {t'})^∗ [(t')^∗ g^∗ ] η '\qquad = [(\overline {t'})^∗ (t')^∗] [g^∗   η ']\\
&= [(\overline {s})^∗ s^∗] [f_∗   η]\  \ \ \qquad = (\overline {s})^∗ f_∗ [s^∗ η]\\
&= (\overline {s})^∗ f_∗ [a^∗ δ _X]\ \ \ \qquad = (\overline {s})^∗ a^∗ [f_∗δ _X]\\
&= (\overline {s})^∗ a^∗ [(U_f)^∗ δ _{X'}]\quad = [(\overline {s})^∗ a^∗ (U_f)^∗] δ _{X'}\\
&= (\overline {s}aU_f)^∗ δ _{X'}.
\end{aligned}$$

{% endpf %}

{% endlem %}

{% def %}
(Desuspension). We define the functor $[-1] : 𝖧𝗈 \mathcal{A} → 𝖧𝗈 \mathcal{A}$ dually by taking the desuspension sequence $S^X → T^X → X$. Now $(∙) [-1] := Q(S^∙)$.
{% enddef %}

{% prop %}
Both $[1]$ and $[-1]$ are autoequivalences. Moreover, there is an natural equivalence from $1_∙ → ((∙) [-1]) [1]$.

{% pf %}
We chose $μ_{X}$ to be the conflation, and $δ _{T^X}$ is the suspension sequence of $T^X$:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzQsMCwiWCJdLFsyLDAsIlReWCJdLFszLDAsIlNeWCJdLFsyLDEsIlZfe1ReWH0iXSxbMiwyLCJVX3tUXlh9Il0sWzMsMSwiRiJdLFs0LDEsIlgiXSxbMywyLCJVX3tUXlh9Il0sWzAsMSwiXFwsIl0sWzYsMSwiXFwsIl0sWzIsMywiXFwsIl0sWzUsMCwiXFwsIl0sWzQsNywiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCw2LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDJdLFsyLDUsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDNdLFszLDUsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDYsInNfWCIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDBdLFszLDRdLFs1LDcsInRfWCIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs0LDEwLCJcXGRlbHRhIF97VF5YfSJdLFswLDExLCJcXG11X1giXV0=
\begin{tikzcd}
&& {T^X} & {S^X} & X & {\,} \\
{\,} && {V_{T^X}} & F & X && {\,} \\
&& {U_{T^X}} & {U_{T^X}} \\
&& {\,}
\arrow[from=1-3, to=1-4]
\arrow[from=1-3, to=2-3]
\arrow[from=1-4, to=1-5]
\arrow[dashed, from=1-4, to=2-4]
\arrow["{\mu_X}", from=1-5, to=1-6]
\arrow[equals, from=1-5, to=2-5]
\arrow[dashed, from=2-3, to=2-4]
\arrow[from=2-3, to=3-3]
\arrow["{s_X}", dashed, from=2-4, to=2-5]
\arrow["{\color{red}-t_X}", dashed, from=2-4, to=3-4]
\arrow[equals, from=3-3, to=3-4]
\arrow["{\delta _{T^X}}", from=3-3, to=4-3]
\end{tikzcd}
{% endtikz %}

By definition of $ℓ$, we obtain a fraction

$$\begin{equation}
X \xleftarrow[𝖳𝖥𝗂𝖻]{s_X} F \xrightarrow{t_X}\quad ℓ (μ_X) = Q(t_X)Q(s_X)^{-1}.
\end{equation}$$

Since $s_X$ and $t_X$ are $𝖶𝖾𝗊$, $ℓ(μ_X)$ is an isomorphism. It remains to show that $1_∙ → ℓ (μ _∙ )$ is a natural isomorphism. By definition, $T^f$ and $U_{T^f}$ are unique in $𝖧𝗈 \mathcal{A}$. By naturality of $ℓ$, the morphism of extension $(T^f, f) : μ _X→ μ _Y$ gives
$$\begin{equation}
ℓ(μ _Y) ∘ Q(f) = Q(T^f) [1] ∘ ℓ (μ _X) = (Q(f) [-1])[1] ∘ ℓ (μ _X).
\end{equation}$$

Hence we prove the naturality.

{% endpf %}

{% endprop %}

### The Triangulated Structure

In this section, we finish the proof that $𝖧𝗈 \mathcal{A}$ is triangulated.

- The autoequivalence $[1] : 𝖧𝗈 \mathcal{A} → 𝖧𝗈 \mathcal{A}$ is defined by suspention sequence.
- The additive natural transformation $ℓ : 𝔼 (Z , X) → (Z, X[1])_{𝖧𝗈 \mathcal{A}}$ turns $η$ into morphisms. By functoriality, the morphism of extension $(f,g) : η → η'$ gives $Q(f) [1] ∘ ℓ (η) = ℓ (η ') ∘ Q(g)$.
- Within a formula, the naturality means $(Q(a) [1]) ∘ ℓ(η) ∘ Q(b) = ℓ (a_∗ b^∗ η)$.
- A distinguished triangle is isomorphic to some standard triangles.

{% def %}
(**Standard triangles**). The standard triangles are the image of conflations, e.g., for conflation in extriangulated category $X \xrightarrow{f} Y \xrightarrow{g} Z \xrightarrow{η}$, the following is an triangle

$$\begin{equation}
QX \xrightarrow{Q(f)} QY \xrightarrow{Q(g)} QZ \xrightarrow{ℓ (η )}(QX) [1].
\end{equation}$$

{% enddef %}

Now we verify TR-axioms. Note that $𝖧𝗈 \mathcal{A}$ is equivalent to $\frac{\mathcal{C} ∩ \mathcal{F}}{ \mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F} }$. We say $φ$ and $ψ$ are isomorphic, if they are isomorphic objects in the morphism category.

{% lem %}
(The verification of TR1). TR1 says that the class of distinguished triangles contains all trivial triangles, closed under isomorphims (the trivial parts). Moreover, any morphism embeds into some dintinguished triangle (the non-trivial part).

{% pf %}
We show that any $φ ∈ 𝖬𝗈𝗋(𝖧𝗈 \mathcal{A})$ embeds into some distinguished triangles. By $\frac{\mathcal{C} ∩ \mathcal{F}}{\mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}}$,$φ$ is isomorphic to some $Q(f)$ for $f : X → Y$ a morphism in $\mathcal{C} ∩ \mathcal{F}$. Note that $V_X$ vanishes in $𝖧𝗈 \mathcal{A}$. We see that $Q(\binom {f}{v_X})$ and $φ$ are also isomorphic. Hence $φ = [i]$ for inflation $i$.
{% endpf %}

{% endlem %}

{% lem %}
(The verification of TR2). TR2 says that the class of distinguished triangles is closed under clockwise rotation. It suffices to show that the clockwise rotation of any standard triangle is distinguished.

{% pf %}
We take $X \xrightarrow{f} Y \xrightarrow{g} Z \xrightarrow{η }$ as the conflation. The rotation is constructed by the following 4×4 diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMCwiWCJdLFsyLDAsIlkiXSxbMywwLCJaIl0sWzQsMCwiXFwsIl0sWzQsMSwiXFwsIl0sWzMsMSwiWiJdLFsxLDEsIlZfWCJdLFsxLDIsIlVfWCJdLFsxLDMsIlxcLCJdLFsyLDIsIlVfWCJdLFsyLDMsIlxcLCJdLFsyLDEsIkUiXSxbMCwxLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFswLDYsInZfWCJdLFs2LDcsInVfWCJdLFsyLDMsIlxcZXRhIl0sWzcsOSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDExLCJcXGxhbWJkYSJdLFsxMSw5LCJcXGthcHBhICJdLFs2LDExLCJtIl0sWzExLDUsIm4iXSxbNyw4LCJcXGRlbHRhIF9YIl0sWzksMTAsImZfXFxhc3QgXFxkZWx0YSBfWCJdLFs1LDQsIih2X1gpX1xcYXN0IFxcZXRhIl1d
\begin{tikzcd}[ampersand replacement=\&]
\& X \& Y \& Z \& {\,} \\
{\,} \& {V_X} \& E \& Z \& {\,} \& {\,} \\
\& {U_X} \& {U_X} \\
\& {\,} \& {\,}
\arrow["f", from=1-2, to=1-3]
\arrow["{v_X}", from=1-2, to=2-2]
\arrow["g", from=1-3, to=1-4]
\arrow["\lambda", from=1-3, to=2-3]
\arrow["\eta", from=1-4, to=1-5]
\arrow[equals, from=1-4, to=2-4]
\arrow["m", from=2-2, to=2-3]
\arrow["{u_X}", from=2-2, to=3-2]
\arrow["n", from=2-3, to=2-4]
\arrow["{\kappa }", from=2-3, to=3-3]
\arrow["{(v_X)_\ast \eta}", from=2-4, to=2-5]
\arrow[equals, from=3-2, to=3-3]
\arrow["{\delta _X}", from=3-2, to=4-2]
\arrow["{f_\ast \delta _X}", from=3-3, to=4-3]
\end{tikzcd}
{% endtikz %}

Now we show that the following diagram in $𝖧𝗈 \mathcal{A}$ is commutative wherein the verticle arrows are isomorphisms.

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJRWSJdLFsxLDAsIlFFIl0sWzAsMSwiUVkiXSxbMSwxLCJRWiJdLFszLDAsIihRWClbMV0iXSxbMywxLCIoUVgpWzFdIl0sWzUsMCwiKFFZKVsxXSJdLFs1LDEsIihRWSlbMV0iXSxbMCwyLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDcsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMSwiUVxcbGFtYmRhIl0sWzIsMywiUWciXSxbMSwzLCJRbiJdLFsxLDQsIlFcXGthcHBhIl0sWzMsNSwiXFxlbGwoXFxldGEpIl0sWzQsNiwiXFxlbGwoZl9cXGFzdCBcXGRlbHRhIF9YKSJdLFs1LDcsIi1mWzFdIl0sWzQsNSwiLVxcZWxsIChcXGRlbHRhIF9YKSJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
QY \& QE \&\& {(QX) [1]} \&\& {(QY) [1]} \\
QY \& QZ \&\& {(QX) [1]} \&\& {(QY) [1]}
\arrow["{Q\lambda}", from=1-1, to=1-2]
\arrow[equals, from=1-1, to=2-1]
\arrow["{Q\kappa}", from=1-2, to=1-4]
\arrow["Qn", from=1-2, to=2-2]
\arrow["{\ell(f_\ast \delta _X)}", from=1-4, to=1-6]
\arrow["{-\ell (\delta _X)}", from=1-4, to=2-4]
\arrow[equals, from=1-6, to=2-6]
\arrow["Qg", from=2-1, to=2-2]
\arrow["{\ell(\eta)}", from=2-2, to=2-4]
\arrow["{-f[1]}", from=2-4, to=2-6]
\end{tikzcd}
{% endtikz %}

- (The left square commutes). This is due to the construction.
- (The middle square commutes). This is due to identities of 4×4, $n^∗ η + κ ^∗ δ _X = 0$.
- (The right square commutes). This is due to the naturality of $ℓ$.
- ($Q(n)$ is an isomorphism). Since $V_X ∈ \mathcal{W}$, we have $n ∈ 𝖶𝖾𝗊$. Hence, $Q(n)$ is an isomrophism.
- ($ℓ (δ _X)$ is an isomorphism). By definition, the fraction $(1_{U_X},1_{U_X})$ is an candidate for $η$. Hence $ℓ (δ) = Q(1_{U_X}) = 1_{Q(U_X)}$.

{% endpf %}

{% endlem %}

{% lem %}
(The verification of TR3). TR3 says that, suppose that the following solid arrows are morphisms between two distinguished triangles. Then there is a way to find the dashed arrow making the entire diagram commutative:

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzQsMCwiXFxidWxsZXQiXSxbNiwwLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbNCwxLCJcXGJ1bGxldCJdLFs2LDEsIlxcYnVsbGV0Il0sWzAsMV0sWzEsMl0sWzIsM10sWzAsNCwiXFxhbHBoYSAiXSxbNCw1XSxbNSw2XSxbNiw3XSxbMyw3LCJcXGFscGhhIFsxXSJdLFsxLDUsIlxcYmV0YSJdLFsyLDYsIlxcZ2FtbWEgIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
\bullet \&\& \bullet \&\& \bullet \&\& \bullet \\
\bullet \&\& \bullet \&\& \bullet \&\& \bullet
\arrow[from=1-1, to=1-3]
\arrow["{\alpha }", from=1-1, to=2-1]
\arrow[from=1-3, to=1-5]
\arrow["\beta", from=1-3, to=2-3]
\arrow[from=1-5, to=1-7]
\arrow["{\gamma }", dashed, from=1-5, to=2-5]
\arrow["{\alpha [1]}", from=1-7, to=2-7]
\arrow[from=2-1, to=2-3]
\arrow[from=2-3, to=2-5]
\arrow[from=2-5, to=2-7]
\end{tikzcd}
{% endtikz %}

{% pf %}
We consider the following morphism between distinguished triangles,

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJRWCJdLFsyLDAsIlFZIl0sWzQsMCwiUVoiXSxbMCwxLCJRWCciXSxbMiwxLCJRWSciXSxbNCwxLCJRWiciXSxbNiwwLCIoUVgpIFsxXSJdLFs2LDEsIihRWCcpIFsxXSJdLFswLDEsIlFmIl0sWzEsMiwiUWciXSxbMiw2LCJcXGVsbCAoXFxldGEpIl0sWzAsMywiUVxcYWxwaGEgIl0sWzMsNCwiUWYnIl0sWzQsNSwiUWcnIl0sWzUsNywiXFxlbGwgKFxcZXRhJykiXSxbMSw0LCJRXFxiZXRhIl0sWzIsNSwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsNywiUShcXGFscGhhICkgWzFdIl1d
\begin{tikzcd}
QX && QY && QZ && {(QX) [1]} \\
{QX'} && {QY'} && {QZ'} && {(QX') [1]}
\arrow["Qf", from=1-1, to=1-3]
\arrow["{Q\alpha }", from=1-1, to=2-1]
\arrow["Qg", from=1-3, to=1-5]
\arrow["{Q\beta}", from=1-3, to=2-3]
\arrow["{\ell (\eta)}", from=1-5, to=1-7]
\arrow[dashed, from=1-5, to=2-5]
\arrow["{Q(\alpha ) [1]}", from=1-7, to=2-7]
\arrow["{Qf'}", from=2-1, to=2-3]
\arrow["{Qg'}", from=2-3, to=2-5]
\arrow["{\ell (\eta')}", from=2-5, to=2-7]
\end{tikzcd}
{% endtikz %}

Without the loss of generality, we assume that $\{X,Y,Z,X',Y',Z'\}$ are objects in $\mathcal{C} ∩ \mathcal{F}$. Since $β f-  f'α$ factors through some $I ∈ \mathcal{C} ∩ \mathcal{W} ∩ \mathcal{F}$, we have the following morphism of extension of conflations:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzIsMCwiWVxcb3BsdXMgSSJdLFs0LDAsIlciXSxbMCwxLCJYJyJdLFsyLDEsIlknIl0sWzQsMSwiWiciXSxbNiwxLCJcXCwiXSxbNiwwLCJcXCwiXSxbMCwxLCJcXGJpbm9tIGYgaSJdLFsxLDIsImgiXSxbMCwzLCJcXGFscGhhICJdLFszLDQsImYnIl0sWzQsNSwiZyciXSxbNSw2LCJcXGV0YSciXSxbMSw0LCIoXFxiZXRhLCBqKSJdLFsyLDUsIlxcdmFycGhpICJdLFsyLDcsIlxcdmFyZXBzaWxvbiAiXV0=
\begin{tikzcd}[ampersand replacement=\&]
X \&\& {Y\oplus I} \&\& W \&\& {\,} \\
{X'} \&\& {Y'} \&\& {Z'} \&\& {\,}
\arrow["{\binom f i}", from=1-1, to=1-3]
\arrow["{\alpha }", from=1-1, to=2-1]
\arrow["h", from=1-3, to=1-5]
\arrow["{(\beta, j)}", from=1-3, to=2-3]
\arrow["{\varepsilon }", from=1-5, to=1-7]
\arrow["{\varphi }", from=1-5, to=2-5]
\arrow["{f'}", from=2-1, to=2-3]
\arrow["{g'}", from=2-3, to=2-5]
\arrow["{\eta'}", from=2-5, to=2-7]
\end{tikzcd}
{% endtikz %}

By S4×4, we obtain the following diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMSwiWCJdLFsyLDEsIllcXG9wbHVzIEkiXSxbNCwxLCJXIl0sWzUsMSwiXFwsIl0sWzEsMiwiWCJdLFsyLDIsIlkiXSxbMiwwLCJJIl0sWzQsMCwiSSJdLFs0LDIsIloiXSxbNSwyLCJcXCwiXSxbNCwzLCJcXCwiXSxbMiwzLCJcXCwiXSxbMCwyLCJcXCwiXSxbNiwyLCJcXCwiXSxbMCwxLCJcXGJpbm9tIGYgaSJdLFsxLDIsIihoXzEsaF8yKSJdLFsyLDMsIlxcdmFyZXBzaWxvbiAiXSxbMCw0LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDUsIigxLDApIl0sWzQsNSwiZiJdLFs2LDEsIlxcYmlub20gMDEiXSxbNiw3LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs3LDIsImhfMiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDgsImciXSxbOCw5LCJcXGV0YSJdLFsyLDgsInMiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOCwxMCwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzUsMTEsIjAiXV0=
\begin{tikzcd}[ampersand replacement=\&]
\&\& I \&\& I \\
\& X \& {Y\oplus I} \&\& W \& {\,} \\
{\,} \& X \& Y \&\& Z \& {\,} \& {\,} \\
\&\& {\,} \&\& {\,}
\arrow[equals, from=1-3, to=1-5]
\arrow["{\binom 01}", from=1-3, to=2-3]
\arrow["{h_2}", dashed, from=1-5, to=2-5]
\arrow["{\binom f i}", from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow["{(h_1,h_2)}", from=2-3, to=2-5]
\arrow["{(1,0)}", from=2-3, to=3-3]
\arrow["{\varepsilon }", from=2-5, to=2-6]
\arrow["s", dashed, from=2-5, to=3-5]
\arrow["f", from=3-2, to=3-3]
\arrow["g", from=3-3, to=3-5]
\arrow["0", from=3-3, to=4-3]
\arrow["\eta", from=3-5, to=3-6]
\arrow[dashed, from=3-5, to=4-5]
\end{tikzcd}
{% endtikz %}

Note that the morphisms $ε → δ$ are $𝖶𝖾𝗊$. We obtain the morphism of extensions between three conflations:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMSwiWCJdLFsyLDEsIllcXG9wbHVzIEkiXSxbNCwxLCJXIl0sWzUsMSwiXFwsIl0sWzAsMiwiWCJdLFsyLDIsIlkiXSxbNCwyLCJaIl0sWzUsMiwiXFwsIl0sWzAsMCwiWCciXSxbMiwwLCJZJyJdLFs0LDAsIlonIl0sWzUsMCwiXFwsIl0sWzAsMSwiXFxiaW5vbSBmIGkiXSxbMSwyLCIoaF8xLGhfMikiXSxbMiwzLCJcXHZhcmVwc2lsb24gIl0sWzAsNCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSw1LCIoMSwwKSJdLFs0LDUsImYiXSxbNSw2LCJnIl0sWzYsNywiXFxldGEiXSxbMiw2LCJzIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsOCwiXFxhbHBoYSJdLFsxLDksIihcXGJldGEsaikiXSxbOCw5LCJmJyJdLFs5LDEwLCJnJyJdLFsxMCwxMSwiXFxldGEnIl0sWzIsMTAsIlxcdmFycGhpICJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
{X'} \&\& {Y'} \&\& {Z'} \& {\,} \\
X \&\& {Y\oplus I} \&\& W \& {\,} \\
X \&\& Y \&\& Z \& {\,}
\arrow["{f'}", from=1-1, to=1-3]
\arrow["{g'}", from=1-3, to=1-5]
\arrow["{\eta'}", from=1-5, to=1-6]
\arrow["\alpha", from=2-1, to=1-1]
\arrow["{\binom f i}", from=2-1, to=2-3]
\arrow[equals, from=2-1, to=3-1]
\arrow["{(\beta,j)}", from=2-3, to=1-3]
\arrow["{(h_1,h_2)}", from=2-3, to=2-5]
\arrow["{(1,0)}", from=2-3, to=3-3]
\arrow["{\varphi }", from=2-5, to=1-5]
\arrow["{\varepsilon }", from=2-5, to=2-6]
\arrow["s", dashed, from=2-5, to=3-5]
\arrow["f", from=3-1, to=3-3]
\arrow["g", from=3-3, to=3-5]
\arrow["\eta", from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

Now we take localisation. Since $\binom {1_Y}{0_{IY}}$ and $(1_Y, 0_{YI})$ are mutually inverse in $𝖧𝗈 \mathcal{A}$, we see that $Q(β,j) ∘ Q((1,0))^{-1} = Q(β)$. Now $Q(φ) ∘ Q(s)^{-1}$ is our desired morphism.

{% endpf %}

{% endlem %}

{% lem %}
(The verification of TR4). One common version of octagon axiom says that, suppose one have a ⊤-shaped diagram of two distinguished triangles, then there is a way to complete the following diagram with all commutative squares (we omit the morphisms).

{% tikz %}
% https://q.uiver.app/#q=WzAsMTUsWzEsMCwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzQsMCwiXFxidWxsZXRbMV0iXSxbMiwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzIsMywiXFxidWxsZXRbMV0iXSxbMSwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXRbMV0iXSxbMywyLCJcXGJ1bGxldCJdLFszLDMsIlxcYnVsbGV0WzFdIl0sWzQsMiwiXFxidWxsZXRbMV0iXSxbMCwyLCJcXCwiXSxbNSwyLCJcXCwiXSxbMCwxLCIiLDAseyJjb2xvdXIiOlsyMzUsMTAwLDYwXX1dLFsxLDIsIiIsMCx7ImNvbG91ciI6WzIzNSwxMDAsNjBdfV0sWzIsMywiIiwwLHsiY29sb3VyIjpbMjM1LDEwMCw2MF19XSxbMSw0LCIiLDAseyJjb2xvdXIiOlsyMzUsMTAwLDYwXX1dLFs0LDUsIiIsMCx7ImNvbG91ciI6WzIzNSwxMDAsNjBdfV0sWzUsNiwiIiwwLHsiY29sb3VyIjpbMjM1LDEwMCw2MF19XSxbMCw3LCIiLDIseyJsZXZlbCI6MiwiY29sb3VyIjpbMjM1LDEwMCw2MF0sInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNyw0LCIiLDIseyJjb2xvdXIiOlsyMzUsMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsOCwiIiwyLHsiY29sb3VyIjpbMjM1LDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs4LDksIiIsMix7ImNvbG91ciI6WzIzNSwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMyw5LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDEwLCIiLDAseyJsZXZlbCI6MiwiY29sb3VyIjpbMjM1LDEwMCw2MF0sInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw4LCIiLDEseyJjb2xvdXIiOlsyMzUsMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzgsMTAsIiIsMSx7ImNvbG91ciI6WzIzNSwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTAsMTEsIiIsMSx7ImNvbG91ciI6WzIzNSwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNiwxMSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEwLDEyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOSwxMiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzUsMTEsImEiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw5LCJiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzgsMTIsImMiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
& \bullet & \bullet & \bullet & {\bullet[1]} \\
& \bullet & \bullet & \bullet & {\bullet[1]} \\
{\,} && \bullet & \bullet & {\bullet[1]} & {\,} \\
&& {\bullet[1]} & {\bullet[1]}
\arrow[draw={rgb,255:red,51;green,68;blue,255}, from=1-2, to=1-3]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, equals, from=1-2, to=2-2]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, from=1-3, to=1-4]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, from=1-3, to=2-3]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, from=1-4, to=1-5]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, dashed, from=1-4, to=2-4]
\arrow["b"{description}, draw=none, from=1-4, to=2-5]
\arrow[equals, from=1-5, to=2-5]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, dashed, from=2-2, to=2-3]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, dashed, from=2-3, to=2-4]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, from=2-3, to=3-3]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, dashed, from=2-4, to=2-5]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, dashed, from=2-4, to=3-4]
\arrow["c"{description}, draw=none, from=2-4, to=3-5]
\arrow[dotted, from=2-5, to=3-5]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, equals, from=3-3, to=3-4]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, from=3-3, to=4-3]
\arrow["a"{description}, draw=none, from=3-3, to=4-4]
\arrow[dotted, from=3-4, to=3-5]
\arrow[draw={rgb,255:red,51;green,68;blue,255}, dashed, from=3-4, to=4-4]
\arrow[dotted, from=4-3, to=4-4]
\end{tikzcd}
{% endtikz %}

{% pf %}
Let the ⊤-shaped diagram of two distinguished triangles be standard ones. We complete the blue arrows with usual ET4 axiom. By naturality of $ℓ$, three equalities corresponds to the commutative squares $a$, $b$, and $c$. This is exactly TR4.
{% endpf %}

{% endlem %}

We remark that, these verifications are closely analogous to that employed in verifying that triangulated categories are extriangulated.

## The Localisation

### Exact Functors

An extriangulated category resembles a triangulated category, yet one of the morphisms in the triangle is replaced by an extension element $δ$. The functor category admits a similar definition.

{% def %}
(Extriangulated Functor, or exact functor in short). An extriangulated functor from $(\mathcal{C} , 𝔼 , 𝔰 )$ to $(\mathcal{D} , 𝔽 , 𝔱)$ is described as a pair $(F, φ)$, wherein

1. (F0). $F : \mathcal{C} → \mathcal{D}$ is an additive functor, and $φ_{-,?} : 𝔼(-,?) → 𝔽(F(-), F(?))$ is a natural transformation;
2. (F1). $φ_{Z,X} : 𝔼 (Z,X) → 𝔽 (FZ, FX)$ is compatible with composition, i.e., for any $f : Z' → Z$, $g : X → X'$ and $δ ∈ 𝔼 (X,Y)$, we have $φ_{Z', X'} (f^∗ g_∗ δ ) = (Ff)^∗ (Fg)_∗ φ _{Z,X}(δ)$.
3. (F2). Let $X \xrightarrow f Y \xrightarrow g Z$ be a realisation of $δ$. Then $FX \xrightarrow {Ff} FY \xrightarrow {Fg} FZ$ is a realisation of $φ (δ )$.

The definition F1 means that the tacit natural transformation $(A, B) → (FA, FB)$ is composable with $φ$ on both sides, which is a natural requirement.

{% enddef %}

We remark that F1 is obtained by F0 and F2. Say $(\triangle , δ)$ is compatible, provided $\triangle$ is the realisation of $δ$. Now ther following are compatible pairs

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwxLCIoXFx0cmlhbmdsZSAsIFxcZGVsdGEgKSJdLFswLDIsIihmXlxcYXN0IGdfXFxhc3QgXFx0cmlhbmdsZSAsIGZeXFxhc3QgZ19cXGFzdCBcXGRlbHRhICkiXSxbMCwwLCIoRlxcdHJpYW5nbGUgLCBcXHZhcnBoaSAoXFxkZWx0YSApKSJdLFsxLDIsIihGKGZeXFxhc3QgZ19cXGFzdCBcXHRyaWFuZ2xlKSAsIFxcdmFycGhpIChmXlxcYXN0IGdfXFxhc3QgXFxkZWx0YSkgKSJdLFsxLDAsIigoRmYpXlxcYXN0IChGZylfXFxhc3QgKEZcXHRyaWFuZ2xlKSwgKEZmKV5cXGFzdCAoRmcpX1xcYXN0XFx2YXJwaGkgKFxcZGVsdGEgKSkiXSxbMSwxLCIoKEZmKV5cXGFzdCAoRmcpX1xcYXN0IChGXFx0cmlhbmdsZSksIFxcdmFycGhpIChmXlxcYXN0IGdfXFxhc3QgXFxkZWx0YSkpIl0sWzAsMSwiIiwyLHsibGV2ZWwiOjJ9XSxbMCwyLCIiLDAseyJsZXZlbCI6Mn1dLFsyLDQsIiIsMCx7ImxldmVsIjoyfV0sWzEsMywiIiwyLHsibGV2ZWwiOjJ9XSxbMyw1LCIiLDIseyJsZXZlbCI6Mn1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
{(F\triangle , \varphi (\delta ))} \& {((Ff)^\ast (Fg)_\ast (F\triangle), (Ff)^\ast (Fg)_\ast\varphi (\delta ))} \\
{(\triangle , \delta )} \& {((Ff)^\ast (Fg)_\ast (F\triangle), \varphi (f^\ast g_\ast \delta))} \\
{(f^\ast g_\ast \triangle , f^\ast g_\ast \delta )} \& {(F(f^\ast g_\ast \triangle) , \varphi (f^\ast g_\ast \delta) )}
\arrow[Rightarrow, from=1-1, to=1-2]
\arrow[Rightarrow, from=2-1, to=1-1]
\arrow[Rightarrow, from=2-1, to=3-1]
\arrow[Rightarrow, from=3-1, to=3-2]
\arrow[Rightarrow, from=3-2, to=2-2]
\end{tikzcd}
{% endtikz %}

Since an conflation realises a unique conflation, $\varphi (f^\ast g_\ast \delta) = (Ff)^\ast (Fg)_\ast\varphi (\delta )$.

{% def %}
(Natural transformation). Say $α : (F, φ ) → (G, ψ)$ is a natural triansformation of triangulated functors from $(\mathcal{C} , 𝔼 , 𝔰 )$ to $(\mathcal{D} , 𝔽 , 𝔱)$, provided

1. $α : F → G$ is a natural transformation of additive functors;
2. $(α_?, α _-) : 𝔽 (F-, F?) → 𝔽 (G-, G?)$ is gives functorial morphism of extension elements.

{% enddef %}

For instance, we show that the functor $(L, l)$ is an equivalence, if and only if $L$ is an equivalence of additive categories, and $l$ is a natural isomorphism.

{% ex %}
Let $(L, l) : (\mathcal{C} ,𝔼 , 𝔰) → (\mathcal{D} , 𝔽 , 𝔱 )$ be exact functor, such that $L$ is an equivalence and $l$ is a natural isomorphism. We use the notation of adjoint pair $(L, R, η , ε)$ to denote the equivalence of additive categories $\mathcal{C}$ and $\mathcal{D}$. Now we define the natural isomorphism $r$ by the following zigzag diagram of natural isomorphisms:

$$\begin{equation}
𝔽 (C,A) \xleftarrow[∼ ]{(ε _A)_∗ }𝔽 (C,LRA) \xrightarrow[∼ ]{(ε _C)^∗ }𝔽 (LRC,LRA) \xleftarrow[∼ ]{l_{RC,RA}}𝔼 (RC, RA).
\end{equation}$$

It remains to show the naturality. By definition, we have that
$$\begin{equation}
l_{RC, RA} ∘ r_{C,A} : 𝔽 (C,A) → 𝔽 (LRC, LRA),\quad δ ↦ (ε _A)_∗ ^{-1} (ε _C)^∗ δ .
\end{equation}$$

Now we claim that $r_{LZ, LX} ∘ l_{Z,X} (δ ) = (η _X)_∗ (η _Z^∗ )^{-1} (δ)$, that is, the following diagram commutes:

{% tikz %}
% https://q.uiver.app/#q=WzAsNCxbMCwxLCJcXG1hdGhiYiBFKFosWCkiXSxbMCwwLCJcXG1hdGhiYiBGKExaLExYKSJdLFszLDAsIlxcbWF0aGJiIEYoTFJMWixMUkxYKSJdLFszLDEsIlxcbWF0aGJiIEUoUkxaLFJMWCkiXSxbMCwzLCIoXFxldGFfe1h9KV9cXGFzdCAoXFxldGEgX1peXFxhc3QpXnstMX0iXSxbMCwxLCJsX3taLFh9Il0sWzMsMiwibF97UkxaLFJMWH0iXSxbMSwyLCJcXHZhcmVwc2lsb24gX3tMWn1eXFxhc3QgXFxjaXJjIChcXHZhcmVwc2lsb24gX3tMWH0pX1xcYXN0IF57LTF9Il1d
\begin{tikzcd}
{\mathbb F(LZ,LX)} &&& {\mathbb F(LRLZ,LRLX)} \\
{\mathbb E(Z,X)} &&& {\mathbb E(RLZ,RLX)}
\arrow["{\varepsilon _{LZ}^\ast \circ (\varepsilon _{LX})_\ast ^{-1}}", from=1-1, to=1-4]
\arrow["{l_{Z,X}}", from=2-1, to=1-1]
\arrow["{(\eta_{X})_\ast (\eta _Z^\ast)^{-1}}", from=2-1, to=2-4]
\arrow["{l_{RLZ,RLX}}", from=2-4, to=1-4]
\end{tikzcd}
{% endtikz %}

By triangle identities of adjoint pair, $ε _{L?} = (Lη _?)^{-1}$. This completes the proof.

{% endex %}

### Two-step Localisation

We localise an extriangulated category by fractional expressions. We firstly review the admissible multiplicative system for triangulated cases. Throughtout, we use $⇒$ to denote the morphisms in $S$.

{% ex %}
(Admissible multiplicative system). Let $S$ be a class of morphisms for a triangulated category. Say $S$ is a (right) admissible multiplicative system with respect to the triangulated category, provided

* (FR1). $S$ cantains all isomorphisms and closed under compositions.
* (FR2). Any $A → E ⇐ B$ admits a cone of the form $A ← F ⇒ B$.
* (FR3). If $0 ∈ f ∘ S$, then $0 ∈ S ∘ f$.

If $S$ satisfies FR1-3, then it is a right multiplicative system.

* (FR4). $S[1] ⊆ S$.
* (FR5). Let $(X_i, Y_i, Z_i, f_i, g_i, h_i)$ be triangles for $i ∈ \{1,2\}$. Suppose that there is $α , β ∈ S$ such that $β ∘ f_1 = f_2 ∘ α$, then there is a $(γ : Z_1 →  Z_2) ∈ S$ making the entire diagram commutative. Roughly speaking, the 2-out-of-three principle for triangle morphisms in $S$.
* (Sat). Say $S$ is saturated, if $\{fg, gh\} ⊆ S$ implies $g ∈ S$.

Some remarks on multiplicative system of triangles.

* FR2 is a corollary of FR5 and FR1.
* An admissible multiplicative system yields the Verdier quotient $\mathcal{T} → S^{-1} \mathcal{T}$. Here $\mathcal{T}$ is not triangulated in general.
* An triangulated subcategory $\mathcal{C} ↣ \mathcal{T}$ yields a strong multiplicative system.
* Say $h ∈ S$, if there is an triangle of the form $(X,Y,Z,f,g,h)$ for $X ∈ \mathcal{C}$.
* Say the multiplicative system $S$ is strong, if any two morphisms in $\{f,g, gf\}$ belongs to $S$, then so is the third.
* There is a $1:1$ correspondence between saturated multiplicative system and trianglated subcategories.

{% endex %}

{% ex %}
(**Two-step localisation**). To begin with, we assume the class of morphisms $S$ to be

- closed under biproduct $⊕$, so that the localisation is additive;
- a strong multiplicative system, that is, if any two morphisms in $\{f,g, gf\}$ belong to $S$, then so does the third. This serves as a reasonable closure for $S$, since isomorphisms in $\mathcal{C} [S^{-1}]$ satisfy the 2-out-of-3 principle with respect to composition.

The basic setting and principal procedure is summarised as

$$\begin{equation}
Q_S: \  \mathcal{C} \xrightarrow[ \begin{bmatrix} - \end{bmatrix} ]{\text{fewer morphisms}} \mathcal{C} / \mathcal{N} \xrightarrow[Q]{\text{more morphisms}} \mathcal{C} [S^{-1}].
\end{equation}$$

Here $\mathcal{N} = \{W ∣ (0 → W) ∈ S\}$ so that we may define the additive quotient functor $[-]$. The localisation $Q_S$ factors through such $[-]$, yielding $Q$.

We remark upon the following points.

- Observe that $(0 → W) ∈ S$ if and only if $(W → 0) ∈ S$ by virtue of the strong multiplicative system.
- $\mathcal{N}$ is the subclass of zero objects in $\mathcal{C} [S^{-1}]$ which are directly detected.
- Once the zigzag morphisms are written in fractions, $\mathcal{N}$ is precisely the class of zero objects in $\mathcal{C} [S^{-1}]$.
- By uniqueness of localisation, $(\mathcal{C} / \mathcal{N}) ([S]^{-1})$ and $\mathcal{C} [S^{-1}]$ are isomorphic categories.
- Note that $\mathcal{C} / \mathcal{N} ≠ \mathcal{C} [S^{-1}]$ in general. For instance, if $Q(f)$ is zero, then it is impossible to determine whether $f$ factors through some $N ∈ \mathcal{N}$.

{% endex %}

{% def %}
([-]). We denote
$$\begin{equation}
ϕ (S,x,y,z,\ldots) := \{ϕ (s, x,y,z,\ldots) ∣ \text{when it is defined}\}
\end{equation}$$
for general operations. For instance,

- $[S] = \{[s] ∣ s ∈ S\}$, 
- $S ∘ f = \{s ∘ f ∣ s ∈ S, \ \text{and} \ s ∘ f \ \text{is defined}\}$,
- $S^∗ δ = \{s^∗ δ ∣ s ∈ S \ \text{and} \ s^∗ δ \ \text{is defined}\}$.

{% enddef %}

The advantages of the two-step localisation include the following.

- When dealing with fractions, $[a] ∘ [s]^{-1} = [a'] ∘ [s]^{-1}$ if and only if $[a] = [a']$.
- The axioms on $S$ ([L]'s) are stronger than those of $[S]$ ([CL]'s). Explicitly, to show that the localisation $Q_S : \mathcal{C} → \mathcal{C}[S^{-1}]$ is extriangulated along with the fractional condition $(\mathcal{C} , S) ⊧$ [L], it suffices to prove $Q : \mathcal{C} / \mathcal{N} → (\mathcal{C} / \mathcal{N}) [[S]^{-1}]$ with $(\mathcal{C} / \mathcal{N} , [S]) ⊧$ [CL]. Here [L] ⇒ [CL].

{% def %}
(The [L] and [CL] axioms). The axioms [L]'s are defined for $(\mathcal{C}, S)$, while [CL]'s are defiend for $(\mathcal{C} / \mathcal{N} , [S])$.

- (L1). $S$ contains all isomorphisms, closed under biproduct and it is strongly multiplicative. This is exactly out basic setting.
- (L2). $S$ is a multiplicative system in usual sense, i.e., it satisfies both FR and LFR.
- (L3). For morphism of extension $(f,h) : δ → δ '$ with $f,h ∈ S$, there exists some $g ∈ S$ making the diagram of realisations commutative.
- (L4). Let $\{i_∙ \}$, $\{d_∙ \}$, and $\{s_∙ \}$ denote the class of inflations, deflation, and $S$. Every $dsd'$ is equals to some $s'd''s''$, every $isi'$ equals to some $s'i''s''$.

The [CL] axioms are similar to [L]'s.

- (CL1). $[S]$ contains all isomorphisms, closed under biproduct and it is strongly multiplicative.
- (CL2). $[S]$ is a multiplicative system in usual sense, i.e., it satisfies both FR and LFR.
- (CL3). For morphism of extension $(f,h) : δ → δ '$ with $[f],[h] ∈ [S]$, there exists some $[g] ∈ [S]$ making the diagram of realisations commutative in $\mathcal{C} / \mathcal{N}$.
- (CL4). Let $\{i_∙ \}$, $\{d_∙ \}$, and $\{s_∙ \}$ denote the class of inflations, deflations, and $S$. Every $[dsd']$ is equals to some $[s'd''s'']$, every $[isi']$ equals to some $[s'i''s'']$.

{% enddef %}

We show some connections between [L] and [CL]. The following reflection lemma is of great importance.

{% lem %}
(Reflection lemma). $[-]$ reflect the $S$-morphisms, i.e., for any $f ∈ S$ such that $[g] = [f]$, then $g ∈ S$.

{% pf %}
Denote $f,g : X → Y$. Suppose that $(g-f) = i ∘ j$ factors through some $W ∈ \mathcal{N}$. Now $g = (1,i) ∘ \binom f j$. We see that $\binom f j$ is the composition morphisms in $S$:

$$\begin{equation}
X ⊕ 0 \xrightarrow {\binom {1 \ 0}{0 \ 0}} X ⊕ N \xrightarrow{\binom {1 \ 0}{j \ 1}} X⊕ N \xrightarrow {\binom{f \ 0}{0 \ 1}} Y ⊕ N.
\end{equation}$$

One can show that $(1,i)$ is the composition of morphisms in $S$:

$$\begin{equation}
Y ⊕ N \xrightarrow{\binom {1 \ i}{0 \ 1}}Y ⊕ N \xrightarrow{\binom {1 \ 0}{0 \ 0}} Y ⊕ 0.
\end{equation}$$

{% endpf %}

{% endlem %}

We may assume $S$ to include $\{ f ∣ [f] ∈ 𝐈𝐬𝐨 (\mathcal{C} / \mathcal{N})\}$, serving as a reasonable closure. By reflection lemma, it is equivalent to assume that $[S]$ contains all isomorphisms of $\mathcal{C} / \mathcal{N}$.

{% lem %}
Under the reasonable closure $[S] ⊆ 𝐈𝐬𝐨 (\mathcal{C} / \mathcal{N})$, [M]'s implies [CM]'s.

{% pf %}
(CM1). By reflection lemma, we see that $[S]$ is strongly multiplicative whenever $S$ is. The rest part of CM1 is trivial.
\\
\\
(CM2). We only show R2 and R3. R2 is trivial. For R3, suppose that $[sf] = 0$, then $fs = ji$ factors through $W ∈ \mathcal{N}$. Since there is a way to complete $λ ∈ S$ such that $λsf = 0$, we obtain $ft = 0$ for some $t ∈ S$. Hence $[ft] =0$ for $[t] ∈ [S]$.
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMiwwLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbMywwLCJXIl0sWzQsMCwiMCJdLFs0LDEsIlxcYnVsbGV0Il0sWzAsMSwiXFwsIl0sWzYsMSwiXFwsIl0sWzIsMSwicyIsMCx7ImxldmVsIjoyfV0sWzMsMCwiaSIsMl0sWzIsMywiaiIsMl0sWzEsMCwiZiJdLFs0LDMsIiIsMCx7ImxldmVsIjoyfV0sWzUsMiwiXFxsYW1iZGEiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzUsNCwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNSwiXFxib3hlZHtcXHRleHR7TTJ9fSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
\&\& \bullet \& W \& 0 \\
{\,} \&\& \bullet \& \bullet \& \bullet \&\& {\,}
\arrow["i"', from=1-4, to=1-3]
\arrow["{\boxed{\text{M2}}}"{description}, draw=none, from=1-4, to=2-5]
\arrow[Rightarrow, from=1-5, to=1-4]
\arrow["f", from=2-3, to=1-3]
\arrow["j"', from=2-4, to=1-4]
\arrow["s", Rightarrow, from=2-4, to=2-3]
\arrow[dashed, from=2-5, to=1-5]
\arrow["\lambda", Rightarrow, dashed, from=2-5, to=2-4]
\end{tikzcd}
{% endtikz %}
The converse is obtain by reversing all arrows.
\\
\\
(CM3 and CM4). Trivial.

{% endpf %}

{% endlem %}

### The Bifunctor $𝔼 → [𝔼] → 𝕃$

By means of two-step localisation, we proceed to define, in succession:

- The functor $[𝔼] : (\mathcal{C} / \mathcal{N}) ^{\mathrm{op}} × (\mathcal{C} / \mathcal{N}) → 𝐀𝐛$, which is, in some sense, a quotient of $𝔼$;
- The functor $𝕃 : \mathcal{C}[S^{-1}]^{\mathrm{op}} × \mathcal{C}[S^{-1}] → 𝐁𝐢𝐠𝐀𝐛$, where $𝐁𝐢𝐠𝐀𝐛$ denotes the category of classes endowed with an Abelian group structure.

There is, at present, no necessity to address set-theoretic considerations.
\\
\\
The axioms of $S$ includes CL1-5, as well as reasonable closure that $S$ contains the preimages of isomorphisms in $\mathcal{C} / \mathcal{N}$ along the functor $[-]$. There is no need to think of L1-5, as they are weaker axioms.

{% ex %}
(The two sided nullity). We learn by CL2 that, $[0] ∈ [S] ∘ [φ]$ iff $[0] ∈ [φ ] ∘ [S]$. We may with the analogous theorems for extension elements.
{% endex %}

{% lem %}
When there is $s ∈ S$ such that $s^∗ η = 0$, then there is $t ∈ S$ such that $t_∗ η =0$.

{% pf %}
By CL3, there exists $[q] ∈ [S]$ making the diagram commutative in $\mathcal{C} / \mathcal{N}$.

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwxLCJYIl0sWzIsMSwiWSJdLFs0LDEsIloiXSxbNSwxLCJcXCwiXSxbNCwwLCJDIl0sWzAsMCwiWCJdLFsyLDAsIlggXFxvcGx1cyBDIl0sWzUsMCwiXFwsIl0sWzIsMywiXFxldGEiXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFs0LDIsInMiLDAseyJsZXZlbCI6Mn1dLFs0LDcsIjAiXSxbNSwwLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDYsIlxcYmlub20gMTAiXSxbNiw0LCIoMCwxKSJdLFs2LDEsInEiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
X \&\& {X \oplus C} \&\& C \& {\,} \\
X \&\& Y \&\& Z \& {\,}
\arrow["{\binom 10}", from=1-1, to=1-3]
\arrow[equals, from=1-1, to=2-1]
\arrow["{(0,1)}", from=1-3, to=1-5]
\arrow["q", Rightarrow, dashed, from=1-3, to=2-3]
\arrow["0", from=1-5, to=1-6]
\arrow["s", Rightarrow, from=1-5, to=2-5]
\arrow["f", from=2-1, to=2-3]
\arrow["g", from=2-3, to=2-5]
\arrow["\eta", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

We denote $q = (f,t)$ without the loss of generality. By CL2, there is $u$ and $α$ making the red sqaure commutative in $\mathcal{C}/\mathcal{N}$.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzAsMSwiWCJdLFsyLDEsIlkiXSxbNCwxLCJaIl0sWzUsMSwiXFwsIl0sWzQsMCwiQyJdLFswLDAsIlgiXSxbMiwwLCJYIFxcb3BsdXMgQyJdLFs1LDAsIlxcLCJdLFswLDIsIlxccXVhZCBYJyJdLFsyLDIsIllcXHF1YWQiXSxbMiwzLCJcXGV0YSJdLFswLDEsImYiXSxbMSwyLCJnIl0sWzQsMiwicyIsMCx7ImxldmVsIjoyfV0sWzQsNywiMCJdLFs1LDAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsNiwiXFxiaW5vbSAxMCJdLFs2LDQsIigwLDEpIl0sWzYsMSwiKGYsdCkiLDAseyJsZXZlbCI6Mn1dLFs2LDUsIigxLDApIiwwLHsib2Zmc2V0IjotMywic2hvcnRlbiI6eyJzb3VyY2UiOjEwLCJ0YXJnZXQiOjEwfSwiY29sb3VyIjpbMzQ5LDEwMCw2MF19LFszNDksMTAwLDYwLDFdXSxbNSw4LCJ1IiwwLHsibGFiZWxfcG9zaXRpb24iOjcwLCJvZmZzZXQiOi0zLCJsZXZlbCI6MiwiY29sb3VyIjpbMzQ5LDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzM0OSwxMDAsNjAsMV1dLFs5LDgsIlxcYWxwaGEiLDAseyJvZmZzZXQiOjMsInNob3J0ZW4iOnsic291cmNlIjoxMCwidGFyZ2V0IjoxMH0sImNvbG91ciI6WzM0OSwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFszNDksMTAwLDYwLDFdXSxbNiw5LCIoZix0KSIsMix7ImxhYmVsX3Bvc2l0aW9uIjo4MCwib2Zmc2V0IjozLCJsZXZlbCI6MiwiY29sb3VyIjpbMzQ5LDEwMCw2MF19LFszNDksMTAwLDYwLDFdXV0=
\begin{tikzcd}
X && {X \oplus C} && C & {\,} \\
X && Y && Z & {\,} \\
{\quad X'} && {Y\quad}
\arrow["{\binom 10}", from=1-1, to=1-3]
\arrow[equals, from=1-1, to=2-1]
\arrow["u"{pos=0.7}, shift left=3, color={rgb,255:red,255;green,51;blue,88}, Rightarrow, dashed, from=1-1, to=3-1]
\arrow["{(1,0)}", shift left=3, color={rgb,255:red,255;green,51;blue,88}, shorten <=5pt, shorten >=5pt, from=1-3, to=1-1]
\arrow["{(0,1)}", from=1-3, to=1-5]
\arrow["{(f,t)}", Rightarrow, from=1-3, to=2-3]
\arrow["{(f,t)}"'{pos=0.8}, shift right=3, color={rgb,255:red,255;green,51;blue,88}, Rightarrow, from=1-3, to=3-3]
\arrow["0", from=1-5, to=1-6]
\arrow["s", Rightarrow, from=1-5, to=2-5]
\arrow["f", from=2-1, to=2-3]
\arrow["g", from=2-3, to=2-5]
\arrow["\eta", from=2-5, to=2-6]
\arrow["\alpha", shift right=3, color={rgb,255:red,255;green,51;blue,88}, shorten <=5pt, shorten >=5pt, dashed, from=3-3, to=3-1]
\end{tikzcd}
{% endtikz %}

Since $[α ∘ f] = [u]$, we have that $(α ∘ f) ∈ S$ by reflection lemma. Now $(α ∘ f)_∗ η  =0$.

{% endpf %}

{% endlem %}

Now we define $[𝔼]$ in $\mathcal{C} / \mathcal{N}$ as a quotient functor of $𝔼$.

{% def %}
($[𝔼] (-,-)$). For each pair of objects $(Z,X)$, we define

$$\begin{equation}
0 → 𝕂 (Z, X) → 𝔼 (Z,X) → [𝔼] (Z,X) → 0.
\end{equation}$$

Here $η ∈ 𝕂$ iff $0 ∈ S^∗ η$, or equivalently $0 ∈ S_∗ η$ by previous lemma.

{% enddef %}

{% thm %}
$[𝔼] : (\mathcal{C}/\mathcal{N})^{\mathrm{op}} × \mathcal{C}/\mathcal{N} → 𝐀𝐛$ is an additive bifunctor.

{% pf %}
We firstly show that $[𝔼] : \mathcal{C}^{\mathrm{op}} × \mathcal{C} → 𝐀𝐛$ is an additive bifunctor.

1. We show that $[𝔼]$ is functorial in the first entry, i.e., $g^∗ : [δ] ↦ [g^∗ δ]$ is well-defined. It suffices to show that $g^∗$ preserves extension elements in $𝕂$, which is clear.
2. $[𝔼]$ is functorial in the second entry by dual analysis.
3. $𝕂$ preserves biproducts. For instance, we take arbitrary $δ _i ∈ 𝕂 (Z, X_i)$ such that $(s_i)^∗ δ _i = 0$ for some $s_i ∈ S$. We apply CL2 to $⋅ ⇒ Z ⇐ ⋅$, and obtain $s ∈ S$ such that $[s^∗ δ _i] = [0]$. Hence, $δ _1 ⊕ δ _2 ∈ 𝕂$.

Therefore, the functorial quotient $[𝔼]$ is well-defined.

For any $N ∈ \mathcal{N}$, we see that both $(0 → N)$ and $(N → 0)$ belongs to $𝔼$. Hence $𝕂 (\mathcal{N},-)$ and $𝕂 (-,\mathcal{N})$ vanished. We see that $[𝔼]$ is well-defined on the stable category. 

{% endpf %}

{% endthm %}

By construction, $𝕂$ is somehow regarded as a closed subset: for any $s ∈ S$, $s_∗ η ∈ 𝕂$ iff $η ∈ 𝕂$. Informally, the preimage of $(s_∗)^{-1} 𝕂$ is contained in $𝕂$.

{% lem %}
We denote this lemma by the formula $(S^∗)^{-1} (S_∗ )^{-1} 𝕂 = 𝕂$. That is, when there are some $s,t ∈ S$ such that $s^∗ t_∗ η ∈ 𝕂$, then $η ∈ 𝕂$.
{% endlem %}

Now we shall construct $𝕃$ from $[𝔼]$ by bifractions.

{% def %}
(**Bifraction**). A bifraction is a triple $([s],[η], [t])$ for $η ∈ 𝔼 (Z,X)$, $(s : Z → Z') ∈ S$, and $(t : X' → X) ∈ S$. We denote it by a zigzag diagram $Z' \overset{[s]}⇐ Z \overset {[η]}→ X \overset {[t]}⇐ X'$. 
\\
\\

Say $([s],[η], [t])$ and $([s'],[η '],[t'])$ are equivalent, provided a diagram in $\mathcal{C} / \mathcal{N}$:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzIsMCwiXFxidWxsZXQiXSxbNCwwLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzQsMiwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFs1LDEsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbNCwxLCJcXGJ1bGxldCJdLFswLDEsIlxcLCJdLFs2LDEsIlxcLCJdLFswLDEsIltcXGV0YV0iXSxbMiwzLCJbXFxldGEnXSJdLFswLDQsIltzXSIsMix7ImxldmVsIjoyfV0sWzIsNCwiW3MnXSIsMCx7ImxldmVsIjoyfV0sWzUsMSwiW3RdIiwyLHsibGV2ZWwiOjJ9XSxbNSwzLCJbdCddIiwwLHsibGV2ZWwiOjJ9XSxbNiw0LCJbc18wXSIsMix7ImxldmVsIjoyfV0sWzUsNywiW3RfMF0iLDIseyJsZXZlbCI6Mn1dLFs2LDAsIltwXSIsMix7ImxldmVsIjoyfV0sWzYsMiwiW3AnXSIsMCx7ImxldmVsIjoyfV0sWzEsNywiW3FdIiwyLHsibGV2ZWwiOjJ9XSxbMyw3LCJbcSddIiwwLHsibGV2ZWwiOjJ9XSxbNiw3LCJbXFxldGFfMF0iXV0=
\begin{tikzcd}
&& \bullet && \bullet \\
{\,} & \bullet & \bullet && \bullet & \bullet & {\,} \\
&& \bullet && \bullet
\arrow["{[\eta]}", from=1-3, to=1-5]
\arrow["{[s]}"', Rightarrow, from=1-3, to=2-2]
\arrow["{[q]}"', Rightarrow, from=1-5, to=2-5]
\arrow["{[p]}"', Rightarrow, from=2-3, to=1-3]
\arrow["{[s_0]}"', Rightarrow, from=2-3, to=2-2]
\arrow["{[\eta_0]}", from=2-3, to=2-5]
\arrow["{[p']}", Rightarrow, from=2-3, to=3-3]
\arrow["{[t]}"', Rightarrow, from=2-6, to=1-5]
\arrow["{[t_0]}"', Rightarrow, from=2-6, to=2-5]
\arrow["{[t']}", Rightarrow, from=2-6, to=3-5]
\arrow["{[s']}", Rightarrow, from=3-3, to=2-2]
\arrow["{[\eta']}", from=3-3, to=3-5]
\arrow["{[q']}", Rightarrow, from=3-5, to=2-5]
\end{tikzcd}
{% endtikz %}

All triangles commmute in the diagram, while $[p^∗ q_∗ η] =[η _0]$ and $[(p')^∗ (q')_∗ η'] = [η _0]$.
\\
\\
We shall soon prove that such an equivalence class is an element in $𝕃 (Z', X')$.

{% enddef %}

Informally, $s_0$ is the left common denominator of $(s,s')$ and $t_0$ is the right common denominator of $(t,t')$, such that

$$\begin{equation}
([s],[η],[t]) ∼ ([sp],[p^∗ q_∗ η],[qt]) = ([s'p'],[(p')^∗ (q')_∗ η'],[q't']) ∼ ([s'],[η'],[t']).
\end{equation}$$

The following lemma shows how $\mathcal{C} → \mathcal{C}/\mathcal{N}$ simplifies the fractional argument.

{% lem %}
$([s],[η],[t]) ∼ ([s],[η'],[t])$ if and only if $[η] = [η']$. The only if part is due to $(S^∗)^{-1} (S_∗)^{-1} 𝕂 = 𝕂$.

- In short, there are no zero divisors in $[𝔼]$.

{% endlem %}

{% thm %}
$∼$ is an equivalence relation of bifractions.

{% pf %}
We only shows the transitivity. Suppose we have fractions $𝔉_i := ([s_i],[η_i],[t_i])$ for $i = 1,2,3$, such that $𝔉 _1 ∼ 𝔉 _2$ via $𝔉 _{1,2}$ and $𝔉 _2 ∼ 𝔉 _3$ via $𝔉 _{2,3}$. We present it as a commutative diagram in $\mathcal{C}/\mathcal{N}$:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzUsMSwiXFxidWxsZXQiXSxbMCwxLCJcXGJ1bGxldCJdLFs2LDEsIlxcYnVsbGV0Il0sWzAsMiwiXFxidWxsZXQiXSxbMSwyLCJcXGJ1bGxldCJdLFszLDIsIlxcYnVsbGV0Il0sWzUsMiwiXFxidWxsZXQiXSxbNiwyLCJcXGJ1bGxldCJdLFszLDMsIlxcYnVsbGV0Il0sWzAsMSwiW3NfezEsMn1dIiwyLHsiY3VydmUiOi0xLCJsZXZlbCI6MiwiY29sb3VyIjpbMzQ5LDEwMCw2MF19LFszNDksMTAwLDYwLDFdXSxbMiwxLCJbc18yXSIsMCx7ImxldmVsIjoyfV0sWzMsMSwiW3NfezIsM31dIiwwLHsiY3VydmUiOjEsImxldmVsIjoyLCJjb2xvdXIiOlszNDksMTAwLDYwXX0sWzM0OSwxMDAsNjAsMV1dLFs0LDEsIltzXzFdIiwwLHsiY3VydmUiOi0yLCJsZXZlbCI6Mn1dLFs1LDEsIltzXzNdIiwyLHsiY3VydmUiOjIsImxldmVsIjoyfV0sWzQsNiwiW1xcZXRhXzFdIl0sWzIsOCwiW1xcZXRhXzJdIl0sWzMsOSwiW1xcZXRhX3syLDN9XSIsMCx7ImNvbG91ciI6WzM0OSwxMDAsNjBdfSxbMzQ5LDEwMCw2MCwxXV0sWzUsMTAsIltcXGV0YV8zXSJdLFsxMSw2LCJbdF8xXSIsMCx7ImN1cnZlIjotMiwibGV2ZWwiOjJ9XSxbMTEsNywiW3RfezEsMn1dIiwyLHsiY3VydmUiOi0xLCJsZXZlbCI6MiwiY29sb3VyIjpbMzQ5LDEwMCw2MF19LFszNDksMTAwLDYwLDFdXSxbMTEsOCwiW3RfMl0iLDAseyJsZXZlbCI6Mn1dLFsxMSw5LCJbdF97MiwzfV0iLDAseyJjdXJ2ZSI6MSwibGV2ZWwiOjIsImNvbG91ciI6WzM0OSwxMDAsNjBdfSxbMzQ5LDEwMCw2MCwxXV0sWzExLDEwLCJbdF8zXSIsMix7ImN1cnZlIjoyLCJsZXZlbCI6Mn1dLFswLDQsIiIsMCx7ImxldmVsIjoyfV0sWzAsMiwiIiwwLHsibGV2ZWwiOjJ9XSxbMywyLCIiLDAseyJsZXZlbCI6Mn1dLFszLDUsIiIsMCx7ImxldmVsIjoyfV0sWzYsNywiIiwwLHsibGV2ZWwiOjJ9XSxbOCw3LCIiLDAseyJsZXZlbCI6Mn1dLFs4LDksIiIsMCx7ImxldmVsIjoyfV0sWzEwLDksIiIsMCx7ImxldmVsIjoyfV0sWzAsNywiW1xcZXRhX3sxLDJ9XSIsMCx7ImNvbG91ciI6WzM0OSwxMDAsNjBdfSxbMzQ5LDEwMCw2MCwxXV1d
\begin{tikzcd}
&&& \bullet \\
\bullet & \bullet && \bullet && \bullet & \bullet \\
\bullet & \bullet && \bullet && \bullet & \bullet \\
&&& \bullet
\arrow["{[s_1]}", curve={height=-12pt}, Rightarrow, from=2-1, to=1-4]
\arrow["{[\eta_1]}", from=2-1, to=3-1]
\arrow["{[s_{1,2}]}"', color={rgb,255:red,255;green,51;blue,88}, curve={height=-6pt}, Rightarrow, from=2-2, to=1-4]
\arrow[Rightarrow, from=2-2, to=2-1]
\arrow[Rightarrow, from=2-2, to=2-4]
\arrow["{[\eta_{1,2}]}", color={rgb,255:red,255;green,51;blue,88}, from=2-2, to=3-2]
\arrow["{[s_2]}", Rightarrow, from=2-4, to=1-4]
\arrow["{[\eta_2]}", from=2-4, to=3-4]
\arrow["{[s_{2,3}]}", color={rgb,255:red,255;green,51;blue,88}, curve={height=6pt}, Rightarrow, from=2-6, to=1-4]
\arrow[Rightarrow, from=2-6, to=2-4]
\arrow[Rightarrow, from=2-6, to=2-7]
\arrow["{[\eta_{2,3}]}", color={rgb,255:red,255;green,51;blue,88}, from=2-6, to=3-6]
\arrow["{[s_3]}"', curve={height=12pt}, Rightarrow, from=2-7, to=1-4]
\arrow["{[\eta_3]}", from=2-7, to=3-7]
\arrow[Rightarrow, from=3-1, to=3-2]
\arrow[Rightarrow, from=3-4, to=3-2]
\arrow[Rightarrow, from=3-4, to=3-6]
\arrow[Rightarrow, from=3-7, to=3-6]
\arrow["{[t_1]}", curve={height=-12pt}, Rightarrow, from=4-4, to=3-1]
\arrow["{[t_{1,2}]}"', color={rgb,255:red,255;green,51;blue,88}, curve={height=-6pt}, Rightarrow, from=4-4, to=3-2]
\arrow["{[t_2]}", Rightarrow, from=4-4, to=3-4]
\arrow["{[t_{2,3}]}", color={rgb,255:red,255;green,51;blue,88}, curve={height=6pt}, Rightarrow, from=4-4, to=3-6]
\arrow["{[t_3]}"', curve={height=12pt}, Rightarrow, from=4-4, to=3-7]
\end{tikzcd}
{% endtikz %}

Our goal is to create $𝔉 _{1,2} ↗ 𝔉_2 ↖ 𝔉_{2,3}$ from $𝔉 _{1,2} ↘ 𝔉_2 ↙ 𝔉_{2,3}$ in the diagram. We firstly consider the $[s]$-part.

{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbMywzLCJCIl0sWzEsMywiXFxidWxsZXQiXSxbMiwyLCJDIl0sWzAsMSwiRCJdLFs0LDIsIlxcY29sb3J7Z3JheX1cXGJ1bGxldCJdLFszLDEsIlxcY29sb3J7Z3JheX1cXGJ1bGxldCJdLFsxLDAsIlxcY29sb3J7Z3JheX1cXGJ1bGxldCJdLFs0LDAsIlxcY29sb3J7Z3JheX1cXGJ1bGxldCJdLFsyLDEsIlAiXSxbMCwxLCJzX3sxLDJ9IiwyLHsiY3VydmUiOi0xLCJsZXZlbCI6MiwiY29sb3VyIjpbMzQ5LDEwMCw2MF19LFszNDksMTAwLDYwLDFdXSxbMiwxLCJzXzIiLDAseyJsZXZlbCI6Mn1dLFszLDEsInNfezIsM30iLDAseyJjdXJ2ZSI6MSwibGV2ZWwiOjIsImNvbG91ciI6WzM0OSwxMDAsNjBdfSxbMzQ5LDEwMCw2MCwxXV0sWzIsNSwiXFxldGFfMiIsMCx7ImNvbG91ciI6WzAsMCw2OV19LFswLDAsNjksMV1dLFszLDYsIlxcZXRhX3syLDN9IiwwLHsiY29sb3VyIjpbMCw2MCw4MF19LFswLDYwLDgwLDFdXSxbNyw0LCJ0X3sxLDJ9IiwyLHsiY3VydmUiOi0xLCJsZXZlbCI6MiwiY29sb3VyIjpbMCw2MCw4MF19LFswLDYwLDgwLDFdXSxbNyw1LCJ0XzIiLDAseyJsZXZlbCI6MiwiY29sb3VyIjpbMCwwLDY5XX0sWzAsMCw2OSwxXV0sWzcsNiwidF97MiwzfSIsMCx7ImN1cnZlIjoxLCJsZXZlbCI6MiwiY29sb3VyIjpbMCw2MCw4MF19LFswLDYwLDgwLDFdXSxbMCwyLCIiLDAseyJsZXZlbCI6Mn1dLFszLDIsIiIsMCx7ImxldmVsIjoyfV0sWzUsNCwiIiwwLHsibGV2ZWwiOjIsImNvbG91ciI6WzAsMCw2OV19XSxbNSw2LCIiLDAseyJsZXZlbCI6MiwiY29sb3VyIjpbMCwwLDY5XX1dLFswLDQsIlxcZXRhX3sxLDJ9IiwwLHsiY29sb3VyIjpbMCw2MCw4MF19LFswLDYwLDgwLDFdXSxbOCwwLCIiLDIseyJsZXZlbCI6MiwiY29sb3VyIjpbMjM2LDEwMCw2MF19XSxbOCwzLCIiLDAseyJsZXZlbCI6MiwiY29sb3VyIjpbMjM2LDEwMCw2MF19XSxbOCw1LCIiLDAseyJjb2xvdXIiOlsxMjAsNjAsNjBdfV0sWzgsNCwiIiwwLHsiY29sb3VyIjpbMTIwLDYwLDYwXX1dLFs4LDYsIiIsMCx7ImNvbG91ciI6WzEyMCw2MCw2MF19XV0=
\begin{tikzcd}
& {\color{gray}\bullet} &&& {\color{gray}\bullet} \\
D && P & {\color{gray}\bullet} \\
&& C && {\color{gray}\bullet} \\
& \bullet && B
\arrow["{t_{2,3}}", color={rgb,255:red,235;green,173;blue,173}, curve={height=6pt}, Rightarrow, from=1-5, to=1-2]
\arrow["{t_2}", color={rgb,255:red,176;green,176;blue,176}, Rightarrow, from=1-5, to=2-4]
\arrow["{t_{1,2}}"', color={rgb,255:red,235;green,173;blue,173}, curve={height=-6pt}, Rightarrow, from=1-5, to=3-5]
\arrow["{\eta_{2,3}}", color={rgb,255:red,235;green,173;blue,173}, from=2-1, to=1-2]
\arrow[Rightarrow, from=2-1, to=3-3]
\arrow["{s_{2,3}}", color={rgb,255:red,255;green,51;blue,88}, curve={height=6pt}, Rightarrow, from=2-1, to=4-2]
\arrow[draw={rgb,255:red,92;green,214;blue,92}, from=2-3, to=1-2]
\arrow[draw={rgb,255:red,51;green,65;blue,255}, Rightarrow, from=2-3, to=2-1]
\arrow[draw={rgb,255:red,92;green,214;blue,92}, from=2-3, to=2-4]
\arrow[draw={rgb,255:red,92;green,214;blue,92}, from=2-3, to=3-5]
\arrow[draw={rgb,255:red,51;green,65;blue,255}, Rightarrow, from=2-3, to=4-4]
\arrow[draw={rgb,255:red,176;green,176;blue,176}, Rightarrow, from=2-4, to=1-2]
\arrow[draw={rgb,255:red,176;green,176;blue,176}, Rightarrow, from=2-4, to=3-5]
\arrow["{\eta_2}", color={rgb,255:red,176;green,176;blue,176}, from=3-3, to=2-4]
\arrow["{s_2}", Rightarrow, from=3-3, to=4-2]
\arrow[Rightarrow, from=4-4, to=3-3]
\arrow["{\eta_{1,2}}", color={rgb,255:red,235;green,173;blue,173}, from=4-4, to=3-5]
\arrow["{s_{1,2}}"', color={rgb,255:red,255;green,51;blue,88}, curve={height=-6pt}, Rightarrow, from=4-4, to=4-2]
\end{tikzcd}
{% endtikz %}

The square $(P,B,C,D)$ along with the blue arrows are given by CL2 (all arrows are in $S$ by CL1). Now we pullback $η_{1,2}$, $η_2$, and $η_{2,3}$ along $B ⇒ P$, $C ⇒ P$, and $D ⇒ P$, respectively. This yields three extensions in green arrows.

By construction, we obtained $𝔉 _i ∼ 𝔉 _i'$:

$$\begin{equation}
([s_i],[η_i],[t_i]) ∼ ([s_0],[η_i'],[t_i']) \quad (i = 1,2,3).
\end{equation}$$

By dual anlysis on $t_i$'s, we obtain $𝔉 _i ∼ 𝔉 _i''$:

$$\begin{equation}
([s_i],[η_i],[t_i]) ∼ ([s_0],[η_i''],[t_0]) \quad (i = 1,2,3).
\end{equation}$$

Here the equivalent relation is given by the composition

{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzEsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXQiXSxbMSwxLCJQIl0sWzMsMSwiXFxidWxsZXQiXSxbMSwyLCJcXGJ1bGxldCJdLFszLDIsIlxcYnVsbGV0Il0sWzUsMCwiXFxtYXRoZnJhayBGXzEiXSxbNSwxLCJcXG1hdGhmcmFrIEZfMSciXSxbNSwyLCJcXG1hdGhmcmFrIEZfMScnIl0sWzAsMSwiW1xcZXRhXzFdIl0sWzAsMiwiW3NfMV0iLDIseyJsZXZlbCI6Mn1dLFszLDEsIlt0XzFdIiwyLHsibGV2ZWwiOjJ9XSxbNCwyLCJbc18wXSIsMix7ImxldmVsIjoyfV0sWzMsNSwiW3RfMV0iLDIseyJsZXZlbCI6Mn1dLFs0LDUsIltcXGV0YV8xJ10iXSxbNCwwLCIiLDAseyJsZXZlbCI6Mn1dLFs2LDIsIltzXzBdIiwwLHsibGV2ZWwiOjJ9XSxbNSw3LCIiLDIseyJsZXZlbCI6Mn1dLFszLDcsIlt0XzBdIiwwLHsibGV2ZWwiOjJ9XSxbNiw3LCJbXFxldGFfMScnXSJdLFs2LDQsIiIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlsyMzgsMTAwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDUsIiIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlsyMzgsMTAwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs4LDksIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs5LDEwLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}
& \bullet && \bullet && {\mathfrak F_1} \\
\bullet & P && \bullet & \bullet & {\mathfrak F_1'} \\
& \bullet && \bullet && {\mathfrak F_1''}
\arrow["{[\eta_1]}", from=1-2, to=1-4]
\arrow["{[s_1]}"', Rightarrow, from=1-2, to=2-1]
\arrow[draw={rgb,255:red,51;green,58;blue,255}, equals, from=1-4, to=2-4]
\arrow[dashed, from=1-6, to=2-6]
\arrow[Rightarrow, from=2-2, to=1-2]
\arrow["{[s_0]}"', Rightarrow, from=2-2, to=2-1]
\arrow["{[\eta_1']}", from=2-2, to=2-4]
\arrow[Rightarrow, from=2-4, to=3-4]
\arrow["{[t_1]}"', Rightarrow, from=2-5, to=1-4]
\arrow["{[t_1]}"', Rightarrow, from=2-5, to=2-4]
\arrow["{[t_0]}", Rightarrow, from=2-5, to=3-4]
\arrow[dashed, from=2-6, to=3-6]
\arrow["{[s_0]}", Rightarrow, from=3-2, to=2-1]
\arrow[draw={rgb,255:red,51;green,58;blue,255}, equals, from=3-2, to=2-2]
\arrow["{[\eta_1'']}", from=3-2, to=3-4]
\end{tikzcd}
{% endtikz %}

Now $[η _1 ''] = [η_2 '']$ since $𝔉_1 ∼ 𝔉 _2$; and similarly $[η _2 ''] = [η _3'']$. Hence, $𝔉_1 ∼ 𝔉_3$ via $([s_0],[η'' _1], [t_0])$.

{% endpf %}

{% endthm %}

{% def %}
We take $[s,η,t]$ as a the equivalence class of the fractions, represented by $([s],[η ],[t])$. Denote

$$\begin{equation}
𝕃 (Z,X) := \{[s,η ,t] ∣ ([s],[η ],[t]) \ \text{is a fraction}\}.
\end{equation}$$

{% enddef %}

By general theory of localisation, the morphisms in $\mathcal{C}[S^{-1}] = S^{-1}\mathcal{C}$ is of the form of left fractions, or right fractions alternatively. Moreover. such fractions is additive by CL1. It remains to show that $𝕃(-,-)$ in functorial in $S^{-1}\mathcal{C}$. For instance,

{% tikz %}
% https://q.uiver.app/#q=WzAsNyxbMywxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzQsMiwiXFxidWxsZXQiXSxbNSwxLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzAsMiwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldCJdLFswLDEsIltzXSIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFswLDIsIltcXGV0YV0iLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFszLDIsIlt0XSIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFs0LDEsIltmXSIsMCx7ImNvbG91ciI6WzIzNiwxMDAsNjBdfSxbMjM2LDEwMCw2MCwxXV0sWzYsNCwiW3MnXSIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlsyNzUsMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fSxbMjc1LDEwMCw2MCwxXV0sWzYsMCwiW2YnXSIsMCx7ImNvbG91ciI6WzI3NSwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFsyNzUsMTAwLDYwLDFdXSxbNiwyLCJbKGYnKV5cXGFzdCBcXGV0YV0iLDAseyJvZmZzZXQiOi00LCJjdXJ2ZSI6LTIsImNvbG91ciI6WzI3NSwxMDAsNjBdfSxbMjc1LDEwMCw2MCwxXV0sWzQsNSwiW3BdIiwwLHsibGV2ZWwiOjIsImNvbG91ciI6WzIzNiwxMDAsNjBdfSxbMjM2LDEwMCw2MCwxXV1d
\begin{tikzcd}
&& \bullet \\
& \bullet && \bullet && \bullet \\
\bullet && \bullet && \bullet
\arrow["{[s']}", color={rgb,255:red,170;green,51;blue,255}, Rightarrow, dashed, from=1-3, to=2-2]
\arrow["{[f']}", color={rgb,255:red,170;green,51;blue,255}, dashed, from=1-3, to=2-4]
\arrow["{[(f')^\ast \eta]}", shift left=4, color={rgb,255:red,170;green,51;blue,255}, curve={height=-12pt}, from=1-3, to=3-5]
\arrow["{[p]}", color={rgb,255:red,51;green,65;blue,255}, Rightarrow, from=2-2, to=3-1]
\arrow["{[f]}", color={rgb,255:red,51;green,65;blue,255}, from=2-2, to=3-3]
\arrow["{[s]}", color={rgb,255:red,255;green,51;blue,54}, Rightarrow, from=2-4, to=3-3]
\arrow["{[\eta]}", color={rgb,255:red,255;green,51;blue,54}, from=2-4, to=3-5]
\arrow["{[t]}", color={rgb,255:red,255;green,51;blue,54}, Rightarrow, from=2-6, to=3-5]
\end{tikzcd}
{% endtikz %}

it is supposed to gives the composition of fractions:

$$\begin{equation}
[s, η, t] ∘ Q([f]) ∘ Q([p])^{-1} = [ps', (f')^∗ η, t].
\end{equation}$$

{% prop %}
The composition of bifractions and fractions are well-defined. It suffices to show that

$$\begin{equation}
[s, η, t] ∘ Q([f]) ∘ Q([p])^{-1} = [ps', (f')^∗ η, t]
\end{equation}$$

is well-defined. We shall show in steps that the result is independent of

1. the choice of the 2×2 square given by CL2,
2. the choice of the fraction $Q([f]) ∘ Q([p])^{-1}$, 
3. the choice of the bifraction $[s, η, t]$.

{% pf %}
(Proof of 1.). If there is another pair $(s'', f'')$ with $s'' ∈ S$, such that $[sf''] = [fs'']$. We shall show that 

$$\begin{equation}
[ps', (f')^∗ η, t] = [ps'', (f'')^∗ η, t].
\end{equation}$$

By CL2, there is a way to find $[a]$ and $[b]$ such that $\square$ commutes. We denote $[d] = [f''b - f'a]$, and find that $[s] ∘ [d] = 0$. By CL2, there is $w ∈ S$ such that $[d] ∘ [w] = 0$. Now

$$\begin{equation}
[ps', (f')^∗ η, t] = [ps'a, (f'a)^∗ η, t];\quad  [ps'', (f'')^∗ η, t] =  [ps''b, (f''b)^∗ η, t],
\end{equation}$$

where $w^∗ (f'a - f''b)^∗ η ∈ 𝕂$. Hence, $(f'a - f''b)^∗ η ∈ 𝕂$ and thus

$$\begin{equation}
[ps'a, (f'a)^∗ η, t] = [ps'', (f'')^∗ η, t].
\end{equation}$$

(Proof of 2.). Suppose that $Q[f] ∘ Q[p]^{-1} = Q[g] ∘ Q[q]^{-1}$. By induction, it suffice to prove the case when

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMSwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbNSwxLCJcXGJ1bGxldCJdLFswLDEsIlxcLCJdLFs2LDEsIlxcLCJdLFsxLDAsIltwXSIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlsyMzMsMTAwLDYwXX0sWzIzMywxMDAsNjAsMV1dLFsyLDAsIltxXSIsMix7ImxldmVsIjoyLCJjb2xvdXIiOlszNTgsMTAwLDYwXX0sWzM1OCwxMDAsNjAsMV1dLFsxLDMsIltmXSIsMix7ImNvbG91ciI6WzIzMywxMDAsNjBdfSxbMjMzLDEwMCw2MCwxXV0sWzIsMywiW2ddIiwwLHsiY29sb3VyIjpbMzU4LDEwMCw2MF19LFszNTgsMTAwLDYwLDFdXSxbMiwxLCJbcl0iLDAseyJsZXZlbCI6Mn1dXQ==
\begin{tikzcd}
&&& \bullet \\
{\,} & \bullet && \bullet && \bullet & {\,}
\arrow["{[q]}"', color={rgb,255:red,255;green,51;blue,58}, Rightarrow, from=1-4, to=2-2]
\arrow["{[r]}", Rightarrow, from=1-4, to=2-4]
\arrow["{[g]}", color={rgb,255:red,255;green,51;blue,58}, from=1-4, to=2-6]
\arrow["{[p]}", color={rgb,255:red,51;green,75;blue,255}, Rightarrow, from=2-4, to=2-2]
\arrow["{[f]}"', color={rgb,255:red,51;green,75;blue,255}, from=2-4, to=2-6]
\end{tikzcd}
{% endtikz %}

With out the loss of generality, we take

$$\begin{equation}
[s,η ,t] ∘ Q[g] ∘ Q[q]^{-1} = [qs', (g')^∗ η ,t],
\end{equation}$$

where the 2×2 square is denoted by $\square$:

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwxLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbNCwxLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbMSwwLCJbcV0iLDIseyJsZXZlbCI6MiwiY29sb3VyIjpbMzUzLDEwMCw2MF19LFszNTMsMTAwLDYwLDFdXSxbMSwyLCJbZ10iLDAseyJjb2xvdXIiOlszNTMsMTAwLDYwXX0sWzM1MywxMDAsNjAsMV1dLFszLDIsIltzXSIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlsxMTgsMTAwLDE4XX0sWzExOCwxMDAsMTgsMV1dLFs0LDEsIltzJ10iLDIseyJsZXZlbCI6Mn1dLFs0LDMsIltnJ10iXSxbNSwwLCJbcF0iLDAseyJsZXZlbCI6MiwiY29sb3VyIjpbMjM0LDEwMCw2MF19LFsyMzQsMTAwLDYwLDFdXSxbNSwyLCJbZl0iLDIseyJjb2xvdXIiOlsyMzQsMTAwLDYwXX0sWzIzNCwxMDAsNjAsMV1dLFsxLDUsIltyXSIsMix7ImxldmVsIjoyfV0sWzQsMiwiXFxzcXVhcmUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
\& \bullet \&\& \bullet \\
\bullet \& \bullet \& \bullet \&\& \bullet
\arrow["{[q]}"', color={rgb,255:red,255;green,51;blue,75}, Rightarrow, from=1-2, to=2-1]
\arrow["{[r]}"', Rightarrow, from=1-2, to=2-2]
\arrow["{[g]}", color={rgb,255:red,255;green,51;blue,75}, from=1-2, to=2-3]
\arrow["{[s']}"', Rightarrow, from=1-4, to=1-2]
\arrow["\square"{description}, draw=none, from=1-4, to=2-3]
\arrow["{[g']}", from=1-4, to=2-5]
\arrow["{[p]}", color={rgb,255:red,51;green,71;blue,255}, Rightarrow, from=2-2, to=2-1]
\arrow["{[f]}"', color={rgb,255:red,51;green,71;blue,255}, from=2-2, to=2-3]
\arrow["{[s]}", color={rgb,255:red,3;green,92;blue,0}, Rightarrow, from=2-5, to=2-3]
\end{tikzcd}
{% endtikz %}

This gives the 2×2 square $Q[s]^{-1} ∘ Q[f] = Q[g'] ∘ Q[rs']$. Hence,

$$\begin{equation}
[s,η ,t] ∘ Q[f] ∘ Q[p]^{-1} = [prs', (g'r)^∗ η ,t] = [qs', (g')^∗ η ,t].
\end{equation}$$

(Proof of 3.). Suppose that $[s,η ,t] = [s',η ',t']$, By induction, it suffice to prove the case when

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMywwLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbNCwxLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbMSwwLCJbXFxldGFdIiwwLHsiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbMSwyLCJbc10iLDIseyJsZXZlbCI6MiwiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbMywwLCJbdF0iLDIseyJsZXZlbCI6MiwiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbNCwyLCJbcyddIiwwLHsibGV2ZWwiOjIsImNvbG91ciI6WzIzNSwxMDAsNjBdfSxbMjM1LDEwMCw2MCwxXV0sWzMsNSwiW3QnXSIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlsyMzUsMTAwLDYwXX0sWzIzNSwxMDAsNjAsMV1dLFs0LDUsIltcXGV0YSddIiwyLHsiY29sb3VyIjpbMjM1LDEwMCw2MF19LFsyMzUsMTAwLDYwLDFdXSxbMSw0LCJbcl0iLDAseyJsZXZlbCI6Mn1dLFs1LDAsIltzXSIsMCx7ImxldmVsIjoyfV1d
\begin{tikzcd}[ampersand replacement=\&]
\& \bullet \&\& \bullet \\
\bullet \& \bullet \&\& \bullet \& \bullet
\arrow["{[\eta]}", color={rgb,255:red,255;green,51;blue,54}, from=1-2, to=1-4]
\arrow["{[s]}"', color={rgb,255:red,255;green,51;blue,54}, Rightarrow, from=1-2, to=2-1]
\arrow["{[r]}", Rightarrow, from=1-2, to=2-2]
\arrow["{[s']}", color={rgb,255:red,51;green,68;blue,255}, Rightarrow, from=2-2, to=2-1]
\arrow["{[\eta']}"', color={rgb,255:red,51;green,68;blue,255}, from=2-2, to=2-4]
\arrow["{[s]}", Rightarrow, from=2-4, to=1-4]
\arrow["{[t]}"', color={rgb,255:red,255;green,51;blue,54}, Rightarrow, from=2-5, to=1-4]
\arrow["{[t']}", color={rgb,255:red,51;green,68;blue,255}, Rightarrow, from=2-5, to=2-4]
\end{tikzcd}
{% endtikz %}

Here the middle rectangles stands for $[r^∗ s_∗ η] = [η ']$. Again we take the 2×2 square from $(f,s)$, for instance, $Q[f] ∘ Q[w]^{-1} = Q[s]^{-1} ∘ Q[g]$. This yields

$$\begin{equation}
[s,η ,t] ∘ Q[f] ∘ Q[p]^{-1} = [pw, g^∗ η , t].
\end{equation}$$

We complete the 2×2 square from $(f,s')$ by $(w,rg)$, as shown in the diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzUsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzYsMSwiXFxidWxsZXQiXSxbNCwxLCJcXGJ1bGxldCJdLFs1LDEsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbMCwxLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzQsMCwiXFxidWxsZXQiXSxbMSwyLCJbc10iLDIseyJsZXZlbCI6MiwiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbMywwLCJbdF0iLDIseyJsZXZlbCI6MiwiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbNCwyLCJbcyddIiwwLHsibGV2ZWwiOjIsImNvbG91ciI6WzIzNSwxMDAsNjBdfSxbMjM1LDEwMCw2MCwxXV0sWzMsNSwiW3QnXSIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlsyMzUsMTAwLDYwXX0sWzIzNSwxMDAsNjAsMV1dLFs0LDUsIltcXGV0YSddIiwyLHsiY29sb3VyIjpbMjM1LDEwMCw2MF19LFsyMzUsMTAwLDYwLDFdXSxbMSw0LCJbcl0iLDIseyJsZXZlbCI6Mn1dLFs1LDAsIltzXSIsMCx7ImxldmVsIjoyfV0sWzYsMiwiW2ZdIiwyXSxbNiw3LCJbcF0iLDAseyJsZXZlbCI6Mn1dLFs4LDYsIlt3XSIsMix7ImxldmVsIjoyfV0sWzgsMSwiW2ddIl0sWzksNCwiW3JdIiwwLHsibGV2ZWwiOjJ9XSxbOSwwLCJbXFxldGFdIiwwLHsiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXV0=
\begin{tikzcd}[ampersand replacement=\&]
\&\& \bullet \& \bullet \& \bullet \& \bullet \\
\bullet \& \bullet \& \bullet \&\& \bullet \& \bullet \& \bullet
\arrow["{[g]}", from=1-3, to=1-4]
\arrow["{[w]}"', Rightarrow, from=1-3, to=2-2]
\arrow["{[s]}"', color={rgb,255:red,255;green,51;blue,54}, Rightarrow, from=1-4, to=2-3]
\arrow["{[r]}"', Rightarrow, from=1-4, to=2-5]
\arrow["{[\eta]}", color={rgb,255:red,255;green,51;blue,54}, from=1-5, to=1-6]
\arrow["{[r]}", Rightarrow, from=1-5, to=2-5]
\arrow["{[p]}", Rightarrow, from=2-2, to=2-1]
\arrow["{[f]}"', from=2-2, to=2-3]
\arrow["{[s']}", color={rgb,255:red,51;green,68;blue,255}, Rightarrow, from=2-5, to=2-3]
\arrow["{[\eta']}"', color={rgb,255:red,51;green,68;blue,255}, from=2-5, to=2-6]
\arrow["{[s]}", Rightarrow, from=2-6, to=1-6]
\arrow["{[t]}"', color={rgb,255:red,255;green,51;blue,54}, Rightarrow, from=2-7, to=1-6]
\arrow["{[t']}", color={rgb,255:red,51;green,68;blue,255}, Rightarrow, from=2-7, to=2-6]
\end{tikzcd}
{% endtikz %}

This yields that

$$\begin{equation}
[s', η' ,t'] ∘ Q[f] ∘ Q[p]^{-1} = [pw, (rg)^∗ η' , t'].
\end{equation}$$

We observe that $[pw, g^∗ η , t] = [pw, r^∗ g^∗ η , t']$. This coincides $[s,η ,t] ∘ Q[f] ∘ Q[p]^{-1}$.

{% endpf %}

{% endprop %}

We explain the bifunctoriality of $𝕃$, i.e,

$$\begin{equation}
(Z\overset p ⇐ ∙ \overset f → Z') ^∗ (X\overset g → ∙ \overset q ⇐ X')_∗ : 𝕃 (Z, X) → 𝕃 (Z', X'),
\end{equation}$$

with the diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzAsMiwiWiciXSxbMiwyLCJaIl0sWzEsMSwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCAiXSxbNCwxLCJcXGJ1bGxldCAiXSxbNSwyLCJYIl0sWzYsMSwiXFxidWxsZXQiXSxbNywyLCJYJyJdLFsyLDAsIlxcYnVsbGV0Il0sWzUsMCwiXFxidWxsZXQiXSxbMiwwLCJbcF0iLDIseyJsZXZlbCI6MiwiY29sb3VyIjpbMzU4LDEwMCw2MF19LFszNTgsMTAwLDYwLDFdXSxbMiwxLCJbZl0iLDIseyJjb2xvdXIiOlszNTgsMTAwLDYwXX0sWzM1OCwxMDAsNjAsMV1dLFszLDEsIltzXSIsMix7ImxldmVsIjoyLCJjb2xvdXIiOlsxMTcsMTAwLDMxXX0sWzExNywxMDAsMzEsMV1dLFszLDQsIltcXGV0YV0iLDIseyJjb2xvdXIiOlsxMTcsMTAwLDMxXX0sWzExNywxMDAsMzEsMV1dLFs1LDQsIlt0XSIsMix7ImxldmVsIjoyLCJjb2xvdXIiOlsxMTcsMTAwLDMxXX0sWzExNywxMDAsMzEsMV1dLFs3LDYsIltxXSIsMix7ImxldmVsIjoyLCJjb2xvdXIiOlsyMzcsMTAwLDYwXX0sWzIzNywxMDAsNjAsMV1dLFs1LDYsIltnXSIsMix7ImNvbG91ciI6WzIzNywxMDAsNjBdfSxbMjM3LDEwMCw2MCwxXV0sWzgsMiwiW3MnXSIsMix7ImxldmVsIjoyLCJjb2xvdXIiOls0MywxMDAsMzRdfSxbNDMsMTAwLDM0LDFdXSxbOCwzLCJbZiddIiwyLHsiY29sb3VyIjpbNDMsMTAwLDM0XX0sWzQzLDEwMCwzNCwxXV0sWzQsOSwiW2cnXSIsMix7ImNvbG91ciI6WzE2OSwxMDAsMzFdfSxbMTY5LDEwMCwzMSwxXV0sWzYsOSwiW3QnXSIsMix7ImxldmVsIjoyLCJjb2xvdXIiOlsxNjksMTAwLDMxXX0sWzE2OSwxMDAsMzEsMV1dLFs4LDksIlsoZicpXlxcYXN0IChnJylfXFxhc3QgXFxldGFdIl0sWzgsMCwiW3BzJ10iLDIseyJvZmZzZXQiOjMsImN1cnZlIjozLCJsZXZlbCI6Mn1dLFs3LDksIlt0J3FdIiwyLHsib2Zmc2V0Ijo0LCJjdXJ2ZSI6MywibGV2ZWwiOjJ9XV0=
\begin{tikzcd}[ampersand replacement=\&]
\&\& \bullet \&\&\& \bullet \\
\& \bullet \&\& {\bullet } \& {\bullet } \&\& \bullet \\
{Z'} \&\& Z \&\&\& X \&\& {X'}
\arrow["{[(f')^\ast (g')_\ast \eta]}", from=1-3, to=1-6]
\arrow["{[s']}"', color={rgb,255:red,173;green,124;blue,0}, Rightarrow, from=1-3, to=2-2]
\arrow["{[f']}"', color={rgb,255:red,173;green,124;blue,0}, from=1-3, to=2-4]
\arrow["{[ps']}"', shift right=3, curve={height=18pt}, Rightarrow, from=1-3, to=3-1]
\arrow["{[p]}"', color={rgb,255:red,255;green,51;blue,58}, Rightarrow, from=2-2, to=3-1]
\arrow["{[f]}"', color={rgb,255:red,255;green,51;blue,58}, from=2-2, to=3-3]
\arrow["{[\eta]}"', color={rgb,255:red,8;green,158;blue,0}, from=2-4, to=2-5]
\arrow["{[s]}"', color={rgb,255:red,8;green,158;blue,0}, Rightarrow, from=2-4, to=3-3]
\arrow["{[g']}"', color={rgb,255:red,0;green,158;blue,129}, from=2-5, to=1-6]
\arrow["{[t']}"', color={rgb,255:red,0;green,158;blue,129}, Rightarrow, from=2-7, to=1-6]
\arrow["{[t]}"', color={rgb,255:red,8;green,158;blue,0}, Rightarrow, from=3-6, to=2-5]
\arrow["{[g]}"', color={rgb,255:red,51;green,61;blue,255}, from=3-6, to=2-7]
\arrow["{[t'q]}"', shift right=4, curve={height=18pt}, Rightarrow, from=3-8, to=1-6]
\arrow["{[q]}"', color={rgb,255:red,51;green,61;blue,255}, Rightarrow, from=3-8, to=2-7]
\end{tikzcd}
{% endtikz %}

{% prop %}
$𝕃 (Z , X)$ admits an additive structure (it might be a big Abelian group), and $[𝔼] (Z,X)$ is a subgroup via
$$\begin{equation}
[𝔼] (Z,X) → 𝕃 (Z , X),\quad [δ] ↦ [1_X, δ, 1_Z].
\end{equation}$$

{% pf %}
The additive structure is given by Baer sum, that is,   
{% endpf %}

{% endprop %}  