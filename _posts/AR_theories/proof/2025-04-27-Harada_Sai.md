---
title: On a lemma of Harada-Sai
author: Chencheng Zhang
layout: post
category: notes
---

## 原田-斎长度估计

{% def %}
方便起见, 记 $ℓ (-)$ 为合成列的长度.
{% enddef %}

{% thm %}
对一族合成列长度不超过 $b$ 的不可分解模 $M_∙$, 假定以下映射链中的所有 $f_∙$ 均非同构:

$$
M_1 \xrightarrow {f_1} M_2 → \cdots → M_{2^b - 1} \xrightarrow{f_{2^b - 1}} M_{2^b}.
$$

以上态射的合成是 $0$.

{% endthm %}

{% pf %}
以下归纳地证明 $ℓ (\mathrm{im}(f_{2^k-1} \cdots f_1)) ≤ (b-k)$.

1. 若 $k=1$, 由 $f_1$ 非同构, 故 $ℓ (\mathrm{im}(f_1))< \max(ℓ (M_1), ℓ (M_2)) ≤ b$.
2. 若 $k=m$ 成立, 下证明 $k=m+1$ 时成立. 考虑 $M_1 \xrightarrow {f_α } M_{2^m -1} \xrightarrow{f _β} M_{2^{m+1}-1}$. 回顾六项长正合列

   $$
   0 → \ker f_α → \ker f_α ∘ f_β → \ker f_β → \operatorname{cok} f_α → \operatorname{cok} f_α ∘ f_β → \operatorname{cok} f_β → 0.
   $$

    1. 若第一处 $\ker f_α ↪ \ker f_α ∘ f_β$ 是严格的单射, 则 $\operatorname{im} f_α ↠ \operatorname{im} f_α ∘ f_β$ 是严格的商对象. 自然有 $ℓ(\operatorname{im} f_α ) > ℓ (\operatorname{im} f_α ∘ f_β)$.
    2. 若最后一处 $\operatorname{cok} f_α ∘ f_β ↠ \operatorname{cok} f_β$ 是严格的满射, 则 $\operatorname{im} f_α ∘ f_β ↪  \operatorname{im}f_β$ 是严格的单射. 自然有 $ℓ(\operatorname{im} f_α ∘ f_β) < ℓ (\operatorname{im} f_β)$.
    3. 若以上两处态射均是同构, 则 $\ker f_β ≃ \operatorname{cok} f_α$ 是 $M_{2^m -1}$ 的直和项. 由 $M_{2^m -1}$ 不可分解, 以及 $f_α$ 与 $f_β$ 非同构, 这只能是零态射.

{% endpf %}

{% note %}
连接态射拆解如下:

$$
\ker f_β ↠ \frac{\ker f_β }{\operatorname{im} f_α ∩ \ker f_β } ≃ \frac{\ker f_β + \operatorname{im} f_α }{\operatorname{im} f_α} ↪ \operatorname{cok} f_α.
$$

{% endnote %}

## 原田-斎长度估计有严格上界

{% ex %}
给定考虑以下带关系的 quiver

$$\begin{equation}
    0  \ \underset{b_1}{\overset {a_1} ⇄} \  1  \ \underset{b_2}{\overset {a_2} ⇄}  \ \cdots \ \underset{b_n}{\overset {a_n} ⇄} \ n.
\end{equation}$$

取 $S := \{a_i b_i, b_ia_i\}_{1 ≤ i ≤ n} ∪ \{a_{i+1}a_{i}, b_i b_{i+1}\}_{i=1}^{n-1}$, 也就是 $a^2 = b^2 = ab = ba = 0$. 记代数 $A= kQ / (S)$.
\\
\\
考虑每点处维度为 $1$ 的连通模, 也就是形如 $0 → 1 ← \cdots → n$ 的模 (共计 $2^n$ 个). 对这些模进行字典序排列, 则存在一列互相连接的非同构的同态, 且限制在 $Me_0$ 上是同构. 取满-单分解项, 得 $2^{n+1} - 2$ 个态射, 其合成非零. 此处 $ℓ = (n+1)$.

$$\begin{equation}
    [0 → 1 ← 2 → 3 → 4 ← 5] ↠ [0 → 1 ← 2 → 3] ↪ [0 → 1 ← 2 → 3 ← 4 → 5].
\end{equation}$$

{% endex %}
