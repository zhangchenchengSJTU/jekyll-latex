---
title: 上同调函子保持弱核
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% lem %}
(上) 同调函子保持弱核.
{% endlem %}

{% pf %}
只看共变情形. 给定同调函子 $f: 𝒯 → 𝒜$, 则有右正合函子

$$
F: 𝐦𝐨𝐝_𝒯 → 𝒜 ,\quad \mathrm{cok}(h_φ) ↦ \mathrm{cok}(F(φ)).  
$$

这一函子在相差一个范畴等价的意义下是唯一的. 
<br>
对好三角 $W \xrightarrow u X \xrightarrow v Y$ 与 $X$ 处弱正合的态射列 $K \xrightarrow i X \xrightarrow v Y$, 以上两处复合态射都是 $0$. 依照弱核的泛性质, 存在 $α : W ⇆ K : β$ 使得 $i ∘ α = u$ 与 $u ∘ β = i$. 

$$
\begin{bmatrix}
K & \xrightarrow{i} & X & \xrightarrow{v} & Y\\
α ⇅ β  &  & ∥  &  & ∥ \\
W & \xrightarrow{u} & X & \xrightarrow{v} & Y
\end{bmatrix}.
$$

因此 $\mathrm{im}(Fi) = \mathrm{im}(Fu) = \ker(Fv)$. 这说明同调函子 $F$ 保持弱核. 
{% endpf %}

