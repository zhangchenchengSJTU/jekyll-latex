---
title: 遗传范畴的 tilting 对象给出 $𝐦𝐨𝐝_{B}$ 的可裂 torsion pair
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

以下遗传范畴要求有足够投射对象, 且 tilting 对象 $T$ 使得一切 $(T,X)$ 均是有限生成右 $\mathrm{End}(T)$-模. 一个较弱的条件是 $\mathrm{Hom}$-群有限维.

{% thm %}
(遗传范畴的 torsion pair, [证明](KerHom_KerExt_TP)).
对上述遗传范畴与 tilting 对象 $T$.

1. $(\ker \mathrm{Ext}^0(T,-), \ker \mathrm{Ext}^1(T,-))$ 是 torsion pair, 记作 $(𝒯, ℱ)$.
2. BB 导出等价给出 $(𝒳 , 𝒴) ≃ (ℱ[1], 𝒯)$.
3. $gl.\dim B ≤ 2$.
4. 若 $B$ 遗传, 则 $(𝒯, ℱ)$ 可裂.

{% endthm %}

{% thm %}
(遗传范畴的 torsion pair, [证明](KerHom_KerExt_TP)).
对上述遗传范畴与 tilting 对象 $T$, 则

$$
(\ker \mathrm{Ext}^0(T,-), \ker \mathrm{Ext}^1(T,-))
$$

是 torsion pair, 记作 $(𝒯, ℱ)$.

{% endthm %}

{% pf %}

先说明 $X ∈ 𝒯 ∩ ℱ$ 必然是零元.

> 若不然, 则 $\mathrm{Ext}^∙ (T, X) =0$, 由厚子范畴的二推知 $\mathrm{Ext}^∙ (X, X) =0$.

继而对 $X$ 构造典范正合列.

1. (构造可裂的六项正合列). $𝒯$ 部分是 $e_X : (T,X) ⊗_B T → X$ 的像. 考虑六项正合列

   $$
   \begin{bmatrix}
   0 & \rightarrow  & \left( T,\operatorname{im} e_{X}\right) & \to & ( T,X) & \rightarrow  & \left( T,\frac{X}{\operatorname{im} e_{X}}\right) &  & \\
    &  & \operatorname{Ext}^{1}\left( T,\operatorname{im} e_{X}\right) & \rightarrow  & \operatorname{Ext}^{1}( T,X) & \rightarrow  & \operatorname{Ext}^{1}\left( T,\frac{X}{\operatorname{im} e_{X}}\right) & \rightarrow  & 0
   \end{bmatrix}.
   $$

   今断言 $(T, \operatorname{im}e_X) → (T,X)$ 是同构, 下只需证明满射. 实际上, 任给定 $φ : T → X$, 考虑

   $$
   Φ : T → (T,X) ⊗_B T → X,\quad t ↦ φ ⊗ t.
   $$

   由 $e _X(Φ) = φ$, 得 $φ$ 通过 $e_X$ 分解, 进而通过 $\operatorname{im} e_X$ 分解.

2. (证明 $𝒯 ⊆ \ker \mathrm{Ext}^1(T,-)$). 注意到遗传范畴中 $\mathrm{Ext}^1$ 右正合, 且 $\operatorname{im}e_X$ 是 $T^n$ 的商对象.
3. (证明 $t^2 = t$). 下证明 $e_{\operatorname{im} e_X}$ 的单射部分 $\operatorname{im} e_{\operatorname{im} e_X} ↪ \operatorname{im} e_X$ 是同构. 考虑交换图

    $$
    \begin{bmatrix}
    \left( T,\operatorname{im} e_{X}\right) \otimes T & \rightarrow  & \operatorname{im} e_{\operatorname{im} e_{X}} & \hookrightarrow  & \operatorname{im} e_{X}\\
    \sim \downarrow \ \  &  & ⤵  &  & ⤵ \\
    ( T,X) \otimes T & \twoheadrightarrow  & \operatorname{im} e_{X} & \hookrightarrow  & X
    \end{bmatrix}.
    $$

    此时 $\operatorname{im} e_{\operatorname{im} e_X} ↪ \operatorname{im} e_X$ 是满的, 因此是同构.
4. (证明 $ℱ ⊆ \ker \mathrm{Ext}^0(T,-)$). 选取 torsion-free 部分 $\frac{X}{\mathrm{im}(e_X)}$. 考虑如下正合列:

   $$
   \begin{bmatrix}
   0 & \rightarrow  & {\color{red}\left( T,\operatorname{im} e_{X}\right)} & {\color{red}\xrightarrow{\sim }} & {\color{red}( T,X)} & \rightarrow  & \left( T,\frac{X}{\operatorname{im} e_{X}}\right) &  & \\
    &  & {\color{blue}\operatorname{Ext}^{1}\left( T,\operatorname{im} e_{X}\right)} & \rightarrow  & \operatorname{Ext}^{1}( T,X) & \rightarrow  & \operatorname{Ext}^{1}\left( T,\frac{X}{\operatorname{im} e_{X}}\right) & \rightarrow  & 0
   \end{bmatrix}.
   $$

    蓝处为零, 红处为同构. 此时 $(T,\frac X{\mathrm{im}(e_X)})=0$.
5. (证明 $\mathrm{Hom}(𝒯 , ℱ) =0$). 由 $(𝐚𝐝𝐝 (T), ℱ)=0$, 以及左垂直对商封闭.
6. (证明 $\ker \mathrm{Ext}^1(T,-) ⊆ 𝒯$). 对任意 $M ∈ \ker \mathrm{Ext}^1(T,-)$, 易知 $\mathrm{Ext}^∙ (T, M / \operatorname{im}e_M) = 0$. 由 $T$ 生成 Serre 子范畴, 得 $(M / \operatorname{im}e_M) = 0$, 即 $M ∈ 𝒯$.
7. (证明 $\ker \mathrm{Ext}^0(T,-) ⊆ ℱ$). 类似地, 若 $N ∈ \ker \mathrm{Ext}^0(T,-)$, 则 $\mathrm{Ext}^∙ (T, \operatorname{im}e_N) = 0$.  

最后说明这一构造的函子性. 显然 $e_X$ 是函子的, 故 $𝒯$ 部分的构造是函子的. 因此, 典范正合列是函子的.

{% endpf %}

{% note %}
由通常的 BB 定理, BB 导出等价给出 $(𝒳 , 𝒴) ≃ (ℱ[1], 𝒯)$. 此处的证明也可以由 [Happel 导出等价](Happel_Derived_Equivalence)定理完成.
{% endnote %}

{% prop %}
$gl.\dim B ≤ 2$.
{% endprop %}

{% pf %}
回顾[此处](Gl_Dim_A_B). 证明的前半部分没有使用 $A$ 是环这一条件. 记 $p.\dim 𝒜$ 是范畴 $𝒜$ 的投射维数, 则

$$
gl.\dim B ≤ p.\dim 𝒜  + 1 ≤ 2.
$$

{% endpf %}

{% prop %}
若 $B$ 遗传, 则 $(𝒯, ℱ)$ 可裂.


{% endprop %}
