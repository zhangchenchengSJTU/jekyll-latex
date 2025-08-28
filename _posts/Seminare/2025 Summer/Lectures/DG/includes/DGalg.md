## DG Algebra

Throughout, $k$ is a commutative unital ring, all complexes are cochain complexes ($\cdots → X^n \xrightarrow{d_X^n} X^{n+1} → 0$). $C(R)$ is the category of chain complexes over right modules $𝐌𝐨𝐝 _R$. DG for differential graded.

### Basics

#### DG Algebras

We assume the readers are familiar with bicomplexes and the closed monoidal structure $(C(A), A, ⊗, \mathcal{HOM})$, where $A ∈ 𝐀𝐥𝐠 _k$. We denote

* $X ⊗ Y$ as the $∐$-total complex of the bicomplex $(p,q) ↦ X^p ⊗ Y^q$;
* $\mathcal{HOM}(X,Y)$ as $∏$-total complex of the bicomplex $(p,q) ↦ (X^{-p},Y^q)$.

{% def %}
(DG algebra). Say $(A, d)$ is a DG algebra, provided

1. $(A, d)$ is a chain complex over $k$;
2. $∐ _{n ∈ ℤ} A^n$ is a unital ring with such that $A^m A^n ⊆ A^{m+n}$;
3. for homogeneous $a$, $d(ab) = d(a)b + (-1)^{|a|} a d(b)$.

We denote $𝐃𝐆𝐀𝐥𝐠 _k$ as the category of DG $k$-algebra.

{% enddef %}

{% pro %}
Show the following simple corollaries:

1. $1 ∈ A^0$, and $d(1) = 0$;
2. the multiplication is a chain map $A ⊗ A → A$.

{% endpro %}

We denote $A = (A,d)$ ($A = ∐_{n ∈ ℤ } A^n$) as the underlying chain complex (graded algebra).

{% ex %}
There is an inclusion: $𝐀𝐥𝐠 _k ↪ 𝐃𝐆𝐀𝐥𝐠 _k$, where $A$ maps to $\cdots → 0 → A → 0 → \cdots$. The forgotful functor $𝐃𝐆𝐀𝐥𝐠 _k → 𝐆𝐫𝐀𝐥𝐠$ (almost) has no adjunctions. The **real forgotful functor** is $𝐃𝐆𝐀𝐥𝐠_k → 𝐀𝐥𝐠 _k, \quad A ↦ A^0$, where the left adjoint is the following construction due to Cuntz–Quillen ([ref](https://www.claymath.org/wp-content/uploads/2023/04/Quillen-lecture-notes-Blower.pdf)):

$$\begin{equation}
𝐀𝐥𝐠_k → 𝐃𝐆𝐀𝐥𝐠_k,\quad A ↦ A ⊕ ∐ \limits_{k ≥ 1} Ω^1(A)^{⊗  k}.
\end{equation}$$

Here $Ω ^1 (A) = \ker \begin{bmatrix}A ⊗ A & → & A\\ a ⊗ b & ↦ & [a,b]\end{bmatrix} ≃ A/k$ is the universal derivation. [HKR](https://ncatlab.org/nlab/show/Hochschild-Kostant-Rosenberg+theorem) shows that $HH_n(A) ≃ Ω^n_{A/k}$ for smooth commutative $A/k$. In this case, the differential of $Ω ^∙ (A)$ coincides bar resolution.

{% endex %}

{% ex %}
$Z^∙ A ↪ A$ is an dg subalgebra, and $B^∙ A ↪ A$ is a two-sided dg ideal. This defined a functor $H^∙ : 𝐃𝐆𝐀𝐥𝐠_k → 𝐆𝐫𝐀𝐥𝐠_k$. The *recovery* is related to $A_∞$-algebra.
{% endex %}

{% ex %}
Let $R ∈ 𝐀𝐥𝐠 _k$. Set $(-)^∗ := (-, k)$, $μ : R ⊗ R → R$ the multiplication. Suppose there are some finiteness condition s.t. $R^∗ ⊗ R^∗ ≃ (R ⊗ R)^∗$. The morphisms $f_0 : k \xrightarrow 0 T(R^∗)$ and $f_1 : R^∗ \xrightarrow {μ ^∗ } R^∗ ⊗ R^∗ ↪ T(R^∗ )$ extends to an $k$-endomorphism of tensor algebra, $φ : T(R^∗ ) → T(R^∗ )$.

1. $T(R^∗ )$ is a DG algebra vanishing on negative degrees;
2. $φ : k → 0, \quad R^∗ → R^∗ ⊗ R^∗$;
3. Since $μ ∘ (1 ⊗ μ ) = μ ∘ (μ ⊗ 1)$, we see that $φ (f ⊗ g) = φ (f) ⊗ g - f ⊗ φ (g)$;
4. Inductively, $φ (α ⊗ β) = φ (α ) ⊗ β + (-1)^{|α|} α ⊗ φ (β )$ for homogeneous $α ∈ T(R^∗ )$.

To conclude, derivative comes from dual multiplications.

{% endex %}

#### DG Modules

Let $A$ be a DG algebra. We denote $𝐌𝐨𝐝 _{(A,d)}$ as the category of DG modules.

{% def %}
(DG module). $M ∈ 𝐌𝐨𝐝 _{(A,d)}$ is a chain complex of $A$-modules, such that

1. $M^p A^q ⊆ M^{p+q}$;
2. $d_M (ma) = (d_M m)a + (-1)^{|m|} m (d_Aa)$.

{% enddef %}

A functorial definition is based on DG categories.

{% def %}
(DG homomorphism). A homomorphism between DG modules $φ : M → N$ is preserved gradings and differentials, i.e.,

1. $φ : M^k → N^k$ for arbitrary $k$;
2. $φ ∘ d_M = d_N ∘ φ$.

This is anagolous to the definition of chain maps.

{% enddef %}

{% ex %}
$C(R)$ is the category of DG $[\cdots → 0 → R → 0 → \cdots ]$-modules. A homomorphism of DG modules is precisely the chain maps.
{% endex %}

To see functorial property of DG modules, we consider the following adjunctions.

{% thm %}
Let $𝐆𝐫𝐌𝐨𝐝 _A$ denote the category of $A (∈ 𝐆𝐫𝐀𝐥𝐠 _k)$-modules. Then the forgetful functor $G: 𝐃𝐆𝐌𝐨𝐝_k → 𝐆𝐫𝐀𝐥𝐠 _k$ admits bi-adjoints. Moreover, $G$ creates all small limits and colimits.

{% pf %}
We show the left adjoint $F ⊣ G$, the right adjoint $G ⊣ H$ is dual.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiWF5uIFxcb3BsdXMgWF57bi0xfSJdLFswLDEsIlhee24rMX1cXG9wbHVzIFhebiJdLFsyLDAsIk1ebiJdLFsyLDEsIk1ee24rMX0iXSxbMCwyLCJGKFgpIl0sWzIsMiwiKE0sZCkiXSxbMywwLCJYXm4iXSxbMywxLCJYXntuKzF9Il0sWzQsMCwiTV5uIl0sWzQsMSwiTV57bisxfSJdLFszLDIsIlgiXSxbNCwyLCJHKE0sZCkiXSxbMCwxLCJcXGJpbm9tezAgXFwgMH17MSBcXCAwfSIsMl0sWzAsMiwiZl5uXFxjaXJjICgxLGQpIl0sWzIsMywiZCJdLFsxLDMsImZee24rMX1cXGNpcmMgKDEsZCkiXSxbNCw1XSxbNiw4LCJmXm4iXSxbNyw5LCJmXntuKzF9Il0sWzEwLDExXV0=
\begin{tikzcd}
	{X^n \oplus X^{n-1}} && {M^n} & {X^n} & {M^n} \\
	{X^{n+1}\oplus X^n} && {M^{n+1}} & {X^{n+1}} & {M^{n+1}} \\
	{F(X)} && {(M,d)} & X & {G(M,d)}
	\arrow["{f^n\circ (1,d)}", from=1-1, to=1-3]
	\arrow["{\binom{0 \ 0}{1 \ 0}}"', from=1-1, to=2-1]
	\arrow["d", from=1-3, to=2-3]
	\arrow["{f^n}", from=1-4, to=1-5]
	\arrow["{f^{n+1}\circ (1,d)}", from=2-1, to=2-3]
	\arrow["{f^{n+1}}", from=2-4, to=2-5]
	\arrow[from=3-1, to=3-3]
	\arrow[from=3-4, to=3-5]
\end{tikzcd}
{% endtikz %}

The $1:1$ correspondence is clear, as a morphism of DG modules $F(X) → (M,d)$ takes the form $f^∙ (1,d)$. Moreover, $f$ preserves graded action iff $f∘ (1,d)$ does. This proves the adjunction.
\\
The bi-adjoint $G$ preserves all small limits and colimits. To see that $G$ creates small limits and colimits, we show $\varinjlim$ and $\varprojlim$ in $𝐌𝐨𝐝 _{(A,d)}$ admits a termwise computation. Let $\{M_λ\} ⊆ 𝐌𝐨𝐝 _{(A,d)}$ be an inverse system, we show $\varprojlim M_λ$ is the limit. The derivation in $\varprojlim M_λ$ is induced by universal property of limits. For Any cone $N → M_λ$, there is a unique morphism of graded modules $ℓ : N → \varprojlim M_λ$. Since for each $λ$,

$$\begin{equation}
d_{M_λ} ∘ p_λ ^n ∘ ℓ ^n = (p_λ ^{n+1} ∘ ℓ ^{n+1}) \circ d_{N}.
\end{equation}$$

By universal property of limit, $d_{\varprojlim M_λ } ∘ ℓ ^n = ℓ ^{n+1} ∘ d_N$.

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCJOXm4iXSxbMSwxLCJOXntuKzF9Il0sWzMsMCwiXFx2YXJwcm9qbGltIE1fXFxsYW1iZGEgXm4iXSxbMywxLCJcXHZhcnByb2psaW0gTV9cXGxhbWJkYSBee24rMX0iXSxbNCwwLCJNX1xcbGFtYmRhIF5uIl0sWzQsMiwiTV9cXGxhbWJkYSBee24rMX0iXSxbNSwxLCJcXCwiXSxbMCwxLCJcXCwiXSxbMCwxLCJkIl0sWzIsMywiZCJdLFswLDIsIlxcZWxsIF5uIl0sWzEsMywiXFxlbGwgXntuKzF9Il0sWzIsNCwicF9cXGxhbWJkYV5uIl0sWzQsNSwiZCJdLFsxLDUsInBfXFxsYW1iZGEgXntuKzF9XFxjaXJjIFxcZWxsIF57bisxfSIsMix7ImxhYmVsX3Bvc2l0aW9uIjozMCwiY3VydmUiOjJ9XSxbMyw1LCJwX1xcbGFtYmRhXntuKzF9IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
	& {N^n} && {\varprojlim M_\lambda ^n} & {M_\lambda ^n} \\
	{\,} & {N^{n+1}} && {\varprojlim M_\lambda ^{n+1}} && {\,} \\
	&&&& {M_\lambda ^{n+1}}
	\arrow["{\ell ^n}", from=1-2, to=1-4]
	\arrow["d", from=1-2, to=2-2]
	\arrow["{p_\lambda^n}", from=1-4, to=1-5]
	\arrow["d", from=1-4, to=2-4]
	\arrow["d", from=1-5, to=3-5]
	\arrow["{\ell ^{n+1}}", from=2-2, to=2-4]
	\arrow["{p_\lambda ^{n+1}\circ \ell ^{n+1}}"'{pos=0.3}, curve={height=12pt}, from=2-2, to=3-5]
	\arrow["{p_\lambda^{n+1}}"{description}, dashed, from=2-4, to=3-5]
\end{tikzcd}
{% endtikz %}

{% endpf %}

{% endthm %}

To conclude,

$$\begin{equation}
\boxed{\text{The limits and colimits of DG modules are computed termwise!} }
\end{equation}$$

{% pro %}
Show the auto-equivalentce $Σ : 𝐌𝐨𝐝 _{(A,d)} → 𝐌𝐨𝐝 _{(A,d)}$, where

$$\begin{equation}
[\cdots → \overset{\substack {\deg = n \\ ↓} } {M^n} \xrightarrow d M^{n+1} → \cdots ] ↦ [\cdots → \overset{\substack {\deg = n \\ ↓} } {M^{n+1}} \xrightarrow {-d} M^{n+2} → \cdots ].
\end{equation}$$

Hint: show that $Σ f$ is a plain shift without sign change, and the middle square commutes:

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCIoXFxTaWdtYSBNKV5wIFxcb3RpbWVzIEFecSJdLFsxLDEsIlxcc3Vic3RhY2t7KFxcU2lnbWEgTSlee3ArMX0gXFxvdGltZXMgQV5xIFxcXFwgXFxvcGx1cyBcXFxcIChcXFNpZ21hIE0pXntwfSBcXG90aW1lcyBBXntxKzF9fSJdLFsyLDAsIihcXFNpZ21hIE0pXntwK3F9Il0sWzIsMSwiKFxcU2lnbWEgTSlee3ArcSsxfSJdLFswLDAsIk1ee3ArMX1cXG90aW1lcyBBXnEiXSxbMCwxLCJcXHN1YnN0YWNre01ee3ArMn0gXFxvdGltZXMgQV5xIFxcXFwgXFxvcGx1cyBcXFxcICBNXntwKzF9IFxcb3RpbWVzIEFee3ErMX19Il0sWzMsMCwiTV57cCtxKzF9Il0sWzMsMSwiTV57cCtxKzJ9Il0sWzAsMl0sWzAsMSwiZCIsMl0sWzEsM10sWzIsMywiZCJdLFs0LDUsImQiLDJdLFs1LDEsIlxcc2ltIiwyXSxbNiw3LCJkIl0sWzYsMiwiXFxzaW0iLDJdLFs3LDMsIlxcc2ltIl0sWzQsMCwiXFxzaW0iXSxbOSwxMSwiPyIsMSx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	{M^{p+1}\otimes A^q} & {(\Sigma M)^p \otimes A^q} & {(\Sigma M)^{p+q}} & {M^{p+q+1}} \\
	\begin{array}{c} \substack{M^{p+2} \otimes A^q \\ \oplus \\  M^{p+1} \otimes A^{q+1}} \end{array} & \begin{array}{c} \substack{(\Sigma M)^{p+1} \otimes A^q \\ \oplus \\ (\Sigma M)^{p} \otimes A^{q+1}} \end{array} & {(\Sigma M)^{p+q+1}} & {M^{p+q+2}}
	\arrow["\sim", from=1-1, to=1-2]
	\arrow["d"', from=1-1, to=2-1]
	\arrow[from=1-2, to=1-3]
	\arrow[""{name=0, anchor=center, inner sep=0}, "d"', from=1-2, to=2-2]
	\arrow[""{name=1, anchor=center, inner sep=0}, "d", from=1-3, to=2-3]
	\arrow["\sim"', from=1-4, to=1-3]
	\arrow["d", from=1-4, to=2-4]
	\arrow["\sim"', from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow["\sim", from=2-4, to=2-3]
	\arrow["{?}"{description}, draw=none, from=0, to=1]
\end{tikzcd}
{% endtikz %}

{% endpro %}

#### Opposite Algebra

We show firstly the symmetry.

{% def %}
(Opposite ring). $A^{\mathrm{op}}$ and $A$ has the same underlying chain complex, but the multiplication is twisted by a sign: for homogeneous $a,b ∈ A$,

$$\begin{equation}
a ⋅^{\mathrm{op}} b := (-1)^{|a||b|} ba.
\end{equation}$$

{% enddef %}

{% pro %}
Suppose $M ∈ 𝐌𝐨𝐝 _{(A,d)}$, while $a ∈ A$ and $m ∈ M$ are homogeneous. Let $a ⋅ ^{\mathrm{op}} m := (-1)^{|m||a|} ma$ be the left action. Show basic results of $^{\mathrm{op}}$:

1. $(a ⋅ ^{\mathrm{op}} b) ⋅^{\mathrm{op}} m = a ⋅ ^{\mathrm{op}} (b ⋅^{\mathrm{op}} m)$;
2. $φ : 𝐌𝐨𝐝 _{(A,d)} ≃ {}_{(A, d)}𝐌𝐨𝐝$ is an equivalence of categories;
3. $Σ φ ≃ φ Σ$ is a natural isomorphism.

{% endpro %}

#### Tensor and Hom

{% def %}
($⊗_A$). Let $M_A, {}_AN ∈ 𝐌𝐨𝐝 _{(A,d)}$. The tensor product $M ⊗ _k N$ has $n$-th term $∐ _{p+q = n} M^p ⊗ N^q$ and differential $d_M ⊗ 1_N + 1_M ⊗ d_N$.
{% enddef %}

{% thm %}
The above tensor product complex satisfies the universal property of tensor products, i.e., for any $X ∈ C(k)$, the balanced DG morphism $f : M ⊗ _k N → X$ identifies a chain map $M ⊗ _A N → X$. A balanced DG morphism $f$ satisfies

1. $f (x a ⊗ y) = f (x ⊗ ay)$ for all $a$, $x$ and $y$;
2. $f(d_{M ⊗ _k N} (x ⊗ y)) = d_X (f(x ⊗ y))$.

{% pf %}
By closed monoidal structure of $C(k)$, $M ⊗ N$ is well-defined. We claim the exact sequence

$$\begin{equation}
M ⊗ A ⊗ N \overset φ → M ⊗_k N → M ⊗ _A N → 0;\quad φ (m ⊗ a ⊗ n) = ma ⊗ n - m ⊗ an.
\end{equation}$$

Unwinding the second condition (differential), we see from definition that

$$\begin{equation}
(M ⊗ _k N, X)_{\text{balanced, graded}} = \ker [(M ⊗_k A ⊗_k N, X) \overset {φ }→ (M ⊗ _k N, X)].
\end{equation}$$

It remains to show that $φ$ preserves $d$. Then $M ⊗ _k N ↠ M ⊗ N$ also preserves $d$, and $\widetilde f : M ⊗ _A N → X$ preserves $d$ by tracking back the preimage.

$$\begin{aligned}
d(m ⊗ a ⊗ n) & = (dm) ⊗ a ⊗ n + (-1)^{|m|} m ⊗ (da) ⊗ n + (-1)^{|m| + |a|} m ⊗ a ⊗ (dn) \\
& \xrightarrow φ (d m)a ⊗ n - (dm) ⊗ an + (-1)^{|m|} m da ⊗ n - (-1)^{|m|} m ⊗ (da)n\\
& \qquad + (-1)^{|m| + |a|} ma ⊗ dn - (-1)^{|m| + |a|} m ⊗ a(dn) \\
& = d(ma) ⊗ n + (-1)^{|m| + |a|} ma ⊗ dn - (dm) ⊗ an - (-1)^{|m|} m ⊗ d(an)\\
& = d (ma ⊗ n - m ⊗ an) = d (φ (m ⊗ a ⊗ n)).
\end{aligned}$$

{% endpf %}

{% endthm %}

We show the right adjoint of $- ⊗ _A N_B : 𝐌𝐨𝐝 _{(A,d)} → 𝐌𝐨𝐝 _{(B,d)}$. Combined with tensor-hom adjunction for chain complexes, it suffices to show $\mathcal{HOM}(-, ?)$ is a bifunctor for DG modules.

{% thm %}
$\mathcal{HOM} (_AN_B, -) : 𝐌𝐨𝐝 _{(B,d)} → 𝐌𝐨𝐝 _{(A,d)}$ is a functor.

{% pf %}
We define the right action as $(f ∗ a)(n) = f(an)$.

$$\begin{aligned}
(d_{\mathcal{HOM}}(f ∗ a) )(n) &= d (f ∗ a) (n) - (-1)^{|f| + |a|} (f ∗ a)(dn) \\
&= d (f(an)) - (-1)^{|f| + |a|} f (a (dn)) \\
&= d (f(an)) - (-1)^{|f|} f(d(an) - (da)n) \\
&= (d_{\mathcal{HOM}} f)(an) + (-1)^{|f|} f((da)n)\\
&= (d_{\mathcal{HOM}}(f) ∗ a + (-1)^{|f|} f ∗ (da))(n).
\end{aligned}$$

Hence, $d_{\mathcal{HOM}}(f ∗ a) = d_{\mathcal{HOM}}(f) ∗ a + (-1)^{|f|} f ∗ (da)$.

{% endpf %}

{% endthm %}

#### Endomorphism Algebra

Let $M ∈ 𝐌𝐨𝐝 _{(A,d)}$. The endomorphism algebra $\mathrm{End} _A (M)$ is defined as the DG algebra $\mathcal{HOM} _A (M,M)$, which is a DG algebra with multiplication given by composition of morphisms.

{% thm %}
The endomorphism algebra $E:= \mathrm{End} _A (M) ∈ 𝐃𝐆𝐀𝐥𝐠 _k$, where $M ∈ 𝐌𝐨𝐝 _{(E,d_{\mathcal{HOM}})^{\mathrm{op}}}$.

{% pf %}
Clearly $E ∈ C(k)$, and $\deg 1_E = 0$. The multiplication if given by composition of morphisms. Hence $E^p E^q ⊆ E^{p+q}$. For homogeneous $f$,

$$\begin{aligned}
d_{\mathcal{HOM}}(gf) & = gfd - (-1)^{|g|+|f|}dfg \\
& = gfd - (-1)^{|f|}gdf + (-1)^{|f|} gdf - (-1)^{|g| + |f|}dgf\\
& = d_{\mathcal{HOM}}(g)f + (-1)^{|g|} g d_{\mathcal{HOM}}(f).
\end{aligned}$$

By definition, $θ : E ⊗ M → M, \quad f ⊗ m ↦ f(m)$ maps $E^p ⊗ M^q$ to $M^{p+q}$. To show such it is compatible with $d$, we take homogeneous $f ∈ E^p$ and $m ∈ M^q$,

$$\begin{aligned}
d_{E ⊗ M} (f ⊗ m) & = d_E(f) ⊗ m + (-1)^{|f|} f ⊗ d_M(m) \\
& \xrightarrow θ d_{\mathcal{HOM}}(f)m + (-1)^{|f|}fd_M(m) \\
& = d_M (fm) - (-1)^{|f|} f (d_M m) + (-1)^{|f|}fd_M(m) \\
& = d_M(fm)\quad = f_M ( θ (f ⊗ m) ).
\end{aligned}$$

{% endpf %}

{% endthm %}

### The Homotopy Category $K$

#### Frobenius Category

We define an exact category by dws (degreewise split) ses.

{% def %}
Say an ses in $𝐌𝐨𝐝 _{(A,d)}$ dws, if it is isomorphic to

$$\begin{equation}
0 → K \xrightarrow {\binom 10} M \xrightarrow {\binom 01} N → 0.
\end{equation}$$

{% enddef %}

In this case, $M = \mathrm{Cone}(s)$ for some $s : N → Σ K$.

{% thm %}
$(𝐌𝐨𝐝 _{(A,d)}, \text{dws})$ is a forbenius exact category.

{% pf %}
Inflations (deflations) are precisely dws monomorphisms (epimorphisms).

1. (EX0). Trivial ses are dws.
2. (EX1, EX1'). Inflations and deflations are closed under compositions.
3. (EX2, EX2'). Split monomorphisms (epimorphisms) are closed under pushout (pullback).
   - Recall that the forgetful functor $G: 𝐌𝐨𝐝 _{(A,d)} → 𝐆𝐫𝐌𝐨𝐝 _A$ creates all limits and colimits, pullbacks and pushouts in $𝐌𝐨𝐝 _{(A,d)}$ are computated degreewise.

We show enough projective and injectives. Recall the adjoint $∞$-ple $\cdots ⊣ F ⊣ G ⊣ H ⊣ \cdots$, as a direct computation shows $F ≃ Σ H$. We claim that $\operatorname{im}F = \operatorname{im}H$ are precisely projectives and injectives.

- $FX$ lifts dws epimorphism $p$, since $X$ lifts split epimorphism $Gp$. By the same analysis, $HX$ lifts dws monomorphisms.
- If $P$ is projective, then $FGP ↠ P$ splits. It suffices to show that $\operatorname{im} F$ is closed under summands. For $N ⊕ N' = FX$, we see $F\mathrm{coim}(N) ⊕ F\mathrm{coim}(N') = F\mathrm{coim}(FX) ≃ FX$. By functoriality of $? ↦ F\mathrm{coim}(?)$, $N ≃ F\mathrm{coim}(N)$.
- There are enough projectives, which coincides injectives.

{% endpf %}

{% endthm %}

{% thm %}
The stable category of $(𝐌𝐨𝐝 _{(A,d)}, \text{dws})$ is trianglated.
{% endthm %}

$$\begin{equation}
\boxed{\text{Two definition of homotopy category coincides!}}
\end{equation}$$

#### Homotopy

{% def %}
(Mapping cone). Let $f : X → Y$ be a morphism of DG modules. The mapping cone $\mathrm{Cone}(f)$ is defined as the DG module

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCJYXntuKzF9Il0sWzEsMSwiWV5uIl0sWzMsMCwiWF57bisyfSJdLFszLDEsIllee24rMX0iXSxbMSwyLCJcXG1hdGhybXtDb25lfShmKV5uIl0sWzMsMiwiXFxtYXRocm17Q29uZX0oZilee24rMX0iXSxbMCwxLCJcXCwiXSxbNCwxLCJcXCwiXSxbMCwxLCJcXG9wbHVzIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMywiXFxvcGx1cyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDIsIi1kX1giXSxbMSwzLCJkX1kiLDJdLFswLDMsImZee24rMX0iLDFdLFs0LDUsIlxcYmlub217LWQgXFwgXFwgMH17XFwgXFwgZiBcXCBcXCBkfSJdXQ==
\begin{tikzcd}
	& {X^{n+1}} && {X^{n+2}} \\
	{\,} & {Y^n} && {Y^{n+1}} & {\,} \\
	& {\mathrm{Cone}(f)^n} && {\mathrm{Cone}(f)^{n+1}}
	\arrow["{-d_X}", from=1-2, to=1-4]
	\arrow["\oplus"{description}, draw=none, from=1-2, to=2-2]
	\arrow["{f^{n+1}}"{description}, from=1-2, to=2-4]
	\arrow["\oplus"{description}, draw=none, from=1-4, to=2-4]
	\arrow["{d_Y}"', from=2-2, to=2-4]
	\arrow["{\binom{-d \ \ 0}{\ f \ \ d}}", from=3-2, to=3-4]
\end{tikzcd}
{% endtikz %}

{% enddef %}

{% def %}
Given morphisms of DG modules $f,g: M → N$. Say $s : f ∼ g$ is a homotopy, provided there is a morphism $s : M → Σ N$ in $𝐆𝐫𝐌𝐨𝐝 _A$, such that $f - g = d_N s + s d_M$.
{% enddef %}

{% pro %}
Show that the homotopy relation $∼$ is a categorical equivalence. This gives $K(𝐌𝐨𝐝 _{(A,d)})$.
{% endpro %}

We say an equality holds in $K$, whenever $(𝐋𝐒𝐇 - 𝐑𝐇𝐒) ∼ 0$.

{% thm %}
The stable category $(𝐌𝐨𝐝 _{(A,d)}, \text{dws}) / \operatorname{im} F$ is canonically isomorphic to $K(𝐌𝐨𝐝 _{(A,d)})$.

{% pf %}
Let $Q_1$ and $Q_2$ be quotient functors. We show there are induced $α$ and $β$ s.t. $α ∘ Q_1 = Q_2$ and $β ∘ Q_2 = Q_1$. Therefore $α ∘ β$ and $β ∘ α$ are identical.

{% tikz %}
% https://q.uiver.app/#q=WzAsMyxbMSwwLCJcXG1hdGhiZntNb2R9X3soQSxkKX0iXSxbMiwxLCIoXFxtYXRoYmZ7TW9kfV97KEEsZCl9LCBcXHRleHR7ZHdzfSkvXFxzaW0gIl0sWzAsMSwiSyhcXG1hdGhiZntNb2R9X3soQSxkKX0pIl0sWzAsMiwiUV8xIiwyXSxbMCwxLCJRXzIiXSxbMiwxLCJcXGFscGhhICIsMCx7Im9mZnNldCI6LTEsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDIsIlxcYmV0YSIsMCx7Im9mZnNldCI6LTEsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}
	& {\mathbf{Mod}_{(A,d)}} \\
	{K(\mathbf{Mod}_{(A,d)})} && {(\mathbf{Mod}_{(A,d)}, \text{dws})/\sim }
	\arrow["{Q_1}"', from=1-2, to=2-1]
	\arrow["{Q_2}", from=1-2, to=2-3]
	\arrow["{\alpha }", shift left, dashed, from=2-1, to=2-3]
	\arrow["\beta", shift left, dashed, from=2-3, to=2-1]
\end{tikzcd}
{% endtikz %}
{% endpf %}

($α$). When $s : f ∼ 0$, we consider the 1:1 correspondence

$$\begin{equation}
(s,f) ∈ \{s: f ∼ 0 : X → Y \} ≃ \mathrm{Hom}(\mathrm{Cone}(1_X), Y) ∋ (s \ f).
\end{equation}$$

Here $(s \ f)$ is a chain map iff $(s \ f) ⋅ \binom{-d \ \ 0}{\ 1 \ \ \ d} = d ⋅ (s \ f)$, that is, $f = sd+ds$.
\\
($β$). $\operatorname{im}F$ are null homotopic.
{% endthm %}

#### Triangles

We unify $(𝐌𝐨𝐝 _{(A,d)}, \text{dws}) / \operatorname{im} F ≅ K(𝐌𝐨𝐝 _{(A,d)})$. Then we find distinduished triangles.

{% thm %}
(Shift). $Σ$ is the auto-equivalence of triangulated category $K(𝐌𝐨𝐝 _{(A,d)})$.

{% pf %}
Consider the dws ses $0 → X \xrightarrow {\binom 10} HGX \xrightarrow {(0 \ 1)} ΣX → 0$, where $HGX$ is injective.
{% endpf %}

{% endthm %}

{% thm %}
(Suspension). Consider the following cone sequence

$$\begin{equation}
X \xrightarrow f Y \xrightarrow {\binom 01} \mathrm{Cone}(f)\xrightarrow {\binom 01} \mathrm{Cone}\left(\substack {1\\0}\right).
\end{equation}$$

Then $e_2 : Σ X → \mathrm{Cone}(\binom 01)$ is an isomorphism in $K$.

{% pf %}
Note that $\mathrm{Cone}(\binom 01)$ is a chain complex

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiXFxTaWdtYSBZIl0sWzAsMSwiXFxTaWdtYSBYIl0sWzAsMiwiWSJdLFszLDAsIlxcU2lnbWFeMiBZIl0sWzMsMSwiXFxTaWdtYV4yWCJdLFszLDIsIlxcU2lnbWEgWSJdLFs0LDAsIi1kIl0sWzQsMSwiMCJdLFs0LDIsIjEiXSxbNSwyLCJmIl0sWzUsMSwiLWQiXSxbNiwyLCJkIl0sWzAsMywiLWQiXSxbMSw0LCItZCIsMCx7ImxhYmVsX3Bvc2l0aW9uIjo3MH1dLFsyLDUsImQiLDJdLFsxLDUsIlxcU2lnbWEgZiIsMix7ImxhYmVsX3Bvc2l0aW9uIjozMH1dLFswLDUsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMSwiXFxvcGx1cyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDIsIlxcb3BsdXMiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMyw0LCJcXG9wbHVzIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNSwiXFxvcGx1cyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	{\Sigma Y} &&& {\Sigma^2 Y} & {-d} \\
	{\Sigma X} &&& {\Sigma^2X} & 0 & {-d} \\
	Y &&& {\Sigma Y} & 1 & f & d
	\arrow["{-d}", from=1-1, to=1-4]
	\arrow["\oplus"{description}, draw=none, from=1-1, to=2-1]
	\arrow[equals, from=1-1, to=3-4]
	\arrow["\oplus"{description}, draw=none, from=1-4, to=2-4]
	\arrow["{-d}"{pos=0.7}, from=2-1, to=2-4]
	\arrow["\oplus"{description}, draw=none, from=2-1, to=3-1]
	\arrow["{\Sigma f}"'{pos=0.3}, from=2-1, to=3-4]
	\arrow["\oplus"{description}, draw=none, from=2-4, to=3-4]
	\arrow["d"', from=3-1, to=3-4]
\end{tikzcd}
{% endtikz %}

Now we show the following chain maps are homotopy inverses:

$$\begin{equation}
\left(\substack{-f\\1\\0}\right) :\quad  \mathrm{Cone}\left(\substack {1\\0}\right) ⇆  Σ X \quad : (0 \ 1 \ 0).
\end{equation}$$

It suffices to show $1 - \left(\substack{-f\\1\\0}\right) ⋅ (0 \ 1 \ 0)$ is null-homotopic. Consider

$$\begin{equation}
\begin{pmatrix}1&f&0\\0&0&0\\0&0&1\end{pmatrix} = \begin{pmatrix}-d&0&0\\0&-d&0\\1&f&d\end{pmatrix}\begin{pmatrix}0&0&1\\0&0&0\\0&0&0\end{pmatrix}+\begin{pmatrix}0&0&1\\0&0&0\\0&0&0\end{pmatrix}\begin{pmatrix}-d&0&0\\0&-d&0\\1&f&d\end{pmatrix}.
\end{equation}$$

{% endpf %}

{% endthm %}

{% prop %}
$X \xrightarrow f Y \xrightarrow {\binom 01} \mathrm{Cone}(f) \xrightarrow {(1 \ 0)} Σ X$ is a distinguished triangle in $K(𝐌𝐨𝐝 _{(A,d)})$.

{% pf %}
By homotopy equivalence, the following diagram commutes in $K$:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzAsMSwiWCJdLFsxLDEsIlkiXSxbMiwxLCJcXG1hdGhybXtDb25lfShmKSJdLFszLDEsIlxcbWF0aHJte0NvbmV9XFxiaW5vbSAwMSJdLFsxLDIsIlkiXSxbMiwyLCJcXG1hdGhybXtDb25lfShmKSJdLFszLDIsIlxcU2lnbWEgWCJdLFs0LDEsIlxcbWF0aHJte0NvbmV9XFxiaW5vbSAwMSJdLFs0LDIsIlxcU2lnbWEgWSJdLFsxLDAsIlxcdGV4dHtjMn0iXSxbMCwwLCJcXHRleHR7YzF9Il0sWzIsMCwiXFx0ZXh0e2MzfSJdLFszLDAsIlxcdGV4dHtjNH0iXSxbNCwwLCJcXHRleHR7YzV9Il0sWzUsMSwiXFx0ZXh0e3IxfSJdLFs1LDIsIlxcdGV4dHtyMn0iXSxbMCwxLCJmIl0sWzEsMiwiXFxiaW5vbSAwMSJdLFsyLDMsIlxcYmlub20gMDEiXSxbMSw0LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDUsIlxcYmlub20gMDEiXSxbMiw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDZdLFszLDcsIlxcYmlub20gMDEiXSxbNiwzLCJcXGxlZnQoXFxzdWJzdGFja3stXFxTaWdtYSBmXFxcXDFcXFxcMH1cXHJpZ2h0KSJdLFs2LDgsIi1cXFNpZ21hIGYiXSxbOCw3LCJcXGxlZnQoXFxzdWJzdGFja3stXFxiaW5vbSAwMVxcXFwxXFxcXDB9XFxyaWdodCkiLDJdXQ==
\begin{tikzcd}
	{\text{c1}} & {\text{c2}} & {\text{c3}} & {\text{c4}} & {\text{c5}} \\
	X & Y & {\mathrm{Cone}(f)} & {\mathrm{Cone}\binom 01} & {\mathrm{Cone}\binom 01} & {\text{r1}} \\
	& Y & {\mathrm{Cone}(f)} & {\Sigma X} & {\Sigma Y} & {\text{r2}}
	\arrow["f", from=2-1, to=2-2]
	\arrow["{\binom 01}", from=2-2, to=2-3]
	\arrow[equals, from=2-2, to=3-2]
	\arrow["{\binom 01}", from=2-3, to=2-4]
	\arrow[equals, from=2-3, to=3-3]
	\arrow["{\binom 01}", from=2-4, to=2-5]
	\arrow["{\binom 01}", from=3-2, to=3-3]
	\arrow[from=3-3, to=3-4]
	\arrow["\begin{array}{c} \left(\substack{-\Sigma f\\1\\0}\right) \end{array}", from=3-4, to=2-4]
	\arrow["{-\Sigma f}", from=3-4, to=3-5]
	\arrow["\begin{array}{c} \left(\substack{-\binom 01\\1\\0}\right) \end{array}"', from=3-5, to=2-5]
\end{tikzcd}
{% endtikz %}
By construction, every dws ses is a distinguished triangle. Hence $(\text{c234},\text{r1})$ and $(\text{c345},\text{r1})$ are parts of some distinguished triangles. By homotopy equivalence, $(\text{c2345},\text{r2})$ is a dintinguished triangle. By suspension, $(\text{c1234}, \text{r1})$ is a distinguished triangle.

{% endpf %}

{% endprop %}

{% pro %}
Show that for any morphism $f$, there is some homotopy equivalences $g_∙$ s.t. $g_1 ∘ f ∘ g_2$ is dws monic and $g_3 ∘ f ∘ g_4$ is dws epic.
{% endpro %}

### Resolutions

The projectives and injectives in this section has nothing to do with the Forbenius exact category $(𝐌𝐨𝐝 _{(A,d)}, \text{dws})$.

#### Projective and Injective Modules

For convention, projective chain complexes are defined as the degreewise projective ones; rather than the projective objects in $C$.

{% def %}
(Projective/Free (DG) module). $M ∈ 𝐌𝐨𝐝 _{(A,d)}$ is projective/free, iff $GM ∈ 𝐆𝐫𝐌𝐨𝐝 _A$ is a projective/free object.
{% enddef %}

{% thm %}
There exist enough projective modules. Projective modules are precisely direct summands of coproducts of several $Σ^n A$ for $n ∈ ℤ$.

{% pf %}
Note that the forgotful functor $𝔘  : 𝐆𝐫𝐌𝐨𝐝 _A → 𝐆𝐫𝐒𝐞𝐭𝐬$ admits a free functor sending

$$\begin{equation}
𝔉: 𝐆𝐫𝐒𝐞𝐭𝐬 → 𝐆𝐫𝐌𝐨𝐝 _A, \quad ⨆ \limits_{n ∈ ℤ } S^n ↦ ∐\limits _{n ∈ ℤ } Σ^n ∐\limits _{S^n}A.
\end{equation}$$

On one hand, $𝔉𝔘 X$ is projective. Recall that $𝔘$ preserves epimorphisms. Since $(𝔘 X, -)_{𝐆𝐫𝐒𝐞𝐭𝐬}$ lifts epimorphisms, and so is $(𝔘 X, 𝔘 (-))_{𝐆𝐫𝐒𝐞𝐭𝐬} ≃ (𝔉 𝔘 X, -)_{𝐆𝐫𝐌𝐨𝐝 _A}$. If $X$ is projective, then $𝔉 𝔘 X ↠ X$ is is dws epic. Hence, projective modules are summands of $\operatorname{im} 𝔉$.

{% endpf %}

{% endthm %}

The following lemma shows there are enough free modules.

{% lem %}
$f : 𝔉 S → M$ is epic if $\widetilde f : S → 𝔘 M$ is epic.

{% pf %}
If $[𝔉 S \xrightarrow f M \xrightarrow g N] = 0$, then $[S \xrightarrow {\widetilde f} 𝔘 M \xrightarrow {𝔘 g} 𝔘 N] = 0$. Since $\widetilde f$ is epic, we find $𝔘 g$ is epic. Hence, $g$ is epic.
{% endpf %}

{% endlem %}

{% pro %}
Show anagolously that projective objects in $𝐌𝐨𝐝 _{(A,d)}$ are precisely summands of $\operatorname{im} F 𝔉$.
{% endpro %}

We introduce injective modules by character modules.

{% def %}
(Character module). We denote $(M, T) := \mathcal{HOM}(M,T)$ when $T = T^0$. The character module of $M ∈ 𝐌𝐨𝐝 _{(A,d)}$ is defined as follows:

$$\begin{equation}
M^+ := (M, ℚ / ℤ )_{C(ℤ)}  ∈ 𝐌𝐨𝐝 _{(A,d)^{\mathrm{op}}}.
\end{equation}$$

Note that $Σ (M^+) = (Σ^{-1} M)^+$.

{% enddef %}

We introduce some lemma before showing the structure of injective modules.

{% lem %}
Assume $M ∈ 𝐌𝐨𝐝 _{(A,d)}$ is a free module, then $M^+ ∈ 𝐌𝐨𝐝 _{(A,d)^{\mathrm{op}}}$ is an injective module.

{% pf %}
Recall that $(-^{\mathrm{op}})^+ : (𝐌𝐨𝐝 _R)^{\mathrm{op}} → 𝐌𝐨𝐝 _{R^{\mathrm{op}}}$ preserves and reflect the exactness, monomorphisms and epimorphisms. By degreewise analysis, so is $(-^{\mathrm{op}})^+ : (𝐌𝐨𝐝_{(A,d)})^{\mathrm{op}} → 𝐌𝐨𝐝 _{(A,d)^{\mathrm{op}}}$. For any monomorphism $i$, we consider

$$\begin{equation}
\mathcal{HOM}_{A^{\mathrm{op}}}(i, M^+) ≃ \mathcal{HOM}_{A}(M, i^+).
\end{equation}$$

It is epic, iff the underlying graded map is epic. We see

$$\begin{equation}
\mathcal{HOM}_{𝐆𝐫𝐌𝐨𝐝 _A}(M, i^+) ≃ \mathcal{HOM}_{𝐆𝐫𝐒𝐞𝐭𝐬}(X, 𝔘 (i^+))
\end{equation}$$

is epic, since any graded set is a projective object.

{% endpf %}

{% endlem %}

{% lem %}
The natural transformation $M → M^{++}$ is monic.

{% pf %}
A degreewise analysis shows $M^k ↪ (M^k)^{++}$.
{% endpf %}

{% endlem %}

{% lem %}
There are enough injectives modules in $𝐌𝐨𝐝 _{(A,d)}$.

{% pf %}
Consider $X ↪ X^{++} = (X^+)^+ \overset {\text{epi} ^+}↪ (FG (X^+))^+$.
{% endpf %}

{% endlem %}

{% pro %}
Show that injectives modules in $𝐌𝐨𝐝 _{(A,d)}$ are precisely direct summands of products of several $Σ ^n (_AA^+)$.
{% endpro %}

#### Free Modules and $\mathrm{Ext}^1_{dw}$

We begin with an observation.

{% def %}
($\mathrm{Ext}_{dw}(-,?)$). We fix $X$ and $Y$. Note that any dws ses of the form $0 → Y → E → Σ X → 0$ is isomorphic to

$$\begin{equation}
Y \xrightarrow {\binom 01} \mathrm{Cone}(g) \xrightarrow {(1 \ 0)} Σ X,
\end{equation}$$

which determines a morphism of the form $X → Y$ via TR1. We define

$$\begin{equation}
\mathrm{Ext}^1_{dw} :𝐌𝐨𝐝 _{(A,d)}^{\mathrm{op}} × 𝐌𝐨𝐝 _{(A,d)} → 𝐌𝐨𝐝 _k \quad (M,N) ↦ (M, N) _K.
\end{equation}$$

{% enddef %}

{% lem %}
$\mathrm{Ext}_{dw}^1$ is a quotient of $\text{dws ses} / ∼$, where $∼$ is the relation in defining $\mathrm{Ext}^1 := \text{ses} / ∼$.

{% pf %}
An isomorphism between dws ses takes the form

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzEsMCwiWSJdLFszLDAsIlxcbWF0aHJte0NvbmV9KGYpIl0sWzMsMSwiXFxtYXRocm17Q29uZX0oZykiXSxbMSwxLCJZIl0sWzUsMCwiXFxTaWdtYSBYIl0sWzUsMSwiXFxTaWdtYSBYIl0sWzAsMCwiMCJdLFswLDEsIjAiXSxbNiwwLCIwIl0sWzYsMSwiMCJdLFswLDMsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNSwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwxLCJcXGJpbm9tIDAxIl0sWzMsMiwiXFxiaW5vbSAwMSIsMl0sWzEsMiwiXFxiaW5vbSB7MSBcXCAwfXtzIFxcIDF9IiwyXSxbMSw0LCIoMSBcXCAwKSJdLFsyLDUsIigxIFxcIDApIiwyXSxbMSwyLCJcXHNpbWVxIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMF0sWzcsM10sWzQsOF0sWzUsOV1d
\begin{tikzcd}
	0 & Y && {\mathrm{Cone}(f)} && {\Sigma X} & 0 \\
	0 & Y && {\mathrm{Cone}(g)} && {\Sigma X} & 0
	\arrow[from=1-1, to=1-2]
	\arrow["{\binom 01}", from=1-2, to=1-4]
	\arrow[equals, from=1-2, to=2-2]
	\arrow["{(1 \ 0)}", from=1-4, to=1-6]
	\arrow["{\binom {1 \ 0}{s \ 1}}"', from=1-4, to=2-4]
	\arrow["\simeq", draw=none, from=1-4, to=2-4]
	\arrow[from=1-6, to=1-7]
	\arrow[equals, from=1-6, to=2-6]
	\arrow[from=2-1, to=2-2]
	\arrow["{\binom 01}"', from=2-2, to=2-4]
	\arrow["{(1 \ 0)}"', from=2-4, to=2-6]
	\arrow[from=2-6, to=2-7]
\end{tikzcd}
{% endtikz %}

$\binom {1 \ 0}{s \ 1}$ is a chain map iff $f-g = ds+sd$. By isomorphism theorem on abelian groups.

{% endpf %}

{% endlem %}

Since split ses and dws ses are subgroups of ses, $\mathrm{Ext}_{dw}^1$ is a subfunctor of $\mathrm{Ext}^1$:

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMiwwLCJcXHRleHR7ZHdzIHNlc30iXSxbMiwxLCJcXHRleHR7c2VzfSJdLFsxLDEsIlxcdGV4dHtzcGxpdCBzZXN9Il0sWzEsMCwiXFx0ZXh0e3NwbGl0IHNlc30iXSxbMywwLCJcXG1hdGhybXtFeHR9XjFfe2R3fSJdLFszLDEsIlxcbWF0aHJte0V4dH1eMSJdLFswLDAsIlxcLCJdLFs0LDEsIlxcLCJdLFswLDEsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzMsMCwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMiwxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFszLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsNCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzEsNSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsNSwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifSwiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
	{\,} & {\text{split ses}} & {\text{dws ses}} & {\mathrm{Ext}^1_{dw}} \\
	& {\text{split ses}} & {\text{ses}} & {\mathrm{Ext}^1} & {\,}
	\arrow[hook, from=1-2, to=1-3]
	\arrow[equals, from=1-2, to=2-2]
	\arrow[two heads, from=1-3, to=1-4]
	\arrow[hook, from=1-3, to=2-3]
	\arrow[dashed, hook, from=1-4, to=2-4]
	\arrow[hook, from=2-2, to=2-3]
	\arrow[two heads, from=2-3, to=2-4]
\end{tikzcd}
{% endtikz %}

We show that $\mathrm{Ext}^1_{dw}(M, -) = \mathrm{Ext}^1(M, -)$ for $GM ∈ \operatorname{im} 𝔉$.

{% thm %}
$\mathrm{Ext}^1_{dw} (M, -) = \mathrm{Ext}^1 (M, -)$, where the underlying graded module $GM$ is free.

{% pf %}
Note that $FUM$ is a projective object in $𝐌𝐨𝐝 _{(A,d)}$, we find dws ses

$$\begin{equation}
θ _M := 0 → Σ^{-1} M \xrightarrow {\binom 01} FGM \xrightarrow {(1 \ 0)} M → 0.
\end{equation}$$

The morphism $(Σ^{-1} M, -) → \mathrm{Ext}^1(M, -),\quad f ↦ f_∗ θ _M$ is surjective, as $FGM$ lifts epimorphisms. The kernel consists of morphisms passing through projective objects. Hence $\mathrm{Ext}(M, -) ≃ (Σ ^{-1} M, -)_K$. Therefore,

$$\begin{equation}
\mathrm{Ext}^1_{dw}(M,-) = (Σ ^{-1} M, -)_K ≃ \mathrm{Ext}^1(M, -).
\end{equation}$$

{% endpf %}

{% endthm %}

{% thm %}
Let $M = ∐ _{n ∈ ℤ } Σ ^n A^{(I_d)}$ be a free module. Then

$$\begin{equation}
∏ \limits _{n ∈ ℤ } (H^{1-n}(-))^{I_d} ≃ \mathrm{Ext}^1(M, -) ≃ \mathcal{HOM}(Σ^{-1} M, H^0(-)).
\end{equation}$$

Here $\mathcal{HOM}(Σ^{-1} M, H^0(-))$ is a $∏$-graded module.

{% pf %}
A calculation shows that

$$\begin{aligned}
\mathrm{Ext}^1(M, -) & = \mathrm{Ext}_{dw} ^1 (M, -) = H^0\mathcal{HOM}(Σ^{-1} M, -) \\
& = H^0\mathcal{HOM}(∐ _{n ∈ ℤ } Σ ^{n-1} A^{(I_d)}, -) \\
& = ∏ _{n ∈ ℤ } Σ ^{1-n} (H^0\mathcal{HOM}(A, -))^{I_d} \\
& = ∏ _{n ∈ ℤ } (H^{1-n} (-))^{I_d} \\
\end{aligned}$$

We explain the second equality with $M = A$.

$$\begin{equation}
\mathrm{Ext}^1(A,-) = H^0\mathcal{HOM}(Σ^{-1} A,-) ≃ Σ H^0(-) ≃ \mathcal{HOM}(Σ^{-1} A, H^0(-)).
\end{equation}$$

Note that the $A$-module structure of $H^0(M)$ is given by
$$\begin{equation}
H^0(M) A^0 = \frac{Z^0(M) A^0}{B^0(M)A^0} ⊆ H^0(M);\quad H^0(M)A^{≠ 0} = 0.
\end{equation}$$

{% endpf %}

{% endthm %}

Hence, for projective module $P$,

$$\begin{equation}
\mathrm{Ext}^1 (P, -) = \mathrm{Ext}^1_{dw} (P, -) = \mathcal{HOM}(P, H^0(-)).
\end{equation}$$

#### Projective Resolutions

A projective replacement is an quasi-isomorphism $ρM → M$ which plays a crucial role in DG-algebra. One important property is that any epimorphism $X ↠ ρ M$ is dws.

{% def %}
(Projective filtration). Say $X$ admits a projective filtration, when there exists a countable chain

$$\begin{equation}
0 = P_0 ↪ P_1 ↪ P_2 ↪ \cdots P_n ↪ \cdots; \quad ⋃ _{n ∈ ℕ } P_n = X,
\end{equation}$$

wherein $P_n$ are summands of $∐ _{k ∈ I_0} Σ ^k (∐ A^{Λ _k})$ ($|I_0| < ∞$), and $\frac{P_{n+1}}{P_n}$ are projective modules for all $n ∈ ℕ$. Corollary, all $↪$ are dws monic.

{% enddef %}

{% pro %}
Show the dws ses below:

$$\begin{equation}
0 → ∐ \limits_{n ∈ ℕ } P_n \xrightarrow{1 - (\overset{\text{dws}}↪)} ∐ \limits_{n ∈ ℕ } P_n → X → 0.
\end{equation}$$

Hint: $X$ is a projective module by degreewise verification.

{% endpro %}

{% ex %}
Not all projective modules admit a projective filtration. For example, we take $k = ℤ$ and $A = [0 → ℤ / 4ℤ → 0]$. The acyclic projective complex $\cdots \xrightarrow {× 2} ℤ / 4ℤ \xrightarrow {× 2} ℤ / 4ℤ \xrightarrow {× 2}\cdots$ has no projective filtration.
{% endex %}

{% pro %}
It is some how convenient to introduce the free resolution, i.e., $\frac{P_{k+1}}{P_{k}}$ is free in $𝐆𝐫𝐌𝐨𝐝 _A$. Show that a projective resolution is precisely a summand of a free resolution. Hint: show that $⋃ (-)$ is an additive functor sending the category of countable filtration to the limit.
{% endpro %}

{% def %}
(Localising). Let $\mathcal{X}$ be a subclass of a triangluated category with arbitrary coproducts. Let $\mathrm{Loc}(\mathcal{X})$ denote the least triangulated subcategory consisting of $\mathcal{X}$ and closed under arbitrary coproducts.
{% enddef %}

Since the category has countable coproduct, $\mathrm{Loc}(\mathcal{X})$ is closed under summands.

{% thm %}
Let $\mathcal{P}$ denote the class of objects admits a projective filtration. Then $\mathcal{P} = \mathrm{Loc}(\mathcal{P}) = \mathrm{Loc}(\{A\})$.

{% pf %}
Clearly $\mathcal{P} ⊆ \mathrm{Loc}(\{A\})$. We show $\mathcal{P} = \mathrm{Loc}(\mathcal{P})$. Note that the coproduct and (de)suspension of a projective filtration is also a well-defined projective filtration. By Cantor's diagonal argument, $\mathrm{Loc}(\mathcal{P})$ is closed under countable filtrations.
\\
We show that $\mathrm{Loc}(\mathcal{P})$ is closed under cones. For any $X = ⋃ P_∙$, $Y = ⋃ Q_∙$ and a morphism $f : X → Y$, $⋃ \mathrm{Cone}(f_∙)$ is a filtration of $\mathrm{Cone}(f)$, wherein $f_k : P_k ↪ X \xrightarrow f Y$. It remains to show that each $\mathrm{Cone}(f_k)$ is a filtration. WLOG, we assume $P_k = ∐_{i ∈ I} A$. The underlying morphism of $f_k : A^{(I)} → Y$ in $𝐆𝐫𝐌𝐨𝐝 _A$ identifies a map between graded set $\widetilde {f_k} : ∐ S → 𝔘Y$. Hence, $\mathrm{Cone}(f_k)$ has a projective filtration with underlying graded set

$$\begin{equation}
A^{(I_0)} ⊕ Q_0 ⊆ A^{(I_1)} ⊕ Q_1 ⊆ \cdots ⊆ A^{(I_n)} ⊕ Q_n ⊆ \cdots;\quad I_k = \widetilde {f_k}^{-1}(𝔘 Q_k).
\end{equation}$$

{% endpf %}

{% endthm %}

The following theorem is based on Brown's representability, which shows that projective resolutions exist.

{% thm %}
$A$ is a perfect generator of $\mathrm{Loc}(\mathcal{P})$. Moreover, for any DG module $M$, there exists a quasi-isomorphism $P → M$ ($P ∈ \mathcal{P}$) such that for any $Q ∈ \mathcal{P}$, any morphism $Q → M$ factors through $P → M$.

{% pf %}
Clearly $\mathrm{Loc}(A) = \mathrm{Loc}(\mathcal{P})$. We show that for any collection of morphisms $f_i : X_i → Y_i$ such that $(A, f_i)_K$ is epic, $(A, ∐ f_i)_K$ is also epic. Note that

$$\begin{equation}
(A, ∐ f_i)_K ≃ \mathcal{HOM}(A, H^0 (∐ f_i)) ≃ \mathcal{HOM}(A, ∐ H^0 (f_i)).
\end{equation}$$

Taking underlying set of graded modules, we see $\mathcal{HOM}(A, -)$ preserves and reflects epimorphisms. Hence $(A, ∐ f_i)_K$ is epic iff $∐ H^0 (f_i)$ is epic, iff each $H^0(f_i)$ is epic, iff each $(A, f_i)_K$ is epic, thus iff $∐ (A, f_i)_K$ is epic. This shows that $A$ is a perfect generator of $\mathrm{Loc}(\mathcal{P})$.
\\
By Brown's representability, the functor

$$\begin{equation}
(-, M)_K: \mathrm{Loc}(\mathcal{P}) → 𝐌𝐨𝐝 _k,\quad P ↦ (P, M)_K
\end{equation}$$

is cohomological and sends coproducts to products. By Brown's representability, the functor is representable by some $(-, ρ M)_{\mathrm{Loc}(\mathcal{P})}$. Let $c : ρM → M$ be the morphism
$$\begin{equation}
c ∈ (ρ M, M)_K ≃ (ρ M, ρ M)_{\mathrm{Loc}(\mathcal{P})} ∋ 1_{ρ M}.
\end{equation}$$
This indicates that any $P → M$ factors through $c : ρ M → M$. By functoriality, $H^∙ (c)$ is an isomorphism.

{% endpf %}

{% endthm %}

{% thm %}
(DG-projective). Say $M$ is DG-projective, provided the following equivalent definitions:

1. $M$ has a projective filtration;
2. $\mathrm{Ext}^1_{𝐌𝐨𝐝 _{(A,d)}} (M , -)$ vanishes over acyclic DG modules;
3. $(M, -)$ lifts epic quasi-isomorphisms;
4. $M$ is projective satisfying one of the following conditions:
   1. $H^k \mathcal{HOM}(M, -) : 𝐌𝐨𝐝 _{(A,d)} → 𝐌𝐨𝐝 _k$ sends acyclic complexes to $0$ for all/some $k$;
   2. $\mathcal{HOM}(M, -) : 𝐌𝐨𝐝 _{(A,d)} → C(k)$ preserves acyclic complexes;
   3. $\mathcal{HOM}(M, -) : 𝐌𝐨𝐝 _{(A,d)} → C(k)$ preserves quasi-isomorphisms;
   4. $H^k \mathcal{HOM}(M, -) : 𝐌𝐨𝐝 _{(A,d)} → 𝐌𝐨𝐝 _k$ sends quasi-isomorphisms to isomorphisms for all/some $k$.

Here the equivalency of all/some are shown by $Σ$.

{% pf %}
(1 → 2). Suppose there exists a free filtration $M = ⋃ F_∙ = \varinjlim ^{fil} F_∙$. A compotation of Grothendieck's spectal sequence shows ($∀ p ≥ 0$):

$$\begin{equation}
0 → \varprojlim{}^1 \mathrm{Ext}^{p} (F_∙ , -) → \mathrm{Ext}^{p+1} (\varinjlim F_∙, -) → \varprojlim\mathrm{Ext}^{p+1} (F_∙, -) → 0.
\end{equation}$$

For $p = 0$, we show $(F_∙ , -)$ is Mittag-Leffler. It suffices to show in $𝐆𝐫𝐌𝐨𝐝 _A$, as the $G$ preserves image. WLOG we assume $G(F_∙) = 𝔉S_∙$, where $S_0 = ∅$ and $S_k ⊆ S_{k+1}$. By adjunction and $𝐏𝐫𝐨𝐣 (𝐆𝐫𝐒𝐞𝐭𝐬 ) = 𝐆𝐫𝐒𝐞𝐭𝐬$, $\{(𝔉S_k, -)\} ≃ \{(S_k, 𝔘 (-))\}$ is an epic tower. We claim $\mathrm{Ext}^{1} (F_∙, -)$ vanished on acyclic complexes, since

$$\begin{equation}
\mathrm{Ext}^{1} (F_∙ , -) = \mathrm{Ext}^1_{dw}(F_∙ , -) ≃ (F_∙ , H^0(-))_K.
\end{equation}$$

Therefore, $\mathrm{Ext}^{1} (\varinjlim F_∙, -)$ vanishes.
\\
(2 ↔ 3). Note that $\mathrm{Ext}^1(A,B) = 0$ iff any ses $0 → B → ? → A → 0$ splits.
\\
(2 → 4(1)). By $\mathrm{Ext}^1(M, -) = H^0\mathcal{HOM}(M, -)$.
\\
(4(1) → 4(2)). Clear.
\\
(4(2) → 4(3)). Note that $\mathcal{HOM}(M,-)$ is homological and preserves cones.\\
(4(3) → 4(4)). Clear.
\\
(4(4) → 1). Brown's representability shows the existence of quasi-isomorphism $ρ M → M$, where $ρ M$ has a projective filtration. We take $k = 0$ and see that $(M, ρ M)_K \overset {c_∗ }≃ (M, M)_K$. Hence $M$ is homotopy equivalent to a summand of $ρ M$. Since $M$ is a projective module, there exists some projective objects $P$ and $Q$ s.t. $M ⊕ P ≃ (\text{summand of } \ ρ M) ⊕ Q$. Clearly $M$ has a projective filtration.
{% endpf %}

{% endthm %}

#### Injective Resolutions

We introduce injective resolution $M ↪ ι M$.

{% def %}
(Injective Tower). Say $M$ admits an injective tower, when there exists a countable tower

$$\begin{equation}
\cdots ↠ I^n ↠ \cdots ↠ I^1 ↠ I^0 = 0; \quad \varprojlim I^∙ = M,
\end{equation}$$

such that $\ker (I^{n+1} ↠ I^n)$ are summands of $∏ _{k ∈ I_0}Σ ^k (∏ ({}_AA)^+)$ ($|I_0| < ∞$).

{% enddef %}

{% pro %}
Show that $I^{n+1} ↠ I^n$ is dws epic.
{% endpro %}

{% pro %}
Show the dws ses below:

$$\begin{equation}
0 → M → ∏ \limits_{n ∈ ℕ } I^n \xrightarrow{1 - (\overset{\text{dws}}↠)} ∏ \limits_{n ∈ ℕ } I^n → 0.
\end{equation}$$

Note that the ses for countable chain does note rely on the morphisms; here $1 - (\overset{\text{dws}}↠)$ is epic iff the system is Mittag-Leffler.

{% endpro %}

{% pro %}
Show that not all injective modules admit an injective tower. Hint: Dold's example.
{% endpro %}

{% def %}
(Free-injective tower). Anaglous to the definition of free filtration, say $M$ admits a free-injective when there exists a countable tower with kernels of the form $∏ _{k ∈ I_0}Σ ^k (∏ ({}_AA)^+)$ ($|I_0| < ∞$).
{% enddef %}

{% pro %}
Show that a DG module admits an injective resolution is precisely a summand of what admits a free-injective tower.
{% endpro %}

{% lem %}
(Character Module). If $M ∈ 𝐌𝐨𝐝 _{(A,d)^{\mathrm{op}}}$ is DG-projective, then $M^+ ∈ 𝐌𝐨𝐝 _{(A,d)}$ is DG-injective.

{% pf %}
Note that $(-)^+$ takes free filtration to free-injective tower, thus it takes free $(A,d)^{\mathrm{op}}$-modules to free-injective $(A,d)$ ones.

{% endpf %}

{% endlem %}

{% pro %}
Show anagolously that for injective module $I$, $\mathrm{Ext}^1_{dw}(-, I) ≃ \mathrm{Ext}^1(-, I)$. Hint: this is a propery of Frobenius exact category, which has nothing to do with $(-)^+$.
{% endpro %}

{% lem %}
For injective module $I$, $\mathrm{Ext}^1(-, I) ≃ \mathcal{HOM}(H^0(-), Σ I)$

{% pf %}
We show for $I = Σ ^{-1} ∏ A^+$. Note that

$$\begin{aligned}
\mathrm{Ext}^1(-, Σ ^{-1} ∏ (A^+)) & = H^0\mathcal{HOM}(- , ∏ (A^+)) ≃ ∏ H^0\mathcal{HOM}(-, A^+)\\
& ≃ ∏ H^0\mathcal{HOM}(-, ℚ / ℤ ) ≃ ∏ \mathcal{HOM}(H^0 (-), ℚ / ℤ )\\
& ≃ ∏ \mathcal{HOM}(H^0 (-), A^+) ≃ \mathcal{HOM}(H^0 (-), Σ I) .
\end{aligned}$$

{% endpf %}

{% endlem %}

We show Brown's representability.

{% thm %}
Let $\mathcal{I}$ denote the modules admits an injective tower, then $\mathrm{Loc}(A^+) = \mathrm{Loc}(\mathcal{I}) = \mathcal{I}$ as full subcategory of $K(𝐌𝐨𝐝 _{(A,d)})^{\mathrm{op}}$.

{% pf %}
It suffices to show that $\mathcal I ⊆ K(𝐌𝐨𝐝 _{(A,d)})^{\mathrm{op}}$ is closed under (de)suspension, cones, and products. The proof is the same as the projective case except the final step. To show that $\mathrm{Cone}(Y \overset φ → ∏ A^+)$ admits a tower, we consider

$$\begin{equation}
(Y,∏ A^+)_{(A,d)} ≃ (∐ A, Y^+)_{(A,d)^{\mathrm{op}}} \xrightarrow {\text{G}} (∐ A, Y^+)_{𝐆𝐫𝐌𝐨𝐝 _A} ≃ (S, 𝔘 (Y^+))_{𝐆𝐫𝐒𝐞𝐭𝐬 _A}.
\end{equation}$$

We take $\widetilde φ ∈ (S, 𝔘 (Y^+))_{𝐆𝐫𝐒𝐞𝐭𝐬 _A}$ as the image of $φ : Y → ∏ A^+$. The tower of $Y = \varprojlim J_∙$ induces a filtration $Y^+ = ⋃ J_∙ ^+$. We take $∏ \limits _{(\widetilde φ)^{-1}(𝔘(J_k))}A^+ ↪ ∏ A^+$ as the $k$-th entry in the tower of $∏ A^+$. This establishes a filtration of $\mathrm{Cone}(φ )$.

{% endpf %}

{% endthm %}

{% thm %}
$A^+$ is a perfect generator of the opposite triangulated category. Moreover, for any DG module $M$, there exists a quasi-isomorphism $M ↪ ι M$ ($ι M ∈ \mathcal{I}$) such that for any $J ∈ \mathcal{I}$, any morphism $M → J$ factors through $M ↪ ι M$.

{% pf %}
We show that $\mathrm{Loc}(A^+) = \mathrm{Loc}(\mathcal{I})$. Note that the dual category opposite the monomorphisms and epimorphisms. It remains to show that for any collection of monomorphisms $f_i : X_i ↪ Y_i$ such that $(f_i, A^+)_{K(A,d)} ≃ (A, f_i ^+)_{K((A,d)^{\mathrm{op}})}$ is epic, $(∏ f_i, A^+)_{K(A,d)} ≃ (A, (∏ f_i) ^+)_{K((A,d)^{\mathrm{op}})}$ is also epic. A calculation shows that

$$\begin{aligned}
↔\ \ & (A, (∏ f_i) ^+)_{K((A,d)^{\mathrm{op}})}  &&\text{is epic} \\
↔\ \  & H^0 ((∏ f_i) ^+)  &&\text{is epic} \\
↔\ \  & ((∏ H^0 (f_i)) ^+)  &&\text{is epic} \\
↔\ \  & H^0 (f_i) &&\text{is monic for all} \ i \\
↔\ \  & (A, (f_i)^+)_{K((A,d)^{\mathrm{op}})} &&\text{is epic for all} \ i.
\end{aligned}$$

Since $(-, M)_{K^{\mathrm{op}}}$ is cohomological and sends coproducts to products, by Brown's representability, the functor is representable by some $(-, ι M)_{\mathrm{Loc}(\mathcal{I})}$. Let $d : M → ι M$ be the morphism, then any $M → J$ factors through $d : M → ι M$. By functoriality, $H^∙ (d)$ is an isomorphism.

{% endpf %}

{% endthm %}

We finally show equivalent definitions of DG-injective modules.

{% thm %}
(DG-projective). Say $M$ is DG-projective, provided the following equivalent definitions:

1. $M$ has a injective tower;
2. $\mathrm{Ext}^1_{𝐌𝐨𝐝 _{(A,d)}} (-, M)$ vanishes over acyclic DG modules;
3. $(-, M)$ lifts monic quasi-isomorphisms;
4. $M$ is injective satisfying one of the following conditions:
   1. $H^k \mathcal{HOM}(-, M) : 𝐌𝐨𝐝 _{(A,d)} → 𝐌𝐨𝐝 _k$ sends acyclic complexes to $0$ for all/some $k$;
   2. $\mathcal{HOM}(-, M) : 𝐌𝐨𝐝 _{(A,d)} → C(k)$ preserves acyclic complexes;
   3. $\mathcal{HOM}(-, M) : 𝐌𝐨𝐝 _{(A,d)} → C(k)$ preserves quasi-isomorphisms;
   4. $H^k \mathcal{HOM}(-, M) : 𝐌𝐨𝐝 _{(A,d)} → 𝐌𝐨𝐝 _k$ sends quasi-isomorphisms to isomorphisms for all/some $k$.

Here the equivalency of all/some are shown by $Σ$.

{% pf %}
We show (1 → 2) only. The rests are the same as the DG-projective case. We take $Y = \varprojlim ∏ A_∙ ^+$ as the limit of free-injective tower. A computation of Grothendieck's spectral sequence shows

{% tikz %}
% https://q.uiver.app/#q=WzAsNyxbMiwwLCJcXHZhcnByb2psaW1eMSAoWCxcXHByb2QgQV9cXGJ1bGxldCBeKykiXSxbMiwxLCJcXG1hdGhybSBSXjEoXFx2YXJwcm9qbGltICgtLCBcXHByb2QgQV9cXGJ1bGxldCBeKykpKFgpIl0sWzIsMiwiXFx2YXJwcm9qbGltIFxcbWF0aHJte0V4dH1eMShYLCBcXHByb2QgQV9cXGJ1bGxldCBeKykiXSxbMSwxLCJcXG1hdGhybXtFeHR9XjEoWCwgWSkiXSxbMCwxLCIwIl0sWzMsMSwiKFgsXFx2YXJwcm9qbGltXjEgXFxwcm9kIEFfXFxidWxsZXQgXisgKSJdLFs0LDEsIlxcY2RvdHMiXSxbMCwxLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6ImJvdHRvbSJ9fX1dLFsxLDIsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs0LDNdLFszLDFdLFsxLDVdLFs1LDZdXQ==
\begin{tikzcd}
	&& {\varprojlim^1 (X,\prod A_\bullet ^+)} \\
	0 & {\mathrm{Ext}^1(X, Y)} & {\mathrm R^1(\varprojlim (-, \prod A_\bullet ^+))(X)} & {(X,\varprojlim^1 \prod A_\bullet ^+ )} & \cdots \\
	&& {\varprojlim \mathrm{Ext}^1(X, \prod A_\bullet ^+)}
	\arrow[hook', from=1-3, to=2-3]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
	\arrow[two heads, from=2-3, to=3-3]
	\arrow[from=2-4, to=2-5]
\end{tikzcd}
{% endtikz %}

Clearly $\varprojlim \mathrm{Ext}^1(X, \prod A_\bullet ^+) = 0$. It suffices to show that $(X,\prod A_\bullet ^+)$ is Mittag-Leffler. Note that

$$\begin{equation}
(X,∏ A_∙ ^+) ≃ ((∐ A)_∙ , X^+) \xrightarrow G (𝔉 S_∙ , (X^+))_{𝐆𝐫𝐌𝐨𝐝 _A} ≃ (S_∙ , 𝔘 (X^+))_{𝐆𝐫𝐒𝐞𝐭𝐬 _A}.
\end{equation}$$

This is clearly an epic tower.

{% endpf %}

{% endthm %}

#### Flat Modules

We state the definition of injective, projective and flat modules in a uniform way.

{% def %}
Say a DG module $M$ is

1. DG-injective, provided $((-)^{\mathrm{op}}, M)$ preserves epic quasi-isomorphisms;
2. DG-projective, provided $(M, -)$ preserves epic quasi-isomorphisms;
3. DG-flat, provided $M ⊗ -$ preserves monic quasi-isomorphisms.

{% enddef %}

{% pro %}
Show the following basic properties:

1. DG-injective/DG-projective/DG-flat modules are closed under extensions, summands, and (de)suspensions.
2. DG-projective/DG-flat modules are closed under $∐$ and $⊗$.
3. DG-flat modules are closed under filtered colimits.
4. DG-injective modules are closed under products.
5. $M$ is DG-flat iff $M^+$ is DG-injective.

{% endpro %}

We seldomly use the definition of flat resolutions, due to the following considerations.

{% thm %}
A quasi-isomorphism between DG-projective/DG-injective modules is homotopy equivalence; a quasi-isomorphism between DG-flat modules might not be a homotopy equivalence.

{% pf %}
We show DG-projective case. Let $φ : P → Q$ be a quasi-isomorphism between DG-projective modules. Since $(Q, -)_K$ preserves quasi-isomorphisms, we find a right inverse of $φ$ in the homotopy category. The left inverse of $φ$ exists by applying $(-, P)_K$. Hence $φ$ is a homotopy equivalence. The injective case is similar. A non-example of flat case is

$$\begin{equation}
[\cdots → 0 → ℤ → ℚ → 0 \cdots \cdots] ↠ [\cdots → 0 → 0 → ℚ / ℤ → 0 → \cdots ].
\end{equation}$$

{% endpf %}

{% endthm %}

When $φ$ is a quasi-isomorphism between flat modules, then $φ ^+$ is a homotopy equivalence.

### Derived Categories

#### Verdier Quotient

We follow Verdier's localisation of triangulated categories. Let $S$ denote the class of quasi-isomorphisms in $K(𝐌𝐨𝐝 _{(A,d)})$.

{% thm %}
$S$ is a saturated multiplicative system. $S^{-1} K(𝐌𝐨𝐝 _{(A,d)})$ is the Verdier quotient $K(𝐌𝐨𝐝 _{(A,d)}) / K_{ac}$, where $K_{ac}$ the thick subcategory consists of acyclic complexes.

{% pf %}
We show FR's and only, the verification of LFR's are dual. Note that for any distinguished triangle $⋅ \xrightarrow f ⋅ → K$, $f$ is quasi-isomorphism iff $K$ is acyclic.
\\
(FR1). $1_X ∈ S$ and $S ∘ S = S$.
\\
(FR2). Given the quasi-isomorphism $s : X ⇒ Y$ and a morphism $Z → Y$, we construct distinguished triangle $W ⇒ Z → \mathrm{Cone}(s)$. By TR1, there is an induced $W → X$ making the square $\binom {W \ Z}{X \ Y}$ commutative.
\\
(FR3). When $0 = f ∘ s$ for some $s ∈ S$, then $f$ factors through $\mathrm{Cone}(s)$ which is acyclic. Assume $f : X → Y$, then there is a dintinguished triangle $\mathrm{Cone}(s) \overset i → Y \overset t⇒ Z$. Since $f ∈ \operatorname{im}(i ∘ -)$, we see $t ∘ f = 0$.
\\
(FR4). $Σ^± S = S$.
\\
(FR5). For morphisms $(α , β , γ ) : \triangle → \triangle '$ where $α, β ∈ S$, we see $γ ∈ S$ by homological long exact sequence.
\\
(Saturated). If $fg, gh ∈ S$, then $H^∙ (g)$ has left and right inverses. Hence $g ∈ S$.
{% endpf %}

{% endthm %}

{% ex %}
(Set-theoretic refinement). One important consideration is that the Hom set for $S^{-1} K(𝐌𝐨𝐝 _{(A,d)})$ might be a proper class. We denote $𝐌𝐨𝐝 _{(A,d)}^κ$ as the full-subcategory of DG-modules with cardinal $≤ κ$. For $κ < κ '$, there is an embedding of full subcategory

$$\begin{equation}
Ι : (S^κ)^{-1} K (𝐌𝐨𝐝 _{(A,d)}^κ) ↪ (S^{κ '})^{-1} K (𝐌𝐨𝐝 _{(A,d)}^{κ '}).
\end{equation}$$

{% endex %}

{% thm %}
Let $κ_1 < κ_2 < \cdots$ be an arbitrary large chain of cardinals s.t. each $K(𝐌𝐨𝐝 _{(A,d)}^κ)$ is closed under taking DG-resolutions (e.g. let $κ$ be strongly inaccessible). For $κ < κ '$, there is an embedding of full subcategory

$$\begin{equation}
Ι : (S^κ)^{-1} K (𝐌𝐨𝐝 _{(A,d)}^κ) ↪ (S^{κ '})^{-1} K (𝐌𝐨𝐝 _{(A,d)}^{κ '}).
\end{equation}$$

{% pf %}
The induced morphism $Ι$ is well-defined, since

$$\begin{equation}
K (𝐌𝐨𝐝 _{(A,d)}^κ) ↪ K (𝐌𝐨𝐝 _{(A,d)}^{κ '}) → (S^{κ '})^{-1} K (𝐌𝐨𝐝 _{(A,d)}^{κ '}),\quad (S^{κ})^{-1} → \mathrm{Iso}.
\end{equation}$$

We assume $|(-)| ≤ κ$ and $|(-)'| ≤ κ '$. To see $Ι$ is full, we see any $X ⇐ W' → Y$ takes the form $X ⇐ ρ X → Y$. To see $Ι$ is faithful, we assume $X ⇐ M → Y$ is zero in $(S^{κ '})^{-1} K (𝐌𝐨𝐝 _{(A,d)}^{κ '})$. Then there exists a zero composition $W' ⇒ M → Y$. The induced composition $ρ W' → ρ M → ρ Y$ is zero in $K(𝐌𝐨𝐝 _{(A,d)})$. Since $ρ W' → ρ M$ is a homotopy equivalence, we see $ρ M → ρ Y$ is null-homotopic. Hence $M → Y$ is zero.

{% endpf %}

{% endthm %}

{% pro %}
Fill the gap in the above proof by showing that $(S^κ)^{-1} K (𝐌𝐨𝐝 _{(A,d)}^κ)$ is a fractional localisation.
{% endpro %}

{% def %}
(Derived category). The derived category is defined as

$$\begin{equation}
D (𝐌𝐨𝐝 _{(A,d)}) := S^{-1} K(𝐌𝐨𝐝 _{(A,d)}) = ⋃ \limits_{κ ∈ \{κ _1, \ldots \}} (S^κ)^{-1} K (𝐌𝐨𝐝 _{(A,d)}^κ).
\end{equation}$$

This is a *filtered* colimit indexed by a proper class.

{% enddef %}

We discuss the Hom set in the derived category.

{% thm %}
By Brown's representablity, $c : ρ M → M$ and $ι : M → ι M$ are functorial construction of projective and injective resolutions, respectively. For any $M, N ∈ D(𝐌𝐨𝐝 _{(A,d)})$, we have

$$\begin{equation}
(M, ι N)_K ≃ (M, N)_D ≃ (ρ M, N)_K.
\end{equation}$$

{% pf %}
We show the first isomorphism. Clearly $d_∗ : (M, N)_D ≃ (M, ι N)_D$. Note that for any quasi-isomorphism $s : M ⇒ ι N$, $(s, ι N)_K$ is an isomorphism. Hence $s$ is a homotopy equivalence. This shows that $(M, ι N)_K ≃ (M, ι N)_D$.

{% endpf %}

{% endthm %}

{% pro %}
Show that if $K(𝐌𝐨𝐝 _{(A,d)})$ has some certain kinds of limits and colimits, then localisation preserves such limits and colimits. Hint: use adjunction.

- Corollary: the homotopy (co)limits of the derived category $D(𝐌𝐨𝐝 _{(A,d)})$ is computated in $K(𝐌𝐨𝐝 _{(A,d)})$.

{% endpro %}

#### Derived Tensor

Recall that a quasi-isomorphism between DG-flat modules may not be a homotopy equivalence. We define the derived tensor product via projective resolutions (rather than flat resolutions).

{% def %}
(Derived tensor product). For $M ∈ D(𝐌𝐨𝐝 _{(A,d)})$ and $N ∈ D(𝐌𝐨𝐝 _{(A,d)^{\mathrm{op}}})$, we define

$$\begin{equation}
M ⊗^𝐋 N := ρ M ⊗ ρ N.
\end{equation}$$

{% enddef %}

Note that $c : ρ (ρ M ⊗ ρ N) ≃ ρ M ⊗ ρ N$ are DG-projective modules in $D(k)$.

{% def %}
(Derived Hom). For $M,N ∈ D(𝐌𝐨𝐝 _{(A,d)})$, we define

$$\begin{equation}
𝐑\mathcal{HOM} (M, N) := \mathcal{HOM} (ρ M, N).
\end{equation}$$

{% enddef %}

Note that $H^0 𝐑\mathcal{HOM}(-, ?) = \mathrm{Hom}_D(-, ?)$.

{% thm %}
There is an canonical isomorphism

$$\begin{aligned}
& 𝐑\mathcal{HOM}_k (M ⊗_A ^𝐋 N, K)\\
≃ \ & \mathcal{HOM}_k(ρ (ρ M ⊗_Aρ N), K)\\
≃ \ & \mathcal{HOM}_k(ρ M ⊗_Aρ N, K)\\
≃ \ & \mathcal{HOM}_A(ρ M , \mathcal{HOM}_k(ρ N, K))\\
≃ \ & 𝐑 \mathcal{HOM}_A(M , 𝐑 \mathcal{HOM}_k(N, K)).
\end{aligned}$$

Taking $H^0$, we show $(- ⊗_A ^𝐋 N) ⊣ 𝐑 \mathcal{HOM}_k(N, -)$.

{% endthm %}

#### Derived Category and Its Closed Monoidal Structure

This is an *easy* approach to derived category, as X.W. Chen [mentioned](https://arxiv.org/pdf/1908.04599) that

$$\begin{equation}
\boxed{\text{resolutions make life easier, but not really easier}}
\end{equation}$$

Let $A$ be a commutative DG algebra, so that $𝐌𝐨𝐝 _{(A,d)}$ is closed monoidal by previous discussion.

{% thm %}
$𝐑 \mathcal{HOM}(M, -)$ is a well-defined triangle functor.

{% pf %}
The assignment $C(A) → C(A) → D(A)$, $X ↦ \mathcal{HOM}(ρM, X)$ is uniquely defined.
\\
To see this passing through the localisation $C(A) → D(A)$, any quasi-isomorphism $f$ yields $\mathcal{HOM}(ρM, f)$, which is again a quasi-isomorphism as $ρ M$ is DG-projective.
\\
$\mathcal{HOM}(ρ M, -)$ is a triangle functor, since it preserves $\mathrm{Cone}$.
{% endpf %}

{% endthm %}

We also define $𝐑 \mathcal{HOM}$ from injective resolution. The isomorphism
$$\begin{equation}
𝐑 \mathcal{HOM}(X, ?)(Y) ≃ 𝐑 \mathcal{HOM}(-, Y)(X)
\end{equation}$$
comes from the functorial quasi-isomorphisms in $C(A)$:

$$\begin{equation}
\mathcal {HOM}(ρ  M, N) → \mathcal {HOM}(ρ  M, ι  N) ← \mathcal{HOM}(M,ι  N).
\end{equation}$$

{% pro %}
Show the balance of derived tensor product

$$\begin{equation}
(- ⊗ ^𝐋 Y)(X) = X ⊗ ρ Y \xrightarrow[∼ ]{⋆} ρ X ⊗ Y \xrightarrow[∼ ]{⋆^{-1}} (X ⊗ ^𝐋 ?)(Y)
\end{equation}$$

By Yoneda lemma, $(X ⊗ \mathrm{Cone}(f), -) ≃ (\mathrm{Cone}(X ⊗ f), -)$.

- Explain flat-resolution fails in $⋆$, while the projective resolution works well.

{% endpro %}

One can also conclude some natural isomorphisms, inhererited from the closed monoidal structures of $C(A)$.

{% ex %}
(Attempt). Once you attempt to show the monoidal structure of $D(A)$, you fails to show the identity $ρ (X ⊗ ^L Y) = ρ X ⊗ ρ Y$. This makes $(D(A), ⊗ ^L, A)$ a *lax* monoidal category.

- Thanks to MacLane, there is a way (possibly by a complicated conjugation) to reform the *strict* structure from the *lax* one.

We seek for a direct ways to obtain the strict monoidal structure of $D(A)$. Consider the quasi-isomorphisms:

$$\begin{equation}
ρ (X ⊗ ^𝐋 Y) = ρ (X ⊗ ρ Y) \xleftarrow[∼ ]{ρ (c ⊗ ρ Y)} ρ (ρ X ⊗ ρ Y) \xrightarrow[∼ ]{c} ρX ⊗ ρY.
\end{equation}$$

Note that $ρX ⊗ ρY$ is again DG-projective.

{% endex %}

{% def %}
(The symmetric derived tensor). We redefine the assignment

$$\begin{equation}
X ⊗^L Y := ρ X ⊗ ρ Y\quad (\xleftarrow[∼ ] {c} ρ (ρ X ⊗ ρ Y)).
\end{equation}$$

{% enddef %}

{% ex %}
Set $α ^ρ = (c ⊗ 1)^{-1} ∘ α ∘ (1 ⊗ c)$. The rule of associativity writes

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwwLCJYIFxcb3RpbWVzIF57XFxtYXRoYmZ7TH19IChZIFxcb3RpbWVzIF57XFxtYXRoYmZ7TH19WikiXSxbMCwxLCIoWCBcXG90aW1lcyBee1xcbWF0aGJme0x9fVkpIFxcb3RpbWVzIF57XFxtYXRoYmZ7TH19WiJdLFsxLDAsIlxccmhvIFggXFxvdGltZXMgXFxyaG8gIChcXHJobyBZXFxvdGltZXMgXFxyaG8gWikiXSxbMSwxLCJcXHJobyAoXFxyaG8gWCBcXG90aW1lcyBcXHJobyBZKVxcb3RpbWVzIFxccmhvIFoiXSxbMiwwLCJcXHJobyBYIFxcb3RpbWVzIChcXHJobyBZIFxcb3RpbWVzIFxccmhvIFopIl0sWzIsMSwiKFxccmhvIFggXFxvdGltZXMgXFxyaG8gWSkgXFxvdGltZXMgXFxyaG8gWiJdLFswLDEsIlxcYWxwaGEgXlxccmhvICIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsMywiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw0LCIxIFxcb3RpbWVzIGMiXSxbNCw1LCJcXGFscGhhICJdLFs1LDMsIihjIFxcb3RpbWVzIDEpXnstMX0iXV0=
\begin{tikzcd}
	{X \otimes ^{\mathbf{L}} (Y \otimes ^{\mathbf{L}}Z)} & {\rho X \otimes \rho  (\rho Y\otimes \rho Z)} & {\rho X \otimes (\rho Y \otimes \rho Z)} \\
	{(X \otimes ^{\mathbf{L}}Y) \otimes ^{\mathbf{L}}Z} & {\rho (\rho X \otimes \rho Y)\otimes \rho Z} & {(\rho X \otimes \rho Y) \otimes \rho Z}
	\arrow[equals, from=1-1, to=1-2]
	\arrow["{\alpha ^\rho }"', dashed, from=1-1, to=2-1]
	\arrow["{1 \otimes c}", from=1-2, to=1-3]
	\arrow["{\alpha }", from=1-3, to=2-3]
	\arrow[equals, from=2-1, to=2-2]
	\arrow["{(c \otimes 1)^{-1}}", from=2-3, to=2-2]
\end{tikzcd}
{% endtikz %}

{% endex %}

{% pro %}
(The pentagon rule). Consider the identity in $C(A)$:

$$\begin{equation}
(α _{X,Y,Z} ⊗ W) ∘ (α _{X, Y ⊗ Z, W}) ∘ (X ⊗ α _{Y, Z, W}) = (α _{X⊗ Y, Z,W}) ∘ (α _{X,Y,Z ⊗ W}).
\end{equation}$$

We apply $(-)^ρ$ on both sides, and show

$$\begin{equation}
(α^ρ _{X,Y,Z} ⊗^𝐋 W) ∘ (α^ρ _{X, Y ⊗^𝐋 Z, W}) ∘ (X ⊗^𝐋 α^ρ _{Y, Z, W}) = (α^ρ _{X ⊗^𝐋 Y, Z,W}) ∘ (α^ρ _{X,Y,Z ⊗^𝐋 W}).
\end{equation}$$

{% endpro %}

{% def %}
(The unit). $ρ A$ is the unit in $D(A)$ with the (left) identity rule

$$\begin{equation}
l_X^ρ : A ⊗^𝐋 X = ρ A ⊗ ρ X \xrightarrow [∼ ]{c ⊗ 1} A ⊗ ρ X\xrightarrow {λ} ρX \xrightarrow [∼ ]{c} X.
\end{equation}$$

{% enddef %}

{% pro %}
Now feel free to verify $(D(A), ⊗ ^𝐋 , A)$ is closed monoidal. For instance, we verify the pentagon diagram of left unit,

{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwxLCIoXFx1bmRlcmxpbmUgUiBcXG90aW1lcyBee1xcbWF0aGJmIEx9XFx1bmRlcmxpbmUgUikgIFxcb3RpbWVzIF57XFxtYXRoYmYgTH1YIl0sWzAsMCwiXFx1bmRlcmxpbmUgUiBcXG90aW1lcyBee1xcbWF0aGJmIEx9KFxcdW5kZXJsaW5lIFIgIFxcb3RpbWVzIF57XFxtYXRoYmYgTH1YKSJdLFsyLDAsIlxcdW5kZXJsaW5lIFIgIFxcb3RpbWVzIF57XFxtYXRoYmYgTH1YIl0sWzIsMSwiXFx1bmRlcmxpbmUgUiAgXFxvdGltZXMgXntcXG1hdGhiZiBMfVgiXSxbMywwLCJYIl0sWzMsMSwiWCJdLFsxLDAsIlxcYWxwaGEgXlxccmhvIiwyXSxbMSwyLCJcXHVuZGVybGluZSBSIFxcb3RpbWVzIF5cXG1hdGhiZiBMKGxeXFxyaG8gX3tcXHVuZGVybGluZSBSIFxcb3RpbWVzIF5cXG1hdGhiZiBMWH0pIl0sWzAsMywiKGxeXFxyaG8gX3tcXHVuZGVybGluZSBSIFxcb3RpbWVzIF5cXG1hdGhiZiBMXFx1bmRlcmxpbmUgUn0pXFxvdGltZXMgXlxcbWF0aGJmIEwgWCIsMl0sWzIsNCwibF5cXHJobyBfWCJdLFszLDUsImxeXFxyaG8gX1giLDJdLFs1LDQsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
	{A \otimes ^{\mathbf L}(A  \otimes ^{\mathbf L}X)} \&\& {A  \otimes ^{\mathbf L}X} \& X \\
	{(A \otimes ^{\mathbf L}A)  \otimes ^{\mathbf L}X} \&\& {A  \otimes ^{\mathbf L}X} \& X
	\arrow["{A \otimes ^\mathbf L(l^\rho _{A \otimes ^\mathbf LX})}", from=1-1, to=1-3]
	\arrow["{\alpha ^\rho}"', from=1-1, to=2-1]
	\arrow["{l^\rho _X}", from=1-3, to=1-4]
	\arrow["{(l^\rho _{A \otimes ^\mathbf LA})\otimes ^\mathbf L X}"', from=2-1, to=2-3]
	\arrow["{l^\rho _X}"', from=2-3, to=2-4]
	\arrow[equals, from=2-4, to=1-4]
\end{tikzcd}
{% endtikz %}

with the commutative diagram

{% tikz %}
% https://q.uiver.app/#q=WzAsMTcsWzAsMywiKFxcdW5kZXJsaW5lIFIgXFxvdGltZXMgXntcXG1hdGhiZiBMfVxcdW5kZXJsaW5lIFIpICBcXG90aW1lcyBee1xcbWF0aGJmIEx9WCJdLFswLDEsIlxcdW5kZXJsaW5lIFIgXFxvdGltZXMgXntcXG1hdGhiZiBMfShcXHVuZGVybGluZSBSICBcXG90aW1lcyBee1xcbWF0aGJmIEx9WCkiXSxbMCwwLCJcXHJobyBcXHVuZGVybGluZSBSXFxvdGltZXMgXFxyaG8gKFxccmhvIFxcdW5kZXJsaW5lIFIgXFxvdGltZXMgXFxyaG8gWCkiXSxbMCw0LCJcXHJobyAoXFxyaG8gXFx1bmRlcmxpbmUgUiBcXG90aW1lcyBcXHJobyBcXHVuZGVybGluZSBSKVxcb3RpbWVzIFxccmhvIFgiXSxbMSwxLCJcXHJobyBcXHVuZGVybGluZSBSXFxvdGltZXMgKFxccmhvIFxcdW5kZXJsaW5lIFJcXG90aW1lcyBcXHJobyBYKSJdLFsxLDMsIihcXHJobyBcXHVuZGVybGluZSBSXFxvdGltZXMgXFxyaG8gXFx1bmRlcmxpbmUgUilcXG90aW1lcyBcXHJobyBYIl0sWzIsMSwiXFxyaG8gXFx1bmRlcmxpbmUgUlxcb3RpbWVzIChcXHVuZGVybGluZSBSXFxvdGltZXMgXFxyaG8gWCkiXSxbMSwwLCJcXHJobyBcXHVuZGVybGluZSBSXFxvdGltZXMgXFxyaG8gKCBcXHVuZGVybGluZSBSIFxcb3RpbWVzIFxccmhvIFgpIl0sWzIsMywiKFxcdW5kZXJsaW5lIFJcXG90aW1lcyBcXHJobyBcXHVuZGVybGluZSBSKVxcb3RpbWVzIFxccmhvIFgiXSxbMSw0LCJcXHJobyAoXFx1bmRlcmxpbmUgUiBcXG90aW1lcyBcXHJobyBcXHVuZGVybGluZSBSKVxcb3RpbWVzIFxccmhvIFgiXSxbMiwwLCJcXHJobyBcXHVuZGVybGluZSBSIFxcb3RpbWVzIFxccmhvIFxccmhvIFgiXSxbMywwLCJcXHJobyBcXHVuZGVybGluZSBSIFxcb3RpbWVzIFxccmhvIFgiXSxbMyw0LCIgXFxyaG8gXFx1bmRlcmxpbmUgUlxcb3RpbWVzIFxccmhvIFgiXSxbMiw0LCJcXHJobyAgXFxyaG8gXFx1bmRlcmxpbmUgUlxcb3RpbWVzIFxccmhvIFgiXSxbMiwyLCIoXFxyaG8gXFx1bmRlcmxpbmUgUlxcb3RpbWVzIFxcdW5kZXJsaW5lIFIpXFxvdGltZXMgXFxyaG8gWCJdLFszLDEsIlxcdW5kZXJsaW5lIFIgIFxcb3RpbWVzIF57XFxtYXRoYmYgTH1YIl0sWzMsMywiXFx1bmRlcmxpbmUgUiAgXFxvdGltZXMgXntcXG1hdGhiZiBMfVgiXSxbMSwwLCJcXGFscGhhIF5cXHJobyAiLDJdLFsxLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMywiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw1LCJcXGFscGhhICJdLFsyLDQsIjEgXFxvdGltZXMgYyIsMCx7ImNvbG91ciI6WzIzNSwxMDAsNjBdfSxbMjM1LDEwMCw2MCwxXV0sWzUsMywiY1xcb3RpbWVzIDEiLDIseyJjb2xvdXIiOlsxMjQsMTAwLDMxXX0sWzEyNCwxMDAsMzEsMV1dLFs0LDYsIjFcXG90aW1lcyAoYyBcXG90aW1lcyAxKSIsMix7ImNvbG91ciI6WzM1NiwxMDAsNjBdfSxbMzU2LDEwMCw2MCwxXV0sWzIsN10sWzcsNiwiMSBcXG90aW1lcyBjIiwwLHsiY29sb3VyIjpbMjM1LDEwMCw2MF19LFsyMzUsMTAwLDYwLDFdXSxbOCw5LCJjIFxcb3RpbWVzIDEiLDIseyJjb2xvdXIiOlsxMjQsMTAwLDMxXX0sWzEyNCwxMDAsMzEsMV1dLFs1LDhdLFszLDldLFsxMCwxMSwiMSBcXG90aW1lcyBjIiwyLHsiY29sb3VyIjpbMjM1LDEwMCw2MF19LFsyMzUsMTAwLDYwLDFdXSxbMTIsMTMsImMgXFxvdGltZXMgMSIsMix7ImNvbG91ciI6WzEyNCwxMDAsMzFdfSxbMTI0LDEwMCwzMSwxXV0sWzcsMTAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMTEsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzgsMTIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzksMTMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMTQsIlxcYWxwaGEgIl0sWzE0LDgsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMTEsIlxcdW5kZXJsaW5lIFIgXFxvdGltZXMgXlxcbWF0aGJmIEwobF5cXHJobyBfe1xcdW5kZXJsaW5lIFIgXFxvdGltZXMgXlxcbWF0aGJmIExYfSkiLDAseyJvZmZzZXQiOi01fV0sWzMsMTIsIihsXlxccmhvIF97XFx1bmRlcmxpbmUgUiBcXG90aW1lcyBeXFxtYXRoYmYgTFxcdW5kZXJsaW5lIFJ9KVxcb3RpbWVzIF5cXG1hdGhiZiBMIFgiLDIseyJvZmZzZXQiOjR9XSxbMTEsMTUsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzE1LDE2LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNiwxMiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNSwxNCwiKDFcXG90aW1lcyBjKSBcXG90aW1lcyAxIiwwLHsiY29sb3VyIjpbMzU2LDEwMCw2MF19LFszNTYsMTAwLDYwLDFdXSxbMTcsMjAsIlxcYmxhY2t0cmlhbmdsZSIsMSx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNCw0MCwiXFxiaWdzdGFyIiwxLHsic2hvcnRlbiI6eyJ0YXJnZXQiOjIwfSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}
	{\rho A\otimes \rho (\rho A \otimes \rho X)} & {\rho A\otimes \rho ( A \otimes \rho X)} & {\rho A \otimes \rho \rho X} & {\rho A \otimes \rho X} \\
	{A \otimes ^{\mathbf L}(A  \otimes ^{\mathbf L}X)} & {\rho A\otimes (\rho A\otimes \rho X)} & {\rho A\otimes (A\otimes \rho X)} & {A  \otimes ^{\mathbf L}X} \\
	&& {(\rho A\otimes A)\otimes \rho X} \\
	{(A \otimes ^{\mathbf L}A)  \otimes ^{\mathbf L}X} & {(\rho A\otimes \rho A)\otimes \rho X} & {(A\otimes \rho A)\otimes \rho X} & {A  \otimes ^{\mathbf L}X} \\
	{\rho (\rho A \otimes \rho A)\otimes \rho X} & {\rho (A \otimes \rho A)\otimes \rho X} & {\rho  \rho A\otimes \rho X} & { \rho A\otimes \rho X}
	\arrow[from=1-1, to=1-2]
	\arrow["{A \otimes ^\mathbf L(l^\rho _{A \otimes ^\mathbf LX})}", shift left=5, from=1-1, to=1-4]
	\arrow["{1 \otimes c}", color={rgb,255:red,51;green,68;blue,255}, from=1-1, to=2-2]
	\arrow[equals, from=1-2, to=1-3]
	\arrow["{1 \otimes c}", color={rgb,255:red,51;green,68;blue,255}, from=1-2, to=2-3]
	\arrow["{1 \otimes c}"', color={rgb,255:red,51;green,68;blue,255}, from=1-3, to=1-4]
	\arrow[equals, from=1-4, to=2-4]
	\arrow[equals, from=2-1, to=1-1]
	\arrow[""{name=0, anchor=center, inner sep=0}, "{\alpha ^\rho }"', from=2-1, to=4-1]
	\arrow["{1\otimes (c \otimes 1)}"', color={rgb,255:red,255;green,51;blue,65}, from=2-2, to=2-3]
	\arrow[""{name=1, anchor=center, inner sep=0}, "{\alpha }", from=2-2, to=4-2]
	\arrow[equals, from=2-3, to=1-4]
	\arrow["{\alpha }", from=2-3, to=3-3]
	\arrow[""{name=2, anchor=center, inner sep=0}, equals, from=2-4, to=4-4]
	\arrow[equals, from=3-3, to=4-3]
	\arrow[equals, from=4-1, to=5-1]
	\arrow["{(1\otimes c) \otimes 1}", color={rgb,255:red,255;green,51;blue,65}, from=4-2, to=3-3]
	\arrow[from=4-2, to=4-3]
	\arrow["{c\otimes 1}"', color={rgb,255:red,0;green,158;blue,11}, from=4-2, to=5-1]
	\arrow["{c \otimes 1}"', color={rgb,255:red,0;green,158;blue,11}, from=4-3, to=5-2]
	\arrow[equals, from=4-3, to=5-4]
	\arrow[equals, from=4-4, to=5-4]
	\arrow[from=5-1, to=5-2]
	\arrow["{(l^\rho _{A \otimes ^\mathbf LA})\otimes ^\mathbf L X}"', shift right=4, from=5-1, to=5-4]
	\arrow[equals, from=5-2, to=5-3]
	\arrow["{c \otimes 1}"', color={rgb,255:red,0;green,158;blue,11}, from=5-4, to=5-3]
	\arrow["\blacktriangle"{description}, draw=none, from=0, to=1]
	\arrow["\bigstar"{description}, draw=none, from=3-3, to=2]
\end{tikzcd}
{% endtikz %}

Here all parallel line with the same colour yields gives the commutative square by functoriality. $\blacktriangle$ is by definition, $★$ is given by the monoidal structure of $C(A)$.

{% endpro %}

{% ex %}
(Lax monoidal functor). Recall that we define the functor of resolution $ρ : D(A) → K(A)$ with *axiom of choice of the class*. This extends to a lax monoidal functor

$$\begin{equation}
ρ : (D(A), ⊗ ^𝐋 , A) → (K(A), ⊗ , A)
\end{equation}$$

consisting of

- a functorial assignment $X ↦ ρ X$,
- a natural transformation $ε : ρX → X$,
- a natural transformation $μ : ρ (X ⊗^𝐋 Y) → ρ X ⊗ ρ Y$,

which preserves the associativity and unit rules.

- The natural transformation $ε$ and $μ$ are isomorphisms in $D(A)$.
- The word *lax* means *not strict*. It has nothing to do with Peter Lax.

{% endex %}

We then proceed to the symmetric structure.

{% ex %}
Note the isomorphism

$$\begin{equation}
τ ^ρ : X ⊗ ^𝐋 Y = ρ X ⊗ ρ Y \xrightarrow {τ _{ρ X, ρ Y}} ρ Y ⊗ ρ X = Y ⊗ ^𝐋 X.
\end{equation}$$

One can verify the hexagon rule and the unit rule are satisfied.

{% endex %}

{% lem %}
$𝐑 \mathcal{HOM}$ is precisely the internal Hom of the symmetric monoidal category $(D(A), ⊗ ^𝐋 , A)$.

{% pf %}
Recall the definiton $𝐑 \mathcal{HOM} (-, ?) := \mathcal{HOM}(ρ (-), ?)$. A direct computation shows

$$\begin{aligned}
& 𝐑 \mathcal{HOM}(X ⊗^𝐋 Y, Z) = \mathcal{HOM}(ρ X ⊗ ρ Y, Z) \\[6pt]
≃ \ & \mathcal{HOM}(ρ X ,\mathcal{HOM}(ρ Y, Z)) = 𝐑 \mathcal{HOM}(X, 𝐑 \mathcal{HOM}(Y,Z)).
\end{aligned}$$

{% endpf %}

{% endlem %}

Moreover, there is also [finiteness conditions](25SumLec0#more-on-mathjax_protectedjfxtyxroy2fse0hptx0kmathjax_protected) as we discussed in Lec0.