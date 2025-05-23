---
title: $C_i^- (P_i) ≃ τ ⁻¹ (P_i)$
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% lem %}
若 $i$ 是 source, 对不可分解投射对象 $P_i ∈ 𝐦𝐨𝐝_{kQ}$, 则 $τ⁻¹ (P_i)$ 与 $C_i^-P_i$ 是 $𝐦𝐨𝐝_{kC_i^- Q}$ 中同构的模.
{% endlem %}

{% pf %}
若 $i$ 是 source, 对不可分解投射对象 $P_i ∈ 𝐦𝐨𝐝_{kQ}$, 构造 $𝐦𝐨𝐝_{kC_i^-Q}$ 中几乎可裂 ses

$$
0 → P_i → ⨁_{j → i} P_j^{|\mathrm{Hom}_Q(i, j)|} → τ⁻¹ (P_i) → 0.
$$

* 以上 $P_i$ 是投射单对象. 依照 $𝐩𝐫𝐨𝐣 ∩ Γ (A) ≃ Q^{\mathrm{op}}$, 所有 $P_i$ 出发的不可约态射都可以写出. 从而以上是几乎可裂 ses.

考虑新 quiver 的表示 $τ⁻¹ (P_i)$, 以及原 quiver 的表示 $p_i$

1. 两者限制在删点子图 $Q ∖ \{i\}$ 上是同构的模;
2. 考察点 $i$ 以及与之相连的边,
   $$\begin{equation}
   (p_i)_i → ⨁_{i → j} (p_i)_j ≃ ⨁_{j → i} (τ⁻¹ (P_i))_j → (τ⁻¹ (P_i))_i
   \end{equation}$$
   是短正合列.

{% endpf %}
