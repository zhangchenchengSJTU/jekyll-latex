---
title: Top_Surjective
author: Chencheng Zhang
layout: post
category: proof
---

{% prop %}
$\mathrm{Top}(f)$ 满当且仅当 $f$ 满; $\mathrm{Soc}(f)$ 单当且仅当 $f$ 单.
{% endprop %}

{% pf %}
给定 $f : X → Y$. 若 $f$ 满, 则 $\mathrm{Top}(f)$ 满. 今假定 $\mathrm{Top}(f)$ 满. 此时, 对任意 $y ∈ Y$, 总有 $x ∈ X$ 使得 $(f(x) - y) ∈ \mathrm{Rad}(Y)$. 因此有
$$
\mathrm{im}(f) + \mathrm{Rad}(Y) = Y.
$$
依照 $\mathrm{Rad}$ 的性质, 只能由于 $\mathrm{im}(f) = Y$. 故 $f$ 满. 对 $\mathrm{Soc}(f)$ 的证明是完全对偶的.
{% endpf %}
