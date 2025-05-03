---
title: Tilting 模维数无关左右
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
(四链等长). 以下四者相同: $T_A$ 的投射维数, $_BT$ 的投射维数, $A$ 相对 $𝐚𝐝𝐝 (T)$ 的内射维数, $B$ 相对 $𝐚𝐝𝐝 (T)$ 的内射维数.
{% endthm %}

{% pf %}
假定 $p.\dim T_A = d$. 考虑 $A = Ω_0(A)$ 的 $𝐚𝐝𝐝 (T)$-相对内射分解. 若相对内射维数为 $l > d$, 则

$$
\mathrm{Ext}_A^1(T,Ω_{l-1}(A)) ≠ 0.
$$

由维数移动得 $\mathrm{Ext}^{l-1}(T,Ω_1(A))≠0$. 这和 $T$ 的投射维数矛盾. 因此,

$$
p.\dim T_A ≥ i.𝐚𝐝𝐝 (T_A).\dim A_A;\quad p.\dim {}_BT ≥ i.𝐚𝐝𝐝 (_BT).\dim {}_BB.
$$

另一方面, 所有投射分解与相对内射分解都是 $(-,T)$-正合的, 因此

$$
p.\dim T_A ≥ i.𝐚𝐝𝐝 (_BT).\dim {}_BB;\quad p.\dim {}_BT ≥ i.𝐚𝐝𝐝 (T_A).\dim A_A.
$$

从而上述不等号只能取等.

{% endpf %}
