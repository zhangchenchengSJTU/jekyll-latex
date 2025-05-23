---
title: 完全 Coxeter 反射存在且唯一
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
(完全 Coxeter 反射的存在性与唯一性, [证明](Complete_Coxeter_Reflection)). 存在 $σ ∈ 𝔖_{Q_0}$, 使得有自函子

$$
C^+ := C^+_{σ (n)} C^+_{σ (n-1)} \cdots C_{σ (1)}^+ : \mathbf{rep}_k (Q) → \mathbf{rep}_k (Q).
$$

相应地记 $C^- = C^-_{σ (1)}C^-_{σ (2)}\cdots C^-_{σ (n)}$.
{% endthm %}

{% pf %}
使用数学归纳法证明. 记命题 $P_n$ 如下:

* 对 $|Q_0| ≤ n$, 完全 Coxeter 反射 $C^-$ 存在.

显然 $P_1$ 成立, 下证明 $P_k → P_{k+1}$. 任取 $Q$ 使得 $|Q_0| = k + 1$, 由 $Q$ 有限无环, 不妨设 $(k+1) ∈ Q_0$ 仅有一个邻点. 对 $Q ∖ (k+1)$ 使用命题 $P_k$, 得删点子图的完全 Coxeter 反射 $C_{σ(∙)}^-$.
\\
\\
在可定义的情况下对 $Q$ 依次作用 $C_{σ(1)}^-$, $C_{σ(2)}^-$, 等等.

1. 若首个不合法的作用是 $C_{σ(l)}^-$, 则 $Q$ 中存在 $σ(k) ⇇ (k+1)$ 类型的子图. 在作用 $C_{σ(l)}^-$ 前安插 $C_{(k+1)}^-$ 即可. 此时, $Q$ 的完全 Coxeter 反射是

   $$
   C^-_{σ(k)} \cdots C^-_{(σ (l))} C^-_{(k+1)} C^-_{(σ (l-1))} \cdots C^-_{(σ (1))}.
   $$

2. 若不存在不合法的作用, 则 $Q$ 经所有 $C_{σ(∙)}^-$ 作用后必然存在 $σ(k) ⇉ (k+1)$-类型的子图. 最终作用一次 $C^-_{(k+1)}$ 即可. 此时, $Q$ 的完全 Coxeter 反射是

   $$
   C^-_{(k+1)} C^-_{σ(k)} \cdots C^-_{(σ (1))}.
   $$

{% endpf %}

{% thm %}
特别地, $C^±$ 的定义与置换顺序 $σ$ 无关.
{% endthm %}

{% pf %}

以下将频繁使用一则事实:

* 当且仅当 $C_i ^+ C_j ^+$ 与 $C_j ^+ C_i ^+$ 均良定义且相等, $i$ 与 $j$ 是没有公共邻点的 sink.

不妨假定 $C^+_{n} C^+_{ n-1} \cdots C_{ 1}^+$ 与 $C^+_{\sigma (n)} C^+_{\sigma (n-1)} \cdots C_{\sigma (1)}^+$ 均为完全 Coxeter 反射. 下考虑 $C_1^+$ 在右式中出现的位置, 由式 $\cdots C_1 C_{\sigma (σ^{-1}(1) - 1)}^+\cdots C_{\sigma (1)}^+$ 良定义, 且 $1$ 是原图的 sink, 则不存在 $σ ( ≤ σ^{-1}(1))$ 指向 $1$ 的边. 这给出移动:
$$
C^+_{\sigma (n)} C^+_{\sigma (n-1)} \cdots C^+_{\sigma (1)} = C^+_{\sigma (n)} C^+_{\sigma (n-1)} \cdots {\color{blue}\widehat{C^+_1}}\cdots  C^+_{\sigma (1)} {\color{red}C_1^+}.
$$

归纳即可.
{% endpf %}
