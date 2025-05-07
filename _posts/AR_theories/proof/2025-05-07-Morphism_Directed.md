---
title: 预投射分支的态射单向性
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
对预投射模 $M$, 唯 $L ∈ L_∞(M)$ 使 $(L, M)$ 非零; 对预内射模 $N$, 唯 $R ∈ R_∞(N)$ 使 $(M, R)$ 非零.
{% endthm %}

{% pf %}
仅看前一部分. 取 $L ∈ Γ (A)$ 使得 $(L, M)$ 非零, 下对 [$H(M)$ (从投射单对象到 $M$ 的最长路)](Post_Proj_Left_Finite) 归纳.

1. (初始). 若 $H(M) = 0$, 即 $M$ 是投射单模, 则只能有 $M = L$.
2. (归纳). 若 $H(M) = k+1$, 则任意非零态射 $f : L → M$ 通过右极小态射 $⨁L_1(M) → M$ 分解. 由于分解所得的 $L → ⨁L_1(M)$ 存在非零分量, 使用归纳假设知 $L ∈ L_∞ (L_1(M)) ⊆ L_∞(M)$.
{% endpf %}
