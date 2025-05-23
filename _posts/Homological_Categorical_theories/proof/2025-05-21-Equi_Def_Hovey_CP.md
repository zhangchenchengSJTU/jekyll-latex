---
title: 外三角范畴 Hovey cotorsion pair 的弱化条件
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% def %}
(Twin cotorsion pairs). 给定两个 cotorsion pair $(𝒮 , 𝒮 ^⟂ )$ 与 $(^⟂ 𝒱 , 𝒱)$. 考虑以下三个性质:

1. $𝔼 (𝒮 , 𝒱 ) = 0$;
2. $𝒮 ∩ 𝒮 ^⟂ = {}^⟂ 𝒱 ∩ 𝒱$;
3. $\mathrm{Cone}(𝒱 , 𝒮) = \mathrm{coCone}(𝒱 , 𝒮)$.

称之

- twin cotorsion pairs, 若满足 1.;
- concentric cotorsion pairs, 若满足 1. 与 2.;
- Hovey cotorsion pairs, 若满足 1., 2., 与 3..

{% enddef %}

{% thm %}
实际上, Hovey cotorsion pairs 的条件只需要 1. 与 3., 即 2. 是多余的.
{% pf %}
给定 twin cotorsion pairs $(𝒮 , 𝒮 ^⟂ )$ 与 $(^⟂ 𝒱 , 𝒱 )$ 验证
$$\begin{equation}
^⟂ 𝒱  ∩ 𝒱 = ^⟂ 𝒱 ∩ (\mathrm{coCone}(𝒱 , 𝒮) ∩ 𝒮 ^⟂ ) = (^⟂ 𝒱 ∩ \mathrm{Cone}(𝒱 , 𝒮)) ∩ 𝒮 ^⟂  = 𝒮 ∩ 𝒮^⟂
\end{equation}$$
即可.
\\
\\
下证明 $𝒱 = (\mathrm{coCone}(𝒱 , 𝒮) ∩ 𝒮 ^⟂ )$.

1. (包含方向 $⊆$). 直接的, 依照 $𝒱 = \mathrm{coCone}(𝒱 , 𝒮)$ 与 $𝒱 = 𝒮 ^⟂$ 即得包含关系.
2. (包含方向 $⊇$). 任取 $T ∈ 𝒮^⟂$ 使得有 $T → V → S$ (此处 $V ∈ 𝒱$, $S ∈ 𝒮$), 由 $𝔼 (S , T) = 0$, 得 $T$ 是 $V$ 的直和项, 因此 $T ∈ 𝒱$.

{% endpf %}
{% endthm %}
