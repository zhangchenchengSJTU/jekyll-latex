## Simplicial Methods

This note represents merely the tip of the iceberg concerning simplicial methods in model categories, which constitute a powerful tool in homotopy theory as well as the fundamental language of $∞$-categories. The aim of this note is to provide a foundation for further study of model structures. For a more comprehensive treatment of this subject, the reader is referred to [kerodon](https://kerodon.net/).

### Simplicial Objects

Before proceeding, it is illuminating to consider a perspective from [F. Lawvere](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=18947). Broadly speaking, to assert that $A$ is a $k$-algebra is to say that $A$ is a ring object in $𝐌𝐨𝐝_k$. Analogously, one may say that a simplicial set is a simplicial object in $𝐒𝐞𝐭𝐬$ and thenceforth focus on the *simplicial structure*.

#### Basics

{% def %}
(Basics of the category $Δ$). The category $Δ$ comprises **finite ordinals** (denoted by $[n]$ for $n ∈ ℤ _{≥ 0}$) and **order-preserving maps**. For $0 ≤ i ≤ n$, there exist two distinguished morphisms:

- $d^i : [n-1] → [n]$, an injection omitting $i$, known as the **$i$-th face map**;
- $s^i : [n+1] → [n]$, a surjection duplicating $i$, known as the **$i$-th degeneracy map**.

{% enddef %}

It is straightforward to summarise all automatic exchange relations of the face and degeneracy maps, and conclude that any morphism in $Δ$ may be uniquely written as a composition of
$$\begin{equation}
\underset{n _k > \cdots > n_1}{\underbrace{d^{n_k} ∘ \cdots ∘ d^{n_1}}} ∘ \underset{m _1 < \cdots < m_l}{\underbrace{s^{m_1} ∘ \cdots ∘ s^{m_l}}}.
\end{equation}$$

{% def %}
(Simplicial objects). A **simplicial object** in the **concrete category** $\mathcal{C}$ is a functor $X : Δ^{op} → \mathcal{C}$. The $n$-th object of $X$ is denoted by $X([n])$ or $X_n$, serving as a collection of all $n$-dimensional objects. The pullbacks $s^i$ and $d^i$ are denoted by $s_i$ and $d_i$, respectively.
\\
\\
For $\mathcal{C} = 𝐒𝐞𝐭𝐬$, the **simplicial sets** are precisely the simplicial objects. A representative functor $Δ ^n := (-, [n])$ is known as a **standard $n$-simplex**, since an element in $X_n$ is characterised by a morphism in $(Δ ^n , X)$.
{% enddef %}

{% pro %}
Demonstrate that the adjoint triple between $\mathcal{C}$ and $\mathcal{C}^→$ arises from $d^0 ⊣ s^0 ⊣ d^1$, and generalise it to the entirety of $Δ$.
{% endpro %}

#### The Truncation

An **$n$-simplex** is an element $σ ∈ X_n ≃ (Δ ^n , X)$, denoted by $(σ , [n])$ or simply $σ$. The **(combinatorial) dimension** $\dim σ$ is defined as the largest $m$ such that $σ$ factors through $Δ ^m$. The simplex $(σ, [n])$ is said to be **non-degenerate** if and only if $\dim σ = n$. The **boundary** $∂ Δ ^n$ assigns to $[m]$ the set of non-surjective morphisms in $Δ ^n ([m]) = ([m], [n])$, or, equivalently, is given by the colimit $\mathrm{coeq}\left(∐ _{0 ≤ i < j ≤ n}Δ ^{n-2} ⇉ ∐ _{0 ≤ k ≤ n} Δ ^{n-1}\right)$.

{% def %}
((Co)skeleton). For a simplicial set $X$, the **$n$-skeleton** functor may be defined in any of the following equivalent manners:

- as the colimit obtained by amalgamating all $n$-simplices contained within $X$ (that is, truncating to the part with $\dim ≤ n$), i.e., $\mathrm{sk}_n (X) = \varinjlim _{(σ , [n])} Δ ^n$;
- as the left adjoint to the inclusion of the full subcategory of simplicial sets with $\dim ≤ n$ into $𝐒𝐞𝐭𝐬 ^{Δ^{\mathrm{op}}}$;
- inductively, as the pushout $\mathrm{sk}_{n}(X) = \left(∐ _{(σ , [n])} Δ ^n\right) ⨆_{∐ _{(σ , [n])}∂ Δ ^n}\left(\mathrm{sk}_{n-1}(X)\right)$, with $\mathrm{sk}_{-1}(X) = ∅$.

Dually, the **$n$-coskeleton** functor may be defined in any of the following equivalent manners:

- as the limit obtained by filling all chambers of dimension $> n$, i.e., $\mathrm{cosk}_n (X) = \varprojlim _{(σ , [n])} Δ ^n$;
- as the right adjoint to the inclusion of the full subcategory of simplicial sets with $\dim ≥ n$ into $𝐒𝐞𝐭𝐬 ^{Δ^{\mathrm{op}}}$;
- we omit the inductive definition here, see [Postnikov tower](https://kerodon.net/tag/055K).

{% enddef %}

The purpose of the $n$-coskeleton is to fill all chambers of dimension $≥ n$, so that all $π _{≥ n}$ vanish. In the language of Kan extension, the inclusion $φ : Δ _{ ≤ n} → Δ$ yields the restriction $φ ^! = φ ^∗$. One demonstrates the existence of left and right Kan extensions, $φ_!$ and $φ _!$, as $𝐒𝐞𝐭𝐬$ is bi-complete. The adjoint triple $L ⊣ M ⊣ R$ induces the adjoint endofunctor $ML ⊣ MR$. In this case, $φ ^!φ _!$ and $φ ^∗ φ _∗$ are the $n$-skeleton and $n$-coskeleton functors, respectively.

{% pro %}
Demonstrate that for $m < n$,

- $\mathrm{sk}_m (X) → Δ ^n$ uniquely lifts up along the inclusion $∂ Δ ^n ↪ Δ ^n$;
- $∂ Δ ^n → \mathrm{cosk}_m (X)$ uniquely extends along the inclusion $∂ Δ ^n ↪ Δ ^n$.

{% endpro %}

### The Topologies

#### Motivation for Simplicial Methods

What is the origin of the concept of simplicial methods? How should one understand simplicial objects in a *concrete, particularly geometric* manner? The introduction of topological ideas provides a framework to address these questions.

#### A Categorical Overview

The usual category of **topological spaces**, $𝐓𝐨𝐩$, consists of topological spaces as its objects, and continuous maps as the morphisms. $𝐓𝐨𝐩$ possesses equalisers (with **subspace topology**) and arbitrary products (with **product topology**); in particular, the limit exists. $𝐓𝐨𝐩$ also possesses coequalisers (with **quotient topology**) and arbitrary coproducts (with **coproduct topology**); in particular, the colimit exists.

{% prop %}
$𝐓𝐨𝐩$ is bicomplete. In particular, $∅$ is initial and $\{∅\}$ is terminal in $𝐓𝐨𝐩$, equipped with the unique topology.
{% endprop %}

{% pro %}
The *forgetful functor* to the underlying set admits the left adjoint assigning each set the discrete topology, and a right adjoint assigning each set the $\{\{∅\}, \text{all}\}$-topology.
{% endpro %}

By adjoints, the forgetful functor commutes with limits and colimits. Hence, the underlying set of the (co)limit of topological spaces is computed elementwise.

The category $(𝐓𝐨𝐩, ×, \{∗\})$ is **symmetric monoidal**. The $\mathcal{HOM}$-functor *occasionally* exists for special subcategories. The Hom space $(X, Y)_{𝐓𝐨𝐩}$ is equipped with the **compact-open topology** wherein the topological basis is characterised by
$$\begin{equation}
\mathcal{O}_{U, K} = \{f ∣ f(K) ⊆ U\}_{K \ \text{is compact,}\ U \ \text{is open}}.
\end{equation}$$
We denote the topological Hom object by $\mathcal{HOM}(X,Y)$. When $Y$ is locally compact Hausdorff, there is a natural isomorphism (currying):
$$\begin{equation}
(-, \mathcal{HOM}(Y, ?))_{𝐓𝐨𝐩} ≃ (- × Y, ?)_{𝐓𝐨𝐩} ,\quad φ ↦ [(t,y) ↦ (φ(t))(y)].
\end{equation}$$

We generally prefer a *convenient* category of topological spaces in which the **internal** $\mathcal{HOM}$ exists; moreover, such a category ought to include fundamental objects such as **CW complexes**, and be bicomplete (not necessarily inherited from $𝐓𝐨𝐩$). [$k$-spaces](https://mathoverflow.net/questions/94267/are-k-spaces-named-for-kelley) or compactly generated Hausdorff spaces (with proper mappings as the morphisms) are frequently employed, as the inclusion admits left adjoints (**$k$-functor** or **Stone-Čech compactification**, respectively).

#### The Pointed Construction

The definition of $π$-groups necessitates base points, which in turn requires the introduction of **pointed topological spaces** $𝐓𝐨𝐩 _+$ defined as the category of topological spaces equipped with a distinguished point.

{% def %}
($𝐓𝐨𝐩_+$). The category $𝐓𝐨𝐩_+$ is the slice category from the terminal object of $𝐓𝐨𝐩$. The objects are defined as pairs $(X, x)$ where $x ∈ X$. A morphism is of the form $f : (X, x) → (Y, y)$ where $f : X → Y$ is a continuous map, and $f(x) = y$.
{% enddef %}

We remark upon certain categorical properties of $𝐓𝐨𝐩_+$. The most distinguished property is that $𝐓𝐨𝐩$ is **pointed**, meaning that the initial and terminal objects coincide (we refer to $0 := \{∗\}$ as the **zero object**). In general, the limit of the system $\{(X_i, x_i)\}_{i ∈ I}$ is $\varprojlim_I X_i$ with the base point $(x_i)_{i ∈ I}$. The colimit of $\{(X_i, x_i)\}$ is a quotient of $\varinjlim_I X_i ∈ 𝐓𝐨𝐩$ obtained by identifying all $x_i$ as the new base point.

{% ex %}
For example, let $S_∙ ∈ 𝐓𝐨𝐩 _+$ denote the unit circle with a specified base point and underlying topological space $S ∈ 𝐓𝐨𝐩$. Observe that $S × S$ is a torus, and $S_∙ × S_∙$ is a pointed torus with the same underlying base topological space as $S × S$. However, $S ⊔ S$ is a disjoint union of two circles, whereas $S_∙ ⊔ S_∙$ is an $8$-shaped space formed by identifying the two base points in $S ⊔ S$.
{% endex %}

The base point makes the cateogory *algebraic*, as one can define fibre sequence (analogue of exact sequence). There is a functor $(-)_+ : 𝐓𝐨𝐩 → 𝐓𝐨𝐩 _+$ sending $X$ to $X ⊔ 0$ with the coproduct topology. $(-)_+$ is the left adjoint of the inclusion $𝐓𝐨𝐩_+ → 𝐓𝐨𝐩$; there is no adjoint triple here since neither $(-)_+$ preserves terminal objects nor the forgotful functor preserve initial objects. It is highlighted that $(-)_+$ preserves the symmetric monoidal structure, where

- $(X ⊔ Y)_+ ≃ X_+ ∨ Y_+$, where $P ∨ Q$ is the usual coproduct in $𝐓𝐨𝐩 _+$;
- $(X × Y)_+ ≃ X_+ ∧ Y_+$, where $P ∧ Q := \frac{P × Q}{P ∨ Q}$ is the smash product.

{% pro %}
Show that $0 → X_+ ∨ Y_+ → X_+ × Y_+ → X_+ ∧ Y_+ → 0$ is exact (by kernel-image argument) in $𝐓𝐨𝐩 _+$.
{% endpro %}

The functor $(-)_+$ is **strongly monoidal**, which carries the monoidal structure. We restrict $(-)_+$ onto the $𝐋𝐂𝐇$ and obtain $(-)_+ : 𝐋𝐂𝐇 → 𝐋𝐂𝐇_+$, which also admits a right adjunction. The category $𝐋𝐂𝐇$ is closed symmetric monoidal with internal Hom space $\mathcal{HOM}_{𝐋𝐂𝐇} (X,Y)$ endowed with the compact-open topology. Analogously, $\mathcal{HOM}_{𝐋𝐂𝐇 _+ }(X_+, Y_+)$ is also the internal Hom of $𝐋𝐂𝐇 _+$ whose base point is the zero morphism $0_{Y,X}$.

{% pro %}
Verify that $(A ∧ -) ⊣ \mathcal{HOM}_{𝐋𝐂𝐇}(A, -)$ is an adjunction. Demonstrate that $(-)_+$ preserves the closed monoidal structure (strongly monoidal) for general categories. Hint: you can show this without knowing $𝖬𝗈𝗋 (𝐋𝐂𝐇)$, provided that $𝐋𝐂𝐇$ is *in some manner* closed monoidal.
{% endpro %}

Another well-known monoidal functor from $𝐋𝐂𝐇$ to $𝐓𝐨𝐩 _+$ is the **functor of one-point-compactification**, whose essential image is precisely the pointed compact topological spaces. We do not examine this further here.

#### Equivalences

We clarify several types of equivalences of topological spaces, the (classical) homotopy equivalence, the weak homotopy equivalence.

{% def %}
(Homotopy by *classical definition*). We fix $𝐓𝐨𝐩$. Let $I$ be the unit interval. The morphisms $f,g : X → Y$ are said to be **homotopic**, provided the morphism $(f,g) : X ⊔ X → Y$ factors through $(1,1) : X ⊔ X → X × I$. The induced map $H : X × I → Y$ is called a **homotopy**. Such a homotopic relation is an equivalence relation of category which defines $𝐓𝐨𝐩 / ∼$. Say $f : X → Y$ is a **homotopy equivalence** (in the sense of $𝐓𝐨𝐩$), provided $f$ is an isomorphism in $𝐓𝐨𝐩 / ∼$.
{% enddef %}

{% pro %}
Show that the adjunction indudced by pointed functor descents to the homotopy categories $(𝐓𝐨𝐩 / ∼) ⇆ (𝐓𝐨𝐩 _+ / ∼ )$.
{% endpro %}

A **suspension functor** for pointed topological space is defined as $Σ (-):= S_∙ ∧ -$, for $S_∙$ the pointed unit circle. We define $Σ ^{n+1} := Σ ^n ∘ Σ$ recursively, and $S_∙ ^n := Σ ^n (\{∗ \}_+)$ as the **pointed unit $n$-sphere**. The right adjoint of $Σ$ is the known as the **loop space** $Ω (-)$, defined by internal Hom.

{% pro %}
Explain that, in the manner of $𝐓𝐨𝐩$, the loop space $Ω (X, x_0)$ is canonically isomorphic to the pullback of $x_0 : \{∗\} ↪ X_∙$ and the restriction $\mathcal{HOM}_{𝐓𝐨𝐩}(S, X) → X$ induced by $\{∗\} ↪ S_∙$. In other words, $Ω (X, x_0) ↪ \mathcal{HOM}_{𝐓𝐨𝐩}(S, X)$ is the pullback of $\{x_0\} ↪ X$.
{% endpro %}

{% def %}
(Weak homotopy equivalence). As a convention, we write $[X, Y]_{\mathcal{C}} := (X, Y)_{\mathcal{C} / ∼}$ for $\mathcal{C} ∈ \{𝐓𝐨𝐩 , 𝐓𝐨𝐩 _+ , \ldots\}$. The **$π _k$ functor** ($k ≥ 0$) is a group functor represented by $[S_∙^k , -]_{𝐓𝐨𝐩 _+ }$ which detects the homotopy class of the $S_∙ ^k$-group at the given base point. We say that $f : X → Y$ is a weak homotopy equivalence, provided $π_{≥ 0}(f)$ are isomorphisms where the base point runs through each $x ∈ X$.
{% enddef %}

{% pro %}
Demonstrate that $π _{≥ 2}$ groups are invariably commutative. Hint: by universal property of $\operatorname{cok}$, $π _k := [S_∙ ^k, -]$ identifies the subfunctor of $[([0,1] ^k , O), - ]$ comprising maps which remain constant over $∂ ([0,1] ^k)$. The commutativity is then established by *mutation* of $k$-cubes along their boundary.
{% endpro %}

We remark that the weak homotopy equivalence is no longer a equivalence relation, e.g., the totally disconnected topology v.s. the discrete topology. We denote the collection of weak homotopy equivalences as $𝖶𝖾𝗊$ (**weak equivalences** in sense of Quillen), and the localised category as $𝖧𝗈 \ 𝐓𝐨𝐩 := 𝐓𝐨𝐩 [𝖶𝖾𝗊^{-1}]$.

{% pro %}
We compare the following *relations*: (i) homotopy equivalence, (ii) isomorphic in $𝖧𝗈 \ 𝐓𝐨𝐩$, (iii) isomorphic in the derived category, (iv) possessing identical homotopy groups, (v) possessing identical homology groups. Demonstrate the following:

- (i) implies (ii); however, the converse does not generally hold. *Hint*: find a connected and simply connected space which is not contractible.
- (ii) implies (iii); however, the converse does not generally hold. *Hint*: $H_1$ is the abelianisation of $π _1$. One may construct $f : X → Y$ such that $π _1 (X)$ and $π_1(Y)$ are simple groups whilst $π _{≠ 1}$ are trivial, for example, **Eilenberg–MacLane spaces**.
- (ii) implies (iv); however, the converse does not generally hold. *Hint*: $S^2 × Pℝ ^3$ and $Pℝ ^2 × S^3$ possess the same $π _{0,1}$ groups, and the $π _{≥ 2}$ groups are computed via the universal cover $S^2 × S^3$. To demonstrate $¬$ (ii), show $¬$ (iii) using the Künneth formula.
- (iii) is equivalent to (v), since the objects in the derived category of a hereditary algebra (e.g. $ℤ$) are determined by their homology groups.

{% endpro %}

We focus on the category $𝖧𝗈 \ 𝐓𝐨𝐩$. A general morphism in $𝖧𝗈 \ 𝐓𝐨𝐩$ is a finite *zig-zag* diagram in the sense of Gabriel-Zisman localisation. We wish that there exists a subcategory $\mathcal{X} ⊆ 𝐓𝐨𝐩$ such that every $X ∈ 𝐓𝐨𝐩$ is associated with a *replacement* $X' ∈ \mathcal{X}$ via a *canonical* weak homotopy equivalence $X' → X$. Moreover, for any $X'$ and $Y'$ in $\mathcal{X}$, the hom-set $(X', Y')_{𝖧𝗈 \ 𝐓𝐨𝐩}$ is a quotient of $(X', Y')_{𝐓𝐨𝐩}$.

Such a *replacement* is known as a CW-approximation, the construction of which is explained by iteratively *attaching cells*. We shall explain this in the language of simplicial sets. Before that, we introduce the geometric realisation.

#### The Geometric Realisation

We introduce the adjunction between $𝐓𝐨𝐩 ⇆ 𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}$ in this section, where the localised adjunction is the well-known Quillen equivalence. To begin with, we introduce the functor of geometric realisation $|-| : 𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}} → 𝐓𝐨𝐩$ which is expected to satisfy the following requirements:

1. (regularity). $|Δ ^n|$ is $\{x ∈ ℝ_{≥ 0} ^{n+1} ∣ ∑ x_i = 1\}$;
2. (colimit-preserving). $| - |$ commutes with colimits, or even is a left adjoint;
3. ($×$-preserving). It is *difficult* to assert that $| - |$ preserves limits; but it is expected that $| - |$ preserves the monoidal structure of $𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}$, i.e., $|X × Y| ≃ |X| × |Y|$.

{% def %}
(Geometric realisation). The **geometric realisation** functor $|-| : 𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}} → 𝐓𝐨𝐩$ is defined as follows. We assign to a simplicial set $X$ the set $∐ _{n ≥ 0} X_n × |Δ ^n|$, and define the equivalence relation generated by
{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwwLCJYX24gXFx0aW1lcyB8XFxEZWx0YSBebnwiXSxbMSwwLCJYX24gXFx0aW1lcyB8XFxEZWx0YSBebXwiXSxbMiwwLCJYX20gXFx0aW1lcyB8XFxEZWx0YSBebXwiXSxbMCwxLCIoYSx4KSJdLFsyLDEsIihiLHkpIl0sWzEsMSwiXFxidWxsZXQiXSxbMCwxLCIoMSx8XFxEZWx0YV5cXHZhcnBoaSB8KSJdLFsyLDEsIihYX1xcdmFycGhpLCAxKSIsMl0sWzMsNSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFs0LDUsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XV0=
\begin{tikzcd}
{X_n \times |\Delta ^n|} & {X_n \times |\Delta ^m|} & {X_m \times |\Delta ^m|} \\
{(a,x)} & \bullet & {(b,y)}
\arrow["{(1,|\Delta^\varphi |)}", from=1-1, to=1-2]
\arrow["{(X_\varphi, 1)}"', from=1-3, to=1-2]
\arrow[maps to, from=2-1, to=2-2]
\arrow[maps to, from=2-3, to=2-2]
\end{tikzcd}
{% endtikz %}

Here $(a,x) ∼ (b,y)$ via $φ : [n] → [m]$.

{% enddef %}

The geometric realisation labels all possible $|Δ^n|$ with $X_n$, and quotients by the relation generated by the face and degeneracy maps. We omit the verification of functoriality, since we shall construct its right adjoint $\operatorname{Sing}$. To see how $\operatorname{Sing}$ is supposed to appear, we consider the following natural isomorphism by the Yoneda lemma:
$$\begin{equation}
(|Δ ^n |, T)_{𝐓𝐨𝐩 } ≃ (Δ ^n , (|Δ ^- |, T)_{𝐓𝐨𝐩 })_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}}.
\end{equation}$$

{% def %}
($\operatorname{Sing}$). The functor $\operatorname{Sing}$ is defined as
$$\begin{equation}
\operatorname{Sing} : 𝐓𝐨𝐩 → 𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}, \quad T ↦ (|Δ ^- |, T)_{𝐓𝐨𝐩}.
\end{equation}$$

Here $(|Δ ^- |, T)_{𝐓𝐨𝐩}$ is a simplicial set sending $[n]$ to $(|Δ ^n |, T)_{𝐓𝐨𝐩}$.

{% enddef %}

{% pro %}
Show that $|-| ⊣ \operatorname{Sing}$ by replacing $Δ ^n$ with the general colimit $\varinjlim_{(σ , [n])} Δ^n$. Moreover, construct $|f|$ directly by coequilisers.
{% endpro %}

We remark some properties of this adjunction.

1. $\operatorname{Sing}$ is faithful in general, but not full. For instance, $\operatorname{Sing}$ never distinct the different **disconnected** topologies over the same underlying set.
2. $| - |$ is does not preserve the monoidal structure. It is pointed out by [C. H. Dowker](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=2834) an [example](https://www.jstor.org/stable/2372262?read-now=1&seq=9#page_scan_tab_contents) that the canonical morphism $|X| × |Y| → |X × Y|$ is not a homeomorphism in general.

#### CW-approximation

The term **CW complexes** was [introduced](https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/whitehead-ch1.pdf) by [J. H. C. Whitehead](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=1423) in 1946, providing a means to approximate topological spaces in a straightforward manner when one is concerned solely with the homotopy groups. We refer to the [appendix](https://pi.math.cornell.edu/~hatcher/AT/ATapp.pdf) by [A. Hatcher](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=23358) as an elementary introduction to CW complexes. The following are more *categorical* in nature.

We shall first present a basic idea: the term *CW* denotes *Closure-finiteness* and *Weak topology*, wherein

- Closure-finiteness signifies that each cell intersects only finitely many other cells (thus it is compactly generated, and locally contractible);
- Weak topology refers to the topology related to $π_∙$-groups.

The goal of this section is to

- show the existence of CW-approximation, and the functoriality is due to counit $|\operatorname{Sing} (X)| → X$ serves as such a CW-approximation for any $X ∈ 𝐓𝐨𝐩$;
- prove the Whitehead's theorem, which states that the weak homotopy equivalence is equivalent to homotopy equivalence for CW complexes.
{% def %}
(The definition and construction of CW complexes). A **CW complex** $K$ is constructed by the following procedure. $K_0$ is a set with the discrete topology. The induction $K_{n-1} → K_n$ is obtained by attaching several $|Δ ^n|$ to $|∂ Δ ^n|$ with respect to a collection of continuous maps $\{a_n ^λ : |∂ Δ ^n| → K_{n-1}\}_{λ ∈ Λ_n}$. Categorically, one may view this as a pushout

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMSwwLCJcXGNvcHJvZCBfe1xcbGFtYmRhIFxcaW4gXFxMYW1iZGFfbn18XFxwYXJ0aWFsIFxcRGVsdGEgXm58Il0sWzMsMCwiXFxjb3Byb2QgX3tcXGxhbWJkYSBcXGluIFxcTGFtYmRhX259fFxcRGVsdGEgXm58Il0sWzEsMSwiS197bi0xfSJdLFszLDEsIktfbiJdLFswLDAsIlxcLCJdLFs0LDAsIlxcLCJdLFswLDEsIlxcY29wcm9kIF97XFxsYW1iZGEgXFxpbiBcXExhbWJkYV9ufSBpXm4iXSxbMCwyLCIoYV9uXlxcbGFtYmRhKSIsMl0sWzIsM10sWzEsM10sWzAsMywiXFx0ZXh0e1BPfSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
{\,} \& {\coprod _{\lambda \in \Lambda_n}|\partial \Delta ^n|} \&\& {\coprod _{\lambda \in \Lambda_n}|\Delta ^n|} \& {\,} \\
\& {K_{n-1}} \&\& {K_n}
\arrow["{\coprod _{\lambda \in \Lambda_n} i^n}", from=1-2, to=1-4]
\arrow["{(a_n^\lambda)}"', from=1-2, to=2-2]
\arrow["{\text{PO}}"{description}, draw=none, from=1-2, to=2-4]
\arrow[from=1-4, to=2-4]
\arrow[from=2-2, to=2-4]
\end{tikzcd}
{% endtikz %}

A CW-complex is the union $\varinjlim _{n ≥ 0} K_n$ with such sequential pushouts, and every CW complex is obtained in this manner. We denote $K_n$ as the **$n$-skeleton** of $K$, and this definition is enlightened by the idea of the $n$-skeleton of a simplicial set, which studies homotopy theory in a purely combinatorial approach.

{% enddef %}

{% pro %}
Show that every CW complex is the geometric realisation of a simplicial set; hence, the counit $|\operatorname{Sing}(K)| → K$ is a homotopy equivalence for any CW complex $K$. Hint: the left adjoint functor preserves pushouts and colimits.
{% endpro %}

{% ex %}
We present the principal steps of CW-approximation as follows. We assume that $X ∈ 𝐓𝐨𝐩$ is path-connected, since the approximation is performed for each path-component separately. We aim to find for each $n ≥ 0$ a *functorial* morphism $f_n : K_n → X$, where

1. $K_n$ is a CW complex with $(K_n)_n = K_n$, and
2. $π _k (f_n)$ is bijective for $k < n$, and is a surjection for $k = n$.

We refer to such $f_n$ as a **weak homotopy $n$-equivalence** or an **$n$-equivalence** for simplicity. The inclusion of $K_n ⊆ K$ is clearly an $n$-equivalence.
\\
\\
We take the $0$-equivalence $f_0 : \{∗\}\  ( =: K_0) → X$ and fix $x_0 := f_0(∗)$ as the base points. Then we recursively construct $f_{n+1}$ from $f_{n}$ by the following steps.

- Construct $f_{n+1}' : K_{n+1}' → X$ such that $π _{≤ n}(f)$ are isomorphisms by filling the (possibly) non-zero kernel of the surjection $π _n (f_n): π _n (K_n, K_0) → π _n (X, x_0)$.

We assign each group element $g$ in the kernel $\ker_n$ with a map $a_g : |∂ Δ ^{n+1}| → K_n$. Then there is a pushout diagram inducing $f_{n+1}' : K_{n+1}' → X$:

{% tikz %}
% https://q.uiver.app/#q=WzAsNyxbMSwwLCJcXGNvcHJvZCBfe2cgXFxpbiBcXGtlciBfbn18XFxwYXJ0aWFsIFxcRGVsdGEgXntuKzF9fCJdLFszLDAsIlxcY29wcm9kIF97ZyBcXGluIFxca2VyIF9ufXxcXERlbHRhIF57bisxfXwiXSxbMSwxLCJLX3tufSJdLFszLDEsIktfbiciXSxbMCwwLCJcXCwiXSxbNCwwLCJcXCwiXSxbNCwyLCJYIl0sWzAsMSwiXFxjb3Byb2QgX3tnIFxcaW4gXFxrZXIgX259fGkgXntuKzF9fCJdLFswLDIsIihhX2cpX3tnIFxcaW4gXFxrZXIgX259IiwyXSxbMiwzLCJcXGlvdGFfbiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzEsM10sWzAsMywiXFx0ZXh0e1BPfSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDYsImZfbiIsMix7ImN1cnZlIjoyLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6ImJvdHRvbSJ9fX1dLFsxLDYsIiIsMix7ImN1cnZlIjotMn1dLFszLDYsImZfe24rMX0nIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
{\,} \& {\coprod _{g \in \ker _n}|\partial \Delta ^{n+1}|} \&\& {\coprod _{g \in \ker _n}|\Delta ^{n+1}|} \& {\,} \\
\& {K_{n}} \&\& {K_n'} \\
\&\&\&\& X
\arrow["{\coprod _{g \in \ker _n}|i ^{n+1}|}", from=1-2, to=1-4]
\arrow["{(a_g)_{g \in \ker _n}}"', from=1-2, to=2-2]
\arrow["{\text{PO}}"{description}, draw=none, from=1-2, to=2-4]
\arrow[from=1-4, to=2-4]
\arrow[curve={height=-12pt}, from=1-4, to=3-5]
\arrow["{\iota_n}"', hook, from=2-2, to=2-4]
\arrow["{f_n}"', curve={height=12pt}, hook', from=2-2, to=3-5]
\arrow["{f_{n+1}'}"', dashed, from=2-4, to=3-5]
\end{tikzcd}
{% endtikz %}

Since $ι_n$ is the inclusion of $n$-truncation, the induced $f_{n+1}'$ is also an $n$-equivalence. We show that $π _n (f_{n+1}')$ is moreover injective (hence a bijection). To see this, any $h ∈ \ker π _n (f_{n+1}')$ has an $S_∙ ^n$-representative in $K_{n+1}'$, which is assumed to be in $K_n$ by cellular approximation. By construction, $h$ is trivial.
\\
\\
Another concern is that $π _{n +1} (f_{n+1}')$ may be non-surjective. Hence, we need to make refinements to $f_{n+1}'$ so that $f_{n+1}$ is an $(n+1)$-equivalence.

- To address this, we *coproduct* $K_{n+1}'$ with several $S_∙ ^{n+1}$ labelled by non-images of $π _{n+1} (f_{n+1}')$.

To be explicit, we denote $C_n$ as the set $π _{n+1}(X,x_0) ∖ \operatorname{im}(π _{n +1} (f_{n+1}'))$, and define $K_{n+1} := K_{n+1}' ∨ ⋁ _{C_n} S_∙ ^{n+1}$. We assign the $h$-th $S_∙ ^{n+1}$ with the corresponding non-image representative in $π _{n+1}(X, x_0)$. The induced $f_{n+1} : K_{n+1} → X$ is given by coproduct, which is both surjective for $π _{n+1}$ and bijective for $π _{ ≤ n}$. Hence, $f_{n+1}$ is an $(n+1)$-equivalence.
\\
\\
We denote the CW complex $K := \varinjlim _{n ≥ 0} K_n$ as the **CW-approximation** of $X$. The construction is functorial at each step.

{% endex %}

The following well-known theorem due to [J. H. C. Whitehead](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=1423) (also appearing in [combinatorical homotopy](https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/whitehead-ch1.pdf)) is useful. The proof concerns a series of theory in algebraic topology, such as the cellular approximation, mapping cone and mapping cylinder, and the relative homotopy groups. We state only the main theorem and a sketch of the proof.

{% thm %}
(Whitehead's theorem). Let $f : X → Y$ be a map between CW complexes. $f$ is a weak homotopy equivalence if and only if $f$ is a homotopy equivalence.

- (special case). If $f$ is either an inclusion or a quotient, then it establishes a **strong deformation retract**.
- (special case). An $n$-connected space is defined to have trivial $π _{≤ n}$ groups. Over the procedure of the CW-approximation of an $n$-connected space, one may choose $K_{≤ n} = \{∗\}$.
- (general case). The Whitehead's theorem holds for relative homotopy groups. Let $f : (X, A) → (Y,B)$ be a weak equivalence of relative CW complexes such that $f : A → B$ is a homotopy equivalence. Then $f : (X, A) → (Y, B)$ is a homotopy equivalence of pairs.

{% pf %}
Without loss of generality, we assume $X$ and $Y$ are path-connected and $f : X → Y$ is cellular (by cellular approximation). Moreover, we assume $f$ is an inclusion of subcomplexes via the homotopic equivalence $Y → \mathrm{Cyl}(f)$ to the cylinder object.
\\
\\
When $f$ is a weak homotopy equivalence, the relative homotopy groups $π_∙ (Y,X)$ vanish. By the long exact sequence $π _∙ (\mathrm{Cone}(f))$ vanishes, hence the mapping cone $\mathrm{Cone}(f)$ (as a CW complex) is contractible. The homotopy equivalence $\mathrm{Cone}(f) → \{∗\}$ constructs the strong deformation retract of $X ⊆ Y$.
{% endpf %}

{% endthm %}

{% pro %}
Show that $|\operatorname{Sing} (X)|$ is canonically homotopy equivalent to $K$, the CW-approximation of $X$. Hint: apply $|\operatorname{Sing}(-)|$ at $K → X$, and use Whitehead's theorem.
{% endpro %}

We remark that the Whitehead's theorem provides a (functorial) bi-fibrant replacement of objects, serving as an important technique in the study of homotopy category for model structures.

### Cofibrantly Generating Class

Cofibrantly generated model structure is ubiquitous in the study of model categories. In this chapter, we do not introduce the concept of model category in general, but introduce the **cofibrantly generating class** and the **weak factorisation system** instead. The [ideal](https://link.springer.com/book/10.1007/BFb0097438) traces back to [D. Quillen](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=13325) in 1967.

#### The (W)FS

We begin with the concept of **factorisation systems (FS)**, which provides a way of viewing category $\mathcal{C}$ as a *compositional product* of two classes of morphisms $\mathcal{L}$ and $\mathcal{R}$. The key requirements are the *lifting property* (*orthogonality*) and the *(functorial) factorisation property*. The writer is not certain about its origin, but it was probably [introduced](https://www.cambridge.org/core/journals/bulletin-of-the-australian-mathematical-society/article/unified-treatment-of-transfinite-constructions-for-free-algebras-free-monoids-colimits-associated-sheaves-and-so-on/FE2E25E4959E4D8B4DE721718E7F55EE) by [G. M. Kelly](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=32935) in 1980. A nice introduction can be found in the [CatLab](https://ncatlab.org/joyalscatlab/published/Weak+factorisation+systems) of [A. Joyal](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=206285).

{% def %}
(FS). Let $\mathcal{L}$ and $\mathcal{R}$ be subclasses of $𝖬𝗈𝗋 (\mathcal{C})$ which are closed under compositions, isomorphisms and retracts.

- The pair $(\mathcal{L}, \mathcal{R})$ is said to be **strongly orthogonal** (or **orthogonal**) provided that for any $l ∈ \mathcal{L}$, $r ∈ \mathcal{R}$ and any morphism $l → r$ (as a commutative square), there exists a *unique* morphism $s : t(l) → s(r)$ making the triangles commutative. We denote $\mathcal{L} ⟂ \mathcal{R}$.
- The pair $(\mathcal{L}, \mathcal{R})$ is said to be **weakly orthogonal** provided that for any $l ∈ \mathcal{L}$, $r ∈ \mathcal{R}$ and any morphism $l → r$ (as a commutative square), there exists some (*not necessarily unique*) morphism $s : t(l) → s(r)$ making the triangles commutative. We denote $\mathcal{L} ⋔ \mathcal{R}$.
- The pair $(\mathcal{L}, \mathcal{R})$ is said to be **factorial** if every morphism in $\mathcal{C}$ admits some factorisation $f = r ∘ l$ with $l ∈ \mathcal{L}$ and $r ∈ \mathcal{R}$.

A **(weak) factorisation system**, abbreviated as **(W)FS**, comprises $\mathcal{L}$ and $\mathcal{R}$ satisfying the axioms of (weak) orthogonality and factorisation.

{% enddef %}

{% pro %}
Show that for either FS or WFS, one has $\mathcal{L} = {}^⟂(\mathcal{L}^⟂)$ or $\mathcal{L} = {}^⋔ (\mathcal{L}^⋔)$. In general, an arbitrary class of morphisms generates two (W)FS's by a *Galois connection-like* construction. Hint: factorise $φ ∈ {}^⟂(\mathcal{L}^⟂)$ into $r ∘ l$, and show that $φ$ is a retract of $l$.
{% endpro %}

Unwinding the definition of (W)FS, we adopt the symbol $S^⟂$ ($S^⋔$) to denote the class of morphisms having (weak) right lifting property with respect to $S$.

{% pro %}
It is straightforward to show that

1. Both $^⟂S$ and $^⋔S$ are non-empty when $S ≠ ∅$;
2. Both $^⟂S$ and $^⋔S$ are closed under isomorphism, retractions, compositions, coproducts, and pushouts;
3. Suppose the category is cocomplete if necessary. Assume $\{A_γ, l_γ\}_{γ < α}$ is a colimit system directed by an ordinal with $l_γ ∈ {}^⟂ S$ (i.e., a transcomposition system). Then the structure map $e_γ : A_γ → \varinjlim A$ belongs to $^⟂ S$ (or $^⋔ S$) for all $γ < α$.

There are generalisations of 3.; we point out the key construction. In order to find the lifting of the commutative square $\binom{f_γ }{g} :e_γ → r$ as shown in the left diagram, we are supposed to find a collection of $f_∙$ making the right diagram commutative.
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJBX1xcZ2FtbWEgIl0sWzAsMSwiXFx2YXJpbmpsaW0gQSJdLFsyLDAsIlgiXSxbMiwxLCJZIl0sWzMsMCwiQV9cXGdhbW1hICJdLFszLDEsIkFfXFxiZXRhICJdLFs1LDEsIlkiXSxbNSwwLCJYIl0sWzAsMSwiZV9cXGdhbW1hICIsMl0sWzAsMiwiZl9cXGdhbW1hICJdLFsyLDMsInIiXSxbMSwzLCJnIiwyXSxbMSwyLCI/IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsNSwibCBfe1xcYmV0YSAsIFxcZ2FtbWEgfSIsMl0sWzUsNiwiZyBcXGNpcmMgZV9cXGJldGEiLDJdLFs3LDYsInIiXSxbNCw3LCJmX1xcZ2FtbWEgIl0sWzUsNywiZl9cXGJldGEiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
{A_\gamma } \&\& X \& {A_\gamma } \&\& X \\
{\varinjlim A} \&\& Y \& {A_\beta } \&\& Y
\arrow["{f_\gamma }", from=1-1, to=1-3]
\arrow["{e_\gamma }"', from=1-1, to=2-1]
\arrow["r", from=1-3, to=2-3]
\arrow["{f_\gamma }", from=1-4, to=1-6]
\arrow["{l _{\beta , \gamma }}"', from=1-4, to=2-4]
\arrow["r", from=1-6, to=2-6]
\arrow["{?}"{description}, dashed, from=2-1, to=1-3]
\arrow["g"', from=2-1, to=2-3]
\arrow["{f_\beta}"{description}, dashed, from=2-4, to=1-6]
\arrow["{g \circ e_\beta}"', from=2-4, to=2-6]
\end{tikzcd}
{% endtikz %}

A good system (e.g., cofinal to an ordinal) makes the choice of $f_∙$ possible.

{% endpro %}

We provide a simple example in $𝐒𝐞𝐭𝐬$.

{% ex %}
The pair $(𝐄𝐩𝐢, 𝐌𝐨𝐧𝐨)$ is FS, and the factorisation is even unique up to isomorphism. The pair $(𝐌𝐨𝐧𝐨, 𝐄𝐩𝐢)$ is WFS, where there are usually two kinds of *convenient* factorisations:

1. (Graph). The morphism $f : X → Y$ factors as $X \xrightarrow{e_1} X ⊔ Y \xrightarrow {(f,1)} Y$;
2. (Cograph). The morphism $f : X → Y$ factors as $X \xrightarrow{\binom{1}{f}} X × Y \xrightarrow {p_2} Y$.

Be aware of the empty set during the verification.

{% endex %}

{% pro %}
Show that the factorisation property of FS is functorial.
{% endpro %}

The simplicial language is a functorial way to describe some *categorical operations*. For instance, we see how it rephrase the *functorial factorisation* for (W)FS.

{% ex %}
Let $(\mathcal{L}, \mathcal{R})$ be a (W)FS admitting a functorial factorisation, e.g., there exists a functorial assignment $f ↦ (l_f, r_f)$ such that $r_f ∘ l_f = f$, $l_f ∈ \mathcal{L}$ and $r_f ∈ \mathcal{R}$. This functoriality holds for general FS. We define

- the functorial choice of factorisation gives a functor $F : \mathcal{C}^{Δ ^1} → \mathcal{C}^{Δ ^2}$ sending $f$ to $(l_f, r_f)$;
- let $d^i : Δ ^1 → Δ ^3$ denote the $i$-th face map, which yields $d_i : \mathcal{C}^{Δ ^2} → \mathcal{C}^{Δ ^1}$ by sending $X_0 \xrightarrow l X_1 \xrightarrow r X_2$ to $r$, $r ∘ l$ and $l$, for $i = 0,1,2$, respectively;
- now $R:= d_0 ∘ F$ and $L:= d_2 ∘ F$ are endofunctors of $\mathcal{C}^{Δ ^1}$ sending $f$ to $r_f$ and $l_f$ respectively.

If we moreover assume the functorial choice of lifting morphism, then there is a functorial split epimorphism $s$ making all squares commutative:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCJcXGNkb3QiXSxbMSwxLCJcXGNkb3QiXSxbMywwLCJcXGNkb3QiXSxbMywxLCJcXGNkb3QiXSxbNSwxLCJcXGNkb3QiXSxbNSwwLCJcXGNkb3QiXSxbMCwxLCJcXCwiXSxbNiwxLCJcXCwiXSxbMCwxLCJmIl0sWzAsMiwiTGYiXSxbMiwzLCJSZiJdLFsxLDMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsNCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw1LCJMUmYiXSxbNSw0LCJSUmYiXSxbNSwyLCJzX2YiLDIseyJjdXJ2ZSI6Mywic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJib3R0b20ifSwiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEwLDE0LCJcXGV0YV97UmZ9IiwyLHsic2hvcnRlbiI6eyJzb3VyY2UiOjMwLCJ0YXJnZXQiOjMwfX1dLFs4LDEwLCJcXGV0YV9mIiwyLHsic2hvcnRlbiI6eyJzb3VyY2UiOjMwLCJ0YXJnZXQiOjMwfX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
\& \cdot \&\& \cdot \&\& \cdot \\
{\,} \& \cdot \&\& \cdot \&\& \cdot \& {\,}
\arrow["Lf", from=1-2, to=1-4]
\arrow[""{name=0, anchor=center, inner sep=0}, "f", from=1-2, to=2-2]
\arrow["LRf", from=1-4, to=1-6]
\arrow[""{name=1, anchor=center, inner sep=0}, "Rf", from=1-4, to=2-4]
\arrow["{s_f}"', curve={height=18pt}, dashed, hook', from=1-6, to=1-4]
\arrow[""{name=2, anchor=center, inner sep=0}, "RRf", from=1-6, to=2-6]
\arrow[equals, from=2-2, to=2-4]
\arrow[equals, from=2-4, to=2-6]
\arrow["{\eta_f}"', between={0.3}{0.7}, Rightarrow, from=0, to=1]
\arrow["{\eta_{Rf}}"', between={0.3}{0.7}, Rightarrow, from=1, to=2]
\end{tikzcd}
{% endtikz %}

This makes $(R, η, μ)$ a monad, where $η$ is given by $(L, \operatorname{id})$ and $μ$ is given by $(s,1)$.

{% endex %}

{% pro %}
Verify carefully that $(R, η, μ)$ is a monad, provided WFS in functorial in both factorisation and lifting. Hint: For instance, one may firstly verify $R$ is well-defined for $α = (α _1, α _2) ∈ 𝖬𝗈𝗋 (\mathcal{C}^{Δ ^1})$: the functorial $η _{α_2}$ is given by the functorial lifting morphism (consider $Lf$ and $Rg$):

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMiwxLCJcXGNkb3QgIl0sWzEsMiwiXFxjZG90ICJdLFszLDEsIlxcY2RvdCAiXSxbNCwyLCJcXGNkb3QgIl0sWzUsMCwiXFxjZG90ICJdLFswLDAsIlxcY2RvdCAiXSxbMCwxLCJmIl0sWzAsMiwiXFxhbHBoYV8xIl0sWzEsMywiXFxhbHBoYSBfMiJdLFsyLDMsImciLDJdLFsyLDQsIkxnIl0sWzAsNSwiTGYiLDJdLFs1LDQsIlxcZXRhX3tcXGFscGhhIF8yfSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDEsIlJmIiwyXSxbNCwzLCJSZyJdLFs2LDEzLCJcXGV0YV9mIiwyLHsiY3VydmUiOjEsInNob3J0ZW4iOnsic291cmNlIjozMCwidGFyZ2V0IjozMH19XSxbOSwxNCwiXFxldGFfZyIsMCx7ImN1cnZlIjotMSwic2hvcnRlbiI6eyJzb3VyY2UiOjMwLCJ0YXJnZXQiOjMwfX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
{\cdot } \&\&\&\&\& {\cdot } \\
\&\& {\cdot } \& {\cdot } \\
\& {\cdot } \&\&\& {\cdot }
\arrow["{\eta_{\alpha _2}}", dashed, from=1-1, to=1-6]
\arrow[""{name=0, anchor=center, inner sep=0}, "Rf"', from=1-1, to=3-2]
\arrow[""{name=1, anchor=center, inner sep=0}, "Rg", from=1-6, to=3-5]
\arrow["Lf"', from=2-3, to=1-1]
\arrow["{\alpha_1}", from=2-3, to=2-4]
\arrow[""{name=2, anchor=center, inner sep=0}, "f", from=2-3, to=3-2]
\arrow["Lg", from=2-4, to=1-6]
\arrow[""{name=3, anchor=center, inner sep=0}, "g"', from=2-4, to=3-5]
\arrow["{\alpha _2}", from=3-2, to=3-5]
\arrow["{\eta_f}"', curve={height=6pt}, between={0.3}{0.7}, Rightarrow, from=2, to=0]
\arrow["{\eta_g}", curve={height=-6pt}, between={0.3}{0.7}, Rightarrow, from=3, to=1]
\end{tikzcd}
{% endtikz %}

{% endpro %}

The case is much easier for FS. It is clear that there is an one-to-one correspondence between FS and idempotent monads (where $μ : R^2 ⇒ R$ is a natural isomorphism, even an identity by MacLane's assumption). We show the partial converse for a creterion on functorial WFS.

{% prop %}
Any monad $(R, η, μ)$ such that $R: \mathcal{C}^{Δ ^1} → \mathcal{C}^{Δ ^1}$ and $η_f = (Lf, \mathrm{id}_{t(f)}) : f → Rf$ determines a (non-functorial) WFS.

{% pf %}
It is clear that $L$ is also an endofunctor of $\mathcal{C}^{Δ ^1}$. We define $R:= \{r ∣ r \ \text{ is a retract of } \ Rr\}$, and $L:= \{l ∣ l \ \text{ is a retract of } \ Ll\}$. The pair $(L, R)$ is a WFS, where the lifting morphism is given by $a_r ∘ s ∘ b_l$:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTgsWzMsMSwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFszLDMsIlxcYnVsbGV0Il0sWzUsMSwiXFxidWxsZXQiXSxbNSwyLCJcXGJ1bGxldCJdLFs1LDMsIlxcYnVsbGV0Il0sWzAsMCwiXFxidWxsZXQiXSxbMSwwLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMCwxLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzAsMywiXFxidWxsZXQiXSxbMSwzLCJcXGJ1bGxldCJdLFsyLDMsIlxcYnVsbGV0Il0sWzAsNCwiXFxidWxsZXQiXSxbMiw0LCJcXGJ1bGxldCJdLFsxLDQsIlxcYnVsbGV0Il0sWzEsMiwiUmwiLDJdLFswLDMsIm0iXSxbMyw0LCJMciJdLFs0LDUsIlJyIl0sWzIsNSwibiJdLFsxLDQsInMiXSxbMiwxLCJiX2wiLDIseyJvZmZzZXQiOjIsImN1cnZlIjoxLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwzLCJhX3IiLDAseyJvZmZzZXQiOi0zLCJjdXJ2ZSI6LTEsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDcsIkxyIl0sWzcsOCwiYV9yIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzgsOSwiciIsMl0sWzYsMTAsInIiLDJdLFsxMCwxMSwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTEsOSwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNywxMSwiUnIiLDJdLFsxMiwxMywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTMsMTQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEyLDE1LCJsIl0sWzE0LDE2LCJsIl0sWzEzLDE3LCJMbCJdLFsxNSwxNywiYl9sIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsMSwiTGwiLDJdLFsxNywxNiwiUmwiXV0=
\begin{tikzcd}[ampersand replacement=\&]
\bullet \& \bullet \& \bullet \\
\bullet \& \bullet \& \bullet \& \bullet \&\& \bullet \\
\&\&\& \bullet \&\& \bullet \\
\bullet \& \bullet \& \bullet \& \bullet \&\& \bullet \\
\bullet \& \bullet \& \bullet
\arrow["Lr", from=1-1, to=1-2]
\arrow["r"', from=1-1, to=2-1]
\arrow["{a_r}", dashed, from=1-2, to=1-3]
\arrow["Rr"', from=1-2, to=2-2]
\arrow["r"', from=1-3, to=2-3]
\arrow[equals, from=2-1, to=2-2]
\arrow[equals, from=2-2, to=2-3]
\arrow["m", from=2-4, to=2-6]
\arrow["Ll"', from=2-4, to=3-4]
\arrow["Lr", from=2-6, to=3-6]
\arrow["s", from=3-4, to=3-6]
\arrow["Rl"', from=3-4, to=4-4]
\arrow["{a_r}", shift left=3, curve={height=-6pt}, dashed, from=3-6, to=2-6]
\arrow["Rr", from=3-6, to=4-6]
\arrow[equals, from=4-1, to=4-2]
\arrow["l", from=4-1, to=5-1]
\arrow[equals, from=4-2, to=4-3]
\arrow["Ll", from=4-2, to=5-2]
\arrow["l", from=4-3, to=5-3]
\arrow["{b_l}"', shift right=2, curve={height=6pt}, dashed, from=4-4, to=3-4]
\arrow["n", from=4-4, to=4-6]
\arrow["{b_l}", dashed, from=5-1, to=5-2]
\arrow["Rl", from=5-2, to=5-3]
\end{tikzcd}
{% endtikz %}
{% endpf %}

{% endprop %}

#### Quillen's Small Object Argument

We enumerate the relevant set-theoritic definitions in this section, and prove Quillen's *small object argument* without hesitation. Simplicial and topological explanations are given in the proceeding sections.

The notion *small* is over-used, this does not the same as $𝔘$-small introduces a priori. When there is a class of morphisms $S$ which is considered to be relatively *small* to some ordinal $α$, it is possible to construction a WFS by a *reasonable* induction. The construction is *not canonical* since it depends on the choice of $α$.

We firstly explain the notion of *small* based on the cofinality of ordinals. We identify an ordinal (ususally a limit oridnal) $γ$ as a poset category with $𝖮𝖻(γ ) = \{β ∣ β < γ \}$. A **$γ$-sequence** in $\mathcal{C}$ is a functor $γ → \mathcal{C}$. Say $γ$ is **$γ '$-filtered** if $γ$ has stronger confinality than $γ '$, i.e., for any inclusion $ι : γ ' → γ$ of posets, the limit oridinal $\varinjlim ι$ is strictly smaller than $γ$. We remark that

- It suffices to define $γ$-filtration where $γ'$ is a cardinal;
- For a finite cardianl $κ$, the $κ$-filtered oridnals are exactly the limit oridnals.
- For any cardinal $κ$ (as a limit oridnal), the least $κ$-filtered ordinal is precisely the successor cardinal of $κ$.

{% def %}
(Small in Quillen's sense). Let $\mathcal{C}$ be category with colimits. A **$κ$-small object** $X$ is such that the functor $(X, -)_\mathcal{C}$ preserves all colimits indexed by $κ$-filtered ordinals. A **small object** is defined as a $κ$-small object for some cardinal $κ$.
\\
\\
An $κ$-small object relative to a class of morphism $S$ is such that $(X, - )_\mathcal{C}$ preserves all colimits idenxed by $κ$-filtered ordinals while taking value in $S$. Say $X$ is **small relative to $S$**, if it is **$κ$-small relative to $S$** for some cardinal $κ$.
{% enddef %}

For either $𝐒𝐞𝐭𝐬$ or $𝐌𝐨𝐝_k$, an general object $X$ is a $𝔘$-small colimit (controlled by $κ$) of compact objects (i.e., $(K, -)$ preserves filtered colimits, for instance $|K|$ is finitely presented). Now $(X, - )$ is $κ$-small, as $κ$-filtered colimits commutes with limits controlled by $κ$. In particular, any set or modules are small.

{% def %}
(Cofibrant generation). Let $S$ be a non-empty class of morphisms in a cocomplete category. The class $S_{inj} := S^⋔$ and $S_{cof} := ^⋔(S^⋔)$ denote the **$S$-injective** class and **$S$-cofibrant** class respectively. We may wish to *generate* $S_{cof}$ from $S$ using pushouts, coproducts, transfinite compositions and retractions. Hence, we denote by $S_{cell}$ the **$S$-cell** class consisting of $S$ closed under pushouts, coproducts, and transfinite compositions. Note that $S ⊆ S_{cell}⊆ S_{cof}$.
{% enddef %}

The following small object argument demonstrates the weak orthogonality and functoriality of the pair $(S_{cell}, S_{inj})$. We show later that $S_{cof}$ is the *completion* of $S_{cell}$ under retractions, thus it returns to the WFS $(^⋔ (S^⋔), S^⋔)$.

{% thm %}
(Small Object Argument). Let $\mathcal{C}$ be a cocomplete category with $S$ a *set* of morphisms. If the domains of $S$ are small relative to $C_{cell}$, then there exists a functorial factorisation of morphisms with respect to the pair $(S_{cell}, S_{inj})$.

{% pf %}
Let $f : X → Y$ be an arbitrary morphism. We demonstrate the factorisation by the following functorial construction. We set $X := X_0$, and construct $X_0 → X_1$ by pushing out all commutative squares (where such exist) from an $S_{cell}$ morphism to $f$:

{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbMSwwLCJYIl0sWzEsMSwiWSJdLFswLDAsInMoaikiXSxbMCwxLCJ0KGopIl0sWzIsMCwiXFxjb3Byb2RfaiBzKGopIl0sWzIsMSwiXFxjb3Byb2RfaiB0KGopIl0sWzMsMCwiWF8wIl0sWzQsMiwiWSJdLFszLDEsIlhfMSJdLFswLDEsImYiXSxbMiwzLCJqIiwyXSxbMiwwLCJ1X2oiXSxbMywxLCJkX2oiLDJdLFsyLDEsIlxcY2lyY2xlYXJyb3dyaWdodCIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDUsIlxcY29wcm9kX2ogaiIsMl0sWzQsNiwiKHVfaikiXSxbNiw3LCJmIl0sWzUsNywiKGRfaikiLDJdLFs2LDhdLFs1LDhdLFs0LDgsIlxcdGV4dHtQT30iLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw3LCJmXzEiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
{s(j)} \& X \& {\coprod_j s(j)} \& {X_0} \\
{t(j)} \& Y \& {\coprod_j t(j)} \& {X_1} \\
\&\&\&\& Y
\arrow["{u_j}", from=1-1, to=1-2]
\arrow["j"', from=1-1, to=2-1]
\arrow["\circlearrowright"{description}, draw=none, from=1-1, to=2-2]
\arrow["f", from=1-2, to=2-2]
\arrow["{(u_j)}", from=1-3, to=1-4]
\arrow["{\coprod_j j}"', from=1-3, to=2-3]
\arrow["{\text{PO}}"{description}, draw=none, from=1-3, to=2-4]
\arrow[from=1-4, to=2-4]
\arrow["f", from=1-4, to=3-5]
\arrow["{d_j}"', from=2-1, to=2-2]
\arrow[from=2-3, to=2-4]
\arrow["{(d_j)}"', from=2-3, to=3-5]
\arrow["{f_1}"{description}, dashed, from=2-4, to=3-5]
\end{tikzcd}
{% endtikz %}

Clearly $X_0 → X_1$ is in $S_{cell}$. We may extend the above construction to an arbitrarily long transfinite chain $S_∙$ of morphisms in $S_{cell}$; however, it suffices to stop at a $κ$-filtered ordinal $γ$ (the domains of $S_{cell}$ are $κ$-small by assumption). This yields the functorial factorisation
$$\begin{equation}
X \xrightarrow[∈ S_{cell}]{} \varinjlim {}_{< γ } X_∙ = X_γ \xrightarrow[∈ S_{inj}] {f_γ } Y.
\end{equation}$$

It remains to show that $f_γ ∈ S_{inj} = S^⋔$. We take an arbitrary commutative square from $j ∈ S$ to $f_γ$ in the left diagram. The morphism $u_j$ factors through $t_j$ by the definition of $κ$-smallness. By construction of $X_α → X_{α + 1}$, the entire commutative square in the left diagram factors through $f_{α +1}$ in the right diagram:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzIsMSwiWF9cXGdhbW1hICJdLFsyLDIsIlkiXSxbMCwxLCJzKGopIl0sWzAsMiwidChqKSJdLFsyLDAsIlhfXFxhbHBoYSAiXSxbMywwLCJzKGopIl0sWzMsMSwidChqKSJdLFs0LDAsIlhfXFxhbHBoYSAiXSxbNCwxLCJYX3tcXGFscGhhICsxfSJdLFs1LDIsIlkiXSxbNSwxLCJYX1xcZ2FtbWEgIl0sWzAsMSwiZl9cXGdhbW1hIl0sWzIsMywiaiIsMl0sWzIsMCwidV9qIl0sWzMsMSwiZF9qIiwyXSxbNCwwXSxbMiw0LCJ0X2oiLDAseyJjdXJ2ZSI6LTIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs3LDhdLFs1LDcsInRfaiJdLFs1LDYsImoiLDJdLFs2LDhdLFs3LDEwXSxbNiw5LCJkX2oiLDIseyJjdXJ2ZSI6Mn1dLFs4LDksImZfe1xcYWxwaGEgKzF9IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEwLDksImZfXFxnYW1tYSAiXV0=
\begin{tikzcd}[ampersand replacement=\&]
\&\& {X_\alpha } \& {s(j)} \& {X_\alpha } \\
{s(j)} \&\& {X_\gamma } \& {t(j)} \& {X_{\alpha +1}} \& {X_\gamma } \\
{t(j)} \&\& Y \&\&\& Y
\arrow[from=1-3, to=2-3]
\arrow["{t_j}", from=1-4, to=1-5]
\arrow["j"', from=1-4, to=2-4]
\arrow[from=1-5, to=2-5]
\arrow[from=1-5, to=2-6]
\arrow["{t_j}", curve={height=-12pt}, dashed, from=2-1, to=1-3]
\arrow["{u_j}", from=2-1, to=2-3]
\arrow["j"', from=2-1, to=3-1]
\arrow["{f_\gamma}", from=2-3, to=3-3]
\arrow[from=2-4, to=2-5]
\arrow["{d_j}"', curve={height=12pt}, from=2-4, to=3-6]
\arrow["{f_{\alpha +1}}"', dashed, from=2-5, to=3-6]
\arrow["{f_\gamma }", from=2-6, to=3-6]
\arrow["{d_j}"', from=3-1, to=3-3]
\end{tikzcd}
{% endtikz %}

Now the structure map $X_{α +1} → X_{γ }$ ensures the entire diagram commutes, which gives rise to the factorisation $t(j) → X_{γ }$.

{% endpf %}

{% endthm %}

{% pro %}
Show by factorisation property that, $S_{cof}$ is the completion of $S_{cell}$ under retractions.
{% endpro %}

#### Kan Complexes

We provide a concrete exmaple of $S_{inj}$, $S_{cell}$, and $S_{cof}$ in terms of (simplicial) *Kan fibrations*. The class of *Kan fibration* ($S_{inj}$) and *anodyne morphisms* ($S_{cof}$) serve as the class of trivial cofibrations and fibrations in *simplicial model category*. The corresponding fibrant object are *Kan complexes* which admits a closed monoidal structure. The topological version is translaed from the *adjoint lifting property*.

We introduce the basic notions of simplicial complex. Let $\mathcal{I}$ denote a collection of subsets of $[n]$ ($\mathcal{I} ⊆ \mathcal{P}([n])$ for power set notion). This defines a subfunctor $Δ ^\mathcal{I} ⊆ \mathcal{D}^n$ by

$$\begin{equation}
Δ ^\mathcal{I} ([m]) := \{f : [m] → [n] ∣ ∃ S ∈ \mathcal{I}, f([m]) ⊆ S\}.
\end{equation}$$

In particular, one has the standard simplex $Δ ^{n} = Δ ^{\mathcal{P}([n])}$, and the boundary $∂ Δ ^n = Δ ^{\mathcal{P}([n]) ∖ [n]}$. A **simplicial complex** is of the form $Δ ^{\mathcal{I}}$ for $\mathcal{I}$ closed under taking subsets. We remark the followings

- intuitively, if an edge belongs to a simplicial complex, then so are its end points;
- any simplex in a simplicial complex has non-overlapping boundaries at every dimensions, e.g., the simplicial circle $Δ ^1 / ∂ Δ ^1$ is never a simplicial complex;
- one may generalise the definition to a *good* subfunctor of $Δ ^∞$ as how we define $∞$-CW complexes; there is no need at this moment.

We may rephrase some usual construction for categories in simplicial language. We usually view $𝖮𝖻(\mathcal{C})$, $𝖬𝗈𝗋 (\mathcal{C})$, etc, as special subcategory with *operations*; and may wish to state such operation *atomatically*. This motivate the definition of **nerve**, enabling tools from topology (e.g., homotopy groups, cohomology) to analyse categorical structures. We denote $𝐂𝐚𝐭$ the category of $𝔘$-small categories (**$2$-category**), which is also $𝐂𝐚𝐭$-enriched as the hom-sets are the usual functor categories.

{% def %}
(Nerve). We view each object $[n] ∈ Δ$ (with monotone maps) as distinct subcategories, which gives the inclusion of full subcategory $ℓ : Δ → 𝐂𝐚𝐭$. Now the *categorical object in $𝐒𝐞𝐭𝐬^{Δ ^{\mathrm{op}}}$* ($∞$-cateogry more precisely) $\mathrm N(\mathcal{C}) := (ℓ (-), \mathcal{C})_{𝐂𝐚𝐭}$ is called the nerve of the category.
{% enddef %}

{% pro %}
Show the left adjoint of $\mathrm N(?)$. Hint: the functor $φ := |Δ^∙| : Δ → 𝐓𝐨𝐩$ defines $\operatorname{Sing} : 𝐓𝐨𝐩 → 𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}$ by pulling back the Yoneda embedding. Here we replace $φ$ by $ℓ : Δ → 𝐂𝐚𝐭$. Once we show the existence of such left adjoint $𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}} → 𝐂𝐚𝐭$, verify the following is our desired construction:

- $𝖮𝖻 (\mathrm h (X)) := X_0$,
- $𝖬𝗈𝗋 (\mathrm h (X)) := X_1 / ∼$ by identifying $s_0(v) := 1_v$ and $d_0 (e) ∘ d_1 (e) = d_2 (e)$.

{% endpro %}

Unlike $|-| ⊣ \operatorname{Sing}$, the functor $\mathrm N$ is fully faithful. The counit morphism tautologically assign the *folding* of *freelised* category to itself, which is a natural isomorphism. Unlike general topology, category has no $∞$-path as in topologist's sine function. This is how $𝐂𝐚𝐭$ better than $𝐓𝐨𝐩$ in some aspect. Whereas one good thing of $𝐓𝐨𝐩$ is that all paths are invertible, which we shall see as follows.

We denote $Λ^n _i := Δ ^{\mathcal{P}([n]) ∖ \{[n], [n]∖ \{i\}\}}$ as the **$i$-th horn of $Δ^n$**. Graphically, $Λ ^n_i$ is obtained by deleting the interior and the $i$-th face of $Δ^n$. $Λ ^n _i$ is an **inner horn**, provided $0 < i < n$. The inclusions maps are called **(inner) horn inclusions**. We show the definition of $∞$-category by the following fact:

{% pro %}
Any singular set of a topological complex lifts horn inclusions. Explicitly, for any horn inclusion $ι : Λ _i ^n ↪ Δ ^n$, the morphism $φ : Λ _i ^n → \operatorname{Sing} (X)$ lifts up to $\widetilde φ : Δ ^n → \operatorname{Sing}(X)$ via $ι$. Hint: $(ι , \operatorname{Sing} (X))_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}}$ is surjective iff so is $(|ι|, X)_{𝐓𝐨𝐩}$.
{% endpro %}

We call such those simplicial sets lifting all (inner) horn fillings **(weak) Kan complexes**. By invertibility of all paths, any singular set of a topological complex are Kan complexes; a general category is a weak Kan complex as only the composition rule works fine. A category with all invertible paths (aka **groupoid**) is a Kan complex, the converse holds true by combinatoric verification.

Let $S$ denote the horn fillings temporality. The simplicial set $X$ is a Kan complex if and only if $X → \{∅\}$ belongs to $S_{inj}$. We call $S_{inj}$ the class of **Kan fibrations**. By general theory of lifting property, Kan fibrations are closed under retracts, pullbacks, products, and transfinite co-composition of a tower. The class left lifting class $S_{cof}$ are called the **acyclic cofibrations**, or **anodyne morphisms**. By Quillen's small object argument, $S_{cof}$ is precisely the closure of horn inclusions under isomorphisms, transfinite compositions, coprodcuts and retracts. The terms **anodyne** or **acyclic** means to be inoffensive or harmless to homology groups: the transdental induction keeps on filling the *holes* in the construction of Quillen's small object argument.

#### Adjoint Lifting

We introduce the *smash product of morphisms* and *morphism spaces* for simplicial comlexes, which shows more closure properties of $S_{inj}$ and $S_{cof}$. Many of the categories in practice are *self-enrichend*, meaning that every Hom-set is a object in the same category. We may obtain better results analogous of currying (the tensor-hom adjunction). The *adjoint lifting* serves as a bridge connecting the *smash product* for cofibrations and *morphism spaces* for fibrations. We complete this section by showing a criterion (probably initially discovered by [A. Joyal](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=206285), see [quasi-categories](https://www.math.uchicago.edu/~may/IMA/Joyal.pdf)):

- $X$ is a Kan complex ($(∞,1)$-category), if and only if $\mathcal{HOM}(Δ^1, X) \xrightarrow {(Δ ^0 ↪ Δ ^1) ^∗ }\mathcal{HOM}(Δ^0, X)$ belongs to $𝐌𝐨𝐧𝐨 ^⋔$;
- $X$ is a weak Kan complex ($∞$-category), if and only if $\mathcal{HOM}(Δ^2, X) \xrightarrow {(Λ^2_1 ↪ Δ ^2) ^∗ }\mathcal{HOM}(Λ^2_1, X)$ belongs to $𝐌𝐨𝐧𝐨 ^⋔$.

{% slo %}
The key requirement of $∞$-categories ($(∞,1)$-categories) is to be closed under compositions (invese maps).
{% endslo %}

The **product** and **coproducts** of simplicials sets are defined pointwise as they are presheaves over $Δ$. We remark that the product of standard simplicial sets $Δ ^m$ and $Δ ^n$ is of dimension $m+n$ by [shuffle](https://ncatlab.org/nlab/show/shuffle) construction. The prodcut of degenerated objects are not necessary degenereted, as shown in previous dimensional analysis. One concrete example is $\binom{[001]}{[011]} ∈ Δ ^1 × Δ ^1$.

{% def %}
(The morphism space). The morphism space is given by a bi-functor
$$\begin{equation}
\mathcal{HOM}(-, ?) : (𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}})^{\mathrm{op}} × 𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}} → 𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}},
\end{equation}$$

such that $(∙ , \mathcal{HOM}(-,?))_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}} ≃ (- × ∙ ,?)_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}}$ is a functorial adjunction.

{% enddef %}

{% pro %}
We show the existence of morphism spaces by construction. Firstly show that the endofunctor $K × -$ preserves all colimits. Then consider the natural isomorphisms

$$\begin{aligned}
(K × X, Y)_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}} & ≃ (\varinjlim_ℕ K × Δ ^n, Y)_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}} \\
& ≃ \varprojlim_ℕ (Δ ^n, (K × Δ ^∙, Y)_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}})_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}} \\
& ≃ (X, (K × Δ ^∙, Y)_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}})_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}} \xlongequal{ \text{def} } (X, \mathcal{HOM}(K, Y))_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}}.
\end{aligned}$$

The simplicial set $[n] ↦ (K × Δ ^n, Y)_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}}$ is the morphism space $\mathcal{HOM}(K,Y)$.

{% endpro %}

We remark that

- the usual set of morphism $(K,Y)_{𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}}}$ is $\mathcal{HOM}(K,Y)$ at $0$-th degree;
- by Yoneda, the $(K × -) ⊣ \mathcal{HOM}(K,-)$ is the same thing as the natural isomorphism $\mathcal{HOM}(K × -, ?) → \mathcal{HOM}(-, \mathcal{HOM}(K, ?))$;
- the enriched composition $\mathcal{HOM}(Y, Z) × \mathcal{HOM}(X,Y) → \mathcal{HOM}(X,Z)$ is characterised degree-wise, where the morphisms $g_k : Y × Δ ^k → Z$ and $f_k : X × Δ ^k → Y$ gives $(g ∘ f) _k : X × Δ ^k \xrightarrow{X × \text{diagonal}} X × Δ ^k × Δ ^k → Z$;
- the pull backs are *reasonable* constructions of morphism spaces, e.g., $\varprojlim \mathcal{HOM}(A_∙ , -)$ is represented by $\mathcal{HOM}(\varinjlim A_∙, -)$ by Yoneda lemma, and $\varprojlim \mathcal{HOM}(-, B_∙)$ is corepresented by $\mathcal{HOM}(-, \varprojlim B_∙)$ by commuting right adjoints.

We pointout a functorial construction of mapping space.

{% pro %}
For simplicial morphisms $f : X → Y$ and $g : A → B$, we consider the morphism induced by the pullback:

{% tikz %}
% https://q.uiver.app/#q=WzAsNSxbMSwyLCJcXG1hdGhjYWwge0hvbX0oWCxBKSJdLFswLDAsIlxcbWF0aGNhbCB7SG9tfShZLEEpIl0sWzIsMSwiXFxtYXRoY2FsIHtIb219KFksQikiXSxbMiwyLCJcXG1hdGhjYWwge0hvbX0oWCxCKSJdLFsxLDEsIlxcbWF0aGNhbCB7SG9tfShYLEEpIFxcdGltZXMgX3tcXG1hdGhjYWwge0hvbX0oWCxCKX1cXG1hdGhjYWwge0hvbX0oWSxCKSJdLFsxLDAsImZeXFxhc3QiLDIseyJjdXJ2ZSI6NH1dLFsyLDMsImZeXFxhc3QiXSxbMSwyLCJnX1xcYXN0ICIsMCx7ImN1cnZlIjotM31dLFswLDMsImdfXFxhc3QgIl0sWzQsMCwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsMiwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsNCwiXFxQaGkgKGYsZykiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}
{\mathcal{HOM}(Y,A)} \\
& {\mathcal{HOM}(X,A) \times _{\mathcal{HOM}(X,B)}\mathcal{HOM}(Y,B)} & {\mathcal{HOM}(Y,B)} \\
& {\mathcal{HOM}(X,A)} & {\mathcal{HOM}(X,B)}
\arrow["{\Phi (f,g)}", dashed, from=1-1, to=2-2]
\arrow["{g_\ast }", curve={height=-18pt}, from=1-1, to=2-3]
\arrow["{f^\ast}"', curve={height=24pt}, from=1-1, to=3-2]
\arrow[dashed, from=2-2, to=2-3]
\arrow[dashed, from=2-2, to=3-2]
\arrow["{f^\ast}", from=2-3, to=3-3]
\arrow["{g_\ast }", from=3-2, to=3-3]
\end{tikzcd}
{% endtikz %}

We denote $⋆ : (∙ , \mathcal{HOM}(-, ?)) ≃ (- × ∙ , ?)$ the natural isomorphism, and $f ∧ m$ is obtained by pushout morphism of the functorial square $(f, m) : X × P → Y × Q$. Then, the existence of the lifting map $s$ in the up diagram is equivalent to that of $t$ in the down diagram:

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCJcXG1hdGhjYWwge0hvbX0oWSxBKSJdLFsxLDEsIlxcbWF0aGNhbCB7SG9tfShYLEEpIFxcdGltZXMgX3tcXG1hdGhjYWwge0hvbX0oWCxCKX1cXG1hdGhjYWwge0hvbX0oWSxCKSJdLFswLDAsIlAiXSxbMCwxLCJRIl0sWzAsMiwiKFkgXFx0aW1lcyBQKVxcc3FjdXBfeyhYIFxcdGltZXMgUCl9KFhcXHRpbWVzIFEpIl0sWzEsMiwiQSJdLFsxLDMsIkIiXSxbMCwzLCJZIFxcdGltZXMgUSJdLFswLDEsIlxcUGhpIChmLGcpIl0sWzIsMCwiYSJdLFszLDEsImIiLDJdLFsyLDMsIm0iLDJdLFszLDAsInMiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSw2LCJnIl0sWzcsNiwiKFxcdGV4dHtwcn1fMiBcXGNpcmMgYileXFxzdGFyIiwyXSxbNCw3LCJmIFxcd2VkZ2UgbSIsMl0sWzQsNSwiKGFeXFxzdGFyLCAoXFx0ZXh0e3ByfV8xIFxcY2lyYyBiKV5cXHN0YXIpIl0sWzcsNSwidCIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
P \& {\mathcal{HOM}(Y,A)} \\
Q \& {\mathcal{HOM}(X,A) \times _{\mathcal{HOM}(X,B)}\mathcal{HOM}(Y,B)} \\
{(Y \times P)\sqcup_{(X \times P)}(X\times Q)} \& A \\
{Y \times Q} \& B
\arrow["a", from=1-1, to=1-2]
\arrow["m"', from=1-1, to=2-1]
\arrow["{\Phi (f,g)}", from=1-2, to=2-2]
\arrow["s"{description}, dashed, from=2-1, to=1-2]
\arrow["b"', from=2-1, to=2-2]
\arrow["{(a^\star, (\text{pr}_1 \circ b)^\star)}", from=3-1, to=3-2]
\arrow["{f \wedge m}"', from=3-1, to=4-1]
\arrow["g", from=3-2, to=4-2]
\arrow["t"{description}, dashed, from=4-1, to=3-2]
\arrow["{(\text{pr}_2 \circ b)^\star}"', from=4-1, to=4-2]
\end{tikzcd}
{% endtikz %}

This also shows that for collection of morphisms $S$ and $T$, one has $T ∧ (^⋔ S) = {}^⋔ (Φ (T,S))$. To conclude, the intersections of *pre-images* is again *saturated*.

{% endpro %}

For a fixed morphism $φ$, the left adjoint functor $φ ∧ (-)$ preserves retractions, transfinite compositions, coproducts, and pushouts. When Quillen's small objects argument holds, $φ ∧ (-)$ preserves the left morphism class of WFS.

The **smash product** of morphisms is compatible with the usual smash product for pointed simplicial sets, defined as ${X ∏ Y} / {X ∐ Y}$, as explained in the following exercise.

{% pro %}
*Suppose all simplicial sets are non-empty!* Let $\operatorname{cok} : (𝐒𝐞𝐭𝐬^{Δ ^{\mathrm{op}}})^→ → (𝐒𝐞𝐭𝐬^{Δ ^{\mathrm{op}}})_+$ denote the cokernel functor whose right adjoint is the inclusion $(X, x_0) ↦ ((x_0, x_0) → (X,x_0))$. Show that such adjunctions preserves smash product:

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwwLCIoXFxtYXRoYmZ7U2V0fV57XFxEZWx0YSBee1xcbWF0aHJte29wfX19KV5cXHRvICJdLFsxLDAsIihcXG1hdGhiZntTZXR9XntcXERlbHRhIF57XFxtYXRocm17b3B9fX0pXlxcdG8gIl0sWzAsMSwiKFxcbWF0aGJme1NldH1ee1xcRGVsdGEgXntcXG1hdGhybXtvcH19fSlfKyJdLFsxLDEsIihcXG1hdGhiZntTZXR9XntcXERlbHRhIF57XFxtYXRocm17b3B9fX0pXysiXSxbMywxLCIoXFxtYXRoYmZ7U2V0fV57XFxEZWx0YSBee1xcbWF0aHJte29wfX19KV8rIl0sWzMsMCwiKFxcbWF0aGJme1NldH1ee1xcRGVsdGEgXntcXG1hdGhybXtvcH19fSleXFx0byAiXSxbMCwxLCJcXHRpbWVzIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMywiXFx0aW1lcyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDUsIlxcd2VkZ2UiXSxbMyw0LCJcXHdlZGdlIl0sWzAsMiwiXFxvcGVyYXRvcm5hbWV7Y29rfSIsMix7Im9mZnNldCI6Mn1dLFsxLDMsIlxcb3BlcmF0b3JuYW1le2Nva30iLDIseyJvZmZzZXQiOjJ9XSxbNSw0LCJcXG9wZXJhdG9ybmFtZXtjb2t9IiwyLHsib2Zmc2V0IjoyfV0sWzIsMCwiIiwyLHsib2Zmc2V0IjoyLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzMsMSwiIiwyLHsib2Zmc2V0IjoyLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzQsNSwiIiwyLHsib2Zmc2V0IjoyLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzExLDE0LCJcXGRhc2h2IiwxLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEyLDE1LCJcXGRhc2h2IiwxLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEwLDEzLCJcXGRhc2h2IiwxLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
{(\mathbf{Set}^{\Delta ^{\mathrm{op}}})^\to } \& {(\mathbf{Set}^{\Delta ^{\mathrm{op}}})^\to } \&\& {(\mathbf{Set}^{\Delta ^{\mathrm{op}}})^\to } \\
{(\mathbf{Set}^{\Delta ^{\mathrm{op}}})_+} \& {(\mathbf{Set}^{\Delta ^{\mathrm{op}}})_+} \&\& {(\mathbf{Set}^{\Delta ^{\mathrm{op}}})_+}
\arrow["\times"{description}, draw=none, from=1-1, to=1-2]
\arrow[""{name=0, anchor=center, inner sep=0}, "{\operatorname{cok}}"', shift right=2, from=1-1, to=2-1]
\arrow["\wedge", from=1-2, to=1-4]
\arrow[""{name=1, anchor=center, inner sep=0}, "{\operatorname{cok}}"', shift right=2, from=1-2, to=2-2]
\arrow[""{name=2, anchor=center, inner sep=0}, "{\operatorname{cok}}"', shift right=2, from=1-4, to=2-4]
\arrow[""{name=3, anchor=center, inner sep=0}, shift right=2, tail, from=2-1, to=1-1]
\arrow["\times"{description}, draw=none, from=2-1, to=2-2]
\arrow[""{name=4, anchor=center, inner sep=0}, shift right=2, tail, from=2-2, to=1-2]
\arrow["\wedge", from=2-2, to=2-4]
\arrow[""{name=5, anchor=center, inner sep=0}, shift right=2, tail, from=2-4, to=1-4]
\arrow["\dashv"{description}, draw=none, from=0, to=3]
\arrow["\dashv"{description}, draw=none, from=1, to=4]
\arrow["\dashv"{description}, draw=none, from=2, to=5]
\end{tikzcd}
{% endtikz %}

Hint: deduce this to smash product of monomorphisms.
\\
\\
Similarly, for $a : \{∗\} → A$ and $b : \{∗\} → B$, the morphism $Φ (a,b)$ identifies the pointed mapping space $((A,a), (B,b))_{(𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}})_+}$.

{% endpro %}

We use smash product to simplify the discription of generating set of horn inclusions. We fix $φ : \{∗\} ↪ Δ ^1$ as the inclusion of $0$, and show that the following collections of morphisms generate the same $S_{cof}$ class:

1. ($S$). the collection of horn inclusions $Λ ^n _i ↪ Δ ^n$ for $0 ≤ i ≤ n$;
2. ($T$). the collection of $φ ∧ f$, for $f$ an arbitrary monomorphism.

{% prop %}
The class $S$ consisting of horn inclusions and $T := φ ∧ 𝐌𝐨𝐧𝐨$ generates the same $(-)_{cof}$ class.

{% pf %}
We show that $S ⊆ T_{cof}$ by verifying that any horn inclusion $i$ is a retract of $φ ∧ i : \square → Δ^1 × Δ ^n$. We firstly consider the case $i : Λ _k^n → Δ ^n$ for $k < n$. Let $ι _1 : ? ↪ (Δ ^1 × ?)$ denote the functorial inclusion to cordinate $1$. It is straightforward to construct the commutative diagram:

{% tikz %}
% https://q.uiver.app/#q=WzAsNyxbMCwxLCJcXExhbWJkYV9rXm4iXSxbMCwyLCJcXERlbHRhXm4iXSxbNCwxLCJcXExhbWJkYV9rXm4iXSxbNCwyLCJcXERlbHRhXm4iXSxbMiwyLCJcXERlbHRhXjEgXFx0aW1lcyBcXERlbHRhXm4iXSxbMiwwLCJcXERlbHRhXjEgXFx0aW1lcyBcXExhbWJkYSBebiBfayJdLFsyLDEsIlxcc3F1YXJlIl0sWzAsMSwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJib3R0b20ifX19XSxbMiwzLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6ImJvdHRvbSJ9fX1dLFsxLDQsIlxcaW90YV8xIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNCwzLCJwIl0sWzAsNSwiXFxpb3RhXzEiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs1LDIsInB8X3tcXERlbHRhXjEgXFx0aW1lcyBcXExhbWJkYSBebiBfa30iXSxbNiw0LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6ImJvdHRvbSJ9fX1dLFs1LDYsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoiYm90dG9tIn19fV0sWzYsMiwiPyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
\&\& {\Delta^1 \times \Lambda ^n _k} \\
{\Lambda_k^n} \&\& \square \&\& {\Lambda_k^n} \\
{\Delta^n} \&\& {\Delta^1 \times \Delta^n} \&\& {\Delta^n}
\arrow[hook', from=1-3, to=2-3]
\arrow["{p|_{\Delta^1 \times \Lambda ^n _k}}", from=1-3, to=2-5]
\arrow["{\iota_1}", hook, from=2-1, to=1-3]
\arrow[hook', from=2-1, to=3-1]
\arrow["{?}", dashed, from=2-3, to=2-5]
\arrow[hook', from=2-3, to=3-3]
\arrow[hook', from=2-5, to=3-5]
\arrow["{\iota_1}", hook, from=3-1, to=3-3]
\arrow["p", from=3-3, to=3-5]
\end{tikzcd}
{% endtikz %}

The choice of $p$ is not unique; we want to find $p$ such that the dashed arrow exists. We take $p$ as follows:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzAsMCwiMCJdLFsxLDAsIjEiXSxbMiwwLCJcXGNkb3RzICJdLFszLDAsImsiXSxbNCwwLCJrKzEiXSxbNSwwLCJcXGNkb3RzICJdLFs2LDAsIm4iXSxbMCwxLCIwIl0sWzEsMSwiMSJdLFsyLDEsIlxcY2RvdHMiXSxbMywxLCJrIl0sWzQsMSwiayJdLFs2LDEsImsiXSxbNSwxLCJcXGNkb3RzICJdLFs3LDBdLFs4LDFdLFsxMCwzXSxbMTEsNF0sWzEzLDVdLFsxMiw2XSxbMCwxXSxbMSwyXSxbMiwzXSxbMyw0XSxbNCw1XSxbNSw2XSxbNyw4XSxbOCw5XSxbOSwxMF0sWzEwLDExXSxbMTEsMTNdLFsxMywxMl1d
\begin{tikzcd}[ampersand replacement=\&]
0 \& 1 \& {\cdots } \& k \& {k+1} \& {\cdots } \& n \\
0 \& 1 \& \cdots \& k \& k \& {\cdots } \& k
\arrow[from=1-1, to=1-2]
\arrow[from=1-2, to=1-3]
\arrow[from=1-3, to=1-4]
\arrow[from=1-4, to=1-5]
\arrow[from=1-5, to=1-6]
\arrow[from=1-6, to=1-7]
\arrow[from=2-1, to=1-1]
\arrow[from=2-1, to=2-2]
\arrow[from=2-2, to=1-2]
\arrow[from=2-2, to=2-3]
\arrow[from=2-3, to=2-4]
\arrow[from=2-4, to=1-4]
\arrow[from=2-4, to=2-5]
\arrow[from=2-5, to=1-5]
\arrow[from=2-5, to=2-6]
\arrow[from=2-6, to=1-6]
\arrow[from=2-6, to=2-7]
\arrow[from=2-7, to=1-7]
\end{tikzcd}
{% endtikz %}

Back to the *retraction* diagram. The composition of the bottom line is identical, since $p$ is identical on $\{1\} × Δ ^n$. The inclusion $Δ ^1 × Λ ^n _k ↪ \square$ attach $Δ^n$ over $\{0\} × Λ ^n _k$, which degenerates into $Λ^n _k$ via $p$. This completes the proof for $k < n$. One can similarly show the case $k = n$ by replacing $ι _1$ with $ι_0$, and define $p$ as follows:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiMSJdLFsxLDAsIjEiXSxbNCwwLCJuLTEiXSxbMCwxLCIwIl0sWzEsMSwiMSJdLFs0LDEsIm4tMSJdLFsyLDAsIjIiXSxbMiwxLCIyIl0sWzMsMCwiXFxjZG90cyJdLFszLDEsIlxcY2RvdHMiXSxbNSwwLCJuIl0sWzUsMSwibiJdLFszLDBdLFs0LDFdLFs1LDJdLFswLDFdLFszLDRdLFsxLDZdLFs2LDhdLFs4LDJdLFsyLDEwXSxbNyw5XSxbOSw1XSxbNSwxMV0sWzExLDEwXSxbNCw3XSxbNyw2XV0=
\begin{tikzcd}
1 & 1 & 2 & \cdots & {n-1} & n \\
0 & 1 & 2 & \cdots & {n-1} & n
\arrow[from=1-1, to=1-2]
\arrow[from=1-2, to=1-3]
\arrow[from=1-3, to=1-4]
\arrow[from=1-4, to=1-5]
\arrow[from=1-5, to=1-6]
\arrow[from=2-1, to=1-1]
\arrow[from=2-1, to=2-2]
\arrow[from=2-2, to=1-2]
\arrow[from=2-2, to=2-3]
\arrow[from=2-3, to=1-3]
\arrow[from=2-3, to=2-4]
\arrow[from=2-4, to=2-5]
\arrow[from=2-5, to=1-5]
\arrow[from=2-5, to=2-6]
\arrow[from=2-6, to=1-6]
\end{tikzcd}
{% endtikz %}

Conversely, we show that $T ⊆ S_{cof}$. We note that any monomorphism of simplicial sets are obtaiend by adjoining cells. Hence, it suffices to show for all boudaray inclusions $c^n : ∂ Δ ^n ↪ Δ ^n$ in $𝐌𝐨𝐧𝐨$. We show that $(φ ∧ c^n) ∈ S_{cof}$.

We know that there are $n+2$ non-degenrated standard simplices $Δ ^{n+1}$ in $Δ ^1 × Δ ^n$ determined by *$(p,q)$-shuffle*. We iteratively attaching $Λ ^{n+1}_k$-horns with $0 ≤ k ≤ (n+1)$ along the buttom edge:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzYsMCwiXFxiaW5vbSAwe259Il0sWzQsMCwiXFxiaW5vbSAwe24tMX0iXSxbMSwwLCJcXGNkb3RzICJdLFswLDAsIlxcYmlub20gMDAiXSxbNiwxLCJcXGJpbm9tIDF7bn0iXSxbNCwxLCJcXGJpbm9tIDF7bi0xfSJdLFswLDEsIlxcYmlub20gMTAiXSxbMSwxLCJcXGNkb3RzICJdLFsyLDAsIlxcYmlub20gMHtuLTJ9Il0sWzIsMSwiXFxiaW5vbSAxe24tMn0iXSxbMSwwXSxbMywyXSxbNSw0LCJcXHNxY3VwX3soXFxMYW1iZGFee24rMX1fe24rMX0pfVxcRGVsdGFee24rMX0iLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCw0XSxbNiw3LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSw1XSxbMyw2XSxbOCwxXSxbMiw4XSxbOSw1LCJcXHNxY3VwX3soXFxMYW1iZGFee24rMX1fe259KX1cXERlbHRhXntuKzF9IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzcsOSwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzgsOV1d
\begin{tikzcd}
{\binom 00} & {\cdots } & {\binom 0{n-2}} && {\binom 0{n-1}} && {\binom 0{n}} \\
{\binom 10} & {\cdots } & {\binom 1{n-2}} && {\binom 1{n-1}} && {\binom 1{n}}
\arrow[from=1-1, to=1-2]
\arrow[from=1-1, to=2-1]
\arrow[from=1-2, to=1-3]
\arrow[from=1-3, to=1-5]
\arrow[from=1-3, to=2-3]
\arrow[from=1-5, to=1-7]
\arrow[from=1-5, to=2-5]
\arrow[from=1-7, to=2-7]
\arrow[dashed, from=2-1, to=2-2]
\arrow[dashed, from=2-2, to=2-3]
\arrow["{\sqcup_{(\Lambda^{n+1}_{n})}\Delta^{n+1}}"', dashed, from=2-3, to=2-5]
\arrow["{\sqcup_{(\Lambda^{n+1}_{n+1})}\Delta^{n+1}}"', dashed, from=2-5, to=2-7]
\end{tikzcd}
{% endtikz %}

{% endpf %}

{% endprop %}

Crearly, $i ∧ S_{cof} ⊆ S_{cof}$ for any monomorphism $i$. We apply adjoint lifting to the above equivalent characterisation of $S_{cof}$, and see that $Φ (i, -)$ preserves Kan fibrations for arbitrary monomorphism $i$. In particular, for any simplicial set $X$ and Kan complex $F$, the morphism space $\mathcal{HOM}(X,F)$ is again a Kan complex. Hence we obtain a criterion for Kan complexes:

- $F$ is a Kan complex ($(∞,1)$-category), if and only if the pullback $\mathcal{HOM}(Δ ^1 , F) \xrightarrow {φ ^∗ } F$ lifts all monomorphisms.

This criterion has to do with path-homotopy. When $F^I → F$ lifts all monomorphisms, $F$ has invertible edges.

{% pro %}
Let $S'$ denote the set of inner horn inclusions. Show that $S'_{cof}$ is also generated by $ψ ∧ 𝐌𝐨𝐧𝐨$ for $ψ : Λ ^2_1 ↪ Δ ^2$. Hint: by $\{c_n : ∂ Δ ^n ↪ Δ ^n\}_{cof} = 𝐌𝐨𝐧𝐨 _{cof}$, it suffices to show

1. $(ψ ∧ c_n) ∈ S'_{cof}$, and
2. any inner horn inclusions belongs to $(ψ ∧ 𝐌𝐨𝐧𝐨)_{cof}$.

The proof of 1. is similar to the above. The retraction $Δ ^n ↪ Δ ^1 × Δ ^n ↠ Δ ^n$ may constructed as follows. The monomorphism is
{% tikz %}
% https://q.uiver.app/#q=WzAsMjEsWzAsMCwiMCJdLFsxLDAsIlxcY2RvdHMiXSxbMCwxLCJcXGNkb3QiXSxbMCwyLCJcXGNkb3QiXSxbMSwxLCJcXGNkb3RzIl0sWzEsMiwiXFxjZG90cyJdLFsyLDAsImstMSJdLFszLDAsIlxcY2RvdCJdLFsyLDIsIlxcY2RvdCJdLFsyLDEsIlxcY2RvdCJdLFszLDIsIlxcY2RvdCJdLFs0LDIsImsrMSJdLFszLDEsImsiXSxbNCwxLCJcXGNkb3QiXSxbNCwwLCJcXGNkb3QiXSxbNSwwLCJcXGNkb3RzIl0sWzUsMSwiXFxjZG90cyJdLFs1LDIsIlxcY2RvdHMiXSxbNiwyLCJuIl0sWzYsMCwiXFxjZG90Il0sWzYsMSwiXFxjZG90Il0sWzAsMl0sWzIsM10sWzAsMV0sWzIsNF0sWzMsNV0sWzEsNl0sWzYsN10sWzcsMTJdLFsxMiwxMF0sWzYsOV0sWzksOF0sWzQsOV0sWzksMTJdLFs1LDhdLFs4LDEwXSxbMTAsMTFdLFs3LDE0XSxbMTIsMTNdLFsxNCwxNV0sWzE1LDE5XSxbMTksMjBdLFsyMCwxOF0sWzEzLDE2XSxbMTYsMjBdLFsxNCwxM10sWzEzLDExXSxbMTEsMTddLFsxNywxOF1d
\begin{tikzcd}
0 & \cdots & {k-1} & \cdot & \cdot & \cdots & \cdot \\
\cdot & \cdots & \cdot & k & \cdot & \cdots & \cdot \\
\cdot & \cdots & \cdot & \cdot & {k+1} & \cdots & n
\arrow[from=1-1, to=1-2]
\arrow[from=1-1, to=2-1]
\arrow[from=1-2, to=1-3]
\arrow[from=1-3, to=1-4]
\arrow[from=1-3, to=2-3]
\arrow[from=1-4, to=1-5]
\arrow[from=1-4, to=2-4]
\arrow[from=1-5, to=1-6]
\arrow[from=1-5, to=2-5]
\arrow[from=1-6, to=1-7]
\arrow[from=1-7, to=2-7]
\arrow[from=2-1, to=2-2]
\arrow[from=2-1, to=3-1]
\arrow[from=2-2, to=2-3]
\arrow[from=2-3, to=2-4]
\arrow[from=2-3, to=3-3]
\arrow[from=2-4, to=2-5]
\arrow[from=2-4, to=3-4]
\arrow[from=2-5, to=2-6]
\arrow[from=2-5, to=3-5]
\arrow[from=2-6, to=2-7]
\arrow[from=2-7, to=3-7]
\arrow[from=3-1, to=3-2]
\arrow[from=3-2, to=3-3]
\arrow[from=3-3, to=3-4]
\arrow[from=3-4, to=3-5]
\arrow[from=3-5, to=3-6]
\arrow[from=3-6, to=3-7]
\end{tikzcd}
{% endtikz %}

The epimorphism is

{% tikz %}
% https://q.uiver.app/#q=WzAsMjEsWzAsMCwiMCJdLFsxLDAsIlxcY2RvdHMiXSxbMCwxLCJrIl0sWzAsMiwiayJdLFsxLDEsIlxcY2RvdHMiXSxbMSwyLCJcXGNkb3RzIl0sWzIsMCwiay0xIl0sWzMsMCwiayJdLFsyLDIsImsiXSxbMiwxLCJrIl0sWzMsMiwiayJdLFs0LDIsImsrMSJdLFszLDEsImsiXSxbNCwxLCJrIl0sWzQsMCwiayJdLFs1LDAsIlxcY2RvdHMiXSxbNSwxLCJcXGNkb3RzIl0sWzUsMiwiXFxjZG90cyJdLFs2LDIsIm4iXSxbNiwwLCJrIl0sWzYsMSwiayJdLFswLDJdLFsyLDNdLFswLDFdLFsyLDRdLFszLDVdLFsxLDZdLFs2LDddLFs3LDEyXSxbMTIsMTBdLFs2LDldLFs5LDhdLFs0LDldLFs5LDEyXSxbNSw4XSxbOCwxMF0sWzEwLDExXSxbNywxNF0sWzEyLDEzXSxbMTQsMTVdLFsxNSwxOV0sWzE5LDIwXSxbMjAsMThdLFsxMywxNl0sWzE2LDIwXSxbMTQsMTNdLFsxMywxMV0sWzExLDE3XSxbMTcsMThdXQ==
\begin{tikzcd}[ampersand replacement=\&]
0 \& \cdots \& {k-1} \& k \& k \& \cdots \& k \\
k \& \cdots \& k \& k \& k \& \cdots \& k \\
k \& \cdots \& k \& k \& {k+1} \& \cdots \& n
\arrow[from=1-1, to=1-2]
\arrow[from=1-1, to=2-1]
\arrow[from=1-2, to=1-3]
\arrow[from=1-3, to=1-4]
\arrow[from=1-3, to=2-3]
\arrow[from=1-4, to=1-5]
\arrow[from=1-4, to=2-4]
\arrow[from=1-5, to=1-6]
\arrow[from=1-5, to=2-5]
\arrow[from=1-6, to=1-7]
\arrow[from=1-7, to=2-7]
\arrow[from=2-1, to=2-2]
\arrow[from=2-1, to=3-1]
\arrow[from=2-2, to=2-3]
\arrow[from=2-3, to=2-4]
\arrow[from=2-3, to=3-3]
\arrow[from=2-4, to=2-5]
\arrow[from=2-4, to=3-4]
\arrow[from=2-5, to=2-6]
\arrow[from=2-5, to=3-5]
\arrow[from=2-6, to=2-7]
\arrow[from=2-7, to=3-7]
\arrow[from=3-1, to=3-2]
\arrow[from=3-2, to=3-3]
\arrow[from=3-3, to=3-4]
\arrow[from=3-4, to=3-5]
\arrow[from=3-5, to=3-6]
\arrow[from=3-6, to=3-7]
\end{tikzcd}
{% endtikz %}

The proof of 2. show inductively that $\square ↪ Δ ^2 × Δ ^n$ is nothing but a *completion of compositions*.

{% endpro %}

The above criterion (along with adjoint lifting) shows that for any $i ∈ 𝐌𝐨𝐧𝐨$, $Φ (i, -)$ preserves trivial Kan fibrations. In particular,

- for any simplicial set $X$, the functor $\mathcal{HOM}(X, -)$ preserves weak Kan complexes ($∞$-categories);
- $V$ is a weak Kan-complex ($∞$-category), if and only if the pullback $\mathcal{HOM}(Δ ^2, V) \xrightarrow {ψ ^∗ }\mathcal{HOM}(Λ ^2_1, V)$ lifts all monomorphisms.

### Functors

#### Topological Space for Convenience

We explain the *convenient topological category*, usually selected as $𝐂𝐆𝐇$ (compactly generated Hausdorff space, or $k$-spaces). We clearify the morphisms ($k$-morphisms) in $𝐂𝐆𝐇$ and the left adjoint functor ($k$-fication) $k : 𝐓𝐨𝐩 → 𝐂𝐆𝐇$ with respect to the inclusion $𝐂𝐆𝐇 → 𝐓𝐨𝐩$ (not full!).

#### Hurewicz Map

Following the principle $\text{realisation} ⊣ \text{nerve}$, we have constructed the adjunctions

{% tikz %}
% https://q.uiver.app/#q=WzAsNCxbMSwwLCJcXG1hdGhiZntDR0h9Il0sWzMsMCwiXFxtYXRoYmZ7U2V0c31ee1xcRGVsdGFee1xcbWF0aHJte29wfX19Il0sWzUsMCwiXFxtYXRoYmZ7Q2F0fSJdLFswLDAsIlxcb3ZlcnNldHt9e1xcdW5kZXJzZXR7XFx0ZXh0eyhvYnNvbGV0ZWQpfX17XFxtYXRoYmZ7VG9wfX19IixbMCwwLDUwLDFdXSxbMywwLCJrIiwwLHsib2Zmc2V0IjotMywiY29sb3VyIjpbMCwwLDUwXX0sWzAsMCw1MCwxXV0sWzAsMywiIiwwLHsib2Zmc2V0IjotMywiY29sb3VyIjpbMCwwLDUwXX1dLFswLDEsIlxcbWF0aHJte1Npbmd9IiwwLHsib2Zmc2V0IjotM31dLFsxLDAsInwtfCIsMCx7Im9mZnNldCI6LTN9XSxbMSwyLCJcXG1hdGhybSBoIiwwLHsib2Zmc2V0IjotM31dLFsyLDEsIlxcbWF0aHJtIE4iLDAseyJvZmZzZXQiOi0zfV0sWzYsNywiXFxib3QiLDEseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw5LCJcXGJvdCIsMSx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDUsIlxcYm90IiwxLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfSwiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fSxbMCwwLDUwLDFdXV0=
\begin{tikzcd}[ampersand replacement=\&]
\color{rgb,255:red,128;green,128;blue,128}{\overset{}{\underset{\text{(obsoleted)}}{\mathbf{Top}}}} \& {\mathbf{CGH}} \&\& {\mathbf{Sets}^{\Delta^{\mathrm{op}}}} \&\& {\mathbf{Cat}}
\arrow[""{name=0, anchor=center, inner sep=0}, "k", shift left=3, color={rgb,255:red,128;green,128;blue,128}, from=1-1, to=1-2]
\arrow[""{name=1, anchor=center, inner sep=0}, shift left=3, color={rgb,255:red,128;green,128;blue,128}, from=1-2, to=1-1]
\arrow[""{name=2, anchor=center, inner sep=0}, "{\mathrm{Sing}}", shift left=3, from=1-2, to=1-4]
\arrow[""{name=3, anchor=center, inner sep=0}, "{|-|}", shift left=3, from=1-4, to=1-2]
\arrow[""{name=4, anchor=center, inner sep=0}, "{\mathrm h}", shift left=3, from=1-4, to=1-6]
\arrow[""{name=5, anchor=center, inner sep=0}, "{\mathrm N}", shift left=3, from=1-6, to=1-4]
\arrow["\bot"{description}, color={rgb,255:red,128;green,128;blue,128}, draw=none, from=0, to=1]
\arrow["\bot"{description}, draw=none, from=2, to=3]
\arrow["\bot"{description}, draw=none, from=4, to=5]
\end{tikzcd}
{% endtikz %}

In order to study homologies, we introduce the free-forgetful adjunction of Abelisation $ℤ (-) : 𝐀𝐛 ^{Δ ^{\mathrm{op}}} ⇆ 𝐒𝐞𝐭𝐬 ^{Δ ^{\mathrm{op}}} : U$. The *homologies* are calculated by the homology groups of the **singular chain complex** $C(ℤ (X))$. The Hurewitz map points out that the functor $ℤ (-)$ lost some information of $π _∙$ groups, while exactly makes it into $H_∙$. The map says $π _∙ (|U(-)|) ≃ H_∙ (-)$ are the same functor of the type $𝐀𝐛 ^{Δ ^{\mathrm{op}}} → 𝐆𝐫 (𝐀𝐛)$, which generalise the result of $\mathrm{Ab}(π _1) = H_1$.

#### DK Correspondence

There are also theories revising the assignment $X ↦ C(ℤ (X))$, e.g. the Dold-Kan complex correspondence.

#### (Homotopy) Spectra

The pointed construction makes topological spaces *algebraic*. The homotopy spectra $Σ ^∞ : 𝐓𝐨𝐩 _∙ / ∼  → 𝐇𝐨𝐒𝐩𝐞𝐜$ moreover *linearise* it ($∧ = ∨$ under $Σ ^∞$!).

- the development: due to Lima around 1950s probably, and revolutioned by Adams in stable homotopy theory (1974);
- it has nothing to do with the spectra in algebraic topology, or spectal of operator (the word is over used).

#### Quillen's Equivalence

The adjunction $|-| ⊣ \operatorname{Sing}$ descents to an equivalence for there homotopy category. It is acceptable to enlarge $𝐂𝐆𝐇$ to the entire $𝐓𝐨𝐩$.
