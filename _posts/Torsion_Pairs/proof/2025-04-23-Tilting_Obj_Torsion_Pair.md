---
title: Tilting 对象与 torsion pair
author: Chencheng Zhang
layout: post
category: proof
---
## 证明

{% prop %}
(Tilting 对象与 torsion pair, 证明). 对 tilting 对象诱导的 torsion pair $(𝒯, ℱ)$.

1. 对任意 $M ∈ 𝒯$, 存在满的右 $𝐚𝐝𝐝 (T)$-逼近 $T^n ↠ M$ 使得

   $$
   0 → K → T^n → M → 0 \quad ∈ 𝒯.
   $$

2. $(^⟂𝒯) ∩ 𝒯 = 𝐚𝐝𝐝(T)$, 即 $𝒯 ∩ τ ^{-1} ℱ = 𝐚𝐝𝐝(T)$.
   > 一般地, 只有 $(^⟂𝒯) ∩ 𝒯 = 𝒯 ∩ τ ^{-1} ℱ$.
3. $M ∈ 𝒯$ 当且仅当配对 $(T, M) ⊗ T → M$ 是同构.
   > 一般地, $M ∈ 𝒯$ 当且仅当配对 $(T, M) ⊗ T ↠ M$ 是满的.
{% endprop %}

{% prop %}
给定 tilting 对象诱导的 torsion pair $(𝒯, ℱ)$. 对任意 $M ∈ 𝒯$, 存在满的右 $𝐚𝐝𝐝 (T)$-逼近 $T^n ↠ M$ 使得

$$
0 → K → T^n → M → 0 \quad ∈ 𝒯.
$$

{% endprop %}

{% pf %}
先构造右逼近. 取有限集 $𝒮 = (f_i)$ 为 $(T,M)$ 的生成元, 此时

$$
T^𝒮 → M, \quad t ↦ ∑ f_i(t_i),
$$

与 $\mathrm{End}(T)^n ↠ (T,M)$ 都是满态射.
\\
依照长正合列, $\mathrm{Ext}^1(T,K) = 0$, 从而 $K ∈ T^⟂ = 𝒯$.
{% endpf %}

{% prop %}
给定 tilting 对象诱导的 torsion pair $(𝒯, ℱ)$. $(^⟂𝒯) ∩ 𝒯 = 𝐚𝐝𝐝(T)$, 即 $𝒯 ∩ τ ^{-1} ℱ = 𝐚𝐝𝐝(T)$.
{% endprop %}

{% pf %}
下证明 $({}^⟂ 𝒯) ∩ 𝒯 = 𝐚𝐝𝐝 (T)$.

1. 一方面, $𝐚𝐝𝐝 (T) ⊆ {}^⟂ 𝒯 = {}^⟂ (T^⟂)$.
2. 另一方面, 若 $X ∈ ({}^⟂ 𝒯) ∩ 𝒯$, 考虑满的极小右-$𝐚𝐝𝐝(T)$ 逼近, 得 $𝒯$ 中的 ses

$$
0 → K → T^n → X → 0\quad ∈ 𝒯.
$$

由假定, $\mathrm{Ext}^1(X, K) = 0$. 从而上述 ses 可裂.
{% endpf %}

{% prop %}
给定 tilting 对象诱导的 torsion pair $(𝒯, ℱ)$. $M ∈ 𝒯$ 当且仅当配对 $(T, M) ⊗ T → M$ 是同构.

{% endprop %}

{% pf %}

最后证明 $M ∈ 𝒯$ 时, 配对 $(T, M) ⊗ T → M$ 是同构. 类似[此证明](Gen_Eq_T), 取 $(T,-)$-右正合列

$$
T_1 → T_0 → X → 0.
$$

此时, 有右正合列的交换图

$$
\begin{bmatrix}
 (T,T_1) ⊗ T & →  & (T,T_0) ⊗ T & →  & (T,X) ⊗ T & →  & 0\\
∥  &  & ∥  &  & ↓  &  & \\
T_1 & →  & T_0 & →  & M & →  & 0.
\end{bmatrix}.
$$

由五引理, $(T,X) ⊗ T → X$ 是同构.

{% endpf %}
