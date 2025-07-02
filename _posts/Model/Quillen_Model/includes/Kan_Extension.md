## Kan Extension
In this section, we endeavour to elucidate the universal construction known as the **Kan extension**. The concept originates from the [book](https://www.math.stonybrook.edu/~mmovshev/BOOKS/homologicalalgeb033541mbp.pdf) by [H. P. Cartan](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=49555) and [S. Eilenberg](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=7643) in 1956, wherein it was introduced for the computation of derived functors. Further computational aspects are explored in [D. Kan](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=12549)'s paper on [adjoint functors](https://www.ams.org/journals/tran/1958-087-02/S0002-9947-1958-0131451-0/S0002-9947-1958-0131451-0.pdf) in 1958. The general notion of extension, attributed to [D. Kan](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=12549), emerged circa 1960, and a modern treatment is presented in Mac Lane's book [Categories for the Working Mathematician](https://link.springer.com/book/10.1007/978-1-4757-4721-8).

### The Basic Definitions

#### Categories and Functors

We clarify some of the notations: General **categories** are written in `\mathcal` font, e.g., $\mathcal{C}$ for a category, where

- $𝐊 _0 := 𝖮𝖻$ denotes the class of **objects** and $𝐊 _1 := 𝖬𝗈𝗋$ denotes the class of **morphisms**,
- $(X, Y)_\mathcal{C}$ or $\mathrm{Hom}_\mathcal{C}(X,Y)$ denotes the set of morphisms in $\mathcal{C}$ from $X$ to $Y$,
- $1_X$ denotes the **identity morphism** in $(X,X)_\mathcal{C}$,
- the notion of **composition** is denoted as $f ∘ g$, where $∘$ is of the type $𝐊_1 × _{𝐊_0} 𝐊_1 → 𝐊 _1$.

Specific categories are denoted in `\mathbf` font, e.g., $𝐒𝐞𝐭𝐬$ for the category of sets, $𝐌𝐨𝐝_k$ for the category of right $k$-modules. A general **functor category** is denoted as $𝐅𝐮𝐧(\mathcal{C}, \mathcal{D})$ or simply $\mathcal{D}^\mathcal{C}$, where

- a general **functor** $F$ is in italic font,
- a general **natural transformation** $θ = \{θ_X\}_{X ∈ 𝖮𝖻}$ is a Greek letter in italic font,
- the $\mathrm{Hom}$-object in the functor category is denoted as $𝐍𝐚𝐭[F,G]$.

When it is valid to regard the *superclass* of categories as a category itself, the vertical and horizontal compositions of natural transformations are denoted by $∘$ and $∗$, respectively. For instance, in the following diagram of natural transformations

{% tikz %}
% https://q.uiver.app/#q=WzAsMyxbMCwwLCJcXG1hdGhjYWwgQyJdLFsyLDAsIlxcbWF0aGNhbCBEIl0sWzQsMCwiXFxtYXRoY2FsIEUiXSxbMCwxLCJGXzIiLDFdLFsxLDIsIkdfMiIsMV0sWzAsMSwiRl8xIiwwLHsib2Zmc2V0IjotMywiY3VydmUiOi0zfV0sWzEsMiwiR18xIiwwLHsib2Zmc2V0IjotMywiY3VydmUiOi0zfV0sWzAsMSwiRl8zIiwyLHsib2Zmc2V0IjozLCJjdXJ2ZSI6M31dLFsxLDIsIkdfMyIsMix7Im9mZnNldCI6MywiY3VydmUiOjN9XSxbNSwzLCJcXHRoZXRhXzEiLDAseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9fV0sWzMsNywiXFx0aGV0YV8yIiwwLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfX1dLFs2LDQsIlxcdGF1XzEiLDAseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9fV0sWzQsOCwiXFx0YXVfMiIsMCx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH19XV0=
\begin{tikzcd}[ampersand replacement=\&]
{\mathcal C} \&\& {\mathcal D} \&\& {\mathcal E}
\arrow[""{name=0, anchor=center, inner sep=0}, "{F_2}"{description}, from=1-1, to=1-3]
\arrow[""{name=1, anchor=center, inner sep=0}, "{F_1}", shift left=3, curve={height=-18pt}, from=1-1, to=1-3]
\arrow[""{name=2, anchor=center, inner sep=0}, "{F_3}"', shift right=3, curve={height=18pt}, from=1-1, to=1-3]
\arrow[""{name=3, anchor=center, inner sep=0}, "{G_2}"{description}, from=1-3, to=1-5]
\arrow[""{name=4, anchor=center, inner sep=0}, "{G_1}", shift left=3, curve={height=-18pt}, from=1-3, to=1-5]
\arrow[""{name=5, anchor=center, inner sep=0}, "{G_3}"', shift right=3, curve={height=18pt}, from=1-3, to=1-5]
\arrow["{\theta_1}", shorten <=3pt, shorten >=3pt, Rightarrow, from=1, to=0]
\arrow["{\theta_2}", shorten <=3pt, shorten >=3pt, Rightarrow, from=0, to=2]
\arrow["{\tau_1}", shorten <=3pt, shorten >=3pt, Rightarrow, from=4, to=3]
\arrow["{\tau_2}", shorten <=3pt, shorten >=3pt, Rightarrow, from=3, to=5]
\end{tikzcd},
{% endtikz %}

$θ _2 ∘ θ _1$ (of the type $𝐊_2× _{𝐊_1}𝐊_2$) denotes the vertical composition of natural transformations, whilst $θ _2 ∗ θ _1$ (of the type $𝐊_2× _{𝐊_0}𝐊_2$) denotes the horizontal composition.

{% lem %}
(Godement's interchange law). A well-known identity by [R. Godement](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=49554) states
$$\begin{equation}
(τ _2 ∘ τ _1) ∗ (θ _2 ∘ θ _1) = (τ _2 ∗ θ _2) ∘ (τ _1 ∗ θ _1).
\end{equation}$$

{% pf %}
It is straightforward to verify the identity pointwise.
{% endpf %}

{% endlem %}

{% pro %}
Discover a topological explanation of Godement's interchange law, and show that the $π_1$-group of connected topological groups is Abelian.
{% endpro %}

#### Universe

The conception of a **universe** is introduced by [A. Grothendieck](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=31245) in [this appendix of SGA4](https://www.cmls.polytechnique.fr/perso/laszlo/sga4/SGA4-1/sga41.pdf#page=113), which enables one to circumvent the *set-theoretic paradoxes*, notably Russell's paradox. The assumption of a universe $𝔘$ specifies what is *small*, *large*, or *uncontrollably large*. Alternative approaches to avoiding such paradoxes exist; see [M. A. Shulman](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=137837)'s [note](https://arxiv.org/abs/0810.1279) for further details. The following definition is adapted from a [note](http://therisingsea.org/notes/FoundationsForCategoryTheory.pdf) by [D. Murfet](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=144058).

A **universe** is denoted in `\mathfrak`-font. It is a set, satisfying the following (overdetermined) properties:

1. If $x ∈ A$ and $A ∈ 𝔘$, then $x ∈ 𝔘$;
2. If $x ∈ 𝔘$ and $y ∈ 𝔘$, then $\{x,y\} ∈ 𝔘$;
3. If $x ∈ 𝔘$, then the powerset $\mathcal{P}(x) ∈ 𝔘$;
4. For any $I ∈ 𝔘$ such that $\{x_i\}_{i ∈ I} ⊆ 𝔘$, one has $⋃_{i ∈ I}x_i ∈ 𝔘$.

{% pro %}
Show that the universe $𝔘$ is closed under the basic operation of Peano postulates for natural numbers:

1. $0 := ∅ ∈ 𝔘$;
2. If $x ∈ 𝔘$, then $(x + 1) := (x ⊔ \{x\}) ∈ 𝔘$;
3. Show that $ℕ ⊆ 𝔘$, and find $𝔘$ such that $ℕ ∉ 𝔘$ (Hint: try $⋃_{k ∈ ℕ}\mathcal{P}^k(x)$ for finite $x$, that is, the **von Neumann hierarchy** generated by a finite set);
4. *Suppose that* $ℕ ∈ 𝔘$, show that $ℤ$, $ℚ$, $ℝ$ and $ℂ$ belong to $𝔘$.

This exercise is nothing but a verification that the general constructions of number fields never exceed the universe $𝔘$.

{% endpro %}

{% pro %}
Show that the universe $𝔘$ is closed under the basic operation of category theory:

1. If $x, y ∈ 𝔘$, then the pair $(x,y) ∈ 𝔘$ (the implicit axiom of universe in [SGA4](https://www.cmls.polytechnique.fr/perso/laszlo/sga4/SGA4-1/sga41.pdf#page=113))
2. $𝔘$ inherits the closed monoidal structure from $𝐒𝐞𝐭𝐬$, i.e., $𝔘$ is non-empty with an element $1$, closed under Hom-set $(-, ? )_{𝐒𝐞𝐭𝐬}$ and Cartesian product $- × ?$.
3. $𝔘$ is closed under sub-objects and quotient-objects.
4. For $I ∈ 𝔘$ such that $\{x_i \}_{i ∈ I} ⊆ 𝔘$, all $∏ _{i ∈ I}x_i$, $∐ _{i ∈ I} x_i$, $⋃ _{i ∈ I} x_i$ and $⋂ _{i ∈ I} x_i$ belong to $𝔘$.
5. Hence, both limits and colimits indexed by $I ∈ 𝔘$ exist in the universe.

{% endpro %}

We define the *small*, *large*, and *uncontrollably large* sets (relative to the universe $𝔘$) as follows:

{% def %}
Let $X$ be a set, say

- $X$ is a **$𝔘$-small set** (or $X$ is **$𝔘$-small** for simplicity), provided $X ∈ 𝔘$;
- $X$ is a **$𝔘$-class** if $X ⊆ 𝔘$;
- in particular, $X$ is a proper class when $X ∉ 𝔘$ but $X ⊆ 𝔘$;
- $X$ is a **$𝔘$-large set** (or $X$ is **$𝔘$-large** for simplicity), provided $X \not⊆ 𝔘$.

{% enddef %}

We do not omit the prefix $𝔘$-, since the terminology *small object* has a different meaning.

Throughout, we adopt the axiom **ZFCU**, rather than **NBGC**.

{% def %}
(ZFCU). The axiom system of **ZFCU** consists of

1. ZF axioms (Zermelo-Fraenkel axioms),
2. the **axiom of choice** (AC),
3. the **axiom of universes** (U), which states that every set belongs to some universe $𝔘$.

{% enddef %}

In conclusion, there exists a universe that accommodates the standard set-theoretic operations. Therefore, one may disregard the set-theoretic paradoxes and concentrate on *the desired universe*. The ensuing discussion is conducted under the assumption that the universe $𝔘$ is fixed; we underscore the selected universe when necessary.

#### Limits and Colimits

Before we proceed, it is advisable to be acquainted with the following phenomenon:

{% slo %}
The functor of restriction is expected to possess bi-adjoints.
{% endslo %}

Let $\mathcal{C}^→ = 𝐅𝐮𝐧𝐜𝐭 (→ , \mathcal{C})$ denote the morphism category, wherein the collection of objects is $𝖬𝗈𝗋(\mathcal{C})$ and the morphisms are commutative squares.

{% pro %}
Show in steps that

1. the assignments $s,t : \mathcal{C}^→ → \mathcal{C}$ determined by $f ∈ (s(f), t(f))_{\mathcal{C}}$ are functors;
2. the trivial assignment $X ↦ 1_X$ is a functor from $\mathcal{C}$ to $\mathcal{C}^→$;
3. $t ⊣ 1_∙ ⊣ s$ is an adjoint triple, $1_∙$ *restricts* morphisms to objects;
4. the adjoint triple extends to a quintuple when $\mathcal{C}$ exhibits initial and terminal objects.

{% endpro %}

When we generalise $→$ to a $𝔘$-small diagram $I$, the functor $1_∙$ assigns each object $X$ to an $X$-valued diagram of type $I$. The bi-adjoints (if they exist) of $1_∙: \mathcal{C} → \mathcal{C}^I$ coincide with the definition of colimit and limit functor.

{% def %}
(Limit and Colimit). The **limit** and **colimit** of the functor from the $𝔘$-small diagram $I$ to $\mathcal{C}$ are defined as the adjoint triple $\varinjlim _I ⊣ 1_∙ ⊣ \varprojlim _I$.
{% enddef %}

{% pro %}
Show that the above definitions coincide with the standard definitions of limit and colimit in diagrams.
{% endpro %}

{% slo %}
(Co)Limit is the universal (co)cone whose conic node is the most proximate to the base diagram.
{% endslo %}

{% def %}
(Completeness). Say the category $\mathcal{C}$ admits the (co)limit of **type** $I$, provided the existence of arbitrary (co)limits of type $I → \mathcal{C}$. Say $\mathcal{C}$ is

1. $𝔘$-**(co)complete**, provided it admits all (co)limits of type $I$ ($I ∈ 𝔘$);
2. **finitely (co)complete**, provided it admits all (co)limits of type $I$ ($I$ is finite);
3. the term **bicomplete** stands for both complete and cocomplete.

{% enddef %}

{% pro %}
Suppose that $\mathcal{C}$ is additive.

1. Show that $\mathcal{C}$ is Abelian if and only if it is finitely bicomplete, and $\ker\operatorname{cok}=\operatorname{cok}\ker$.
2. Find a finitely bicomplete $\mathcal{C}$ such that $\ker\operatorname{cok} ≇ \operatorname{cok}\ker$. (Hint: consider the [category of finite filtration](https://stacks.math.columbia.edu/tag/0122) over abelian groups).

{% endpro %}

Let $F : \mathcal{C} → \mathcal{D}$ be a functor, and $X_∙ : I → \mathcal{C}$ be an $I$-diagram in $\mathcal{C}$ (as an object in the functor category $\mathcal{C}^I$ assigning $i$ to $X_i$). We shall frequently adopt the following notation.

- (**Preserving**). Say $F$ preserves (or commutes with) the limit of $X_∙$, if the induced cone $F(\varprojlim _I X) → FX_∙$ is already the limit.
- (**Reflecting**). Say $F$ reflects the limit of $X_∙$, if, if the induced cone $F(Y) → FX_∙$ is the limit, then $Y$ is the limit of $X_∙$ in the category $\mathcal{C}$.
- (**Creating**). Say $F$ creates the limit of $X_∙$, if the limit $\varprojlim _IFX$ exists in $\mathcal{D}$ and the entire cone is an image of the unique limit cone in $\mathcal{C}$ (in short, the limit in $\mathcal{C}$ is uniquely determined by that in $\mathcal{D}$).

The terminologies are clearly explained in the following example.

{% ex %}
Let $F : \mathcal{C} → \mathcal{D}$ be a functor between Abelian categories.

1. Say $F$ preserves the limit of type $\ker$, if any exact sequence of the form $0 → K \xrightarrow i X \xrightarrow f Y$ in $\mathcal{C}$ implies the exact sequence $0 → FK \xrightarrow{Fi} FX \xrightarrow{Ff} FY$ in $\mathcal{D}$.
2. Say $F$ reflects the limit of type $\ker$, if any exact sequence of the form $0 → FK \xrightarrow{Fi} FX \xrightarrow{Ff} FY$ in $\mathcal{D}$ implies the exact sequence $0 → K \xrightarrow i X \xrightarrow f Y$ in $\mathcal{C}$.
3. Say $F$ creates the limit of type $\ker$, if any exact sequence of the form $0 → H \xrightarrow{j} FX \xrightarrow{Ff} FY$ in $\mathcal{D}$ implies the exact sequence $0 → K \xrightarrow i X \xrightarrow f Y$ in $\mathcal{C}$ such that $j = Fi$ and $H = FK$.

{% endex %}

We summarise some special functors that preserve, reflect, or create limits and colimits.

1. A **left exact**/**right exact**/**exact functor** is defined to preserve all *finite limits*/*finite colimits*/*finite limits and colimits*.
2. A fully faithful functor reflects all limits and colimits.
3. Concrete forgetful functors usually create small limits and filtered colimits, e.g., the forgetful functor from $𝐌𝐨𝐝_k$ to $𝐒𝐞𝐭𝐬$, from $𝐆𝐫𝐩𝐬$ to $𝐒𝐞𝐭𝐬$, from $𝐂𝐇$ (the category of compact Hausdorff spaces) to $𝐒𝐞𝐭𝐬$, from sheaves to presheaves over algebraic structures, and from $C(\mathcal{B})$ the category of chain complexes to $\mathcal{B}^ℤ$, etc.

{% slo %}
If a forgetful functor $U : \mathcal{C} → \mathcal{D}$ creates the colimits or limits of type $I$, then it suffices to compute $\varinjlim _I$ or $\varprojlim_I$ in $\mathcal{D}$, so that the result automatically lies in $\mathcal{C}$.
{% endslo %}

{% def %}
(Pullback Functor). The **pullback functor** $φ ^∗ : \mathcal{C}^J → \mathcal{C} ^I$ is defined as the functor that assigns to each $J$-valued diagram $F$ the precomposition $F ∘ φ$, where $φ : I → J$ is a functor between $𝔘$-small diagrams.
{% enddef %}

{% ex %}
The trivial functor of diagrams $φ : I → \{∗\}$ induces the pullback functor $φ ^∗ = 1_∙ : \mathcal{C} → \mathcal{C}^I$. Whenever such a pullback has a right (left) adjoint, the (co)limit exists.
{% endex %}
{% pro %}
Suppose $φ$ is an inclusion of a subcategory that is bijective on objects (a [lluf subcategory](https://ncatlab.org/nlab/show/wide+subcategory) in the [sense](https://link.springer.com/chapter/10.1007/BFb0084215) of [P. Freyd](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=23200)). Demonstrate that $φ^∗$ creates all limits and colimits, assuming $\mathcal{C}$ is bicomplete.

- For example, the inclusion of chain complexes into the graded category $C(\mathcal{B}) → \mathcal{B}^ℤ$ is induced by pullback. When computing the (co)limit of chain complexes, one may proceed degreewise.

{% endpro %}

#### Kan Extension

The ideal of Kan extension is simple: to find the biadjoints of the pullback functor $φ ^∗$. Both limits and colimits are special cases of Kan extensions. We use $φ_!$ and $φ_∗$ to denote the functorial construction of left and right Kan extension, respectively. The desired adjoints are $φ_! ⊣ φ^! = φ^∗ ⊣ φ_∗$ (we shall not discuss the sheaf theory here, the notion is not misleading).

{% def %}
(Left Kan Extension). The **left Kan extension** of the functor $F : I → \mathcal{C}$ along $φ : I → J$ is the left adjoint $φ_! : \mathcal{C}^I → \mathcal{D}^J$ to the pullback functor $φ^!$.
{% enddef %}

It is straightforward to demonstrate the universal property using diagrams. For example, the existence of $φ _! F$ signifies that $(F, φ ^∗ (-))$ is representable, as illustrated below.

{% ex %}
We explain the universal property of $φ _!$ in diagrams.

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwwLCJJIl0sWzIsMiwiSiJdLFs0LDAsIlxcbWF0aGNhbCBDIl0sWzUsMCwiRiJdLFs2LDEsIlxcdmFycGhpIF8hRiB7XFxjb2xvcntibGFja31cXGNpcmMgXFx2YXJwaGl9IixbMzU1LDEwMCw2MCwxXV0sWzUsMiwiUlxcY2lyYyBcXHZhcnBoaSJdLFswLDIsIkYiXSxbMCwxLCJcXHZhcnBoaSAiLDJdLFsxLDIsIlxcdmFycGhpIF8hIEYiLDAseyJsYWJlbF9wb3NpdGlvbiI6NjAsImN1cnZlIjotMiwiY29sb3VyIjpbMzU1LDEwMCw2MF19LFszNTUsMTAwLDYwLDFdXSxbMSwyLCJSIiwyLHsiY3VydmUiOjJ9XSxbMyw0LCJcXGFscGhhICIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlszNTUsMTAwLDYwXX0sWzM1NSwxMDAsNjAsMV1dLFszLDUsIlxcZ2FtbWEgIiwyLHsibGV2ZWwiOjJ9XSxbNCw1LCJcXHRoZXRhX3tcXHZhcnBoaX0iLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzgsOSwiXFx0aGV0YSIsMCx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs0LDExLCJcXGNpcmNsZWFycm93bGVmdCIsMSx7InNob3J0ZW4iOnsic291cmNlIjoyMH0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDEsIlxcZ2FtbWEiLDIseyJsYWJlbF9wb3NpdGlvbiI6NDAsIm9mZnNldCI6NSwic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjMwfX1dLFs2LDEsIlxcYWxwaGEiLDAseyJsYWJlbF9wb3NpdGlvbiI6NDAsInNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sImNvbG91ciI6WzM1NSwxMDAsNjBdfSxbMzU1LDEwMCw2MCwxXV1d
\begin{tikzcd}
I &&&& {\mathcal C} & F \\
&&&&&& \color{rgb,255:red,255;green,51;blue,68}{\varphi _!F {\color{black}\circ \varphi}} \\
&& J &&& {R\circ \varphi}
\arrow[""{name=0, anchor=center, inner sep=0}, "F", from=1-1, to=1-5]
\arrow["{\varphi }"', from=1-1, to=3-3]
\arrow["{\alpha }", color={rgb,255:red,255;green,51;blue,68}, Rightarrow, from=1-6, to=2-7]
\arrow[""{name=1, anchor=center, inner sep=0}, "{\gamma }"', Rightarrow, from=1-6, to=3-6]
\arrow["{\theta_{\varphi}}", Rightarrow, dashed, from=2-7, to=3-6]
\arrow[""{name=2, anchor=center, inner sep=0}, "{\varphi _! F}"{pos=0.6}, color={rgb,255:red,255;green,51;blue,68}, curve={height=-12pt}, from=3-3, to=1-5]
\arrow[""{name=3, anchor=center, inner sep=0}, "R"', curve={height=12pt}, from=3-3, to=1-5]
\arrow["\gamma"'{pos=0.4}, shift right=5, shorten <=7pt, shorten >=11pt, Rightarrow, from=0, to=3-3]
\arrow["\alpha"{pos=0.4}, color={rgb,255:red,255;green,51;blue,68}, shorten <=7pt, shorten >=7pt, Rightarrow, from=0, to=3-3]
\arrow["\circlearrowleft"{description}, draw=none, from=2-7, to=1]
\arrow["\theta", shorten <=4pt, shorten >=4pt, Rightarrow, dashed, from=2, to=3]
\end{tikzcd}
{% endtikz %}

The red pair $(φ _! F, α)$ satisfy the following universal property: for any commutative diagram $γ : F ⇒ R ∘ φ$, there is a unique $θ$ making the diagram commute.
\\
\\
In short, $α : F ⇒ (φ _!F) ∘ φ$ is *initial* amongst the pairs $? : F ⇒ (-) ∘ φ$.

{% endex %}

{% def %}
(Right Kan Extension). The **right Kan extension** of the functor $F : I → \mathcal{C}$ along $φ : I → J$ is the right adjoint $φ_∗ : \mathcal{C}^I → \mathcal{D}^J$ to the pullback functor $φ^∗$.
{% enddef %}

{% ex %}
We elucidate the universal property of $φ _∗$ using diagrams. In this context, all $2$-arrows are reversed (while the $1$-arrows remain unchanged) compared to the preceding diagram, and $φ _!$ is replaced by $φ _∗$.

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwwLCJJIl0sWzIsMiwiSiJdLFs0LDAsIlxcbWF0aGNhbCBDIl0sWzUsMCwiRiJdLFs2LDEsIlxcdmFycGhpIF9cXGFzdCBGIHtcXGNvbG9ye2JsYWNrfVxcY2lyYyBcXHZhcnBoaX0iLFsyMjgsMTAwLDYwLDFdXSxbNSwyLCJSXFxjaXJjIFxcdmFycGhpIl0sWzAsMiwiRiJdLFswLDEsIlxcdmFycGhpICIsMl0sWzEsMiwiXFx2YXJwaGkgX1xcYXN0IEYiLDAseyJsYWJlbF9wb3NpdGlvbiI6NjAsImN1cnZlIjotMiwiY29sb3VyIjpbMjI4LDEwMCw2MF19LFsyMjgsMTAwLDYwLDFdXSxbMSwyLCJSIiwyLHsiY3VydmUiOjJ9XSxbNCwzLCJcXGFscGhhICIsMix7ImxldmVsIjoyLCJjb2xvdXIiOlsyMjgsMTAwLDYwXX0sWzIyOCwxMDAsNjAsMV1dLFs1LDMsIlxcZ2FtbWEgIiwwLHsibGV2ZWwiOjJ9XSxbNSw0LCJcXHRoZXRhX3tcXHZhcnBoaX0iLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksOCwiXFx0aGV0YSIsMix7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMSw0LCJcXGNpcmNsZWFycm93bGVmdCIsMSx7InNob3J0ZW4iOnsic291cmNlIjoyMH0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDYsIlxcZ2FtbWEiLDAseyJsYWJlbF9wb3NpdGlvbiI6NjAsIm9mZnNldCI6LTUsInNob3J0ZW4iOnsic291cmNlIjozMCwidGFyZ2V0IjoyMH19XSxbMSw2LCJcXGFscGhhIiwyLHsibGFiZWxfcG9zaXRpb24iOjYwLCJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJjb2xvdXIiOlsyMjgsMTAwLDYwXX0sWzIyOCwxMDAsNjAsMV1dXQ==
\begin{tikzcd}
I &&&& {\mathcal C} & F \\
&&&&&& \color{rgb,255:red,51;green,92;blue,255}{\varphi _\ast F {\color{black}\circ \varphi}} \\
&& J &&& {R\circ \varphi}
\arrow[""{name=0, anchor=center, inner sep=0}, "F", from=1-1, to=1-5]
\arrow["{\varphi }"', from=1-1, to=3-3]
\arrow["{\alpha }"', color={rgb,255:red,51;green,92;blue,255}, Rightarrow, from=2-7, to=1-6]
\arrow[""{name=1, anchor=center, inner sep=0}, "{\varphi _\ast F}"{pos=0.6}, color={rgb,255:red,51;green,92;blue,255}, curve={height=-12pt}, from=3-3, to=1-5]
\arrow[""{name=2, anchor=center, inner sep=0}, "R"', curve={height=12pt}, from=3-3, to=1-5]
\arrow[""{name=3, anchor=center, inner sep=0}, "{\gamma }", Rightarrow, from=3-6, to=1-6]
\arrow["{\theta_{\varphi}}"', Rightarrow, dashed, from=3-6, to=2-7]
\arrow["\theta"', shorten <=4pt, shorten >=4pt, Rightarrow, dashed, from=2, to=1]
\arrow["\gamma"{pos=0.6}, shift left=5, shorten <=11pt, shorten >=7pt, Rightarrow, from=3-3, to=0]
\arrow["\alpha"'{pos=0.6}, color={rgb,255:red,51;green,92;blue,255}, shorten <=7pt, shorten >=7pt, Rightarrow, from=3-3, to=0]
\arrow["\circlearrowleft"{description}, draw=none, from=3, to=2-7]
\end{tikzcd}
{% endtikz %}

Here $α : (φ _∗ F) ∘ φ ⇒ F$ is *terminal* amongst the pairs $? : (-) ∘ φ ⇒ F$.

{% endex %}

{% pro %}
Show that (co)limits are special cases of Kan extensions via the diagrams below. The double arrow are nothing but the (co)unit of the adjunction.
{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwwLCJJIl0sWzEsMSwiXFx7XFxhc3RcXH0iXSxbMiwwLCJcXG1hdGhjYWwgQyJdLFszLDAsIkkiXSxbNSwwLCJcXG1hdGhjYWwgQyJdLFs0LDEsIlxce1xcYXN0XFx9Il0sWzAsMiwiRiJdLFswLDEsIlxcdmFycGhpICIsMl0sWzEsMiwiXFx2YXJwaGkgX1xcYXN0IEY9XFx2YXJpbmpsaW0gRiIsMix7ImxhYmVsX3Bvc2l0aW9uIjo3MH1dLFszLDUsIlxcdmFycGhpICIsMl0sWzMsNCwiRiJdLFs1LDQsIlxcdmFycGhpIF8hIEYgPSBcXHZhcnByb2psaW0gRiIsMix7ImxhYmVsX3Bvc2l0aW9uIjo3MH1dLFsxLDYsIiIsMCx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH19XSxbMTAsNSwiIiwyLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
I \&\& {\mathcal C} \& I \&\& {\mathcal C} \\
\& {\{\ast\}} \&\&\& {\{\ast\}}
\arrow[""{name=0, anchor=center, inner sep=0}, "F", from=1-1, to=1-3]
\arrow["{\varphi }"', from=1-1, to=2-2]
\arrow[""{name=1, anchor=center, inner sep=0}, "F", from=1-4, to=1-6]
\arrow["{\varphi }"', from=1-4, to=2-5]
\arrow["{\varphi _\ast F=\varinjlim F}"'{pos=0.7}, from=2-2, to=1-3]
\arrow["{\varphi _! F = \varprojlim F}"'{pos=0.7}, from=2-5, to=1-6]
\arrow[shorten <=3pt, shorten >=3pt, Rightarrow, from=1, to=2-5]
\arrow[shorten <=3pt, shorten >=3pt, Rightarrow, from=2-2, to=0]
\end{tikzcd}
{% endtikz %}
{% endpro %}

We show an example of Kan extension in theory of group representation. Any group $G$ is considered as a category $BG$ with a single object, and the morphisms are the group elements. A representation of $G$ in $𝐌𝐨𝐝 _k$ is exactly a functor $F : G → 𝐌𝐨𝐝 _k$.

{% pro %}
(**Fixed points** as a limit). $M := F(∗)$ is clearly a $kG$-module by definition. One may guess and verify that $\varprojlim_{BG} F → F(∗)$ is the inclusion of the fixed points $M^G$ into $M$. Show that this is also the $0$-th (relative) cohomology group
$$\begin{equation}
H^0(G,M) := \mathrm{Hom}_{kG}(k, M).
\end{equation}$$
Here $(∑ c_i g_i) : k → k,\quad a ↦ ∑ c_i a$ makes $k$ a trivial $kG$-module.
\\
Hint: discuss the ses $0 → IG → kG → k → 0$, and identify $\mathrm{Hom}_{kG}(k, M)$ as a subgroup of $M$ via $(\operatorname{cok}(-),?) ≃ \ker (-, ?)$.
{% endpro %}

{% pro %}
(**Orbits** as a colimit). $M := F(∗)$ is clearly a $kG$-module by definition. One may guess and verify that $F(∗) \varinjlim_{BG} F$ is quotient set of $G$-orbits, where $∼$ is generated by $mg ∼ m$. Show that this is also the $0$-th (relative) cohomology group
$$\begin{equation}
H_0(G,M) := M ⊗_{kG} k.
\end{equation}$$
Here $(∑ c_i g_i) : k → k,\quad a ↦ ∑ c_i a$ makes $k$ a trivial $kG$-module.
\\
Hint: discuss the ses $0 → IG → kG → k → 0$, and identify $M ⊗_{kG} k$ as a subgroup of $M$ via $(\operatorname{cok}(-)) ⊗ ?) ≃ \operatorname{cok}(-⊗ ?)$.
{% endpro %}

{% pro %}
(The **(co)induced** representation). The group homomorphism $φ : G → H$ endows any $kH$-module with the structure of a $kG$-module via restriction, that is, the restriction functor from $𝐌𝐨𝐝 _{kH}$ to $𝐌𝐨𝐝 _{kG}$:
$$
φ ^!(?) = \mathrm{Hom}_{kH}(_{kG}kH, ?) ≃ φ ^∗(?) = ? ⊗ kH_{kG}
$$

Now, $φ _!(M):= M ⊗ _{kG}kH$ and $φ _∗ (M) := \mathrm{Hom}_{kG}(kH, M)$ are termed the **induced** and **coinduced** representations of $M ∈ 𝐌𝐨𝐝 _k$, respectively. Investigate the following:

1. Under what conditions are these functors well-defined when restricted to $𝐦𝐨𝐝$?
2. Examine special cases of $φ$, such as inclusions and quotients.
3. Observe that the notions $φ _!$ and $φ _∗$ generalise to the *dependent sum* (abstract $⊗$) and *dependent product* (abstract $\mathcal{Hom}$); see section 1.5.3 of [the book](https://academic.oup.com/book/52790) by [P. T. Johnstone](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=24514).

{% endpro %}
