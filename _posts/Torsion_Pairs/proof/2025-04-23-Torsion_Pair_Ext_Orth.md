---
title: Torsion Class 与 $\mathrm{Ext}^1$
author: Chencheng Zhang
layout: post
category: proof
---
## 证明

{% thm %}
(垂直条件, [证明](Torsion_Pair_Ext_Orth)).
以下刻画 torsion pair $(𝒯, ℱ)$ 中满足 $\mathrm{Ext}^1$-垂直的对象. 记 $t$ 与 $f$ 是相应的子函子与商函子.

1. $𝒯 ∩ (^⟂ 𝒯) = 𝒯 ∩ τ ⁻¹ ℱ$.
2. $𝒯 ∩ (𝒯^⟂) = 𝒯 ∩ t(𝐢𝐧𝐣)$.
3. $ℱ ∩ (ℱ^⟂) = ℱ ∩ τ 𝒯$.
4. $ℱ ∩ (^⟂ ℱ) = ℱ ∩ f(𝐩𝐫𝐨𝐣)$.

{% endthm %}

基于对称性, 仅看前两条.

{% lem %}
$𝒯 ∩ (^⟂ 𝒯) = 𝒯 ∩ τ ⁻¹ ℱ$.
{% endlem %}

{% pf %}
给定 $X ∈ 𝒯$, 往证 $\mathrm{Ext}^1(X,  𝒯) = 0$ 当且仅当 $τ X ∈ ℱ$.

1. 假定 $\mathrm{Ext}^1(X, 𝒯) = 0$. 若 $X$ 投射, 则 $τ M ∈ ℱ$; 若 $X$ 非投射, 则考虑几乎可裂 ses

   $$
   0 → τ X → E → X → 0.
   $$

   若 $τ X ↠ f(τX)$ 是同构, 则证毕. 若不然, $τX ↠ f(τX)$ 通过 $τ X ↪ E$ 分解 (几乎可裂 ses 定义). 此时有交换图 ($▩$ 是推出拉回):

   $$
   \begin{bmatrix}
    &  & 0 &  & 0 &  &  &  & \\
    &  & ↓  &  & ↓   &  &  &  & \\
   0 & →  & t( τ  X) & →   & ? & →   & X & →   & 0\\
    &  & ↓   & ▩  & ↓   &  & ∥   &  & \\
   0 & →   & τ  X & →   & E & →   & X & →   & 0\\
    &  & ↓   & ↙   & ↓   &  &  &  & \\
   0 & →   & f( τ  X) & = & f( τ  X) &  &  &  & \\
    &  & ↓   &  & ↓   &  &  &  & \\
    &  & 0 &  & 0 &  &  &  & 
   \end{bmatrix}
   $$

   由假定, $\mathrm{Ext}^1(X, t(τX)) = 0$, 从而第一横行可裂. 由推出保持可裂单, 得 $τX ↪ E$ 可裂, 矛盾.

2. 反之, 若 $τ X ∈ ℱ$, 则 AR 公式表明

   $$
   \mathrm{Ext}^1(X, 𝒯) ≃ D\overline {(𝒯 , τ X)} ↪ D(𝒯 , τ X) = 0.
   $$

   因此 $X ∈ {}^⟂𝒯$.

{% endpf %}

{% lem %}
$𝒯 ∩ (𝒯^⟂) = 𝒯 ∩ t(𝐢𝐧𝐣)$.
{% endlem %}

{% pf %}
给定 $X ∈ 𝒯$, 往证 $\mathrm{Ext}^1(𝒯, X) = 0$ 当且仅当 $X$ 是某个内射对象的 $t$-部分.

1. 假定 $\mathrm{Ext}^1(𝒯, X) = 0$. 考虑内射包 $X ↪ I(X)$. 依照 $t$ 的函子性, 得 $X ↪ t(I(X)) ↪ I(X)$. 由于

    $$
    0 → X → t(I(X)) → \frac{t(I(X))}{X} → 0 \quad ∈ 𝒯 .
    $$

    依照 $\mathrm{Ext}^1(𝒯, X) = 0$, 得 ses 可裂. 由 $I$ 与 $t$ 是加法函子, $X$ 必形如内射模的 $t$ 部分.

2. 若 $X$ 是内射对象的 $t$ 部分, 记 $X = tI$. 对 $I$ 的 $(t,f)$-ses 导出, 得

    $$
    \cdots → \underset 0 {\underbrace{(-, fI)|_{𝒯}}} → \mathrm{Ext}^1(-, tI)|_{𝒯} → \underset 0 {\underbrace{\mathrm{Ext}^1(-, I)|_{𝒯}}} → \cdots.
    $$

    从而 $\mathrm{Ext}^1(𝒯, X) = 0$.

{% endpf %}
