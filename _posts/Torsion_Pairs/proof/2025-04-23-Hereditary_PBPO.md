---
title: 遗传范畴的满-单分解补全作 PBPO
author: Chencheng Zhang
layout: post
category: notes
---
## 证明

{% note %}
在定义米田 (大) 群时, 不必要求范畴是局部小的. 以上结论亦无此要求然.
{% endnote %}

{% thm %}

遗传范畴中的满单分解均可补全作推出拉回方块.

{% endthm %}

{% pf %}
给定满-单态射复合 $\overset π ↠ \overset ι ↪$. 考虑 ses

$$
θ : 0 → K → X \overset π → C → 0
$$

由 $\mathrm{Ext}^2(-, K)$ 消失, $\mathrm{Ext}^1(ι, K)$ 是满态射. 这说明 $θ$ 是某 ses 关于 $ι$ 推出的像, 换言之, 存在正合列的交换图

$$
\begin{bmatrix}
0 & →   & K & →  & X & \xrightarrow π   & C & →  & 0\\
 &  & ∥  &  & ⇣  & ▦  & \ \ ↓ι  &  & \\
0 & →  & K & ⇢ & E & ⇢  & F & → & 0
\end{bmatrix}.
$$

此处 $▦$ 即为所求.

{% endpf %}

{% ex %}
(关于 $3 × 3$-引理).
考虑 $3 × 3$ 的短正合列的交换图

$$
\begin{bmatrix}
 & X_{1} & \overset{i_{1}}{\hookrightarrow } & Y_{1} & \overset{p_{1}}{\twoheadrightarrow } & Z_{1}\\
 & f_{1} \downarrow \ \  &  & g_{1} \downarrow \ \  &  & h_{1} \downarrow \ \ \ \\
 & X_{2} & \overset{i_{2}}{\hookrightarrow } & Y_{2} & \overset{p_{2}}{\twoheadrightarrow } & Z_{2}\\
 & f_{2} \downarrow \ \  &  & g_{2} \downarrow \ \  &  & g_{2} \downarrow \ \ \\
 & X_{3} & \overset{i_{3}}{\hookrightarrow } & Y_{3} & \overset{p_{3}}{\twoheadrightarrow } & Z_{3}
\end{bmatrix}.
$$

此时有四项正合列的交换图:

$$
\begin{bmatrix}
θ: & X_{1} & \xrightarrow{\binom{i_{1}}{-f_{1}}} & X_{2} \oplus Y_{1} & \xrightarrow{( g_{1} \ i_{2})} & Y_{2} & \xrightarrow{g_{2} \circ p_{2}} & Z_{3}\\
& \parallel  &  & \pi \downarrow \ \  &  & p_{2} \downarrow \ \  &  & \parallel \\
η: & X_{1} & \xrightarrow{i_{1}} & Y_{1} & \xrightarrow{h_{1} \circ p_{1}} & Z_{2} & \xrightarrow{g_{2}} & Z_{3}
\end{bmatrix}.
$$

因此, 以上 $η$ 与 $θ$ 是 $\mathrm{Ext}^2(Z_3, X_1)$ 中相同的元素.
\\
\\
类似地, $X_1 → Y_1 → Z_2 → Z_3$ 与 $(-θ)$ 是 $\mathrm{Ext}^2(Z_3, X_1)$ 中相同的元素. 这说明以下两条四项正合列在 $\mathrm{Ext}^2(Z_3, X_1)$ 中互为相反数.

$$
\begin{bmatrix}
X_{1} & \rightarrow  & Y_{1} &  & \\
\downarrow  &  &  & \searrow  &  \\
X_{2} &  &  &  & Z_{2}\\
 & \searrow  &  &  & \downarrow \\
 &  & Y_{3} & \rightarrow  & Z_{3}
\end{bmatrix}.
$$

{% endex %}