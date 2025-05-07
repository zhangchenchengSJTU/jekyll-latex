---
title: 有限表示代数的 AR quiver 无重边
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% lem %}
对有限表示代数 $A$, $Γ(A)$ 无重边.
{% endlem %}

{% pf %}
假定存在 $\mathrm{Irr}(M,N) ≥ 2$. 由于不可约态射是严格单或严格满的, 不妨假定 $\dim M > \dim N$ (若 $\dim M < \dim N$, 用 $\mathrm{Irr}(N, τ⁻¹M)$ 代替 $\mathrm{Irr}(M,N)$). 此时有几乎可裂 ses

$$
0 → τ N → M^2 ⊕ E → N → 0.
$$

计算维度得

$$
\dim N + \dim τ N ≥ 2 ⋅ \dim M,
$$

因此 $\dim τ N > \dim M > \dim N$.
\\
\\
下证明上述几乎可裂 ses 可以对 $\mathrm{Irr}(τ N, M)$ 归纳地构造. 实际上, $\dim \mathrm{Irr}(M,N) = \dim \mathrm{Irr}(τ N, M)$. 结合维数, 存在 $τN$ 向 $M$ 的不可约满态射, 因此有几乎可裂 ses

$$
0 → τ M → (τN)^2 ⊕ E' → M → 0.
$$

此时, $\{τ^kM\}_{k ≥ 1}$ 是一列维度逐渐上升的不可分解模, 从而与有限表示矛盾.



{% endpf %}