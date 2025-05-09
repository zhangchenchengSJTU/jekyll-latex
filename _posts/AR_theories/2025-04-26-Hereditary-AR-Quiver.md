---
title: 有限维代数的预投射部分
author: Chencheng Zhang
layout: post
category: notes
---

* toc
{:toc}

## 遗传代数与无界 AR quiver

### 遗传代数的 AR quiver

本节假定 $k$ 是代数闭域. 此时, 有限维代数可以通过 quiver with relation 描述. 凡涉及遗传代数 ([等价定义](hereditary_Alg_Eq_def)), 约定

1. $Q$ 总是有限维, 连通 quiver;
2. $A$ 是有限维, 连通, 基础的遗传代数.

对有限维代数, 遗传性不区分左右. 证明见[此处](hereditary_Alg_Eq_def).

{% note %}
若 $Q$ 有限维, 则 $Q$ 既无自环亦无定向环; 但 $Q$ 可能包含重边.
{% endnote %}

实际上, 以下是对应.

{% thm %}
在同构的意义下, 以下两者是对应

1. 有限维, 连通, 基础的遗传代数;
2. 路代数 $kQ$, 其中 $Q$ 是有限维, 连通 quiver.
{% endthm %}

特别地, 从有限维, 连通, 基础的遗传代数得到 quiver 的方式是

1. 任取幂等分解 $\{e_i\}_{i=1}^n$;
2. 取矩阵代数 $A$, 使得 $a_{i,j} = e_i ⋅ A ⋅ e_j$;
3. 由代数无环, 从 $\dim e_i ⋅ A ⋅ e_j$ 极小者开始构造连边 $\mathrm{Hom}_Q(i, j)$; 也可以通过 $\mathrm{Ext}^1(S(i), S(j))$ 的基表示.

{% thm %}
(证明略). $kQ$ 的不可分解投射模具有如下以下性质:

1. 不可分解投射对象间的态射必然是单的, 投射对象是 brick;
2. $\mathrm{Irr}(P(j), P(i)) ≃ \mathrm{Ext}^1(S(i), S(j))$ 都以 $\mathrm{Hom}_{Q}(i,j)$ 为基;
3. $Γ (kQ)$ 中不可分解投射对象所在的全子范畴同构于 $Q^{\mathrm{op}}$.

{% endthm %}

内射部分对偶.

{% lem %}
(有限性初探, [证明](AR_Finite_No_Multiple_Arrows)). 对有限表示的 (未必遗传) 代数 $A$, $Γ(A)$ 无重边.
{% endlem %}

### 无限 AR 平移, 截面

先从以下例子开始.

{% ex %}

给定 quiver $Q := [1 → 2 → 3]$. 记代数闭域上的路代数 $A= kQ$, 以及 AR quiver
<center>
<!-- https://q.uiver.app/#q=WzAsMTcsWzAsMywiMyJdLFsxLDIsIjIiXSxbMiwxLCIxIl0sWzAsMiwiUSJdLFsxLDMsIlAoMykiLFsyNDAsNjAsNjAsMV1dLFsyLDIsIlAoMikiLFsyNDAsNjAsNjAsMV1dLFszLDEsIkEiLFsyNzAsNjAsNjAsMV1dLFs0LDIsIkkoMikiLFszMDAsNjAsNjAsMV1dLFszLDMsIlMoMikiXSxbNSwzLCJJKDEpIixbMzAwLDYwLDYwLDFdXSxbMywwLCJcXEdhbW1hIChBKSJdLFsxLDQsIlxcbWF0aGJme3Byb2p9IixbMjQwLDYwLDYwLDFdXSxbNSw0LCJcXG1hdGhiZntpbmp9IixbMzAwLDYwLDYwLDFdXSxbNCwxLCIzIl0sWzUsMiwiMiJdLFs2LDMsIjEiXSxbNiwyLCJRIl0sWzEsMF0sWzIsMV0sWzQsNSwiIiwyLHsiY29sb3VyIjpbMjQwLDYwLDYwXX1dLFs1LDYsIiIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF19XSxbNSw4XSxbOCw3XSxbNiw3LCIiLDEseyJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzcsOSwiIiwxLHsiY29sb3VyIjpbMzAwLDYwLDYwXX1dLFsxNSwxNF0sWzE0LDEzXSxbNyw1LCJcXHRhdSAiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOSw4LCJcXHRhdSAiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOCw0LCJcXHRhdSAiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTcsWzAsMywiMyJdLFsxLDIsIjIiXSxbMiwxLCIxIl0sWzAsMiwiUSJdLFsxLDMsIlAoMykiLFsyNDAsNjAsNjAsMV1dLFsyLDIsIlAoMikiLFsyNDAsNjAsNjAsMV1dLFszLDEsIkEiLFsyNzAsNjAsNjAsMV1dLFs0LDIsIkkoMikiLFszMDAsNjAsNjAsMV1dLFszLDMsIlMoMikiXSxbNSwzLCJJKDEpIixbMzAwLDYwLDYwLDFdXSxbMywwLCJcXEdhbW1hIChBKSJdLFsxLDQsIlxcbWF0aGJme3Byb2p9IixbMjQwLDYwLDYwLDFdXSxbNSw0LCJcXG1hdGhiZntpbmp9IixbMzAwLDYwLDYwLDFdXSxbNCwxLCIzIl0sWzUsMiwiMiJdLFs2LDMsIjEiXSxbNiwyLCJRIl0sWzEsMF0sWzIsMV0sWzQsNSwiIiwyLHsiY29sb3VyIjpbMjQwLDYwLDYwXX1dLFs1LDYsIiIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF19XSxbNSw4XSxbOCw3XSxbNiw3LCIiLDEseyJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzcsOSwiIiwxLHsiY29sb3VyIjpbMzAwLDYwLDYwXX1dLFsxNSwxNF0sWzE0LDEzXSxbNyw1LCJcXHRhdSAiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOSw4LCJcXHRhdSAiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOCw0LCJcXHRhdSAiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0=&embed" width="600" height="350" style="border-radius: 8px; border: dashed;"></iframe>
</center>
注意到如下事实.

1. $𝐩𝐫𝐨𝐣 ∩ Γ (A) ≃ Q^{\mathrm{op}} ≃ 𝐢𝐧𝐣 ∩ Γ (A)$.
2. 所有箭头由 $Q^{\mathrm{op}}$ 关于顶点的反射得到.

以上 AR quiver 可视作无限 quiver (点集是 $ℤ × Q^{\mathrm{op}}$) 的一部分, 如下图所示.
<center>
<!-- https://q.uiver.app/#q=WzAsMTQsWzAsMiwiUCgzKSIsWzI0MCw2MCw2MCwxXV0sWzEsMSwiUCgyKSIsWzI0MCw2MCw2MCwxXV0sWzIsMCwiQSIsWzI3MCw2MCw2MCwxXV0sWzMsMSwiSSgyKSIsWzMwMCw2MCw2MCwxXV0sWzIsMiwiUygyKSJdLFs0LDIsIkkoMSkiLFszMDAsNjAsNjAsMV1dLFsyLDMsIlxcR2FtbWEgKEEpIl0sWzAsMywiXFxtYXRoYmZ7cHJvan0iLFsyNDAsNjAsNjAsMV1dLFs0LDMsIlxcbWF0aGJme2luan0iLFszMDAsNjAsNjAsMV1dLFs0LDAsIkFbLTFdIixbMCwwLDUwLDFdXSxbNSwxLCJJKDIpWy0xXSIsWzAsMCw1MCwxXV0sWzYsMiwiSSgxKVstMV0iLFswLDAsNTAsMV1dLFs2LDAsIkFbLTJdIixbMCwwLDUwLDFdXSxbMCwwLCJBWzFdIixbMCwwLDUwLDFdXSxbMCwxLCIiLDIseyJjb2xvdXIiOlsyNDAsNjAsNjBdfV0sWzEsMiwiIiwyLHsiY29sb3VyIjpbMjQwLDYwLDYwXX1dLFsxLDRdLFs0LDNdLFsyLDMsIiIsMSx7ImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMyw1LCIiLDEseyJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzMsMSwiXFx0YXUgIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzUsNCwiXFx0YXUgIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzQsMCwiXFx0YXUgIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzksMTAsIiIsMix7ImNvbG91ciI6WzAsMCw1MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMCwxMSwiIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsOSwiIiwwLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksMiwiXFx0YXUgIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fSxbMCwwLDUwLDFdXSxbMTAsMywiXFx0YXUgIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fSxbMCwwLDUwLDFdXSxbMTEsNSwiXFx0YXUgIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fSxbMCwwLDUwLDFdXSxbMTIsOSwiXFx0YXUgIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fSxbMCwwLDUwLDFdXSxbMTAsMTIsIiIsMix7ImNvbG91ciI6WzAsMCw1MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDEwLCIiLDIseyJjb2xvdXIiOlswLDAsNTBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiwxMywiIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEzLDEsIiIsMix7ImNvbG91ciI6WzAsMCw1MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTQsWzAsMiwiUCgzKSIsWzI0MCw2MCw2MCwxXV0sWzEsMSwiUCgyKSIsWzI0MCw2MCw2MCwxXV0sWzIsMCwiQSIsWzI3MCw2MCw2MCwxXV0sWzMsMSwiSSgyKSIsWzMwMCw2MCw2MCwxXV0sWzIsMiwiUygyKSJdLFs0LDIsIkkoMSkiLFszMDAsNjAsNjAsMV1dLFsyLDMsIlxcR2FtbWEgKEEpIl0sWzAsMywiXFxtYXRoYmZ7cHJvan0iLFsyNDAsNjAsNjAsMV1dLFs0LDMsIlxcbWF0aGJme2luan0iLFszMDAsNjAsNjAsMV1dLFs0LDAsIkFbLTFdIixbMCwwLDUwLDFdXSxbNSwxLCJJKDIpWy0xXSIsWzAsMCw1MCwxXV0sWzYsMiwiSSgxKVstMV0iLFswLDAsNTAsMV1dLFs2LDAsIkFbLTJdIixbMCwwLDUwLDFdXSxbMCwwLCJBWzFdIixbMCwwLDUwLDFdXSxbMCwxLCIiLDIseyJjb2xvdXIiOlsyNDAsNjAsNjBdfV0sWzEsMiwiIiwyLHsiY29sb3VyIjpbMjQwLDYwLDYwXX1dLFsxLDRdLFs0LDNdLFsyLDMsIiIsMSx7ImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMyw1LCIiLDEseyJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzMsMSwiXFx0YXUgIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzUsNCwiXFx0YXUgIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzQsMCwiXFx0YXUgIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzksMTAsIiIsMix7ImNvbG91ciI6WzAsMCw1MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMCwxMSwiIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsOSwiIiwwLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksMiwiXFx0YXUgIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fSxbMCwwLDUwLDFdXSxbMTAsMywiXFx0YXUgIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fSxbMCwwLDUwLDFdXSxbMTEsNSwiXFx0YXUgIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fSxbMCwwLDUwLDFdXSxbMTIsOSwiXFx0YXUgIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fSxbMCwwLDUwLDFdXSxbMTAsMTIsIiIsMix7ImNvbG91ciI6WzAsMCw1MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDEwLCIiLDIseyJjb2xvdXIiOlswLDAsNTBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiwxMywiIiwyLHsiY29sb3VyIjpbMCwwLDUwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEzLDEsIiIsMix7ImNvbG91ciI6WzAsMCw1MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>

对以上, $P(2) → A$ 通过反射得到 $A → I(2)$, 继续反射 $A → I(2)$ 得 $I(2) → A[-1]$.

{% note %}
对子图, 此处沿用子范畴与全子范畴的称呼.

1. 称 $Q' ⊆ Q$ 是子范畴, 若 $Q'$ 是 $Q$ 的子图
2. 称 $Q' ⊆ Q$ 是全子范畴, 若 $Q' ⊆ Q$ 是子图, 且 $\mathrm{Hom}_{Q'}(i,j) = \mathrm{Hom}_{Q}(i,j)$.
{% endnote %}

{% endex %}

假定以下 quiver $Q$ 都是有限维连通的.

{% def %}
(quiver 的无界化). 给定 $Q$, 定义 $ℤ Q$ 如下.

1. 顶点集是 Catersian 积 $(ℤQ)_0 := ℤ × Q_0$.
2. 箭头集是 $S_1 ⊔ S_2$. 其中
   1. ($Γ$ 内的箭头). $S_1 := ℤ × Q_1$, 形如 $(n, α) : (n, x) → (n, y)$.
   2. ($Γ$ 外的箭头) $S_2$ 中箭头刻画如下: 若 $(n, α) : (n, x) → (n, y)$, 则作

   $$
   θ(n, α) : (n + 1, y) → (n , x).
   $$

简而言之, $(n + 1, y) \xrightarrow[\text{反射}]{θ (n , α)} (n, x) \xrightarrow{(n,α)} (n, y)$. 朝向与 AR quiver 一致:

$$
\begin{bmatrix}
&  & ( n,x) &  & \\
& \nearrow  &  & \searrow  & \\
( n+1,y) &  & \overset{\tau }{\dashleftarrow } &  & ( n,y)
\end{bmatrix}
$$

{% enddef %}

约定 $ℤ Q$ 的横坐标向右减小.

{% def %}
定义 $ℤQ$ 上的两类运算.

1. $τ : ℤQ → ℤQ ,\quad (n, ∙) → (n+1, ∙)$ 是向左平移.
2. $θ : ℤQ_1 → ℤQ_1$ 是朝向 $τ$ 的反射 (往左偏移).
{% enddef %}

对 $A_3$ 而言, $Q^{\mathrm{op}} = Γ (A) ∩ 𝐩𝐫𝐨𝐣$ 是类似截面的东西. 以下是对 AR quiver 截面的公理化定义.

{% def %}
(截面). 称 $Σ ⊆ ℤ Q$ 是子图, 若

1. (连通无环的全子范畴). $Σ$ 是连通, 无环的全子范畴,
2. (截面). 对任意 $x ∈ Q_0$, 存在唯一的 $n ∈ ℤ$ 使得 $(n, x) ∈ Σ$.
3. (道路封闭). 对 $ℤ Q$ 中的任意道路, 若起点与终点属于 $Σ$, 则道路上的所有点都属于 $Σ$.

{% enddef %}

道路封闭性可归结为如下引理.

{% lem %}
(易证). 对 $Γ (A)$ 中箭头 $α : x → y$, 若 $(n, x) ∈ Σ$, 则有如下二择:

1. $(n, y) ∈ Σ$,
2. $(n-1, y) ∈ Σ$.

{% endlem %}

{% ex %}
$ℤ Γ (k [∙ → ∙ → ∙])$ 的截面可以是 $𝐩𝐫𝐨𝐣 ∩ Γ$, 也可以是

$$
(0, I(1)) → (0, I(2)) → (-1, A).
$$

{% endex %}

{% thm %}
以下是一些组合学的事实, 证明从略.

1. ($ℤ$ 保持无环图). 若 $Q$ 无环, 则 $ℤ Q$ 亦无环.
2. (截面的延拓性质). 取 $ℤ Q$ 的截面 $Σ$, 则截面的嵌入诱导了同构 $ℤ Σ ≃ ℤ Q$.
   * 这说明, 可以从任意截面复原 $ℤQ$ 的信息.
3. 记 $T_1$ 与 $T_2$ 是同一棵无向树的两种定向, 则 $ℤ T_1 ≃ ℤ T_2$.
   * 这也是 Coxeter 反射的性质.
4. 给定环 $C$, 假定其定向是无环的. 此时 $ℤ Q$ 的结构唯一取决于 $C$ 中顺时针箭头个数与逆时针箭头个数, 与具体的排列无关.
{% endthm %}

### 遗传代数的无限 AR 平移

选定 AR quiver $Γ$, 使用

1. $𝔓 = 𝐩𝐫𝐨𝐣 ∩ Γ$ 表示投射对象所在的全子范畴.
2. $ℑ = 𝐢𝐧𝐣 ∩ Γ$ 表示内射对象所在的全子范畴.

对有限表示的遗传代数 (不必选择代数闭域), 有如下引理.

{% lem %}
($𝔓$ 是 $ℤ 𝔓$ 的截面, [证明](P_is_Section)).
给定连通, 有限表示的遗传代数.

1. $𝔓$ 是 $ℤ𝔓$ 的截面;
2. 特别地, $𝔓 ≃ Q^{\mathrm{op}}$;
3. $Γ$ 是 $ℤ𝔓$ 的全子范畴.

内射对象的命题对偶.

{% endlem %}

{% cor %}
由[命题的证明](P_is_Section), 对有限维连通基础 (但不必有限表示) 的遗传代数 $A = kQ$,

1. $ℤ 𝔓$ 是 $Γ (A)$ 的无环连通分支;
2. $Q^{\mathrm{op}} ≃ 𝔓 ↪ ℤ 𝔓$ 是截面;
3. $M ∈ ℤ 𝔓$ 当且仅当存在 $k$ 使得 $τ^k M ∈ 𝔓$.
{% endcor %}

{% ex %}
(Kronecker quiver).
<center>
<!-- https://q.uiver.app/#q=WzAsMTUsWzAsMiwiWzAgXFxtaWQgMV0iLFsyMzIsMTAwLDYwLDFdXSxbMSwyLCJbMSBcXG1pZCAyXSIsWzIzMiwxMDAsNjAsMV1dLFsxLDMsIlsyIFxcbWlkIDNdIixbMjA2LDEwMCw2MCwxXV0sWzIsMywiWzNcXG1pZCA0XSIsWzIwNiwxMDAsNjAsMV1dLFsyLDQsIlxcY2RvdHMiLFsyMDYsMTAwLDYwLDFdXSxbNCwwLCJcXGNkb3RzIixbMTksMTAwLDYwLDFdXSxbNCwxLCJbNCBcXG1pZCAzXSIsWzE5LDEwMCw2MCwxXV0sWzUsMSwiWzNcXG1pZDJdIixbMTksMTAwLDYwLDFdXSxbNSwyLCJbMlxcbWlkMV0iLFszNTcsMTAwLDYwLDFdXSxbNiwyLCJbMVxcbWlkMF0iLFszNTcsMTAwLDYwLDFdXSxbMiwyLCJcXHRleHR7cHJvan0iLFsyMzIsMTAwLDYwLDFdXSxbMywzLCJcXHRleHR7cG9zdC1wcm9qfSIsWzIwNiwxMDAsNjAsMV1dLFszLDEsIlxcdGV4dHtwcmUtaW5qfSIsWzE5LDEwMCw2MCwxXV0sWzQsMiwiXFx0ZXh0e2luan0iLFszNTcsMTAwLDYwLDFdXSxbMywyLCJcXGJveGVke1xcdGV4dHtyZWd1bGFyIG1vZH19IixbMTIwLDYwLDYwLDFdXSxbMCwxXSxbMSwyXSxbMiwzXSxbMyw0XSxbMCwxLCIiLDEseyJvZmZzZXQiOi0zfV0sWzEsMiwiIiwxLHsib2Zmc2V0IjotM31dLFsyLDMsIiIsMSx7Im9mZnNldCI6LTN9XSxbMyw0LCIiLDEseyJvZmZzZXQiOi0zfV0sWzYsN10sWzcsOF0sWzYsNywiIiwxLHsib2Zmc2V0IjotM31dLFs4LDksIiIsMSx7Im9mZnNldCI6LTN9XSxbNSw2XSxbNSw2LCIiLDEseyJvZmZzZXQiOi0zfV0sWzIsMCwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsMSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzQsMiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzcsNSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzgsNiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzksNywiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzExLDEwLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMTQsMTEsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6InNxdWlnZ2x5In19fV0sWzEyLDE0LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJzcXVpZ2dseSJ9fX1dLFsxMywxMiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzcsOCwiIiwxLHsib2Zmc2V0IjotM31dLFs4LDldXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTUsWzAsMiwiWzAgXFxtaWQgMV0iLFsyMzIsMTAwLDYwLDFdXSxbMSwyLCJbMSBcXG1pZCAyXSIsWzIzMiwxMDAsNjAsMV1dLFsxLDMsIlsyIFxcbWlkIDNdIixbMjA2LDEwMCw2MCwxXV0sWzIsMywiWzNcXG1pZCA0XSIsWzIwNiwxMDAsNjAsMV1dLFsyLDQsIlxcY2RvdHMiLFsyMDYsMTAwLDYwLDFdXSxbNCwwLCJcXGNkb3RzIixbMTksMTAwLDYwLDFdXSxbNCwxLCJbNCBcXG1pZCAzXSIsWzE5LDEwMCw2MCwxXV0sWzUsMSwiWzNcXG1pZDJdIixbMTksMTAwLDYwLDFdXSxbNSwyLCJbMlxcbWlkMV0iLFszNTcsMTAwLDYwLDFdXSxbNiwyLCJbMVxcbWlkMF0iLFszNTcsMTAwLDYwLDFdXSxbMiwyLCJcXHRleHR7cHJvan0iLFsyMzIsMTAwLDYwLDFdXSxbMywzLCJcXHRleHR7cG9zdC1wcm9qfSIsWzIwNiwxMDAsNjAsMV1dLFszLDEsIlxcdGV4dHtwcmUtaW5qfSIsWzE5LDEwMCw2MCwxXV0sWzQsMiwiXFx0ZXh0e2luan0iLFszNTcsMTAwLDYwLDFdXSxbMywyLCJcXGJveGVke1xcdGV4dHtyZWd1bGFyIG1vZH19IixbMTIwLDYwLDYwLDFdXSxbMCwxXSxbMSwyXSxbMiwzXSxbMyw0XSxbMCwxLCIiLDEseyJvZmZzZXQiOi0zfV0sWzEsMiwiIiwxLHsib2Zmc2V0IjotM31dLFsyLDMsIiIsMSx7Im9mZnNldCI6LTN9XSxbMyw0LCIiLDEseyJvZmZzZXQiOi0zfV0sWzYsN10sWzcsOF0sWzYsNywiIiwxLHsib2Zmc2V0IjotM31dLFs4LDksIiIsMSx7Im9mZnNldCI6LTN9XSxbNSw2XSxbNSw2LCIiLDEseyJvZmZzZXQiOi0zfV0sWzIsMCwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsMSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzQsMiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzcsNSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzgsNiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzksNywiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzExLDEwLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMTQsMTEsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6InNxdWlnZ2x5In19fV0sWzEyLDE0LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJzcXVpZ2dseSJ9fX1dLFsxMywxMiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzcsOCwiIiwxLHsib2Zmc2V0IjotM31dLFs4LDldXQ==&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endex %}

## 有限维代数的预投射分支

### 遗传代数的预投射与预内射分支

在介绍预投射与预内射模前, 可先熟悉 [Kronecker quiver 的 AR quiver](Kronecker_Rep).

{% def %}
(遗传代数的预投射 (postprojective) 部分, 预内射 (preinjective) 部分, 正规 (regular) 部分). 对不可分解模 $M$.

1. 称 $M$ 预投射, 若存在 $k$ 使得 $τ^k M$ 是投射的;
2. 称 $M$ 预内射, 若存在 $k$ 使得 $τ^{-k} M$ 是内射的;
3. 称 $M$ 正规, 若 $M$ 既非预投射模亦非预内射模.
{% enddef %}

对遗传代数, 其 AR quiver 拆分成以下三部分,

1. 预投射部分的 AR quiver 同构于 $ℤ_{≤ 0}Q^{\mathrm{op}}$ (向右延申),
2. 预内射部分的 AR quiver 同构于 $ℤ_{≥0} Q^{\mathrm{op}}$ (向左延申),
3. 正规部分的 AR quiver 未必无环, 未必连通, 未必有限.

总体而言, 预投射部分与预内射部分是相对规整的, 正规部分是稍显混乱.

### 非遗传代数的预投射分支: 怪例子

对非遗传代数, 预投射 (预内射) 模的定义稍有不同. 该定义从预投射 (预内射) 分支出发.

{% def %}
(预投射分支). 称连通分支 $Δ ⊆ Γ (A)$ 是预投射的, 若

1. $Δ$ 无环,
2. 任意 $M ∈ Δ$, 存在 $k$ 使得 $τ^k M$ 投射.

称预投射分支中的模为预投射模. 预投射模必然在有限次 AR 平移后变作是投射模.
{% enddef %}

{% ex %}
不同于遗传代数整齐的预投射分支, 非遗传代数的预投射分支与投射模存在如下反常现象:

1. 预投射分支可能不存在, 见[此文](Non_Existence_of_Proproj);
2. 即便代数连通, 预投射分支可能不唯一, 见[此例](Preproj_Disconnected);
3. 预投射部分与预内射部分不对称, 甚至连通分支的数量不同, 见[此例](Preproj_Disconnected);
4. 投射模所在的分支可能有环, 见[此例](Preproj_cyclic).

特别地, 存在预内射但非预投射的投射模, 也存在既非预投射, 亦非预内射的投射模.

{% endex %}

除了怪例子, 也有一些极好的例子: 以下引理给出有限维代数有限表示的充要条件.

{% thm %}
([证明](Finite_Pre_Post)). 对连通的有限维代数 $A$, 以下等价:

1. $A$ 有限表示;
2. $Γ(A)$ 存在某个连通分支 $Δ$, $Δ$ 是有限集;
3. $Γ(A)$ 存在某个连通分支 $Δ$, $Δ$ 中对象的合成列长度有一致上界.

{% endthm %}

因此, 若连通代数的 AR quiver $Γ$ 存在某个无限的连通分支, 则所有连通分支均无限.

### 单向性

以下仍选取 bound 路代数 $kQ / I$, 并假定预投射部分存在. 先证明一则重要的引理.

{% lem %}
(不可约态射链的左起点, [证明](From_Simp_Proj)). 若 $M$ 预投射, 则存在单的投射模 $P$ 使得 $P → \cdots → M$ 是一列不可约态射. 特别地, 极大的 $\cdots → M$ 必然以投射单模为起点.
{% endlem %}

{% ex %}
可对照[此文中的 $B = \mathrm{End}(T_A)$](Commutative_Diagram_Alg#非-apr-tilting-模), 例如对投射对象 ${\color{cyan}\substack{1 \\ 1 \quad 1 \\ 1}}$ 通过如下不可约态射与投射单模连接:

$$
{\color{cyan}\substack{0 \\ 0 \quad 1 \\ 0}} → {\color{cyan}\substack{0 \\ 0 \quad 1 \\ 1}} → \substack{1 \\ 0 \quad 1 \\ 1} → {\color{cyan}\substack{1 \\ 1 \quad 1 \\ 1}}.
$$

{% endex %}

{% def %}
(左邻域). 称 $Γ (A)$ 中点 $x$ 属于 $y$ 的左邻域, 若存在 $x → y$ 类型的不可约态射. 依照距离, 定义

1. $L_0(y) := \{y\}$;
2. $L_1(y) := \{x ∣ x → y\}$, 即通常意义的左邻域;
3. $L_{n+1}(y) := \{x ∣ x → y \ \ (x ∈ L_n(y))\}$;
4. $L_∞ (y) := ⋃_{n ≥ 0} L_n(y)$.
{% enddef %}

{% prop %}
(预投射分支的等价定义, [证明](Post_Proj_Left_Finite)). 假定 $Δ ⊆ Γ (A)$ 是无环的连通分支, 以下是 $Δ$ 预投射的等价定义

1. 任意 $M ∈ Δ$, 存在 $k$ 使得 $τ ^k M$ 投射;
2. 任意 $M ∈ Δ$, $L_∞(M)$ 有界.
{% endprop %}

以上表明了每一预投射分支与预内射分支均是单边有界的. 利用这一单边有限性, 得如下态射空间的单向性.

{% thm %}
(态射的单向性, [证明](Morphism_Directed)). 对预投射模 $M$, 唯 $L ∈ L_∞(M)$ 使 $(L, M)$ 非零; 对预内射模 $N$, 唯 $R ∈ R_∞(N)$ 使 $(M, R)$ 非零.
{% endthm %}

{% cor %}
([证明](Pre_Post_Self_Oth_Brick)). 预投射模和预内射模都是自垂直 ($\mathrm{Ext}^1(M,M) = 0$) 的 brick.
{% endcor %}

{% note %}
假若不可分解对象 $M$ 不是 brick, 或不是自垂直的, 则 $M$ 所在的连通分支既非预投射亦非预内射.
{% endnote %}

## 回归遗传代数

给定有限维, 连通, 基础的遗传代数, 不妨记作 $kQ$ ($Q$ 是有限维 quiver).

{% prop %}
(有限表示遗传代数的等价定义). 以下是 $kQ$ 有限表示的等价条件.

1. [Gabriel 定理](Gabriel_1)的等价表述, 例如 $Q$ 的无向化图是 $A_n$, $D_n$, 以及 $E_{6,7,8}$ 型的.
2. 不可分解模的长度有上界 (见[有限表示的充要条件](Finite_Pre_Post)).
3. $Γ(A)$ 的某一预投射分支是预内射的.
4. 所有不可分解模都是自垂直的 brick (见[关键公式](Key_Lemma_Gabriel)).
5. 存在 regular 模 (既非预投射, 亦非预内射的模) (考虑根系).
{% endprop %}

称 $R$ 是正规模, 当且仅当 $R$ 既非预投射亦非预内射.

{% ex %}
(正规模的结构). 给定非有限表示的遗传代数 $kQ$.

* 正规模存在. 比对根系与[关键公式](Key_Lemma_Gabriel), 某些不可分解模不是自垂直的 brick, 从而必然正规.
* 任意正规模总与足够大的正规模相连. 依照[有限表示的充要条件](Finite_Pre_Post), 预投射部分无界, 从而任意连通分支的模的合成列长度无上界.

{% endex %}

{% ex %}
(AR 平移). 以下是 AR 平移:
<center>
<!-- https://q.uiver.app/#q=WzAsMTUsWzEsMiwiUV57XFxtYXRocm17b3B9fSIsWzI3MCw2MCw2MCwxXV0sWzIsMiwiUV57XFxtYXRocm17b3B9fSIsWzI3MCw2MCw2MCwxXV0sWzMsMiwiXFxjZG90cyAiLFsyNzAsNjAsNjAsMV1dLFs0LDEsIlxcdGV4dHtSZWd1bGFyfSIsWzEyMCw2MCw2MCwxXV0sWzYsMiwiUV57XFxtYXRocm17b3B9fSIsWzMwMCw2MCw2MCwxXV0sWzcsMiwiUV57XFxtYXRocm17b3B9fSIsWzMwMCw2MCw2MCwxXV0sWzIsMCwiUV57XFxtYXRocm17b3B9fSIsWzI3MCw2MCw2MCwxXV0sWzMsMCwiXFxjZG90cyAiLFsyNzAsNjAsNjAsMV1dLFs1LDAsIlxcY2RvdHMgIixbMzAwLDYwLDYwLDFdXSxbNiwwLCJRXntcXG1hdGhybXtvcH19IixbMzAwLDYwLDYwLDFdXSxbNSwyLCJcXGNkb3RzICIsWzMwMCw2MCw2MCwxXV0sWzAsMiwiUV57XFxtYXRocm17b3B9fSIsWzIzNCwxMDAsNjAsMV1dLFsxLDAsIlFee1xcbWF0aHJte29wfX0iLFsyNzAsNjAsNjAsMV1dLFs3LDAsIlFee1xcbWF0aHJte29wfX0iLFszMDAsNjAsNjAsMV1dLFs4LDAsIlFee1xcbWF0aHJte29wfX0iLFsxLDEwMCw2MCwxXV0sWzAsMSwiIiwwLHsiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFswLDEsIiIsMyx7Im9mZnNldCI6LTMsImNvbG91ciI6WzI3MCw2MCw2MF19XSxbMCwxLCIiLDMseyJvZmZzZXQiOjMsImNvbG91ciI6WzI3MCw2MCw2MF19XSxbMSwyLCIiLDAseyJjb2xvdXIiOlsyNzAsNjAsNjBdfV0sWzEsMiwiIiwzLHsib2Zmc2V0IjotMywiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFsxLDIsIiIsMyx7Im9mZnNldCI6MywiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFszLDMsIlxcdGF1IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsMywiIiwzLHsiYW5nbGUiOi00NSwiY29sb3VyIjpbMTIwLDYwLDYwXX1dLFszLDMsIlxcdGF1IiwzLHsiYW5nbGUiOi05MCwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsMywiIiwzLHsiYW5nbGUiOi0xMzUsImNvbG91ciI6WzEyMCw2MCw2MF19XSxbMywzLCJcXHRhdSIsMyx7ImFuZ2xlIjotMTgwLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMywzLCIiLDMseyJhbmdsZSI6MTM1LCJjb2xvdXIiOlsxMjAsNjAsNjBdfV0sWzMsMywiXFx0YXUiLDMseyJhbmdsZSI6OTAsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFszLDMsIiIsMyx7ImFuZ2xlIjo0NSwiY29sb3VyIjpbMTIwLDYwLDYwXX1dLFs0LDUsIiIsMCx7ImNvbG91ciI6WzMwMCw2MCw2MF19XSxbNCw1LCIiLDMseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzQsNSwiIiwzLHsib2Zmc2V0IjozLCJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzEwLDQsIiIsMCx7ImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMTAsNCwiIiwzLHsib2Zmc2V0IjotMywiY29sb3VyIjpbMzAwLDYwLDYwXX1dLFsxMCw0LCIiLDMseyJvZmZzZXQiOjMsImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMTEsMCwiIiwwLHsiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFsxMSwwLCIiLDMseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlsyNzAsNjAsNjBdfV0sWzExLDAsIiIsMyx7Im9mZnNldCI6MywiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFsxMiw2LCIiLDAseyJjb2xvdXIiOlsyNzAsNjAsNjBdfV0sWzEyLDYsIiIsMyx7Im9mZnNldCI6LTMsImNvbG91ciI6WzI3MCw2MCw2MF19XSxbNiw3LCIiLDAseyJjb2xvdXIiOlsyNzAsNjAsNjBdfV0sWzEyLDYsIiIsMyx7Im9mZnNldCI6MywiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFs2LDcsIiIsMyx7Im9mZnNldCI6LTMsImNvbG91ciI6WzI3MCw2MCw2MF19XSxbNiw3LCIiLDMseyJvZmZzZXQiOjMsImNvbG91ciI6WzI3MCw2MCw2MF19XSxbOCw5LCIiLDAseyJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzksMTMsIiIsMCx7ImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMTMsMTQsIiIsMCx7ImNvbG91ciI6WzMwMCw2MCw2MF19XSxbOCw5LCIiLDMseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzksMTMsIiIsMyx7Im9mZnNldCI6LTMsImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMTMsMTQsIiIsMyx7Im9mZnNldCI6LTMsImNvbG91ciI6WzMwMCw2MCw2MF19XSxbOCw5LCIiLDMseyJvZmZzZXQiOjMsImNvbG91ciI6WzMwMCw2MCw2MF19XSxbOSwxMywiIiwzLHsib2Zmc2V0IjozLCJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzEzLDE0LCIiLDMseyJvZmZzZXQiOjMsImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMTIsMTEsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzYsMCwiXFx0YXUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNywxLCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs5LDEwLCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxMyw0LCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxNCw1LCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs4LDEwLCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs3LDIsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTUsWzEsMiwiUV57XFxtYXRocm17b3B9fSIsWzI3MCw2MCw2MCwxXV0sWzIsMiwiUV57XFxtYXRocm17b3B9fSIsWzI3MCw2MCw2MCwxXV0sWzMsMiwiXFxjZG90cyAiLFsyNzAsNjAsNjAsMV1dLFs0LDEsIlxcdGV4dHtSZWd1bGFyfSIsWzEyMCw2MCw2MCwxXV0sWzYsMiwiUV57XFxtYXRocm17b3B9fSIsWzMwMCw2MCw2MCwxXV0sWzcsMiwiUV57XFxtYXRocm17b3B9fSIsWzMwMCw2MCw2MCwxXV0sWzIsMCwiUV57XFxtYXRocm17b3B9fSIsWzI3MCw2MCw2MCwxXV0sWzMsMCwiXFxjZG90cyAiLFsyNzAsNjAsNjAsMV1dLFs1LDAsIlxcY2RvdHMgIixbMzAwLDYwLDYwLDFdXSxbNiwwLCJRXntcXG1hdGhybXtvcH19IixbMzAwLDYwLDYwLDFdXSxbNSwyLCJcXGNkb3RzICIsWzMwMCw2MCw2MCwxXV0sWzAsMiwiUV57XFxtYXRocm17b3B9fSIsWzIzNCwxMDAsNjAsMV1dLFsxLDAsIlFee1xcbWF0aHJte29wfX0iLFsyNzAsNjAsNjAsMV1dLFs3LDAsIlFee1xcbWF0aHJte29wfX0iLFszMDAsNjAsNjAsMV1dLFs4LDAsIlFee1xcbWF0aHJte29wfX0iLFsxLDEwMCw2MCwxXV0sWzAsMSwiIiwwLHsiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFswLDEsIiIsMyx7Im9mZnNldCI6LTMsImNvbG91ciI6WzI3MCw2MCw2MF19XSxbMCwxLCIiLDMseyJvZmZzZXQiOjMsImNvbG91ciI6WzI3MCw2MCw2MF19XSxbMSwyLCIiLDAseyJjb2xvdXIiOlsyNzAsNjAsNjBdfV0sWzEsMiwiIiwzLHsib2Zmc2V0IjotMywiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFsxLDIsIiIsMyx7Im9mZnNldCI6MywiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFszLDMsIlxcdGF1IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsMywiIiwzLHsiYW5nbGUiOi00NSwiY29sb3VyIjpbMTIwLDYwLDYwXX1dLFszLDMsIlxcdGF1IiwzLHsiYW5nbGUiOi05MCwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsMywiIiwzLHsiYW5nbGUiOi0xMzUsImNvbG91ciI6WzEyMCw2MCw2MF19XSxbMywzLCJcXHRhdSIsMyx7ImFuZ2xlIjotMTgwLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMywzLCIiLDMseyJhbmdsZSI6MTM1LCJjb2xvdXIiOlsxMjAsNjAsNjBdfV0sWzMsMywiXFx0YXUiLDMseyJhbmdsZSI6OTAsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFszLDMsIiIsMyx7ImFuZ2xlIjo0NSwiY29sb3VyIjpbMTIwLDYwLDYwXX1dLFs0LDUsIiIsMCx7ImNvbG91ciI6WzMwMCw2MCw2MF19XSxbNCw1LCIiLDMseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzQsNSwiIiwzLHsib2Zmc2V0IjozLCJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzEwLDQsIiIsMCx7ImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMTAsNCwiIiwzLHsib2Zmc2V0IjotMywiY29sb3VyIjpbMzAwLDYwLDYwXX1dLFsxMCw0LCIiLDMseyJvZmZzZXQiOjMsImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMTEsMCwiIiwwLHsiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFsxMSwwLCIiLDMseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlsyNzAsNjAsNjBdfV0sWzExLDAsIiIsMyx7Im9mZnNldCI6MywiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFsxMiw2LCIiLDAseyJjb2xvdXIiOlsyNzAsNjAsNjBdfV0sWzEyLDYsIiIsMyx7Im9mZnNldCI6LTMsImNvbG91ciI6WzI3MCw2MCw2MF19XSxbNiw3LCIiLDAseyJjb2xvdXIiOlsyNzAsNjAsNjBdfV0sWzEyLDYsIiIsMyx7Im9mZnNldCI6MywiY29sb3VyIjpbMjcwLDYwLDYwXX1dLFs2LDcsIiIsMyx7Im9mZnNldCI6LTMsImNvbG91ciI6WzI3MCw2MCw2MF19XSxbNiw3LCIiLDMseyJvZmZzZXQiOjMsImNvbG91ciI6WzI3MCw2MCw2MF19XSxbOCw5LCIiLDAseyJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzksMTMsIiIsMCx7ImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMTMsMTQsIiIsMCx7ImNvbG91ciI6WzMwMCw2MCw2MF19XSxbOCw5LCIiLDMseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzksMTMsIiIsMyx7Im9mZnNldCI6LTMsImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMTMsMTQsIiIsMyx7Im9mZnNldCI6LTMsImNvbG91ciI6WzMwMCw2MCw2MF19XSxbOCw5LCIiLDMseyJvZmZzZXQiOjMsImNvbG91ciI6WzMwMCw2MCw2MF19XSxbOSwxMywiIiwzLHsib2Zmc2V0IjozLCJjb2xvdXIiOlszMDAsNjAsNjBdfV0sWzEzLDE0LCIiLDMseyJvZmZzZXQiOjMsImNvbG91ciI6WzMwMCw2MCw2MF19XSxbMTIsMTEsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzYsMCwiXFx0YXUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNywxLCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs5LDEwLCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxMyw0LCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxNCw1LCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs4LDEwLCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs3LDIsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d&embed" width="600" height="250" style="border-radius: 8px; border: dashed;"></iframe>
</center>

分别记 $𝐏𝐩𝐫𝐨𝐣$, $𝐩𝐩𝐫𝐨𝐣$, $𝐏𝐢𝐧𝐣$, $𝐩𝐢𝐧𝐣$, $𝐫𝐞𝐠$ 是预投射 (含投射), 预投射 (不含投射), 预内射 (含内射), 预内射 (不含内射), 正规模通过有限直和生成的全子范畴. 此时 AR 平移与与逆平移诱导了范畴等价

1. 初始的范畴等价 $τ : \underline{𝐦𝐨𝐝_A} ⇆ \overline {𝐦𝐨𝐝_A} : τ ⁻¹$;
2. (预投射部分). 由以上, 得 $τ : \underline{𝐩𝐩𝐫𝐨𝐣} ⇆ \overline {𝐏𝐩𝐫𝐨𝐣} : τ ⁻¹$. 由[单向性](Morphism_Directed), $𝐩𝐩𝐫𝐨𝐣$ 间的非零态射不通过投射对象分解, $𝐏𝐩𝐫𝐨𝐣$ 间的非零态射不通过内射对象分解. 因此, 稳定范畴即原全子范畴.
3. (正规). $τ : 𝐫𝐞𝐠 ⇆ 𝐫𝐞𝐠 : τ ⁻¹$ 证明类似.
4. (预内射). $τ : 𝐏𝐢𝐧𝐣 ⇆ 𝐩𝐢𝐧𝐣 : τ ⁻¹$ 证明类似.
{% endex %}
