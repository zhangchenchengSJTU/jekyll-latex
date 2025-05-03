---
title: APR tilting 模的定义
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% def %}
给定遗传路代数 $A= kQ$ 上的点 $i$, 使得 $P(i)$ 是<b>非内射的投射单模</b>. 定义 $i$ 点处的 APR tilting 模为

$$
T := τ⁻¹ P(i) ⊕ ⨁_{j ≠ i} P(j).
$$

{% enddef %}

{% thm %}
APR tilting 模 ($T$) 是 tilting 模.
{% endthm %}

{% pf %}
依次验证即可.

1. $p.\dim P ≤ 1$. 这是遗传代数的性质.
2. $A$ 的 $𝐚𝐝𝐝 (T)$-相对内射维数 $≤ 1$. 此时只需验证所有不可分解投射对象的相对内射维度.
   1. 若 $P ∈ 𝐚𝐝𝐝 (T)$, 则显然.
   2. 若 $P ∉ 𝐚𝐝𝐝 (T)$, 则 $P ≃ P(i)$. 对一切 $i → i'$, 考虑几乎可裂 ses

   $$
   0 → P(i) →  ⨁_{i'} P(i') → τ ⁻¹ P(i) → 0.
   $$

   这说明 $P(i)$ 的 $𝐚𝐝𝐝 (T)$-相对内射维数 $≤ 1$.
3. 最后考虑 $\mathrm{Ext}^1(T,T)=0$. 只需证明

    $$
    \mathrm{Ext}^1(τ⁻¹ P(i), T) = 0.
    $$

    由 [AR 公式](AR_Formula), 只需证明 $(T, P(i)) = 0$. 由 $P_i$ 是单投射对象, 故没有 $i$ 指出的箭头. 故 Hom 对象是 $0$.
{% endpf %}
