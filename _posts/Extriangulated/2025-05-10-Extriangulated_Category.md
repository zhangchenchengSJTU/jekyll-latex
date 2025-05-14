---
title: 外三角范畴 (基本定义?)
author: Chencheng Zhang
layout: post
category: caprice
---

## 参考资料

外三角范畴 (external triangulated Category or simply extriangulated categotry) 的第一手资料见

- ([ArXiv 版本](https://arxiv.org/pdf/1605.05607)) [Hiroyuki Nakaoka (中岡宏行)](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=191233), & [Yann Palu](https://www.genealogy.math.ndsu.nodak.edu/id.php?id=153573). (2017). Mutation via Hovey twin cotorsion pairs and model structures in extriangulated categories.

若干[应用](https://arxiv.org/pdf/2307.10019)与推广: [AR 理论](https://www.ams.org/journals/btran/2024-11-08/S2330-0000-2024-00159-0/S2330-0000-2024-00159-0.pdf), [Tilting](https://link.springer.com/article/10.1007/s11464-020-0811-7), [张量三角范畴](https://arxiv.org/pdf/2502.18257), [心](https://arxiv.org/pdf/1702.00244), [dg 范畴](https://arxiv.org/pdf/2402.10694), 等等.

## 定义

{% abs %}
外三角范畴兼有[正合范畴](Exact_Cat)与[三角范畴](Tri_Cat_Def)的特性, 但绝非简单的混合:

- 三角范畴与正合范畴可视作特殊的外三角范畴;
- 也存在既非三角范畴亦非正合范畴的外三角范畴.

本小结介绍外三角范畴的定义.
{% endabs %}

约定所有范畴 ($𝒞$) 都是加法范畴. 外三角范畴的基本资料是 $(𝒞, 𝔼, 𝔰)$.

### 扩张结构

{% def %}
(带扩张的加法范畴 $(𝒞 , 𝔼)$). $𝒞$ 上的一个扩张结构是指双加法函子
$$\begin{equation}
𝔼 : 𝒞^{\mathrm{op}} × 𝒞 → 𝐀𝐛 ,\quad (X,Y) ↦ 𝔼 (X,Y).
\end{equation}$$
若无混淆, 简单地记群同态

1. $𝔼(f,Y) := f^∗$,
2. $𝔼 (X, g) := g_∗$.

依照双加法函子的定义, $f^∗ g_∗ = 𝔼 (f,g) = g_∗ f^∗$.
{% tikz %}

% https://q.uiver.app/#q=WzAsOCxbMSwxLCJcXG1hdGhiYiBFKFgsWSkiXSxbMiwxLCJcXG1hdGhiYiBFKFgsWScpIl0sWzEsMiwiXFxtYXRoYmIgRShYJyxZKSJdLFsyLDIsIlxcbWF0aGJiIEUoWCcsWScpIl0sWzEsMCwiWSJdLFsyLDAsIlknIl0sWzAsMSwiWCJdLFswLDIsIlgnIl0sWzAsMSwiZ19cXGFzdCJdLFsyLDMsImdfXFxhc3QiXSxbMSwzLCJmXlxcYXN0Il0sWzAsMiwiZl5cXGFzdCJdLFs0LDUsImciXSxbNyw2LCJmIl1d
\begin{tikzcd}[ampersand replacement=\&]
	\& Y \& {Y'} \\
	X \& {\mathbb E(X,Y)} \& {\mathbb E(X,Y')} \\
	{X'} \& {\mathbb E(X',Y)} \& {\mathbb E(X',Y')}
	\arrow["g", from=1-2, to=1-3]
	\arrow["{g_\ast}", from=2-2, to=2-3]
	\arrow["{f^\ast}", from=2-2, to=3-2]
	\arrow["{f^\ast}", from=2-3, to=3-3]
	\arrow["f", from=3-1, to=2-1]
	\arrow["{g_\ast}", from=3-2, to=3-3]
\end{tikzcd}
{% endtikz %}
{% enddef %}

{% def %}
(扩张元). 对 $δ ∈ 𝔼 (X,Y)$, 记 $(Y, δ , X)$ 是 $(𝒞 , 𝔼)$ 的扩张元. 请注意朝向.
{% enddef %}

{% note %}
将 $(𝒞 , 𝔼)$ 想象作 $(𝐀𝐛 , \mathrm{Ext}^1)$; $(Y, δ, X)$ 类比作 $0 → Y → E → X → 0$ 类型的短正合列.
{% endnote %}

{% prop %}
(加群结构). 记 $Δ := \binom 11$ 与 $∇ := (1,1)$, 定义 Baer 和
$$\begin{equation}
∇_∗ Δ ^∗ : 𝔼(X ⊕ X, Y ⊕ Y) → 𝔼(X,Y),\quad δ _1 ⊕ δ _2 ↦  δ _1 + δ _2.
\end{equation}$$
{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbMSwxLCJcXG1hdGhiYiBFKFhcXG9wbHVzIFgsWVxcb3BsdXMgWSkiXSxbMiwxLCJcXG1hdGhiYiBFKFhcXG9wbHVzIFgsWSkiXSxbMSwyLCJcXG1hdGhiYiBFKFgsWVxcb3BsdXMgWSkiXSxbMiwyLCJcXG1hdGhiYiBFKFgsWSkiXSxbMSwwLCJZXFxvcGx1cyBZIl0sWzIsMCwiWSJdLFswLDEsIlhcXG9wbHVzIFgiXSxbMCwyLCJYIl0sWzAsMCwiXFxkZWx0YSBfMSBcXG9wbHVzIFxcZGVsdGEgXzIiXSxbMCwxLCJcXG5hYmxhX1xcYXN0Il0sWzIsMywiXFxuYWJsYV9cXGFzdCJdLFsxLDMsIlxcRGVsdGFeXFxhc3QiXSxbMCwyLCJcXERlbHRhXlxcYXN0Il0sWzQsNSwiXFxuYWJsYSJdLFs3LDYsIlxcRGVsdGEiXV0=
\begin{tikzcd}[ampersand replacement=\&]
	{\delta _1 \oplus \delta _2} \& {Y\oplus Y} \& Y \\
	{X\oplus X} \& {\mathbb E(X\oplus X,Y\oplus Y)} \& {\mathbb E(X\oplus X,Y)} \\
	X \& {\mathbb E(X,Y\oplus Y)} \& {\mathbb E(X,Y)}
	\arrow["\nabla", from=1-2, to=1-3]
	\arrow["{\nabla_\ast}", from=2-2, to=2-3]
	\arrow["{\Delta^\ast}", from=2-2, to=3-2]
	\arrow["{\Delta^\ast}", from=2-3, to=3-3]
	\arrow["\Delta", from=3-1, to=2-1]
	\arrow["{\nabla_\ast}", from=3-2, to=3-3]
\end{tikzcd}
{% endtikz %}

特别地, $(δ_1, -δ_1)$ 的像是 $0$ 元.
{% endprop %}

### 扩张的实现

{% def %}
($[→  → ]$). 对任意对象 $X$ 与 $Y$, 定义 $[X,Y]$ 如下:

- 考虑三项映射链 $[X \overset a → Y \overset b → Z]$ 构成的类;
- 称 $[X \overset a → Y \overset b → Z]$ 与 $[X \overset {a'} → Y' \overset {b'} → Z]$ 等价, 若存在同构 $φ$ 使得有交换图
  {% tikz %}
  % https://q.uiver.app/#q=WzAsNixbMCwwLCJYIl0sWzIsMCwiWSJdLFs0LDAsIloiXSxbMCwxLCJYIl0sWzIsMSwiWSciXSxbNCwxLCJaIl0sWzAsMSwiYSJdLFsxLDIsImIiXSxbMiw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDQsImEnIl0sWzQsNSwiYiciXSxbMCwzLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDQsIlxcdmFycGhpICJdLFsxLDQsIlxcc2ltZXEgIiwyLHsib2Zmc2V0IjoxLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
  \begin{tikzcd}[ampersand replacement=\&]
  X \&\& Y \&\& Z \\
  X \&\& {Y'} \&\& Z
  \arrow["a", from=1-1, to=1-3]
  \arrow[equals, from=1-1, to=2-1]
  \arrow["b", from=1-3, to=1-5]
  \arrow["{\varphi }", from=1-3, to=2-3]
  \arrow["{\simeq }"', shift right, draw=none, from=1-3, to=2-3]
  \arrow[equals, from=1-5, to=2-5]
  \arrow["{a'}", from=2-1, to=2-3]
  \arrow["{b'}", from=2-3, to=2-5]
  \end{tikzcd}
  {% endtikz %}

以上, $[X,Y]$ 定义作类的等价类.
\\
\\
为方便操作,

- 形式地记 $[X,Y]$ 中的 $0$ 是可裂短正合列所在的等价类 $[X → X ⊕ Y → Y]$.
- 约定 $[,]$ 对直和封闭. 对 $[X_i → Y_i → Z_i]$ ($i=1,2$), 等价类与直和交换:
  $$\begin{align}
  & [X_1 → Y_1 → Z_1] ⊕ [X_2 → Y_2 → Z_2]\\
  = \ &[X_1 ⊕ X_2 → Y_1 ⊕ Y_2 → Z_1 ⊕ Z_2]\\
  ∈ \ &[X_1 ⊕ X_2, Z_1 ⊕ Z_2]
  \end{align}$$
  相应的态射也是直和关系, 此处从略.
{% enddef %}

{% def %}
(实现). 扩张结构 $(𝒞 , 𝔼)$ 的一个实现是指对应 $𝔰$, 其类型是
$$\begin{equation}
𝔰 : 𝔼 (Y,X) → [X,Y],\quad (X, δ, Y) ↦ 𝔰 (δ) = [X → E → Y].
\end{equation}$$

同时, 对任意推出 $f_∗$, 总存在 $φ$ 使得右侧是 $[,]$ 中的交换图:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzMsMCwiWCJdLFs0LDAsIlkiXSxbNSwwLCJaIl0sWzMsMSwiWCciXSxbNCwxLCJZJyJdLFs1LDEsIloiXSxbMiwxLCJbWCcsWl0iXSxbMiwwLCJbWCxaXSJdLFsxLDAsIlxcbWF0aGJiIEVbWixYXSJdLFsxLDEsIlxcbWF0aGJiIEVbWixYJ10iXSxbMCwwLCJcXGRlbHRhICJdLFswLDEsImZfXFxhc3QgXFxkZWx0YSAiXSxbNiwwLCJcXG1hdGhmcmFrIHMoXFxkZWx0YSkiXSxbNiwxLCJcXG1hdGhmcmFrIHMoZl9cXGFzdFxcZGVsdGEpIl0sWzAsMSwiYSJdLFsxLDIsImIiXSxbMiw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDQsImEnIl0sWzQsNSwiYiciXSxbMSw0LCJcXGV4aXN0cyBcXHZhcnBoaSAiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCwzLCJmIl0sWzgsOSwiZl9cXGFzdCJdLFsxMCwxMSwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFs4LDcsIlxcbWF0aGZyYWsgcyJdLFs5LDYsIlxcbWF0aGZyYWsgcyJdLFsxMiwxMywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
	{\delta } \& {\mathbb E[Z,X]} \& {[X,Z]} \& X \& Y \& Z \& {\mathfrak s(\delta)} \\
	{f_\ast \delta } \& {\mathbb E[Z,X']} \& {[X',Z]} \& {X'} \& {Y'} \& Z \& {\mathfrak s(f_\ast\delta)}
	\arrow[maps to, from=1-1, to=2-1]
	\arrow["{\mathfrak s}", from=1-2, to=1-3]
	\arrow["{f_\ast}", from=1-2, to=2-2]
	\arrow["a", from=1-4, to=1-5]
	\arrow["f", from=1-4, to=2-4]
	\arrow["b", from=1-5, to=1-6]
	\arrow["{\exists \varphi }", dashed, from=1-5, to=2-5]
	\arrow[equals, from=1-6, to=2-6]
	\arrow[maps to, from=1-7, to=2-7]
	\arrow["{\mathfrak s}", from=2-2, to=2-3]
	\arrow["{a'}", from=2-4, to=2-5]
	\arrow["{b'}", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

对于拉回的要求对偶.
{% enddef %}

{% note %}
实现 $𝔰$ 不能简单地看作函子 (例如 $𝔰 (f_∗)$) 的
{% endnote %}
