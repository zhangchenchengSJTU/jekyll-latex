---
title: $\dim 𝐫𝐞𝐩(𝐯) - \dim \ [M] = \dim \mathrm{Ext}^1(M,M)$
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% lem %}
(关键公式, [证明](Key_Lemma_Gabriel)). 以下关键公式联系了 Krull 维度与线性空间的维度.

$$
\dim 𝐫𝐞𝐩(𝐯) - \dim \ [M] = \dim \mathrm{Ext}^1(M,M) = \dim \mathrm{End}(M) - q(𝐯).
$$

{% endlem %}

{% pf %}
对轨道的维度公式

$$
\dim G = \dim \ [M] + \dim \mathrm{Stab}_{M}
$$

做一些调整:

1. $\mathrm{Stab}_{M} = \mathrm{Aut}(M) ⊆ \mathrm{End}(M)$ 是稠密开集, 故维度相同;
2. Euler 型

    $$
    q(𝐯) = ∑ _{i ∈  Q_0} 𝐯_i^2 - ∑ _{α  ∈  Q_1} 𝐯_{s(α )}⋅  𝐯_{t(α )} = \dim G - \dim 𝐫𝐞𝐩(𝐯);
    $$

3. 遗传代数的 Euler 公式

   $$
   q(𝐯) = \dim \mathrm{End}(M) - \dim \mathrm{Ext}^1(M,M)
   $$

将以上带入 Krull 维度公式, 得关键公式.

$$
\dim 𝐫𝐞𝐩(𝐯) - \dim \ [M] = \dim \mathrm{Ext}^1(M,M) = \dim \mathrm{End}(M) - q(𝐯).
$$

{% endpf %}
