---
title: $\mathrm{Gr}(f)$ 是同构当且仅当 $𝐟$ 是同构
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
(同构的完备化等价于同构的分次态射.)
$\mathrm{Gr}(f)$ 是同构当且仅当完备化态射 $𝐟$ 是同构.

{% endthm %}

{% pf %}
今取 $f : F^p M → F^p N$.

1. 若 $𝐟$ 是同构, 显然 $\mathrm{Gr}_∙(f) = \mathrm{Gr}_∙(𝐟)$ 也是同构.
2. 若 $\mathrm{Gr}_∙(f)$ 是同构, 取 $\varprojlim_l \frac{F^p}{F^{p + l}} = 𝐅^p$. 函子 $\varprojlim$ 保持同构, 故 $𝐟$ 也是同构.
{% endpf %}
