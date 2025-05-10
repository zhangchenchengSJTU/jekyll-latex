---
title: 预投射 (预内射) 模是自垂直的 brick
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% cor %}
预投射模和预内射模都是自垂直 ($\mathrm{Ext}^1(M,M) = 0$) 的 brick.
{% endcor %}

{% pf %}
只看预投射情形. 选定预投射模 $M$.

1. (证明是 brick). 若存在非零非同构的 $φ : M → M$, 则任取 $\operatorname{im}φ$ 的不可分解直和项 $T$. 由[单向性](Morphism_Directed), 必然有 $\operatorname{im}φ$ 预投射. 此时, 该预投射分支存在环路, 矛盾.
2. (证明自垂直). 仅考虑 $M$ 非投射的情形. 依照 [AR 公式](AR_Formula), 得

   $$
   D\mathrm{Ext}^1(M, M) ≃ \overline{(M, τM)} ↞ (M, τ M).
   $$

   因此, 存在 $M$ 指向 $τM$ 的不可约态射路, 该预投射分支存在环路, 矛盾.

{% endpf %}

{% note %}
Say a brick $B$ is [exceptional](https://arxiv.org/pdf/2501.13476), provided $\mathrm{Ext}^1(M,M) = 0$.
{% endnote %}
