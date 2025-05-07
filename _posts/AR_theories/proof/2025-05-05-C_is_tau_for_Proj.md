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
若 $i$ 是 source, 对不可分解投射对象 $P_i ∈ 𝐦𝐨𝐝_{kQ}$, 有 $𝐦𝐨𝐝_{kC_i^-Q}$ 中几乎可裂 ses

$$
0 → P_i → ⨁_{j → i} P_j^{|\mathrm{Hom}_Q(i, j)|} → τ⁻¹ (P_i) → 0.
$$

* 以上之所以是几乎可裂 ses, 是因为 $P_i → ⨁_{j → i} P_j^{|\mathrm{Hom}_Q(i, j)|}$ 是几乎可裂单. 依照 $𝐩𝐫𝐨𝐣 ∩ Γ (A) ≃ Q^{\mathrm{op}}$, 所有 $P_i$ 出发的不可约态射都可以写出.

比较原 $P_i$ (记作 $p_i'$) 与新 $τ⁻¹ (P_i)$:

1. 两者限制在 $Q ∖ \{i\}$ 上是相同的模;
2. 在 $i$ 处有多个对象的推出方块, 描述作以下正合列

   $$
   0 → (p_i)_i → ⨁ _{i →_Q j} (p_i)_j → (τ⁻¹ P_i)_i → 0.
   $$

   特别地, 上述 $(p_i)_j$ 就是 $(τ⁻¹ P_i)_j$. 由 coker 的泛性质, $C_i^- P_i$ 与 $τ ⁻¹ P_i$ 中 $j → i$ 类型的态射相同 (相差一个同构).

计算维度向量, zh
{% endpf %}
