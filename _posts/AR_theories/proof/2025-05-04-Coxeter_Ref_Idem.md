---
title: Coxeter 反射几乎保持不可分解对象
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% lem %}
([证明](Coxeter_Ref_Idem)). Coxeter 反射 $C_i^±$ 保持不可分解模; 除了映 $S_i$ 至 $0$.
{% endlem %}

{% note %}
回顾一则引理: $B$ 不可分解当且仅当 $\mathrm{End}(B)$ 是局部环.
{% endnote %}

{% pf %}
只看 $C_i^+$. 由上文, $(C_i^+ M)_i$ 由多个对象的拉回决定, 也就是

$$
0 → (C_i^+ M)_i → ⨁_{i → j} M_j → M_i.
$$

对任意自同态 $φ: M → M$, kernel 的泛性质诱导了 $(C_i^+ M)_i$ 的自同态, 即从而唯一地给出 $C_i^+M$ 的自同态. 此时有自同态环的单射:

$$
\mathrm{End}_{kQ}(M) ↪ \mathrm{End}_{k(C_i^+)}(C_i^+M) \overset ⋆ ≃ \mathrm{End}_{kQ}(C_i^-C_i^+M).  
$$

- $⋆$ 处同构: 对伴随函子 $C_i^- ⊣ C_i^+$ 使用三角恒等式.

由于 $M$ 不可分解, 以及 $C_i^- C_i^+ M \oplus \mathrm{coker}[\bigoplus_{\neq i} M_i → M] \simeq M$ 得 $M_i ≃ S_i$ 或 $M_i ≃ C_i^- C_i^+ M$.

1. 若 $M = S_i$, 则 $C_i^+(M) = 0$;
2. 若 $M ≃ C_i^- C_i^+ M$, 则上述环同态取等, 因此 $\mathrm{End}_{kQ}(M) ≃ \mathrm{End}_{k(C_i^+)}(C_i^+M)$ 是局部环, 从而 $C_i^+M$ 不可分解.

{% endpf %}
