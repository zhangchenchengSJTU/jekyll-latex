## DG Category

### Enriched Category

Let $\mathcal{V}$ be a monoidal category (e.g. the sets $𝐒𝐞𝐭𝐬$, the graded sets $𝐆𝐫𝐒𝐞𝐭𝐬$, pointed sets $𝐒𝐞𝐭𝐬_+$, modules over commutative rings $𝐌𝐨𝐝 _k$, chain complexes over commutative rings $C(k)$, the derived category of chain complexes $D(k)$, etc).

{% def %}
($\mathcal{V}$-enrichend). A category $\mathcal{C}$ is $\mathcal{V}$-enriched, provided for any $X,Y ∈ \mathcal{C}$, the set of morphisms $\mathrm{Hom}_\mathcal{C}(X,Y)$ is an object in $\mathcal{V}$. The composition of morphisms is a morphism in $\mathcal{V}$.
{% enddef %}

In some context, a monoidal category is assume to be $𝔘$-small for some universe $𝔘$. Here we view $\mathcal{V} = ⋃ \mathcal{V}^{≤ κ}$ as our category is *concrete enough*.

{% ex %}
The $𝐀𝐛$-enriched category is preadditive, rather than additive. For instance, every ring is $𝐀𝐛$-enriched.
{% endex %}

{% ex %}
(Closed monoidal almost implies self-enriched). $𝐒𝐞𝐭$ is $𝐒𝐞𝐭$-enriched, $𝐒𝐞𝐭 _+$ is $𝐒𝐞𝐭 _+$-enriched, $𝐌𝐨𝐝 _k$ is $𝐌𝐨𝐝 _k$-enriched, etc.
{% endex %}

{% pro %}
Show that the category of small category $𝐂𝐚𝐭$ is a locally small category. Moreover, $𝐂𝐚𝐭$ is closed monoidal and $𝐂𝐚𝐭$-enriched.

- The term functor category indicates that $(\mathcal{C},\mathcal{D})_{𝐂𝐚𝐭}$ is an object in $𝐂𝐚𝐭$
- General category theory does not care above the size. The category of general category is well-defined, but no longer locally small.

{% endpro %}

Note that the category of chain complex $C(k)$ is self-enriched once we replace $(-, ?)_C$ with $\mathcal{HOM}(-, ?)$.

{% def %}
($C^{dg}(k)$). The category $C^{dg}(k)$ has the same set of objects as $C(k)$. For any $X,Y ∈ C^{dg}(k)$, the morphism set is the chain complex $\mathcal{HOM}(X,Y)$.
{% enddef %}

### DG Categories

Recall that in our convention, **a morphism between DG modules** lies in $Z^0 \mathcal{HOM}$, rather than an element in $\mathcal{HOM}$!

#### Definition

We assume all categories are $𝐌𝐨𝐝 _k$-enriched for commutative ring $k$.

{% def %}
(DG Category $𝐃𝐆𝐂𝐚𝐭(_k)$). A DG category is a category enriched over $C^{dg}(k)$ s.t.

- all identical maps has degree $0$, and
- the compositions are morphisms of DG modules.

{% enddef %}

{% ex %}
$d(1_X) = 0$.
{% endex %}

Note that a DG category has not to be additive.

{% pro %}
Show that $∅$ and $\{∅\}$ are DG categories.
{% endpro %}

{% pro %}
Show the full subcategory $𝐃𝐆𝐀𝐥𝐠 _k ↪ 𝐃𝐠𝐂𝐚𝐭 _k$.
{% endpro %}

{% def %}
(Tensor of $𝐃𝐆𝐂𝐚𝐭$). Let $\mathcal{A}$ and $\mathcal{B}$ be DG categories, then $\mathcal{A} ⊠ \mathcal{B}$ is a DG category with objects of the form $A ⊗ B$, and $\mathcal{HOM}_{\mathcal{A} ⊠ \mathcal{B}}(A ⊗ B, A' ⊗ B') := \mathcal{HOM}(A,A') ⊗ \mathcal{HOM}(B,B')$.

- The tensor category is a DG category by checking identities and compositions.
- Remind the sign rules in the composition.

{% enddef %}

We also show that $𝐃𝐆𝐂𝐚𝐭$ is self-enriched, which almosts shows the closed monoidal structure.

{% def %}
($\mathcal{FUN}$). Let $\mathcal{A}$ and $\mathcal{B}$ be DG categories, then $\mathcal{FUN}(\mathcal{A}, \mathcal{B})$ is a DG category. An object $F ∈ \mathcal{FUN}(\mathcal{A}, \mathcal{B})$ is called a DG functor, if it is compatible with identity and compositions, and the followings are **morphisms of DG modules**:

$$\begin{equation}
F_{X,Y} ∈ \mathcal{HOM}_k ((X, Y)_\mathcal{A}, (FX,FY)_\mathcal{B}).
\end{equation}$$

For $F,G ∈ \mathcal{FUN}(\mathcal{A}, \mathcal{B})$, we define $\mathcal{HOM}(F,G) ∈ C^{dg}(k)$ as the complex of graded morphisms. A degree $n$ natural transformation $α$ is a collection $\{α_X ∈ (FX, GX)_\mathcal{B}^n\}_{X ∈ \mathcal{A}}$ s.t. $Gf ∘ α_{s(f)} = α _{t(f)} ∘ Ff$. The differential is computed elementwise in $\mathcal{B}$. Note that $\deg \mathrm{id}_∙ = 0$, and the composition is a morphism of DG modules.
{% enddef %}

{% ex %}
The only requirement for $α ∈ \mathcal{HOM}(F,G)$ to be a usual natural transformation is that $α$ preserves differentials. Hence, $Z^0 (\mathcal{FUN})$ is a category of DG functors along with usual natural transformations.
{% endex %}

A comparison of $𝐃𝐆𝐂𝐚𝐭$ and $𝐂𝐚𝐭$ might help the comprehension.

* $𝐂𝐚𝐭$ is $𝐂𝐚𝐭$-enriched, as $𝐃𝐆𝐂𝐚𝐭$ is $𝐃𝐆𝐂𝐚𝐭$-enriched;
* a functor has plain structure, as a DG-functor has plain structure.
* the functor category $(F,G)_{𝐂𝐚𝐭}$ is a category, as $\mathcal{HOM}(F,G)$ is a DG-catetory;
* An morphism in $(F,G)_{𝐂𝐚𝐭 }$ is labelled by $𝖮𝖻 (\mathcal{A})$ and the computation is done in $\mathcal{B}$; an morphism in $\mathcal{HOM}(F,G)$ is also labelled by $𝖮𝖻 (\mathcal{A})$ and the computation is done in $\mathcal{B}$.

$$\begin{equation}
\boxed{\text{Those enriched by itself almost has an internal Hom.}}
\end{equation}$$

#### Closed Monoidal Structure

We assume $A$ to be a symmetric DG algebra and use $𝐃𝐆𝐂𝐚𝐭_{(A,d)}$ to denote the category of $𝐌𝐨𝐝 _{(A,d)}$-enriched small categories.

{% def %}
(The unit category). $A ↪ 𝐃𝐆𝐂𝐚𝐭_{(A,d)}$ is a $𝐌𝐨𝐝 _{(A,d)}$-enriched category with a singleton element.
{% enddef %}

{% def %}
(Tensor categories). A tensor object in $𝐃𝐆𝐂𝐚𝐭_{(A,d)}$ is defined the category $\mathcal{A} ⊠ \mathcal{B}$ with

- $𝖮𝖻 (\mathcal{A} ⊠ \mathcal{B}) := 𝖮𝖻 (\mathcal{A}) × 𝖮𝖻 (\mathcal{B})$, and
- $((X,X'), (Y,Y'))_{\mathcal{A}⊠ \mathcal{B}} := (X,X')_\mathcal{A} ⊗ (Y,Y')_\mathcal{B}$.

{% enddef %}

{% pro %}
Show the natural isomorphisms of small categories

1. $\mathcal{A} ⊠ (\mathcal{B} ⊠ \mathcal{C}) ≅ (\mathcal{A} ⊠ \mathcal{B}) ⊠ \mathcal{C}$;
2. $\mathcal{A} ⊠ A ≅ \mathcal{A} ≅ A ⊠ \mathcal{A}$ here $A$ is the unit category;
3. $\mathcal{A} ⊠ \mathcal{B} ≅ \mathcal{B} ⊠ \mathcal{A}$ wherein $(-,?)_\mathcal{A} ⊗ (∗ , !)_\mathcal{B} → (∗ , !)_\mathcal{B} ⊗ (-,?)_\mathcal{A}$ is given by sign rules.

Hint: (Step 1). Show the correspondence are functors. There verifications comes from the natural isomorphisms of DG modules. (Step 2). Show the natural isomorphism of the set of objects, and morphisms.

{% endpro %}

{% prop %}
$𝐃𝐆𝐂𝐚𝐭 _{(A,d)}$ is symmetric monoidal.

{% pf %}
It is more efficient to write a proof than to read it.
{% endpf %}

{% endprop %}

{% def %}
(Hom Category). A Hom object in $𝐃𝐆𝐂𝐚𝐭_{(A,d)}$ is defined to be the category $\mathcal{FUN}(\mathcal{A}, \mathcal{B})$ with

- $𝖮𝖻 (\mathcal{FUN}(\mathcal{A}, \mathcal{B})) ∋ F$ is characterised by a collection of assignments $? ↦ F(?)$, satisfies
  - $F_{X,Y} ∈ \mathcal{HOM}((X,Y)_\mathcal{A}, (FX,FY)_\mathcal{B})$ for any $X,Y ∈ 𝖮𝖻 (\mathcal{A})$;
  - $F_{X,X}(1_X) = 1_{FX}$ for any $X ∈ 𝖮𝖻 (\mathcal{A})$;
  - $F_{X,Z}(g ∘ f) = F_{Y,Z}(g) ∘ F_{X,Y}(f)$ for any $X,Y,Z ∈ 𝖮𝖻 (\mathcal{A})$, $f ∈ (X,Y)_\mathcal{A}$ and $g ∈ (Y,Z)_\mathcal{A}$.
- $𝖬𝗈𝗋 (\mathcal{FUN}(\mathcal{A}, \mathcal{B}))$ is the union of $\{\mathcal{HOM}(F,G)\}_{F,G ∈ 𝖮𝖻} ⊆ 𝐌𝐨𝐝 _{(A,d)}$'s. For each DG module $\mathcal{HOM}(F,G)$,
  - a degree $n$ element is a collection $\{α_X ∈ (FX,GX)_\mathcal{B}^n\}_{X ∈ 𝖮𝖻 (\mathcal{A})}$ s.t. $Gφ ∘ α_{s(φ )} = α _{t(φ)} ∘ Fφ$ for any $φ ∈ 𝖬𝗈𝗋 (\mathcal{A})$.
  - the differential $d_{\mathcal{HOM}(F,G)} : (F?, G?)_\mathcal{B}^n → (F?, G?)_\mathcal{B}^{n+1}$, $φ ↦ d_\mathcal{B}(φ)$ is computed elementwise in $\mathcal{B}$.

Note that $Z^0 \mathcal{HOM}(F,G)$ are the usual set of isomorphisms.

{% enddef %}

{% thm %}
$\mathcal{FUN}$ is the internal Hom of $𝐃𝐆𝐂𝐚𝐭$, i.e. there is a natural isomorphism of DG categories

$$\begin{equation}
Φ_{\mathcal{A}, \mathcal{B}, \mathcal{C}} : \mathcal{FUN}(\mathcal{A} ⊠ \mathcal{B}, \mathcal{C}) ≃ \mathcal{FUN}(\mathcal{A}, \mathcal{FUN}(\mathcal{B}, \mathcal{C})).
\end{equation}$$

{% pf %}
We show $Φ$ is a functor, and an isomorphism of categories.\\
We take any DG functor $F$ and show that **(Step 1)** $Φ (F)$ is also a DG functor. Note that $Φ (F) : X ↦ F(X, -)$, we obtain

$$\begin{equation}
(X, Y)_\mathcal{A} → \mathcal{HOM}(F(X, -), F(Y, -))
\end{equation}$$

We show that **(Step 1-1)** $F(f, -) ∈ \mathcal{HOM}(F(X,-), F(Y,-))$. It suffices to show

$$\begin{equation}
F(f, K) ∘ F(X, φ) = F(Y, φ) ∘ F(f, K).
\end{equation}$$

This is actually $F(\text{commutative square in } \ \mathcal{A})$.
\\
We show that **(Step 1-2)** $f ↦ F(f, -)$ is a chain map. The assignment is clearly degree preserving. Note that

$$\begin{equation}
F(d_\mathcal{A} f, 1_K) = d_\mathcal{C} F(f, 1_K) - (-1)^? F(f, d_\mathcal{B} 1_K) = d_\mathcal{C} F(f, 1_K).
\end{equation}$$

Then we show that **(Step 2)** $Φ$ is an natural transformation in three variables.
\\
We take **(Step 2-1)** any DG functor $T : \mathcal{A} → \mathcal{A}'$ and show that

$$\begin{equation}
\mathcal{FUN}(T, \mathcal{FUN}(\mathcal{B}, \mathcal{C})) ∘ Φ_{\mathcal{A}', \mathcal{B}, \mathcal{C}} = Φ_{\mathcal{A}, \mathcal{B}, \mathcal{C}} ∘ \mathcal{FUN}(T ⊠ \mathcal{B}, \mathcal{C}).
\end{equation}$$
For any $L ∈ \mathcal{FUN}(\mathcal{A}'⊠ \mathcal{B}, \mathcal{C})$,

$$\begin{equation}
𝐑𝐇𝐒 (L) = [? ↦ L(T(?), -)] = T^∗ [! ↦ L(!, -)] = 𝐋𝐒𝐇 (L).
\end{equation}$$

The verification of **(Step 2-2)** ($\mathcal{B} → \mathcal{B}'$) and **(Step 2-3)** ($\mathcal{C} → \mathcal{C}'$) are similar.
\\
We finally show that **(Step 3)** $Φ$ is a natural isomorphism, i.e., it is bijective one obejcts and morphisms.
\\
If **(Step 3-1)** $Φ (F) = 0$, then $F(X, -) = 0$ for any $X ∈ \mathcal{A}$. Hence $F = 0$. To see **(Step 3-2)** it is surjective, we take arbitrary $G ∈ \mathcal{FUN}(\mathcal{A}, \mathcal{FUN}(\mathcal{B}, \mathcal{C}))$ and show that $(-, ?) ↦ (G(-))(?)$ is a DG functor. Note that in the adjunction, $M → \mathcal{HOM}(N, L)$ is a chain map iff so is $M ⊗ N → L$. We show **(Step 3-3)** $Φ$ is faithful. If $Φ (α) = 0$ for $α : F → G$, then $(Φ α)_X = 0$ for any $X ∈ \mathcal{A}$. Hence $α_{X, Y} = 0$, and thus $α = 0$. Finally, we show **(Step 3-4)** $Φ$ is full. We see that any $β : Φ (F) → Φ (G)$ in $\mathcal{FUN}(\mathcal{A}, \mathcal{FUN}(\mathcal{B}, \mathcal{C}))$ is the image of the collection of assignments

$$\begin{equation}
α _{X,Y} : (X, Y) ↦ [(β _X)(Y) : (Φ (F)(X))(Y) → (Φ (G)(X))(Y)].
\end{equation}$$

This assignment is of the type $α _{X,Y} : F(X,Y) → G(X,Y)$. For any $f : X → X'$ and $g : Y → Y'$, we see

$$\begin{aligned}
(α_{X,Y} ∘ F(f,g)) & = α_{X,Y} ∘ F(f, 1_{Y}) ∘ F(1_{X'}, g)\\
& = (β_X)_Y ∘ ((ΦF)f)(Y) ∘ ((ΦF)(X')) (g)\\
& = [(β_X) ((ΦF)f)](Y) ∘ ((ΦF)(X')) (g)\\
& = [((ΦF)f) (β_{X'})](Y) ∘ ((ΦF)(X')) (g)\\
& = ((ΦG)f)(Y) ∘ (β_{X'})(Y) ∘ ((ΦF)(X')) (g)\\
& = ((ΦG)f)(Y) ∘ ((β_{X'})(Y) ∘ ((ΦF)(X')) (g))\\
& \overset ⋆= ((ΦG)f)(Y) ∘ ((ΦG)(X')) (g) ∘ (β_{X'})(Y')\\
& = (G(f,g) ∘ α _{X', Y'}).
\end{aligned}$$

Here $⋆$ is given by

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMSwxLCIoKFxcUGhpIEYpKFgnKSkoWSkiXSxbMywxLCIoKFxcUGhpIEcpKFgnKSkoWSkiXSxbMSwwLCIoKFxcUGhpIEYpKFgnKSkoWScpIl0sWzMsMCwiKChcXFBoaSBHKShYJykpKFknKSJdLFswLDEsIlxcLCJdLFs0LDEsIlxcLCJdLFswLDEsIlxcYmV0YSBfe1gnfShZKSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDAsImdeXFxhc3QiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywxLCJnXlxcYXN0Il0sWzIsMywiXFxiZXRhIF97WCd9KFknKSJdXQ==
\begin{tikzcd}
	& {((\Phi F)(X'))(Y')} && {((\Phi G)(X'))(Y')} \\
	{\,} & {((\Phi F)(X'))(Y)} && {((\Phi G)(X'))(Y)} & {\,}
	\arrow["{\beta _{X'}(Y')}", from=1-2, to=1-4]
	\arrow["{g^\ast}", dashed, from=1-2, to=2-2]
	\arrow["{g^\ast}", from=1-4, to=2-4]
	\arrow["{\beta _{X'}(Y)}", dashed, from=2-2, to=2-4]
\end{tikzcd}
{% endtikz %}

Hence, it defines a natural transformation in $\mathcal{FUN}(\mathcal{A} ⊠ \mathcal{B}, \mathcal{C})$.

{% endpf %}

{% endthm %}

#### Example: DG Modules

We show elementary examples of DG categories and DG functors.

{% def %}
We denote

- $𝐌𝐨𝐝 _{(A,d)}$ as the category of DG modules whose morphisms are $d$-preserving,
- $𝐌𝐨𝐝 _{(A,d)}^{dg}$ as the category of DG modules whose morphisms are in $\mathcal{HOM}$.

Note that $Z^0 (-, ?)_{𝐌𝐨𝐝 _{(A,d)}^{dg}} = (-, ?)_{𝐌𝐨𝐝 _{(A,d)}}$.

{% enddef %}

{% ex %}
Let $A ∈ 𝐃𝐆𝐀𝐥𝐠 _k$. Then $𝐌𝐨𝐝 _{(A,d)}^{dg}$ is a DG category.

{% pf %}
The category $𝐌𝐨𝐝 _{(A,d)}^{dg}$ is $C^{dg}(k)$-enriched. We show that $d_{\mathcal{HOM}}$ is compatible with the definition of DG categories. Clearly $d_{\mathcal{HOM}}(1_X) = 0$. The composition is a morphism of DG modules, since

$$\begin{aligned}
& \ \ \quad d_{\mathcal{HOM}(\text{composition} (f ⊗ g))}\\
& = d_{\mathcal{HOM}}(f ∘ g)\\
& = dfg - (-1)^{|f| + |g|} fgd\\
& = dfg - (-1)^{|f|} fdg + (-1)^{|f|} fdg - (-1)^{|f| + |g|} fgd\\
& = d_{\mathcal{HOM}}(f)g + (-1)^{|f|} fd_{\mathcal{HOM}}(g)\\
& = \text{composition} (d_{⊗} (f ⊗ g))
\end{aligned}$$

{% endpf %}

{% endex %}

Hence, $C^{dg}(k)$ is a DG category. $𝐌𝐨𝐝 _{(A,d)}^{dg}$ is indeed a Hom object in $𝐃𝐆𝐂𝐚𝐭_k$. Recall that

$$\begin{equation}
𝐌𝐨𝐝 _R ≃ (R^{\mathrm{op}}, 𝐌𝐨𝐝 _k)_{𝐂𝐚𝐭_k},\quad R ∈ 𝐀𝐥𝐠 _k.
\end{equation}$$

- Here $⋃_κ 𝐌𝐨𝐝^κ _R ≃ ⋃ _λ (R^{\mathrm{op}}, 𝐌𝐨𝐝^λ _k)_{𝐂𝐚𝐭_k}$ is the actual expression. We omit the set-theoretic issues.

We show anagolous corollaries for DG algebras and DG modules.

{% thm %}
For $A ∈ 𝐃𝐆𝐀𝐥𝐠 _k ↪ 𝐃𝐆𝐂𝐚𝐭 _k$, one has the equivalence

$$\begin{equation}
\mathcal{FUN}(A^{\mathrm{op}}, C^{dg}(k)) ≃ 𝐌𝐨𝐝 _{(A,d)}^{dg}.
\end{equation}$$

{% pf %}
Let $𝖮𝖻 (A)= \{∗ \}$. Any DG functor $F$ determined an underlying chain complex $F(∗ ) ∈ C^{dg}(k)$ and a morphism of DG algebras:

$$\begin{equation}
A → \mathcal{HOM}(F(∗), F(∗)).
\end{equation}$$

This shows that $F(∗)$ is a DG module. Conversely, any DG module $M$ corresponds to a homomorphism $A → \mathcal{HOM}(M,M)$, which determined a DG functor from a singleton.
\\
We show assignment is a functor. An $n$-natural transformation $α : F → G$ corresponds to $α _∗ ∈ \mathcal{HOM}^n(F(∗ ), G(∗ ))$ with
$$\begin{equation}
α _∗ ∘ F(r ) = G(r ) ∘ α _∗,\quad ∀ r ∈ A.
\end{equation}$$

This shows that $α _∗ : F(∗ ) → G(∗ )$ is an $n$-morphism of DG modules.
\\
We already show the functor is essentially surjective. It remains to show the fully-faithful property. To see it is full, we take any $φ ∈ \mathcal{HOM}(F(∗ ), G(∗ ))$. This determined a natural transformation as $φ$ preserves $A$-action. To see it is faithful, we take any $α : F → G$ s.t. $α _∗ = 0$. Then $α = 0$.

{% endpf %}

{% endthm %}

We show the base change.

{% ex %}
For morphism of DG algebras $φ : A → B$, we have the base change functor

$$\begin{equation}
\mathcal{FUN}(A^{\mathrm{op}}, C^{dg}(k)) → \mathcal{FUN}(B^{\mathrm{op}}, C^{dg}(k)),\quad F ↦ φ ^∗ F = F(φ (-)).
\end{equation}$$

Thanks to the closed monoidal structure, it is a DG functor.

{% endex %}

Note that this induce a functor between $𝐌𝐨𝐝 _{(A,d)}^{dg}$, $𝐌𝐨𝐝 _{(A,d)}$ and $K(𝐌𝐨𝐝 _{(A,d)})$.

{% pro %}
Show the adjoint triple of base change

{% tikz %}
% https://q.uiver.app/#q=WzAsNCxbMSwwLCJcXG1hdGhiZntNb2R9X3soQSxkKX1ee2RnfSJdLFs0LDAsIlxcbWF0aGJme01vZH1feyhCLGQpfV57ZGd9Il0sWzUsMCwiXFwsIl0sWzAsMCwiXFwsIl0sWzAsMSwiLVxcb3RpbWVzIF9BIEIiLDIseyJvZmZzZXQiOjJ9XSxbMCwxLCJcXG1hdGhjYWx7SE9NfV9BKEIsIC0pIiwwLHsib2Zmc2V0IjotMn1dLFsxLDAsIi0gXFxvdGltZXMgX0JCX0EiLDIseyJjdXJ2ZSI6NX1dLFsxLDAsIlxcbWF0aGNhbHtIT019X0IoQiwgLSkiLDAseyJjdXJ2ZSI6LTV9XSxbNSw0LCIiLDAseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
	{\,} \& {\mathbf{Mod}_{(A,d)}^{dg}} \&\&\& {\mathbf{Mod}_{(B,d)}^{dg}} \& {\,}
	\arrow[""{name=0, anchor=center, inner sep=0}, "{-\otimes _A B}"', shift right=2, from=1-2, to=1-5]
	\arrow[""{name=1, anchor=center, inner sep=0}, "{\mathcal{HOM}_A(B, -)}", shift left=2, from=1-2, to=1-5]
	\arrow["{- \otimes _BB_A}"', curve={height=30pt}, from=1-5, to=1-2]
	\arrow["{\mathcal{HOM}_B(B, -)}", curve={height=-30pt}, from=1-5, to=1-2]
	\arrow[between={0.2}{0.8}, equals, from=1, to=0]
\end{tikzcd}
{% endtikz %}

{% endpro %}

Recall that

$$\begin{equation}
\boxed{\text{DG modules are DG functors from a certian DG algebra.}}
\end{equation}$$

The embedding $𝐃𝐆𝐀𝐥𝐠 _k ↪ 𝐃𝐆𝐂𝐚𝐭 _k$ suggests a general definition of DG modules.

{% def %}
(DG module). The category of (right) DG modules over $\mathcal{A}$ is $\mathcal{FUN}(\mathcal{A}^{\mathrm{op}}, C^{dg}(k))$. We use the notion $𝐌𝐨𝐝 _{\mathcal{A}}^{dg}$.
{% enddef %}

{% prop %}
$𝐌𝐨𝐝 _{\mathcal{A}}^{dg}$ is bicomplete, and also admits an auto-equivalence $Σ$.
{% endprop %}

{% ex %}
The right action of $\mathcal{A}$ over $F ∈ 𝐌𝐨𝐝 _{\mathcal{A}}^{dg}$ is given by

$$\begin{equation}
F(X) ⊗ (X', X)_\mathcal{A} → F(X'),\quad s ⊗ f ↦ s ∘ f.
\end{equation}$$

By (enirched) Yoneda lemma, one has the embedding

$$\begin{equation}
\mathcal{A} ↪ 𝐌𝐨𝐝 _{\mathcal{A}}^{dg},\quad X ↦ (-, X)_\mathcal{A}.
\end{equation}$$

{% endex %}

{% ex %}
A computation shows that

$$\begin{equation}
H^n (FX) \xrightarrow[\text{Yoneda}] ∼ H^n(\mathcal{HOM}((-, X)_\mathcal{A}, F)) ≃ ((-, X)_\mathcal{A}, Σ^nF)_K.
\end{equation}$$

{% endex %}

The bi-modules correspond to bi-functors.

{% def %}
(Bi-modules). $\mathcal{A}$-$\mathcal{B}$-bi-module coincides $\mathcal{A}^{\mathrm{op}} ⊗ \mathcal{B}$ modules.

{% enddef %}

<!-- {% thm %}
(Tensor-Hom adjunction). We show the isomorphism of bimodules:

$$\begin{equation}
\mathcal{HOM}_\mathcal{C}(_\mathcal{A} F ⊗_\mathcal{B} G_\mathcal{C}, {}_\mathcal{D} H_\mathcal{C}) ≃ \mathcal{HOM}_\mathcal{B}(_\mathcal{B} G_\mathcal{C}, \mathcal{HOM}_\mathcal{C}( _\mathcal{A} F_\mathcal{C} , {}_\mathcal{D} H_\mathcal{C}))
\end{equation}$$

{% endthm %} -->

#### The Homotopy

For a triangulated structure over the homotopy category of $\mathcal{A} ∈ 𝐃𝐆𝐂𝐚𝐭 _k$, we assume $\mathcal{A}$ is additive and admits a shift $Σ$ s.t.

$$\begin{equation}
(X,Σ Y) _\mathcal{A} ≃ Σ (X,Y)_\mathcal{A} ≃ (Σ ^{-1}X,Y)_\mathcal{A}.
\end{equation}$$

{% thm %}
$C(\mathcal{A})$, the category of chain complexes over $\mathcal{A}$, admits a Forbenius exact structure. The ses are dws.

{% pf %}
The construction of adjoint $∞$-ple between $C(\mathcal{A})$ and $\mathcal{A}^{ℤ}$ is still valid. By the same diagram chasing, the forgotful functor created all limits and colimits. The projectives = injectives are exactly the image of free functor $\mathcal{A}^{ℤ} → C(\mathcal{A})$.
{% endpf %}

{% endthm %}

{% thm %}
The homotopy category admits two definitions

$$\begin{equation}
\frac{C(\mathcal{A})} { {\text{homotopy} } } ≃ \frac{(C(\mathcal{A}), \ \text{dws})}{\text{acyclic splits complexes}}.
\end{equation}$$

Hence $K(\mathcal{A})$ is triangulated. The distinct triangles are of the form $X \xrightarrow f Y \xrightarrow{\binom 01} \mathrm{Cone}(f) \xrightarrow{(1 \ 0)} Σ X$.

{% pf %}
See $K(𝐌𝐨𝐝 _{(A,d)})$.
{% endpf %}

{% endthm %}

### Derived Module Category

We focus the base change of derived categories and derived equivalences.

#### Resolutions

The resolutions are discussed over bimodules.

{% ex %}
The previous definition of bi-modules (by tensor algebra) coincides our usual definition.

{% pf %}
Note that $\mathcal{FUN}(A^{\mathrm{op}} ⊗ B, C^{dg}(k)) ≃ \mathcal{FUN}(A^{\mathrm{op}}, \mathcal{FUN}( B, C^{dg}(k)))$. We show that for any left $B$ modules $_BM$, the compatible $A$-module structure corrsponds to a homomorphism of DG algebras, i.e,

$$\begin{equation}
φ : A → \mathcal{HOM}_{B^{\mathrm{op}}}(M, M)\quad ↔ \quad m.a ↦ m φ (a).
\end{equation}$$

The verification is easy. We underscore the signrule

$$\begin{equation}
m (a ⊗ b) = (-1)^{|a| + |m|} amb.
\end{equation}$$

{% endpf %}

{% endex %}

Now we define derived Hom.

{% thm %}
$\mathcal{HOM}(_AM_B, -) : K(𝐌𝐨𝐝 _{(B,d)}^{dg}) → K(𝐌𝐨𝐝 _{(A,d)}^{dg})$ yields a localised functor

$$\begin{equation}
𝐑 \mathcal{HOM}(_AM_B, -) : D(𝐌𝐨𝐝 _{(B,d)}^{dg}) → D(𝐌𝐨𝐝 _{(A,d)}^{dg}).
\end{equation}$$

Here $𝐑 \mathcal{HOM}(_AM_B, -) := (ρ(_AM_B), -)_K$, and $ρ((_AM_B)) → M$ is a resolution of bi-modules.

{% pf %}
$\mathcal{HOM}(_AM_B, -) : K(𝐌𝐨𝐝 _{(B,d)}^{dg}) → K(𝐌𝐨𝐝 _{(A,d)}^{dg})$ is triangulated as it preserves cones. A quasi-isomorphism 
{% endpf %}

{% endthm %}

To be continued.


