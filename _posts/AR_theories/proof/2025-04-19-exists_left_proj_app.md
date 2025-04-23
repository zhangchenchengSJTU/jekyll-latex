---
title: 存在左 $𝐩𝐫𝐨𝐣$-逼近
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% prop %}
(未命名).
对 Artin 代数, $M ∈ 𝐦𝐨𝐝_A$ 存在左投射逼近, 以及左极小投射逼近.
\\
特别地, 左投射逼近 $M → P$ 未必是单的, 但存在分解 $M → M^{∗ ∗ } ↪ P$.
{% endprop %}

{% pf %}
取 $M ∈ 𝐦𝐨𝐝_A$, 取 $(M,A)$ 的生成元为集合 $S$. 今断言以下是投射逼近

$$
φ : M → A^S,\quad m ↦ (f_i(m))_{i ∈ S}.
$$

往证任意 $M → 𝐩𝐫𝐨𝐣$ 类型的模同态通过 $A^S$ 分解. 依照稳定投射右正合列

$$
M^∗ ⊗ N → (M,N) → \underline{(M,N)} → 0.
$$

得 $M^∗ ⊗ 𝐩𝐫𝐨𝐣 ≃ (M,𝐩𝐫𝐨𝐣)$, 一切 $M → 𝐩𝐫𝐨𝐣$ 类型的同态是是 $f_i$ 的线性组合.
\\
考虑 $2 × 2$ 交换图

$$
\begin{bmatrix}
M & \xrightarrow{η _{M}} & M^{∗∗}\\
↓  &  & ↓ \\
P & \xrightarrow[∼]{η _{P}} & P^{∗∗}
\end{bmatrix}.
$$

故存在分解 $M → M^{∗ ∗ } → P$. 不妨将 $P^∗$ 取作 $M^∗$ 的投射盖, 则 $M^{∗ ∗ } ↪ P$ 单.

{% endpf %}
