---
title: 外三角范畴的 cotorsion pair 的性质
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% lem %}
若使用 $⟂$ 表示 $𝔼$-垂直关系, 则 $𝒰 ^⟂ = 𝒱$, 且 $𝒰 = {}^⟂ 𝒱$.
{% pf %}
只证明 $𝒰 ^⟂ ⊆ 𝒱$. 若 $X ∈ 𝒰^⟂$, 则考虑 $𝔼$ 三角 $X → V_X → U_X$. 由 $𝔼 (U_X, X) = 0$, 这一 $𝔼$-三角可裂, 从而 $V_X ≃ X ⊕ U_X$. 再由 $𝒱$ 对直和项封闭, 得 $X ∈ 𝒱$.
{% endpf %}
{% endlem %}

{% lem %}
$𝒰$ 与 $𝒱$ 关于形变收缩核封闭.
{% pf %}
只证明 $𝒰$ 关于形变收缩核封闭. 考虑复合的恒等映射 $X \overset i↪ U \overset p↠ X$, 其中 $U ∈ 𝒰$. 因此, 对任意 $V∈ 𝒱$, 以下映射通过 $0$ Abel 群分解:
$$\begin{equation}
\mathrm{id}_{𝔼 (X, V)} = {𝔼 (\mathrm{id}_X, V)} = {𝔼 (p , V)} ∘ {𝔼 (i , V)} = 0.
\end{equation}$$
因此 $X ∈ 𝒰$.
{% endpf %}
{% endlem %}

{% lem %}
$𝒰$ 与 $𝒱$ 关于扩张 (运算 $∗$) 封闭.
{% pf %}
只证明 $𝒰$ 关于扩张封闭. 对 $𝔼$-三角 $U_1 → X → U_2$, 满足 $U_i ∈ 𝒰$. 依照函子的长正合列
$$\begin{equation}
\cdots → 𝔼 (U_2, - )→ 𝔼 (X, - )→ 𝔼 (U_1, - ) → \cdots
\end{equation}$$
限制在 $𝒱$ 上, 以上三项必然全为 $0$, 从而 $X ∈ 𝒰$.
{% endpf %}
{% endlem %}
