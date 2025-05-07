---
title: 左遗传但非右遗传环的例子
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% prop %}
矩阵环 $\binom{ℤ \ \ O}{ℚ \ \ ℚ}$ 左遗传, 但非右遗传.
{% endprop %}

{% lem %}
矩阵环 $R:= \binom{ℤ \ \ O}{ℚ \ \ ℚ}$ 非右遗传.
{% endlem %}

{% pf %}
下证明右理想 $I := \binom{O \ \ O}{ℚ \ \ O}$ 非投射. 考虑环同态

$$
φ : \binom{ℤ \ \ O}{ℚ \ \ ℚ} ↠ ℤ,\quad \binom{a \ \ 0}{b \ \ c} ↦ a.
$$

若 $I$ 投射, 也就是 $R^{(λ)}$ 的直和项, 作用加法函子 $(-) ⊗ _R\frac{R}{\ker φ }$, 得 $\frac{I}{I ⋅ (\ker φ )} ≃ ℚ$ 是 $\frac{R^{(λ)}}{R^{(λ)} ⋅ (\ker φ )} ≃ ℤ^{(λ)}$ 的直和项. 显然 $ℚ$ 不是投射 $ℤ$-模, 矛盾.

{% endpf %}

{% lem %}
矩阵环 $\binom{ℤ \ \ O}{ℚ \ \ ℚ}$ 左遗传, 但非右遗传.
{% endlem %}

{% pf %}
见[此书](https://link.springer.com/book/10.1007/978-1-4419-8616-0) Proposition 1.17.
{% endpf %}

{% note %}
这也是左 Noether 但非右 Noether 的例子.
{% endnote %}
