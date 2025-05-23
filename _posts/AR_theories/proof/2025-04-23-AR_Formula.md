---
title: AR 公式
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
(AR 公式).
以下是自然同构.

$$
D\underline{(τ⁻¹ N, M)} ≃ \mathrm{Ext}^1(M, N) ≃ D\overline{(N, τM)}.
$$

1. 若 $p.\dim M = 1$, 则 $τ M$ 投射, 故 $\mathrm{Ext}^1(M,N) ≃ D(N, τ M)$.
2. 若 $i.\dim N = 1$, 则 $τ⁻¹ N$ 内射, 故 $\mathrm{Ext}^1(M,N) ≃ D(τ⁻¹ N, M)$.

{% endthm %}

{% pf %}
待补充.
{% endpf %}

{% cor %}
通常情况下, $τ⁻¹$ 未必是 $τ$ 的左伴随函子. 对遗传代数而言, 总有伴随函子 $(τ⁻¹ N, M) ≃ (N, τ M)$.

1. 以上 AR 公式给出 $p.\dim M = 1 = i.\dim N$ 的同构;
2. 若 $M$ 投射, 往证 $(τ⁻¹ N , M) = 0$ 即可. 假定 $N$ 不可分解且 $τ⁻¹N ≠ 0$, 则 $τ⁻¹ N$ 是不可分解非投射模. 对任意态射的满单分解

   $$
   τ ⁻¹ N \overset p ↠  L \overset i ↪ M
   $$

   由遗传代数的特性知 $L$ 投射, 由 $τ⁻¹ N$ 不可分解知 $τ⁻¹ N ≃ L$. 由于 $τ⁻¹ N$ 不是投射对象, 矛盾.
{% endcor %}
