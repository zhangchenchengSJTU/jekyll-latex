---
title: 若 $S$ 对直和封闭, 则局部化是加法函子
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
给定加法范畴 $ℬ$ 与态射类 $S$. 假定 $S$ 对直和封闭, 即,
$$\begin{equation}
[f,g ∈ S] ⇒ [f ⊕ g := \begin{pmatrix}f&0 \\ 0&g\end{pmatrix} ∈ S].
\end{equation}$$

此时, 局部化函子是加法函子.
{% endthm %}

{% pf %}
记 $Δ : ℬ → ℬ × ℬ$ 是对角函子, 其左伴随 (以及右伴随) 是双积函子 $⊕ : ℬ × ℬ → ℬ$. 考虑局部化

- $Q : ℬ → ℬ [S^{-1}]$;
- $P : ℬ × ℬ → (ℬ × ℬ) [(S × S)^{-1}] ≃ (ℬ[S^{-1}]) × (ℬ[S^{-1}])$ (后一处同构见[此结论](Prod_Localisation)).

由 $S$ 对直和封闭, 故 $Δ$ 与 $⊕$ 通过伴随函子分解. 特别地局部化保持 $⊕$, 因此是加法函子,
{% endpf %}
