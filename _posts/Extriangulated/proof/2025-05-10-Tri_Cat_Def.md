---
title: 三角范畴的定义, 八面体公理
author: Chencheng Zhang
layout: post
category: note
---

* toc
{: toc}

## 预三角范畴, 三角范畴

{% def %}
(预三角范畴). 给定以下资料

- 加法范畴 $𝒞$,
- 自同构函子 $T : 𝒞 ≃ 𝒞$ (平移函子),
- 三角类 $ℰ = \{X \xrightarrow u Y\xrightarrow vZ\xrightarrow w TX\}$.

称 $(𝒞 , T, ℰ)$ 是预三角范畴, 若三角类满足以下关系.

- (TR 1-1, $ℰ$ 对同构封闭). 任给定态射的交换图:
  {% tikz %}
  % https://q.uiver.app/#q=WzAsOCxbMCwwLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzAsMV0sWzEsMl0sWzIsM10sWzMsNCwiXFxzaW0gIl0sWzAsNSwiXFxzaW0gIl0sWzUsNl0sWzYsN10sWzcsNF0sWzIsNywiXFxzaW0gIl0sWzEsNiwiXFxzaW0gIl1d
  \begin{tikzcd}[ampersand replacement=\&]
  \bullet \& \bullet \& \bullet \& \bullet \\
  \bullet \& \bullet \& \bullet \& \bullet
  \arrow[from=1-1, to=1-2]
  \arrow["{\sim }", from=1-1, to=2-1]
  \arrow[from=1-2, to=1-3]
  \arrow["{\sim }", from=1-2, to=2-2]
  \arrow[from=1-3, to=1-4]
  \arrow["{\sim }", from=1-3, to=2-3]
  \arrow["{\sim }", from=1-4, to=2-4]
  \arrow[from=2-1, to=2-2]
  \arrow[from=2-2, to=2-3]
  \arrow[from=2-3, to=2-4]
  \end{tikzcd}
  {% endtikz %}

   其纵向是同构. 若某横行属于 $ℰ$, 则另一横行亦属于 $ℰ$
- (TR 1-2, 态射可嵌入三角). 任意态射 $f ∈ 𝖬𝗈𝗋 (𝒞)$ 可以嵌入好三角 $[∙ \xrightarrow f ∙ → ∙ → ∙]$.
- (TR 1-3, 平凡三角). 对任意 $X$, $[X = X → 0 → TX] ∈ ℰ$, 称作平凡三角.
- (TR 2, 顺时针旋转). 若 $[X \xrightarrow u Y\xrightarrow vZ\xrightarrow w TX] ∈ ℰ$, 则 $[Y\xrightarrow vZ\xrightarrow w TX \xrightarrow {-Tu} TY] ∈ ℰ$.
- (TR 3, 二推三原则). 态射范畴的态射 ($2 × 2$ 交换方块) 可以嵌入三角射 (TR 1-2 的态射表述).
  {% tikz %}
  % https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzEsMCwiWSJdLFsyLDAsIloiXSxbMywwLCJUWCJdLFszLDEsIlQoWCcpIl0sWzAsMSwiWCciXSxbMSwxLCJZJyJdLFsyLDEsIlonIl0sWzAsMV0sWzEsMl0sWzMsNCwiVGYiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCw1LCJmIiwyXSxbNSw2XSxbNiw3XSxbNyw0XSxbMiw3LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSw2LCJnIl0sWzIsM11d
  \begin{tikzcd}[ampersand replacement=\&]
  X \& Y \& Z \& TX \\
  {X'} \& {Y'} \& {Z'} \& {T(X')}
  \arrow[from=1-1, to=1-2]
  \arrow["f"', from=1-1, to=2-1]
  \arrow[from=1-2, to=1-3]
  \arrow["g", from=1-2, to=2-2]
  \arrow[from=1-3, to=1-4]
  \arrow[dashed, from=1-3, to=2-3]
  \arrow["Tf", dashed, from=1-4, to=2-4]
  \arrow[from=2-1, to=2-2]
  \arrow[from=2-2, to=2-3]
  \arrow[from=2-3, to=2-4]
  \end{tikzcd}
  {% endtikz %}

规范一些名词:

- (好三角). 指 $ℰ$ 中元素, 由六元组 $(X,Y,Z,u,v,w)$ 表示;
- (三角射). 好三角的作成的交换图, 形如 ($TX → TX'$ 必须是 $Tf$)
  {% tikz %}
  % https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzEsMCwiWSJdLFsyLDAsIloiXSxbMywwLCJUWCJdLFswLDEsIlgnIl0sWzEsMSwiWSciXSxbMiwxLCJaJyJdLFszLDEsIlRYJyJdLFswLDQsImYiXSxbMSw1LCJnIl0sWzIsNiwiaCJdLFszLDcsIlQoZikiXSxbMCwxLCJ1Il0sWzEsMiwidiJdLFsyLDMsInciXSxbNCw1LCJ1JyJdLFs1LDYsInYnIl0sWzYsNywidyciXV0=
  \begin{tikzcd}[ampersand replacement=\&]
  X \& Y \& Z \& TX \\
  {X'} \& {Y'} \& {Z'} \& {TX'}
  \arrow["u", from=1-1, to=1-2]
  \arrow["f", from=1-1, to=2-1]
  \arrow["v", from=1-2, to=1-3]
  \arrow["g", from=1-2, to=2-2]
  \arrow["w", from=1-3, to=1-4]
  \arrow["h", from=1-3, to=2-3]
  \arrow["{T(f)}", from=1-4, to=2-4]
  \arrow["{u'}", from=2-1, to=2-2]
  \arrow["{v'}", from=2-2, to=2-3]
  \arrow["{w'}", from=2-3, to=2-4]
  \end{tikzcd}
  {% endtikz %}
- (平移函子, 悬挂函子). 经常使用 $Σ$ 与 $[1]$ 表示平移.

{% enddef %}

{% note %}
以下是一些注意事项.

1. 请注意 TR 2 中的符号. 顺时针旋转改变符号, 但对三角射而言, $Tf$ 不加负号.
2. TR3 中延拓的态射未必唯一.
3. 函子 $T^2$ 给出三角范畴的同构, 但这不以为着对 $\triangle ∈ ℰ$, 有三角同构 $Δ ≃ T^2 Δ$.

{% endnote %}

{% prop %}
由定义, 以下是预三角范畴的性质.

1. (逆平移函子). 平移函子是范畴 $𝒞$ 的自同构, 依照 [NBGC](NBGC) 公理选定骨架, 从而构造逆函子 $T^{-1}$. 一般地, 只能找到 $G$ 使得有自然同构 $GF ≃ \mathrm{id}$ 与 $FG ≃ \mathrm{id}$.
2. (三角关于逆时针旋转封闭). 使用类的选则公理.
   {% tikz %}
   % https://q.uiver.app/#q=WzAsMTUsWzAsMSwiWCJdLFsxLDEsIlkiXSxbMiwxLCJaIl0sWzMsMSwiVFgiXSxbMCwyLCJZIl0sWzEsMiwiWiJdLFsyLDIsIlRYIl0sWzMsMiwiVFkiLFszNTksMTAwLDYwLDFdXSxbMCwwLCJUXnstMX1aIixbMzU5LDEwMCw2MCwxXV0sWzEsMCwiWCJdLFsyLDAsIlkiXSxbMywwLCJaIl0sWzQsMSwiXFxtYXRoc2NyIEUiXSxbNCwyLCJcXG1hdGhzY3IgRSJdLFs0LDAsIlxcbWF0aHNjciBFIl0sWzAsMSwidSJdLFsxLDIsInYiXSxbMiwzLCJ3Il0sWzQsNSwidiJdLFs1LDYsInciXSxbNiw3LCItVHUiLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFs4LDksIi1UXnstMX13IiwwLHsiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbOSwxMCwidSJdLFsxMCwxMSwidiJdLFsxMiwxMywiXFx0ZXh0e+mhuuaXtumSiH0iLDAseyJsZXZlbCI6Mn1dLFsxMiwxNCwiXFx0ZXh0e+mAhuaXtumSiH0iLDIseyJsZXZlbCI6Mn1dLFsxMSwxNCwiXFxpbiAiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywxMiwiXFxpbiAiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNywxMywiXFxpbiAiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
   \begin{tikzcd}[ampersand replacement=\&]
   \color{rgb,255:red,255;green,51;blue,54}{T^{-1}Z} \& X \& Y \& Z \& {\mathscr E} \\
   X \& Y \& Z \& TX \& {\mathscr E} \\
   Y \& Z \& TX \& \color{rgb,255:red,255;green,51;blue,54}{TY} \& {\mathscr E}
   \arrow["{-T^{-1}w}", color={rgb,255:red,255;green,51;blue,54}, from=1-1, to=1-2]
   \arrow["u", from=1-2, to=1-3]
   \arrow["v", from=1-3, to=1-4]
   \arrow["{\in }"{description}, draw=none, from=1-4, to=1-5]
   \arrow["u", from=2-1, to=2-2]
   \arrow["v", from=2-2, to=2-3]
   \arrow["w", from=2-3, to=2-4]
   \arrow["{\in }"{description}, draw=none, from=2-4, to=2-5]
   \arrow["{\text{逆时针}}"', Rightarrow, from=2-5, to=1-5]
   \arrow["{\text{顺时针}}", Rightarrow, from=2-5, to=3-5]
   \arrow["v", from=3-1, to=3-2]
   \arrow["w", from=3-2, to=3-3]
   \arrow["{-Tu}", color={rgb,255:red,255;green,51;blue,54}, from=3-3, to=3-4]
   \arrow["{\in }"{description}, draw=none, from=3-4, to=3-5]
   \end{tikzcd}
   {% endtikz %}
3. (嵌入唯一). TR 1-2 中态射嵌入的三角 (在同构的意义下) 是唯一的.
4. (嵌入无向). TR 1-2 中的态射可以嵌入三角的任意位置.
5. ([上同调函子](Yoneda_Homological)). 米田嵌入是上同调函子, 换言之, 任意可表函子导出长正合列.
6. 三角中的单态射是可裂单, 满态射是可裂满.

{% endprop %}

称预三角范畴 $(𝒞 , [1], ℰ)$ 是三角范畴, 若其满足以下公理.

{% def %}
(八面体公理). 若下图中 $r_1$, $r_2$ 与 $c_3$ 均为好三角, 则 $c_2$ 是好三角且所有方块交换:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTcsWzEsMSwiWCJdLFsyLDEsIlkiXSxbMywxLCJXIl0sWzQsMSwiWFsxXSJdLFsxLDIsIlgiXSxbMiwyLCJaIl0sWzMsMiwiUiJdLFs0LDIsIlhbMV0iXSxbMiwzLCJTIl0sWzMsMywiUyJdLFsyLDQsIllbMV0iXSxbMyw0LCJXWzFdIl0sWzAsMSwicl8xIl0sWzAsMiwicl8yIl0sWzIsMCwiY18yIl0sWzMsMCwiY18zIl0sWzQsMywiWVsxXSJdLFswLDEsInUiXSxbMSwyLCJ2Il0sWzIsMywidyJdLFs0LDUsIngiXSxbNSw2LCJ5Il0sWzYsNywieiJdLFswLDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsNywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSw1LCJhIl0sWzUsOCwiYiJdLFsyLDYsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDksIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs5LDExLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOCwxMCwiYyJdLFsxMCwxMSwidlsxXSIsMCx7ImNvbG91ciI6WzM1MiwxMDAsNjBdfSxbMzUyLDEwMCw2MCwxXV0sWzgsOSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOSwxNiwiYyJdLFs3LDE2LCJ1WzFdIiwwLHsiY29sb3VyIjpbMzUyLDEwMCw2MF19LFszNTIsMTAwLDYwLDFdXV0=
\begin{tikzcd}
&& {c_2} & {c_3} \\
{r_1} & X & Y & W & {X[1]} \\
{r_2} & X & Z & R & {X[1]} \\
&& S & S & {Y[1]} \\
&& {Y[1]} & {W[1]}
\arrow["u", from=2-2, to=2-3]
\arrow[equals, from=2-2, to=3-2]
\arrow["v", from=2-3, to=2-4]
\arrow["a", from=2-3, to=3-3]
\arrow["w", from=2-4, to=2-5]
\arrow[dashed, from=2-4, to=3-4]
\arrow[equals, from=2-5, to=3-5]
\arrow["x", from=3-2, to=3-3]
\arrow["y", from=3-3, to=3-4]
\arrow["b", from=3-3, to=4-3]
\arrow["z", from=3-4, to=3-5]
\arrow[dashed, from=3-4, to=4-4]
\arrow["{u[1]}", color={red}, from=3-5, to=4-5]
\arrow[equals, from=4-3, to=4-4]
\arrow["c", from=4-3, to=5-3]
\arrow["c", from=4-4, to=4-5]
\arrow[dashed, from=4-4, to=5-4]
\arrow["{v[1]}", color={red}, from=5-3, to=5-4]
\end{tikzcd}
{% endtikz %}

红色箭头是题设中的, 强调了 $u[1]$ 与 $v[1]$ 的符号.
{% enddef %}

{% note %}
由 TR 1-2 (态射嵌入三角), 可精简八面体公理的表述: 若有态射 {% tikzinline %}
% https://q.uiver.app/#q=WzAsMyxbMCwwLCJYIl0sWzEsMCwiWSJdLFsxLDEsIloiXSxbMCwxXSxbMSwyXV0=
\begin{tikzcd}
X & Y \\
& Z
\arrow[from=1-1, to=1-2]
\arrow[from=1-2, to=2-2]
\end{tikzcd}
{% endtikzinline %}, 则可以向下且向右地补全八面体公理的描述图.
{% endnote %}

将好三角横向放置的三项 $[X → Y → Z]$ 类比作 ses, 回顾米田积 $\mathrm{Ext}^1$ 的函子性.

- 八面体公理对 $Y$ 处态射做了手脚. 根本上是 {% tikzinline %} % https://q.uiver.app/#q=WzAsMyxbMSwxLCJcXGJ1bGxldCJdLFswLDAsIlxcYnVsbGV0Il0sWzEsMCwiXFxidWxsZXQiXSxbMSwyXSxbMiwwXV0=
\begin{tikzcd}
	\bullet & \bullet \\
	& \bullet
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-2, to=2-2]
\end{tikzcd} {% endtikzinline %} 对做分析.
- 类似 ses 的推出, 余积变换对 $X → ?$ 做了手脚. 根本上是对 {% tikzinline %} % https://q.uiver.app/#q=WzAsMyxbMCwxLCJcXGJ1bGxldCJdLFswLDAsIlxcYnVsbGV0Il0sWzEsMCwiXFxidWxsZXQiXSxbMSwyXSxbMSwwXV0=
\begin{tikzcd}
	\bullet & \bullet \\
	\bullet
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-1, to=2-1]
\end{tikzcd} {% endtikzinline %} 做分析.
- 类似 ses 的拉回, 基变换对 $? → Z$ 做了手脚. 根本上是对 {% tikzinline %} % https://q.uiver.app/#q=WzAsMyxbMCwxLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzEsMCwiXFxidWxsZXQiXSxbMiwxXSxbMCwxXV0=
\begin{tikzcd}
	& \bullet \\
	\bullet & \bullet
	\arrow[from=1-2, to=2-2]
	\arrow[from=2-1, to=2-2]
\end{tikzcd} {% endtikzinline %} 做分析.

每一项命题均有完整版本 (三个好三角推一个好三角) 与精简版本 (两个态射延拓成全图)

{% prop %}
(基变换, 余积变换). 以下是八面体公理的等价形式 (请注意符号). 以下默认初始三角 $[X → Y → W]$ 的坐标是 $(r;c) = (1;[1,2,3])$.

1. (基变换, 完整版本). 若下图中 $r_1$, $r_2$ 与 $c_3$ 均为好三角, 则 $c_2$ 是好三角且所有方块交换:

   {% tikz %}
   % https://q.uiver.app/#q=WzAsMTgsWzEsMiwiWCJdLFsyLDIsIlkiXSxbMywyLCJXIixbMTE5LDEwMCw2MCwxXV0sWzQsMiwiWFsxXSJdLFsxLDMsIlgiLFsxMTksMTAwLDYwLDFdXSxbMiwzLCJaIixbMTE5LDEwMCw2MCwxXV0sWzMsMywiUiIsWzExOSwxMDAsNjAsMV1dLFs0LDMsIlhbMV0iLFsxMTksMTAwLDYwLDFdXSxbMiw0LCJTIl0sWzMsNCwiUyJdLFswLDIsInJfMSJdLFswLDMsInJfMiJdLFsyLDAsImNfMiJdLFszLDAsImNfMyJdLFs0LDQsIllbMV0iXSxbMiwxLCJTWy0xXSJdLFszLDEsIlNbLTFdIl0sWzAsNCwiXFxidWxsZXQiXSxbMCwxLCJ1Il0sWzEsMiwidiJdLFsyLDMsInciXSxbNCw1LCJ4IiwwLHsiY29sb3VyIjpbMTE5LDEwMCw2MF19LFsxMTksMTAwLDYwLDFdXSxbNSw2LCJ5IiwwLHsiY29sb3VyIjpbMTE5LDEwMCw2MF19LFsxMTksMTAwLDYwLDFdXSxbNiw3LCJ6IiwwLHsiY29sb3VyIjpbMTE5LDEwMCw2MF19LFsxMTksMTAwLDYwLDFdXSxbMCw0LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDcsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzgsOSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOSwxNCwiLXFbMV0iLDAseyJjb2xvdXIiOlszNTIsMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fSxbMzUyLDEwMCw2MCwxXV0sWzcsMTQsInVbMV0iLDAseyJjb2xvdXIiOlszNTIsMTAwLDYwXX0sWzM1MiwxMDAsNjAsMV1dLFsxNSwxNiwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTUsMSwicSIsMCx7ImNvbG91ciI6WzM1MiwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFszNTIsMTAwLDYwLDFdXSxbMSw1LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSw4LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTYsMiwiXFxhbHBoYSJdLFsyLDYsIlxcYmV0YSIsMCx7ImNvbG91ciI6WzExOSwxMDAsNjBdfSxbMTE5LDEwMCw2MCwxXV0sWzYsOSwiXFxnYW1tYSJdXQ==
   \begin{tikzcd}
   && {c_2} & {c_3} \\
   && {S[-1]} & {S[-1]} \\
   {r_1} & X & Y & \color{rgb,255:red,54;green,255;blue,51}{W} & {X[1]} \\
   {r_2} & \color{rgb,255:red,54;green,255;blue,51}{X} & \color{rgb,255:red,54;green,255;blue,51}{Z} & \color{rgb,255:red,54;green,255;blue,51}{R} & \color{rgb,255:red,54;green,255;blue,51}{X[1]} \\
   \bullet && S & S & {Y[1]}
   \arrow[equals, from=2-3, to=2-4]
   \arrow["q", color={rgb,255:red,255;green,51;blue,78}, dashed, from=2-3, to=3-3]
   \arrow["\alpha", from=2-4, to=3-4]
   \arrow["u", from=3-2, to=3-3]
   \arrow[equals, from=3-2, to=4-2]
   \arrow["v", from=3-3, to=3-4]
   \arrow[dashed, from=3-3, to=4-3]
   \arrow["w", from=3-4, to=3-5]
   \arrow["\beta", color={rgb,255:red,54;green,255;blue,51}, from=3-4, to=4-4]
   \arrow[equals, from=3-5, to=4-5]
   \arrow["x", color={rgb,255:red,54;green,255;blue,51}, from=4-2, to=4-3]
   \arrow["y", color={rgb,255:red,54;green,255;blue,51}, from=4-3, to=4-4]
   \arrow[dashed, from=4-3, to=5-3]
   \arrow["z", color={rgb,255:red,54;green,255;blue,51}, from=4-4, to=4-5]
   \arrow["\gamma", from=4-4, to=5-4]
   \arrow["{u[1]}", color={rgb,255:red,255;green,51;blue,78}, from=4-5, to=5-5]
   \arrow[equals, from=5-3, to=5-4]
   \arrow["{-q[1]}", color={rgb,255:red,255;green,51;blue,78}, dashed, from=5-4, to=5-5]
   \end{tikzcd}
   {% endtikz %}

2. (基变换, 精简版本). 基变换中, 绿色部分 (横三角 + 纵箭头) 补成全图.
3. (基变换, 完整版本). 余基变换中, 若下图中 $r_2$, $r_3$ 与 $c_1$ 均为好三角, 则 $c_2$ 是好三角且所有方块交换:
   {% tikz %}
   % https://q.uiver.app/#q=WzAsMTcsWzIsMSwiUiJdLFszLDEsIlIiXSxbMiwyLCJYIixbMTE5LDEwMCw2MCwxXV0sWzMsMiwiWSIsWzExOSwxMDAsNjAsMV1dLFs0LDIsIlciLFsxMTksMTAwLDYwLDFdXSxbMywzLCJaIl0sWzQsMywiVyJdLFswLDIsInJfMiJdLFswLDMsInJfMyJdLFsyLDAsImNfMSJdLFszLDAsImNfMiJdLFsxLDIsIldbLTFdIixbMTE5LDEwMCw2MCwxXV0sWzEsMywiV1stMV0iXSxbMiwzLCJTIixbMTE5LDEwMCw2MCwxXV0sWzMsNCwiUlsxXSJdLFsyLDQsIlJbMV0iXSxbNCw0LCJYWzFdIl0sWzIsMywidSIsMCx7ImNvbG91ciI6WzExOSwxMDAsNjBdfSxbMTE5LDEwMCw2MCwxXV0sWzMsNCwidiIsMCx7ImNvbG91ciI6WzExOSwxMDAsNjBdfSxbMTE5LDEwMCw2MCwxXV0sWzUsNiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSwzLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMyw1LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTEsMiwiLXdbLTFdIiwwLHsiY29sb3VyIjpbMTE5LDEwMCw2MF19LFsxMTksMTAwLDYwLDFdXSxbNCw2LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMSwxMiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTIsMTNdLFsxMyw1XSxbMiwxMywieSIsMCx7ImNvbG91ciI6WzExOSwxMDAsNjBdfSxbMTE5LDEwMCw2MCwxXV0sWzE1LDE0LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDIsIngiXSxbMTMsMTUsInoiXSxbNSwxNCwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsMTYsInciLDAseyJjb2xvdXIiOlszNTIsMTAwLDYwXX0sWzM1MiwxMDAsNjAsMV1dLFsxNCwxNiwieFsxXSIsMCx7ImNvbG91ciI6WzM1MiwxMDAsNjBdfSxbMzUyLDEwMCw2MCwxXV0sWzAsMSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
   \begin{tikzcd}
   && {c_1} & {c_2} \\
   && R & R \\
   {r_2} & \color{rgb,255:red,54;green,255;blue,51}{W[-1]} & \color{rgb,255:red,54;green,255;blue,51}{X} & \color{rgb,255:red,54;green,255;blue,51}{Y} & \color{rgb,255:red,54;green,255;blue,51}{W} \\
   {r_3} & {W[-1]} & \color{rgb,255:red,54;green,255;blue,51}{S} & Z & W \\
   && {R[1]} & {R[1]} & {X[1]}
   \arrow[equals, from=2-3, to=2-4]
   \arrow["x", from=2-3, to=3-3]
   \arrow[dashed, from=2-4, to=3-4]
   \arrow["{-w[-1]}", color={rgb,255:red,54;green,255;blue,51}, from=3-2, to=3-3]
   \arrow[equals, from=3-2, to=4-2]
   \arrow["u", color={rgb,255:red,54;green,255;blue,51}, from=3-3, to=3-4]
   \arrow["y", color={rgb,255:red,54;green,255;blue,51}, from=3-3, to=4-3]
   \arrow["v", color={rgb,255:red,54;green,255;blue,51}, from=3-4, to=3-5]
   \arrow[dashed, from=3-4, to=4-4]
   \arrow[equals, from=3-5, to=4-5]
   \arrow[from=4-2, to=4-3]
   \arrow[from=4-3, to=4-4]
   \arrow["z", from=4-3, to=5-3]
   \arrow[equals, from=4-4, to=4-5]
   \arrow[dashed, from=4-4, to=5-4]
   \arrow["w", color={rgb,255:red,255;green,51;blue,78}, from=4-5, to=5-5]
   \arrow[equals, from=5-3, to=5-4]
   \arrow["{x[1]}", color={rgb,255:red,255;green,51;blue,78}, from=5-4, to=5-5]
   \end{tikzcd}
   {% endtikz %}

4. (基变换, 精简版本). 余基变换中, 绿色部分 (横三角 + 纵箭头) 补成全图.

{% endprop %}

## 八面体公理是同伦的推出拉回

### 拓扑学背景

{% ex %}
(映射锥). 拓扑地看, 态射 $f:X → Y$ 对应的映射锥如下:
{% tikzmathcha %}


\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,158); %set diagram left start at 0, and has height of 158

%Shape: Plaque [id:dp5201993590706961] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (291.55,23) .. controls (296.35,27.02) and (300.23,23.66) .. (300.23,15.49) -- (326.25,37.33) .. controls (326.25,45.5) and (330.14,55.37) .. (334.93,59.39) -- (334.93,137.46) .. controls (330.14,133.44) and (326.25,136.8) .. (326.25,144.96) -- (300.23,123.13) .. controls (300.23,114.96) and (296.35,105.09) .. (291.55,101.07) -- cycle ;
%Shape: Arc [id:dp740636676918955] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (324.42,99.6) .. controls (324.42,99.6) and (324.42,99.6) .. (324.42,99.6) .. controls (320.95,109.13) and (313.14,108.19) .. (306.96,97.49) .. controls (300.78,86.79) and (298.59,70.39) .. (302.06,60.86) .. controls (304.11,55.21) and (307.7,53.24) .. (311.56,54.8) -- (313.24,80.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (324.42,99.6) .. controls (324.42,99.6) and (324.42,99.6) .. (324.42,99.6) .. controls (320.95,109.13) and (313.14,108.19) .. (306.96,97.49) .. controls (300.78,86.79) and (298.59,70.39) .. (302.06,60.86) .. controls (304.11,55.21) and (307.7,53.24) .. (311.56,54.8) ;  
%Shape: Rectangle [id:dp8523430347937806] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (238,72.16) -- (238,101.78) -- (221.67,88.08) -- (221.67,58.46) -- cycle ;
%Curve Lines [id:da7069216467748074] 
\draw    (175.67,77.46) .. controls (215.67,47.46) and (265.67,53.46) .. (309,54) ;
%Curve Lines [id:da6986743226068597] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (175.67,77.46) .. controls (248.67,97.46) and (282.67,88.46) .. (301.67,85.46) ;
%Shape: Arc [id:dp811741661991604] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (310.44,54.44) .. controls (313.42,55.13) and (316.65,57.99) .. (319.52,62.97) .. controls (325.7,73.67) and (327.89,90.07) .. (324.42,99.6) .. controls (322.53,104.81) and (319.33,106.89) .. (315.81,105.96) -- (313.24,80.23) -- cycle ; \draw   (310.44,54.44) .. controls (313.42,55.13) and (316.65,57.99) .. (319.52,62.97) .. controls (325.7,73.67) and (327.89,90.07) .. (324.42,99.6) .. controls (322.53,104.81) and (319.33,106.89) .. (315.81,105.96) ;  
%Curve Lines [id:da36434981328549343] 
\draw    (175.67,77.46) .. controls (218.67,72.46) and (278.67,68.46) .. (322,69) ;
%Straight Lines [id:da6034036608306048] 
\draw    (221.67,58.46) -- (238,72.16) ;
%Straight Lines [id:da13894193523401666] 
\draw    (238,72.16) -- (238,101.78) ;
%Curve Lines [id:da3023618220909856] 
\draw    (175.67,77.46) .. controls (235.67,106.46) and (281.67,117.46) .. (324.42,99.6) ;

% Text Node
\draw (362,64.4) node [anchor=north west][inner sep=0.75pt]    {$\mathrm{Cone} \ \left[\color[rgb]{0.96,0.65,0.14}{X} \ \xrightarrow{f} \ \color[rgb]{0.31,0.89,0.76}{Y}\right]$};


\end{tikzpicture}

{% endtikzmathcha %}
{% endex %}

{% ex %}
(映射筒). 拓扑地看, 态射 $f:X → Y$ 对应的映射筒如下:
{% tikzmathcha %}


\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,158); %set diagram left start at 0, and has height of 158

%Shape: Plaque [id:dp8357345624430728] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (311.55,23) .. controls (316.35,27.02) and (320.23,23.66) .. (320.23,15.49) -- (346.25,37.33) .. controls (346.25,45.5) and (350.14,55.37) .. (354.93,59.39) -- (354.93,137.46) .. controls (350.14,133.44) and (346.25,136.8) .. (346.25,144.96) -- (320.23,123.13) .. controls (320.23,114.96) and (316.35,105.09) .. (311.55,101.07) -- cycle ;
%Shape: Arc [id:dp4295145729878398] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (344.42,99.6) .. controls (344.42,99.6) and (344.42,99.6) .. (344.42,99.6) .. controls (340.95,109.13) and (333.14,108.19) .. (326.96,97.49) .. controls (320.78,86.79) and (318.59,70.39) .. (322.06,60.86) .. controls (325.53,51.33) and (333.35,52.27) .. (339.52,62.97) .. controls (345.6,73.49) and (347.82,89.52) .. (344.59,99.11) -- (333.24,80.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (344.42,99.6) .. controls (344.42,99.6) and (344.42,99.6) .. (344.42,99.6) .. controls (340.95,109.13) and (333.14,108.19) .. (326.96,97.49) .. controls (320.78,86.79) and (318.59,70.39) .. (322.06,60.86) .. controls (325.53,51.33) and (333.35,52.27) .. (339.52,62.97) .. controls (345.6,73.49) and (347.82,89.52) .. (344.59,99.11) ;  
%Shape: Rectangle [id:dp5307407676462352] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (258,72.16) -- (258,101.78) -- (241.67,88.08) -- (241.67,58.46) -- cycle ;
%Curve Lines [id:da8431359818164164] 
\draw    (240.84,57.36) .. controls (256.65,53.92) and (300.9,53.65) .. (329,54) ;
%Curve Lines [id:da7780289161704352] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (241.53,87.29) .. controls (254.82,89.23) and (307.19,87.74) .. (321.67,85.46) ;
%Shape: Arc [id:dp6431221609683067] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (330.44,54.44) .. controls (333.42,55.13) and (336.65,57.99) .. (339.52,62.97) .. controls (345.7,73.67) and (347.89,90.07) .. (344.42,99.6) .. controls (341.86,106.65) and (336.9,107.97) .. (332,103.84) -- (333.24,80.23) -- cycle ; \draw   (330.44,54.44) .. controls (333.42,55.13) and (336.65,57.99) .. (339.52,62.97) .. controls (345.7,73.67) and (347.89,90.07) .. (344.42,99.6) .. controls (341.86,106.65) and (336.9,107.97) .. (332,103.84) ;  
%Curve Lines [id:da47451449696150116] 
\draw    (258,72.16) .. controls (257.67,72.36) and (317.25,68.69) .. (342,69) ;
%Straight Lines [id:da7487812500514892] 
\draw    (241.67,58.46) -- (258,72.16) ;
%Straight Lines [id:da1805568826120123] 
\draw    (258,72.16) -- (258,101.78) ;
%Curve Lines [id:da24783965152706244] 
\draw    (257.42,101.81) .. controls (276.44,107.05) and (317.59,110.81) .. (344.42,99.6) ;
%Shape: Rectangle [id:dp394195741473198] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ] (186.17,71.07) -- (186.17,100.69) -- (169.84,86.98) -- (169.84,57.36) -- cycle ;
%Straight Lines [id:da4183715374083836] 
\draw    (169.84,57.36) -- (240.84,57.36) ;
%Straight Lines [id:da6995682946561381] 
\draw    (187,72.16) -- (258,72.16) ;
%Straight Lines [id:da17317067644135342] 
\draw    (187,101.78) -- (258,101.78) ;
%Straight Lines [id:da749473570975463] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (170.53,87.29) -- (241.53,87.29) ;

% Text Node
\draw (382,64.4) node [anchor=north west][inner sep=0.75pt]    {$\mathrm{Cyl} \ \left[\color[rgb]{0.96,0.65,0.14}{X} \ \xrightarrow{f} \ \color[rgb]{0.31,0.89,0.76}{Y}\right]$};


\end{tikzpicture}

{% endtikzmathcha %}
{% endex%}

{% ex %}
(悬挂). 依照 Puppe 的长纤维序列, $\mathrm{Cone}(i(f):Y\to \mathrm{Cone}(f))$ 对应 $X$ 的悬挂:
{% tikzmathcha %}



\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,205); %set diagram left start at 0, and has height of 205

%Shape: Plaque [id:dp4672044207967565] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (202.55,19) .. controls (207.35,23.02) and (211.23,19.66) .. (211.23,11.49) -- (237.25,33.33) .. controls (237.25,41.5) and (241.14,51.37) .. (245.93,55.39) -- (245.93,133.46) .. controls (241.14,129.44) and (237.25,132.8) .. (237.25,140.96) -- (211.23,119.13) .. controls (211.23,110.96) and (207.35,101.09) .. (202.55,97.07) -- cycle ;
%Shape: Arc [id:dp48772527335668436] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (235.42,95.6) .. controls (235.42,95.6) and (235.42,95.6) .. (235.42,95.6) .. controls (231.95,105.13) and (224.14,104.19) .. (217.96,93.49) .. controls (211.78,82.79) and (209.59,66.39) .. (213.06,56.86) .. controls (216.53,47.33) and (224.35,48.27) .. (230.52,58.97) .. controls (236.6,69.49) and (238.82,85.52) .. (235.59,95.11) -- (224.24,76.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (235.42,95.6) .. controls (235.42,95.6) and (235.42,95.6) .. (235.42,95.6) .. controls (231.95,105.13) and (224.14,104.19) .. (217.96,93.49) .. controls (211.78,82.79) and (209.59,66.39) .. (213.06,56.86) .. controls (216.53,47.33) and (224.35,48.27) .. (230.52,58.97) .. controls (236.6,69.49) and (238.82,85.52) .. (235.59,95.11) ;  
%Shape: Rectangle [id:dp9250708704645467] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (149,68.16) -- (149,97.78) -- (132.67,84.08) -- (132.67,54.46) -- cycle ;
%Curve Lines [id:da3223234128843173] 
\draw    (86.67,73.46) .. controls (126.67,43.46) and (176.67,49.46) .. (220,50) ;
%Curve Lines [id:da5514567074328707] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (86.67,73.46) .. controls (159.67,93.46) and (193.67,84.46) .. (212.67,81.46) ;
%Shape: Arc [id:dp9307884772604522] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (221.44,50.44) .. controls (224.42,51.13) and (227.65,53.99) .. (230.52,58.97) .. controls (236.7,69.67) and (238.89,86.07) .. (235.42,95.6) .. controls (232.86,102.65) and (227.9,103.97) .. (223,99.84) -- (224.24,76.23) -- cycle ; \draw   (221.44,50.44) .. controls (224.42,51.13) and (227.65,53.99) .. (230.52,58.97) .. controls (236.7,69.67) and (238.89,86.07) .. (235.42,95.6) .. controls (232.86,102.65) and (227.9,103.97) .. (223,99.84) ;  
%Curve Lines [id:da08224623949039134] 
\draw    (86.67,73.46) .. controls (129.67,68.46) and (189.67,64.46) .. (233,65) ;
%Straight Lines [id:da4184137062900761] 
\draw    (132.67,54.46) -- (149,68.16) ;
%Straight Lines [id:da7708885349783519] 
\draw    (149,68.16) -- (149,97.78) ;
%Curve Lines [id:da7761395466306564] 
\draw    (86.67,73.46) .. controls (146.67,102.46) and (192.67,113.46) .. (235.42,95.6) ;
%Curve Lines [id:da7459059590036898] 
\draw    (237.25,33.33) .. controls (288.67,40.15) and (363.67,63.15) .. (378.67,74.15) ;
%Curve Lines [id:da008287826223109418] 
\draw    (245.93,55.39) .. controls (298.34,61.21) and (363.67,73.15) .. (378.67,74.15) ;
%Curve Lines [id:da18712132225685307] 
\draw    (245.93,133.46) .. controls (291.67,118.15) and (367.67,92.15) .. (378.67,74.15) ;
%Curve Lines [id:da3248143393563616] 
\draw    (237.25,140.96) .. controls (280.67,135.15) and (370.67,96.15) .. (378.67,74.15) ;
%Curve Lines [id:da5248387577755014] 
\draw    (211.23,11.49) .. controls (263.64,17.32) and (364.67,58.15) .. (378.67,74.15) ;
%Curve Lines [id:da27866882733957454] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (202.55,19) .. controls (254.97,24.82) and (359.67,58.15) .. (378.67,74.15) ;
%Curve Lines [id:da477690359596479] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (211.23,119.13) .. controls (255.67,113.15) and (362.67,84.15) .. (378.67,74.15) ;
%Curve Lines [id:da03231817135097059] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (202.55,97.07) .. controls (240.67,97.15) and (363.67,80.15) .. (378.67,74.15) ;
%Shape: Rectangle [id:dp794797175040002] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (475,72.16) -- (475,101.78) -- (458.67,88.08) -- (458.67,58.46) -- cycle ;
%Curve Lines [id:da4997433117698318] 
\draw    (412.67,77.46) .. controls (453.67,45.38) and (490.67,56.38) .. (547.67,71.38) ;
%Curve Lines [id:da8475279120888364] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (412.67,77.46) .. controls (469.67,98.38) and (526.67,85.38) .. (547.67,71.38) ;
%Curve Lines [id:da49314824814473845] 
\draw    (412.67,77.46) .. controls (455.67,72.46) and (504.33,70.83) .. (547.67,71.38) ;
%Straight Lines [id:da43225120040283693] 
\draw    (458.67,58.46) -- (475,72.16) ;
%Straight Lines [id:da06455159190324777] 
\draw    (475,72.16) -- (475,101.78) ;
%Curve Lines [id:da9104231108198488] 
\draw    (412.67,77.46) .. controls (473.67,111.38) and (496.67,112.38) .. (547.67,71.38) ;
%Curve Lines [id:da7436905598656782] 
\draw    (354,179) .. controls (364.82,178.07) and (388.24,181.81) .. (395.67,173.71) .. controls (403.09,165.61) and (405.73,139.68) .. (411.67,136.71) .. controls (417.37,133.86) and (440.66,132.26) .. (455.82,132.65) ;
\draw [shift={(457.67,132.71)}, rotate = 182.2] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;

% Text Node
\draw (114,160.4) node [anchor=north west][inner sep=0.75pt]    {$\mathrm{Cone}\left[\color[rgb]{0.31,0.89,0.76}{Y}\xrightarrow{i( f)}\mathrm{Cone}\left[ f:\color[rgb]{0.96,0.65,0.14}{X}\rightarrow \color[rgb]{0.31,0.89,0.76}{Y}\right]\right]$};
% Text Node
\draw (416,167.4) node [anchor=north west][inner sep=0.75pt]    {$\text{homotopic-equivalent}$};
% Text Node
\draw (482,125.72) node [anchor=north west][inner sep=0.75pt]    {$\color[rgb]{0.96,0.65,0.14}{X}[ 1]$};


\end{tikzpicture}


{% endtikzmathcha %}

同理, $\mathrm{Cone}(p(f):\mathrm{Cone}(f)\to X[1])$ 对应 $Y$ 的悬挂: 

{% tikzmathcha %}

\scalebox{0.8}{
\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,299); %set diagram left start at 0, and has height of 299

%Shape: Plaque [id:dp08647270238018967] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (200.55,25) .. controls (205.35,29.02) and (209.23,25.66) .. (209.23,17.49) -- (235.25,39.33) .. controls (235.25,47.5) and (239.14,57.37) .. (243.93,61.39) -- (243.93,139.46) .. controls (239.14,135.44) and (235.25,138.8) .. (235.25,146.96) -- (209.23,125.13) .. controls (209.23,116.96) and (205.35,107.09) .. (200.55,103.07) -- cycle ;
%Shape: Arc [id:dp3757492975139838] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (220.15,105.07) .. controls (218.72,103.68) and (217.3,101.81) .. (215.96,99.49) .. controls (209.78,88.79) and (207.59,72.39) .. (211.06,62.86) .. controls (213.11,57.21) and (216.7,55.24) .. (220.56,56.8) -- (222.24,82.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (220.15,105.07) .. controls (218.72,103.68) and (217.3,101.81) .. (215.96,99.49) .. controls (209.78,88.79) and (207.59,72.39) .. (211.06,62.86) .. controls (213.11,57.21) and (216.7,55.24) .. (220.56,56.8) ;  
%Shape: Rectangle [id:dp36514522666422033] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (147,74.16) -- (147,103.78) -- (130.67,90.08) -- (130.67,60.46) -- cycle ;
%Curve Lines [id:da021387484016569314] 
\draw    (84.67,79.46) .. controls (124.67,49.46) and (174.67,55.46) .. (218,56) ;
%Curve Lines [id:da5969819728351071] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (84.67,79.46) .. controls (157.67,99.46) and (191.67,90.46) .. (210.67,87.46) ;
%Shape: Arc [id:dp6925959796205869] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (219.44,56.44) .. controls (222.42,57.13) and (225.65,59.99) .. (228.52,64.97) .. controls (234.7,75.67) and (236.89,92.07) .. (233.42,101.6) .. controls (230.86,108.65) and (225.9,109.97) .. (221,105.84) -- (222.24,82.23) -- cycle ; \draw   (219.44,56.44) .. controls (222.42,57.13) and (225.65,59.99) .. (228.52,64.97) .. controls (234.7,75.67) and (236.89,92.07) .. (233.42,101.6) .. controls (230.86,108.65) and (225.9,109.97) .. (221,105.84) ;  
%Curve Lines [id:da16600227536584966] 
\draw    (84.67,79.46) .. controls (127.67,74.46) and (187.67,70.46) .. (231,71) ;
%Straight Lines [id:da9582728661549358] 
\draw    (130.67,60.46) -- (147,74.16) ;
%Straight Lines [id:da7171849500000436] 
\draw    (147,74.16) -- (147,103.78) ;
%Curve Lines [id:da8656516817050635] 
\draw    (84.67,79.46) .. controls (144.67,108.46) and (190.67,119.46) .. (233.42,101.6) ;
%Curve Lines [id:da3034424966543452] 
\draw    (235.25,39.33) .. controls (286.67,46.15) and (361.67,69.15) .. (376.67,80.15) ;
%Curve Lines [id:da8591771478649115] 
\draw    (243.93,61.39) .. controls (296.34,67.21) and (361.67,79.15) .. (376.67,80.15) ;
%Curve Lines [id:da32984361153929065] 
\draw    (243.93,139.46) .. controls (289.67,124.15) and (365.67,98.15) .. (376.67,80.15) ;
%Curve Lines [id:da7751226769425892] 
\draw    (235.25,146.96) .. controls (278.67,141.15) and (368.67,102.15) .. (376.67,80.15) ;
%Curve Lines [id:da6776738461968557] 
\draw    (209.23,17.49) .. controls (261.64,23.32) and (362.67,64.15) .. (376.67,80.15) ;
%Curve Lines [id:da6484423638650925] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (200.55,25) .. controls (252.97,30.82) and (357.67,64.15) .. (376.67,80.15) ;
%Curve Lines [id:da015495661900518876] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (209.23,125.13) .. controls (253.67,119.15) and (360.67,90.15) .. (376.67,80.15) ;
%Curve Lines [id:da1522168531085586] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (200.55,103.07) .. controls (238.67,103.15) and (361.67,86.15) .. (376.67,80.15) ;
%Shape: Plaque [id:dp5871532171925942] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (126.33,113.83) .. controls (128.8,115.9) and (130.8,114.17) .. (130.8,109.96) -- (144.2,121.21) .. controls (144.2,125.41) and (146.2,130.5) .. (148.67,132.57) -- (148.67,172.76) .. controls (146.2,170.69) and (144.2,172.42) .. (144.2,176.62) -- (130.8,165.38) .. controls (130.8,161.18) and (128.8,156.09) .. (126.33,154.02) -- cycle ;
%Shape: Arc [id:dp14704682019409954] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (136.43,155.05) .. controls (135.69,154.34) and (134.96,153.38) .. (134.27,152.18) .. controls (131.09,146.67) and (129.96,138.23) .. (131.74,133.32) .. controls (132.8,130.41) and (134.65,129.4) .. (136.63,130.2) -- (137.5,143.29) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (136.43,155.05) .. controls (135.69,154.34) and (134.96,153.38) .. (134.27,152.18) .. controls (131.09,146.67) and (129.96,138.23) .. (131.74,133.32) .. controls (132.8,130.41) and (134.65,129.4) .. (136.63,130.2) ;  
%Shape: Rectangle [id:dp8660862959750177] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (98.76,139.14) -- (98.76,154.39) -- (90.35,147.33) -- (90.35,132.08) -- cycle ;
%Curve Lines [id:da7991547829117052] 
\draw    (66.67,141.87) .. controls (87.26,126.42) and (113.01,129.51) .. (135.32,129.79) ;
%Curve Lines [id:da6107938948521865] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (66.67,141.87) .. controls (104.25,152.16) and (121.76,147.53) .. (131.54,145.99) ;
%Shape: Arc [id:dp9869725314847984] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (136.06,130.02) .. controls (137.59,130.37) and (139.26,131.84) .. (140.74,134.41) .. controls (143.92,139.91) and (145.04,148.36) .. (143.26,153.27) .. controls (141.94,156.9) and (139.39,157.58) .. (136.86,155.45) -- (137.5,143.29) -- cycle ; \draw   (136.06,130.02) .. controls (137.59,130.37) and (139.26,131.84) .. (140.74,134.41) .. controls (143.92,139.91) and (145.04,148.36) .. (143.26,153.27) .. controls (141.94,156.9) and (139.39,157.58) .. (136.86,155.45) ;  
%Curve Lines [id:da6637267810857108] 
\draw    (66.67,141.87) .. controls (88.81,139.29) and (119.7,137.23) .. (142.01,137.51) ;
%Straight Lines [id:da35948265030470106] 
\draw    (90.35,132.08) -- (98.76,139.14) ;
%Straight Lines [id:da34813090271484426] 
\draw    (98.76,139.14) -- (98.76,154.39) ;
%Curve Lines [id:da28799728147378745] 
\draw    (66.67,141.87) .. controls (97.56,156.8) and (121.24,162.46) .. (143.26,153.27) ;
%Straight Lines [id:da9895297633846896] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (85.32,79.79) -- (46.59,208.7) ;
%Straight Lines [id:da14771667742237837] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (235.25,146.96) -- (46.59,208.7) ;
%Straight Lines [id:da1935798752281075] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (130.67,60.46) -- (46.59,208.7) ;
%Straight Lines [id:da09221015153248957] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (147,74.16) -- (46.59,208.7) ;
%Straight Lines [id:da8025876859634624] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (147,103.78) -- (46.59,208.7) ;
%Straight Lines [id:da17161091383559834] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (200.55,25) -- (46.59,208.7) ;
%Straight Lines [id:da37534714021687754] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (209.23,17.49) -- (46.59,208.7) ;
%Straight Lines [id:da08187529501049573] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (235.25,39.33) -- (46.59,208.7) ;
%Straight Lines [id:da45922006959859174] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (243.93,61.39) -- (46.59,208.7) ;
%Straight Lines [id:da7264176156144524] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (243.93,139.46) -- (46.59,208.7) ;
%Straight Lines [id:da9573956368031127] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (130.67,90.08) -- (46.59,208.7) ;
%Straight Lines [id:da269254893574032] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (200.55,103.07) -- (46.59,208.7) ;
%Straight Lines [id:da39657350360250376] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (209.23,125.13) -- (46.59,208.7) ;
%Shape: Plaque [id:dp23819486579078286] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (436.55,115) .. controls (441.35,119.02) and (445.23,115.66) .. (445.23,107.49) -- (471.25,129.33) .. controls (471.25,137.5) and (475.14,147.37) .. (479.93,151.39) -- (479.93,229.46) .. controls (475.14,225.44) and (471.25,228.8) .. (471.25,236.96) -- (445.23,215.13) .. controls (445.23,206.96) and (441.35,197.09) .. (436.55,193.07) -- cycle ;
%Curve Lines [id:da6251281780240596] 
\draw    (471.25,129.33) .. controls (522.67,136.15) and (597.67,159.15) .. (612.67,170.15) ;
%Curve Lines [id:da35426826541783885] 
\draw    (479.93,151.39) .. controls (532.34,157.21) and (597.67,169.15) .. (612.67,170.15) ;
%Curve Lines [id:da8404947731539945] 
\draw    (479.93,229.46) .. controls (525.67,214.15) and (601.67,188.15) .. (612.67,170.15) ;
%Curve Lines [id:da8736900815631732] 
\draw    (471.25,236.96) .. controls (514.67,231.15) and (604.67,192.15) .. (612.67,170.15) ;
%Curve Lines [id:da1331285558473405] 
\draw    (445.23,107.49) .. controls (497.64,113.32) and (598.67,154.15) .. (612.67,170.15) ;
%Curve Lines [id:da008046626902288967] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (436.55,115) .. controls (488.97,120.82) and (593.67,154.15) .. (612.67,170.15) ;
%Curve Lines [id:da5273768487856656] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (445.23,215.13) .. controls (489.67,209.15) and (596.67,180.15) .. (612.67,170.15) ;
%Curve Lines [id:da66723038990064] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (436.55,193.07) .. controls (474.67,193.15) and (597.67,176.15) .. (612.67,170.15) ;
%Curve Lines [id:da7269666967263024] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (445.08,215.13) .. controls (393.67,208.3) and (318.67,185.3) .. (303.67,174.3) ;
%Curve Lines [id:da2105164154960928] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (436.4,193.07) .. controls (383.99,187.24) and (318.67,175.3) .. (303.67,174.3) ;
%Curve Lines [id:da061538875218267286] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (436.4,115) .. controls (390.67,130.3) and (314.67,156.3) .. (303.67,174.3) ;
%Curve Lines [id:da37925354912974263] 
\draw    (445.08,107.49) .. controls (401.67,113.3) and (311.67,152.3) .. (303.67,174.3) ;
%Curve Lines [id:da11284225536800907] 
\draw    (471.1,236.96) .. controls (418.69,231.14) and (317.67,190.3) .. (303.67,174.3) ;
%Curve Lines [id:da5715826673676605] 
\draw    (479.78,229.46) .. controls (427.36,223.64) and (322.67,190.3) .. (303.67,174.3) ;
%Curve Lines [id:da164909439408355] 
\draw    (471.1,129.33) .. controls (426.67,135.3) and (319.67,164.3) .. (303.67,174.3) ;
%Curve Lines [id:da07544334754608406] 
\draw    (479.78,151.39) .. controls (441.67,151.3) and (318.67,168.3) .. (303.67,174.3) ;

% Text Node
\draw (63,249.4) node [anchor=north west][inner sep=0.75pt]    {$\mathrm{Cone}\left[\mathrm{Cone}\left[ f:\color[rgb]{0.96,0.65,0.14}{X}\rightarrow \color[rgb]{0.31,0.89,0.76}{Y}\right]\xrightarrow{p( f)}\color[rgb]{0.96,0.65,0.14}{X}[ 1]\right] \quad \quad \xrightarrow{\text{homotopic-equivalent}}\color[rgb]{0.31,0.89,0.76}{\quad \quad Y}[ 1]$};


\end{tikzpicture}
}
{% endtikzmathcha %}
{% endex %}

{% ex %}
(符号法则: 为什么顺时针/逆时针旋转需要加上负号?). 给定好三角 $X\xrightarrow f Y\xrightarrow{\binom 01} \mathrm{Cone}(f)\xrightarrow{(1\,\,0)} X[1]$. 以下给出 $\mathrm{Cyl}(f)$:
    
{% tikzmathcha %}
\scalebox{0.7}{

\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,467); %set diagram left start at 0, and has height of 467

%Straight Lines [id:da789141627204303] 
\draw    (267.67,367.56) -- (267.67,416.36) ;
%Shape: Plaque [id:dp5395449597830586] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ][dash pattern={on 0.84pt off 2.51pt}] (240.55,344.81) .. controls (243.55,347.32) and (245.98,345.22) .. (245.98,340.12) -- (262.24,353.77) .. controls (262.24,358.87) and (264.67,365.05) .. (267.67,367.56) -- (267.67,416.36) .. controls (264.67,413.84) and (262.24,415.94) .. (262.24,421.05) -- (245.98,407.4) .. controls (245.98,402.29) and (243.55,396.12) .. (240.55,393.61) -- cycle ;
%Straight Lines [id:da07772042867984919] 
\draw    (245.98,340.12) -- (262.24,353.77) ;
%Curve Lines [id:da049316364356362996] 
\draw    (262.24,353.77) .. controls (262.67,360.5) and (263.67,364.5) .. (267.67,367.56) ;

%Shape: Plaque [id:dp6948198840482893] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (150.55,171) .. controls (155.35,175.02) and (159.23,171.66) .. (159.23,163.49) -- (185.25,185.33) .. controls (185.25,193.5) and (189.14,203.37) .. (193.93,207.39) -- (193.93,285.46) .. controls (189.14,281.44) and (185.25,284.8) .. (185.25,292.96) -- (159.23,271.13) .. controls (159.23,262.96) and (155.35,253.09) .. (150.55,249.07) -- cycle ;
%Shape: Arc [id:dp8121835189387658] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (183.42,247.6) .. controls (179.95,257.13) and (172.14,256.19) .. (165.96,245.49) .. controls (159.78,234.79) and (157.59,218.39) .. (161.06,208.86) .. controls (164.53,199.33) and (172.35,200.27) .. (178.52,210.97) .. controls (184.6,221.49) and (186.82,237.52) .. (183.59,247.11) -- (172.24,228.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (183.42,247.6) .. controls (179.95,257.13) and (172.14,256.19) .. (165.96,245.49) .. controls (159.78,234.79) and (157.59,218.39) .. (161.06,208.86) .. controls (164.53,199.33) and (172.35,200.27) .. (178.52,210.97) .. controls (184.6,221.49) and (186.82,237.52) .. (183.59,247.11) ;  
%Shape: Rectangle [id:dp9236257757410662] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (97,220.16) -- (97,249.78) -- (80.67,236.08) -- (80.67,206.46) -- cycle ;
%Curve Lines [id:da1412004268428897] 
\draw    (34.67,225.46) .. controls (74.67,195.46) and (124.67,201.46) .. (168,202) ;
%Curve Lines [id:da8070328267328577] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (34.67,225.46) .. controls (107.67,245.46) and (141.67,236.46) .. (160.67,233.46) ;
%Shape: Arc [id:dp20603333321002149] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (169.44,202.44) .. controls (172.42,203.13) and (175.65,205.99) .. (178.52,210.97) .. controls (184.7,221.67) and (186.89,238.07) .. (183.42,247.6) .. controls (180.86,254.65) and (175.9,255.97) .. (171,251.84) -- (172.24,228.23) -- cycle ; \draw   (169.44,202.44) .. controls (172.42,203.13) and (175.65,205.99) .. (178.52,210.97) .. controls (184.7,221.67) and (186.89,238.07) .. (183.42,247.6) .. controls (180.86,254.65) and (175.9,255.97) .. (171,251.84) ;  
%Curve Lines [id:da24338707533352366] 
\draw    (34.67,225.46) .. controls (77.67,220.46) and (137.67,216.46) .. (181,217) ;
%Straight Lines [id:da8796254302708388] 
\draw    (80.67,206.46) -- (97,220.16) ;
%Straight Lines [id:da0374975013414518] 
\draw    (97,220.16) -- (97,249.78) ;
%Curve Lines [id:da07079338778880961] 
\draw    (34.67,225.46) .. controls (94.67,254.46) and (140.67,265.46) .. (183.42,247.6) ;
%Curve Lines [id:da8435241936091558] 
\draw    (185.25,185.33) .. controls (236.67,192.15) and (311.67,215.15) .. (326.67,226.15) ;
%Curve Lines [id:da648982332927335] 
\draw    (193.93,207.39) .. controls (248.67,210.28) and (310.67,222.28) .. (326.67,226.15) ;
%Curve Lines [id:da1942078175000368] 
\draw    (193.93,285.46) .. controls (240.67,279.61) and (310.67,246.61) .. (326.67,226.15) ;
%Curve Lines [id:da39463364452751915] 
\draw    (185.25,292.96) .. controls (233.67,287.5) and (313.67,246.61) .. (326.67,226.15) ;
%Curve Lines [id:da6281537956086451] 
\draw    (159.23,163.49) .. controls (211.64,169.32) and (312.67,210.15) .. (326.67,226.15) ;
%Curve Lines [id:da2088341641908693] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (150.55,171) .. controls (202.97,176.82) and (307.67,210.15) .. (326.67,226.15) ;
%Curve Lines [id:da39911305326045876] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (159.23,271.13) .. controls (202.67,269.5) and (310.67,236.15) .. (326.67,226.15) ;
%Curve Lines [id:da5181536488234719] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (150.55,249.07) .. controls (188.67,249.15) and (311.67,232.15) .. (326.67,226.15) ;
%Shape: Plaque [id:dp8447762334922937] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ][dash pattern={on 0.84pt off 2.51pt}] (240.55,191.81) .. controls (243.55,194.32) and (245.98,192.22) .. (245.98,187.12) -- (262.24,200.77) .. controls (262.24,205.87) and (264.67,212.05) .. (267.67,214.56) -- (267.67,263.36) .. controls (264.67,260.84) and (262.24,262.94) .. (262.24,268.05) -- (245.98,254.4) .. controls (245.98,249.29) and (243.55,243.12) .. (240.55,240.61) -- cycle ;
%Straight Lines [id:da2493874133426437] 
\draw    (245.98,187.12) -- (262.24,200.77) ;
%Curve Lines [id:da04459427902190627] 
\draw    (262.24,200.77) .. controls (262.67,207.5) and (263.67,211.5) .. (267.67,214.56) ;

%Straight Lines [id:da4116467407041309] 
\draw    (267.67,214.56) -- (267.67,263.36) ;
%Shape: Plaque [id:dp7843958694675648] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (150.55,324) .. controls (155.35,328.02) and (159.23,324.66) .. (159.23,316.49) -- (185.25,338.33) .. controls (185.25,346.5) and (189.14,356.37) .. (193.93,360.39) -- (193.93,438.46) .. controls (189.14,434.44) and (185.25,437.8) .. (185.25,445.96) -- (159.23,424.13) .. controls (159.23,415.96) and (155.35,406.09) .. (150.55,402.07) -- cycle ;
%Shape: Arc [id:dp5368350310872492] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (183.42,400.6) .. controls (179.95,410.13) and (172.14,409.19) .. (165.96,398.49) .. controls (159.78,387.79) and (157.59,371.39) .. (161.06,361.86) .. controls (164.53,352.33) and (172.35,353.27) .. (178.52,363.97) .. controls (184.6,374.49) and (186.82,390.52) .. (183.59,400.11) -- (172.24,381.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (183.42,400.6) .. controls (179.95,410.13) and (172.14,409.19) .. (165.96,398.49) .. controls (159.78,387.79) and (157.59,371.39) .. (161.06,361.86) .. controls (164.53,352.33) and (172.35,353.27) .. (178.52,363.97) .. controls (184.6,374.49) and (186.82,390.52) .. (183.59,400.11) ;  
%Shape: Rectangle [id:dp07512918981164751] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (97,373.16) -- (97,402.78) -- (80.67,389.08) -- (80.67,359.46) -- cycle ;
%Curve Lines [id:da5018608691972799] 
\draw    (80.65,359.41) .. controls (96.39,355.95) and (139.84,354.65) .. (168,355) ;
%Curve Lines [id:da8292368981252138] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (81.39,388.41) .. controls (123.33,394.43) and (146.29,388.73) .. (160.67,386.46) ;
%Shape: Arc [id:dp74497806026171] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (169.44,355.44) .. controls (172.42,356.13) and (175.65,358.99) .. (178.52,363.97) .. controls (184.7,374.67) and (186.89,391.07) .. (183.42,400.6) .. controls (180.86,407.65) and (175.9,408.97) .. (171,404.84) -- (172.24,381.23) -- cycle ; \draw   (169.44,355.44) .. controls (172.42,356.13) and (175.65,358.99) .. (178.52,363.97) .. controls (184.7,374.67) and (186.89,391.07) .. (183.42,400.6) .. controls (180.86,407.65) and (175.9,408.97) .. (171,404.84) ;  
%Curve Lines [id:da4158589842476632] 
\draw    (96.68,372.72) .. controls (125.41,370.81) and (156.8,369.7) .. (181,370) ;
%Straight Lines [id:da5181501286102377] 
\draw    (80.67,359.46) -- (97,373.16) ;
%Straight Lines [id:da2777309016271994] 
\draw    (97,373.16) -- (97,402.78) ;
%Curve Lines [id:da39716370686215496] 
\draw    (96.38,402.52) .. controls (128.87,411.64) and (156.3,411.93) .. (183.42,400.6) ;
%Curve Lines [id:da7270833964428818] 
\draw    (185.25,338.33) .. controls (202.2,340.58) and (221.71,344.59) .. (240.79,349.34) ;
%Curve Lines [id:da20476960199640537] 
\draw    (193.93,360.39) .. controls (218.61,361.69) and (244.78,364.85) .. (267.53,368.28) ;
%Curve Lines [id:da8999718912767569] 
\draw    (193.93,438.46) .. controls (216.13,435.68) and (243.57,426.78) .. (267.99,416) ;
%Curve Lines [id:da745229533306861] 
\draw    (185.25,445.96) .. controls (209.42,443.24) and (234.6,434.48) .. (262.24,421.05) ;
%Curve Lines [id:da6320739953887902] 
\draw    (159.23,316.49) .. controls (182.2,319.05) and (214.51,328.32) .. (244.74,339.29) ;
%Curve Lines [id:da6052667526419777] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (150.55,324) .. controls (174.36,326.64) and (208.94,334.96) .. (241.39,344.75) ;
%Curve Lines [id:da5374966499587552] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (159.23,424.13) .. controls (179.59,423.36) and (214.14,415.63) .. (246.76,406.6) ;
%Curve Lines [id:da047593488948662] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (150.55,402.07) .. controls (168.52,402.11) and (228.99,396.2) .. (240.83,393.74) ;
%Shape: Plaque [id:dp7478568225547872] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (150.55,23) .. controls (155.35,27.02) and (159.23,23.66) .. (159.23,15.49) -- (185.25,37.33) .. controls (185.25,45.5) and (189.14,55.37) .. (193.93,59.39) -- (193.93,137.46) .. controls (189.14,133.44) and (185.25,136.8) .. (185.25,144.96) -- (159.23,123.13) .. controls (159.23,114.96) and (155.35,105.09) .. (150.55,101.07) -- cycle ;
%Shape: Arc [id:dp8577321944380056] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (183.42,99.6) .. controls (183.42,99.6) and (183.42,99.6) .. (183.42,99.6) .. controls (183.42,99.6) and (183.42,99.6) .. (183.42,99.6) .. controls (179.95,109.13) and (172.14,108.19) .. (165.96,97.49) .. controls (159.78,86.79) and (157.59,70.39) .. (161.06,60.86) .. controls (164.53,51.33) and (172.35,52.27) .. (178.52,62.97) .. controls (184.6,73.49) and (186.82,89.52) .. (183.59,99.11) -- (172.24,80.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (183.42,99.6) .. controls (183.42,99.6) and (183.42,99.6) .. (183.42,99.6) .. controls (183.42,99.6) and (183.42,99.6) .. (183.42,99.6) .. controls (179.95,109.13) and (172.14,108.19) .. (165.96,97.49) .. controls (159.78,86.79) and (157.59,70.39) .. (161.06,60.86) .. controls (164.53,51.33) and (172.35,52.27) .. (178.52,62.97) .. controls (184.6,73.49) and (186.82,89.52) .. (183.59,99.11) ;  
%Shape: Rectangle [id:dp14736571971694423] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (97,72.16) -- (97,101.78) -- (80.67,88.08) -- (80.67,58.46) -- cycle ;
%Curve Lines [id:da4945334795417353] 
\draw    (34.67,77.46) .. controls (74.67,47.46) and (124.67,53.46) .. (168,54) ;
%Curve Lines [id:da6982935564065957] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (34.67,77.46) .. controls (107.67,97.46) and (141.67,88.46) .. (160.67,85.46) ;
%Shape: Arc [id:dp5909959501896536] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (169.44,54.44) .. controls (172.42,55.13) and (175.65,57.99) .. (178.52,62.97) .. controls (184.7,73.67) and (186.89,90.07) .. (183.42,99.6) .. controls (180.86,106.65) and (175.9,107.97) .. (171,103.84) -- (172.24,80.23) -- cycle ; \draw   (169.44,54.44) .. controls (172.42,55.13) and (175.65,57.99) .. (178.52,62.97) .. controls (184.7,73.67) and (186.89,90.07) .. (183.42,99.6) .. controls (180.86,106.65) and (175.9,107.97) .. (171,103.84) ;  
%Curve Lines [id:da6082319907106564] 
\draw    (34.67,77.46) .. controls (77.67,72.46) and (137.67,68.46) .. (181,69) ;
%Straight Lines [id:da5148282717952564] 
\draw    (80.67,58.46) -- (97,72.16) ;
%Straight Lines [id:da23771216191453126] 
\draw    (97,72.16) -- (97,101.78) ;
%Curve Lines [id:da8744237873672636] 
\draw    (34.67,77.46) .. controls (94.67,106.46) and (140.67,117.46) .. (183.42,99.6) ;

% Text Node
\draw (344,196.4) node [anchor=north west][inner sep=0.75pt]    {$\mathrm{Cone}\left[\binom{0}{1}\right] ,\quad \quad D=\begin{pmatrix}
-d &  & \\
0 & -d & \\
1 & f & d
\end{pmatrix} ;$};
% Text Node
\draw (344,351.4) node [anchor=north west][inner sep=0.75pt]    {$\mathrm{Cone}\left[\binom{0}{1}\right][ -1] ,\quad D=\begin{pmatrix}
d &  & \\
0 & d & \\
-1 & -f & -d
\end{pmatrix} .$};
% Text Node
\draw (344,55.4) node [anchor=north west][inner sep=0.75pt]    {$\mathrm{Cone}[ f] ,\quad \quad \quad D=\begin{pmatrix}
-d & \\
f & d
\end{pmatrix} ;$};


\end{tikzpicture}
}
{% endtikzmathcha %}

{% endex %}

### 八面体公理的解释

{% ex %}
取标准三角 $X\xrightarrow f Y\xrightarrow{i(f)} \mathrm{Cone}(f)\xrightarrow {p(f)} X[1]$ 为标准三角, 则下图交换:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzAsMCwiWCJdLFsyLDAsIlkiXSxbMiwxLCJaIl0sWzAsMSwiWCJdLFs0LDEsIlxcbWF0aHJte0NvbmV9KGdcXGNpcmMgZikiXSxbNCwwLCJcXG1hdGhybXtDb25lfShmKSJdLFsyLDIsIlxcbWF0aHJte0NvbmV9KGcpIl0sWzIsMywiWVsxXSJdLFs2LDEsIlhbMV0iXSxbNiwwLCJYWzFdIl0sWzQsMiwiXFxtYXRocm17Q29uZX0oZ19cXGFzdCkiXSxbNCwzLCJcXG1hdGhybXtDb25lfShmKVsxXSJdLFs2LDIsIllbMV0iXSxbMCwxLCJmIl0sWzEsMiwiZyIsMl0sWzAsMywiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywyLCJnXFxjaXJjIGYiXSxbMiw2LCJpKGcpIiwyXSxbNiw3LCJwKGcpIiwyXSxbMiw0LCJpKGdcXGNpcmMgZikiXSxbMSw1LCJpKGYpIl0sWzUsOSwicChmKSJdLFs5LDgsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsOCwicChnXFxjaXJjIGYpIl0sWzUsNCwiZ19cXGFzdCAiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwxMCwiaShnX1xcYXN0ICkiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNywxMSwiaShmKVsxXSJdLFsxMCwxMSwicChnX1xcYXN0ICkiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNiwxMCwiXFxzaW0gIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCwxMiwiZlsxXSIsMl0sWzEwLDEyLCJwKGcpIiwyXSxbNCwxMiwiXFxzdGFyICIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	X && Y && {\mathrm{Cone}(f)} && {X[1]} \\
	X && Z && {\mathrm{Cone}(g\circ f)} && {X[1]} \\
	&& {\mathrm{Cone}(g)} && {\mathrm{Cone}(g_\ast)} && {Y[1]} \\
	&& {Y[1]} && {\mathrm{Cone}(f)[1]}
	\arrow["f", from=1-1, to=1-3]
	\arrow[equals, from=1-1, to=2-1]
	\arrow["{i(f)}", from=1-3, to=1-5]
	\arrow["g"', from=1-3, to=2-3]
	\arrow["{p(f)}", from=1-5, to=1-7]
	\arrow["{g_\ast }"', dashed, from=1-5, to=2-5]
	\arrow[equals, from=1-7, to=2-7]
	\arrow["{g\circ f}", from=2-1, to=2-3]
	\arrow["{i(g\circ f)}", from=2-3, to=2-5]
	\arrow["{i(g)}"', from=2-3, to=3-3]
	\arrow["{p(g\circ f)}", from=2-5, to=2-7]
	\arrow["{i(g_\ast )}"', dashed, from=2-5, to=3-5]
	\arrow["{\star }"{description}, draw=none, from=2-5, to=3-7]
	\arrow["{f[1]}"', from=2-7, to=3-7]
	\arrow["{\sim }", dashed, no head, from=3-3, to=3-5]
	\arrow["{p(g)}"', from=3-3, to=4-3]
	\arrow["{p(g)}"', from=3-5, to=3-7]
	\arrow["{p(g_\ast )}"', dashed, from=3-5, to=4-5]
	\arrow["{i(f)[1]}", from=4-3, to=4-5]
\end{tikzcd}
{% endtikz %}

此处 $f$ 与 $g$ 是任意选取的, 从而八面体公理等价于

- 对任意 $g$, 总有同伦范畴中的同构 $\mathrm{Cone}(g) ≃ \mathrm{Cone}(g_∗)$

虚线处类似 Noether 同构 $A/B ≃ (A/C)/(B/C)$, 图示如下:  
{% tikzmathcha %}
\scalebox{0.8}{
   

\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,509); %set diagram left start at 0, and has height of 509

%Shape: Regular Polygon [id:dp0007182383012789284] 
\draw  [fill={rgb, 255:red, 189; green, 16; blue, 224 }  ,fill opacity=0.21 ] (360.35,255.55) -- (329.4,302.17) -- (279.32,232.42) -- (279.32,142.69) -- (329.4,156.99) -- cycle ;
%Shape: Cloud [id:dp16752879731061254] 
\draw  [fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ] (288.85,190.8) .. controls (288.39,184.63) and (289.9,180.17) .. (292.73,179.31) .. controls (295.56,178.45) and (299.22,181.34) .. (302.16,186.75) .. controls (303.2,184.26) and (305.11,183.54) .. (307.3,184.8) .. controls (309.49,186.06) and (311.71,189.16) .. (313.29,193.16) .. controls (314.18,190.85) and (315.92,190.26) .. (317.89,191.6) .. controls (319.87,192.94) and (321.8,196.01) .. (323.01,199.73) .. controls (324.61,197.84) and (327.16,198.62) .. (329.55,201.72) .. controls (331.94,204.83) and (333.75,209.71) .. (334.18,214.24) .. controls (336.15,216.81) and (337.78,220.51) .. (338.66,224.4) .. controls (339.55,228.29) and (339.6,231.98) .. (338.79,234.52) .. controls (340.73,240.45) and (341.18,246.58) .. (339.98,250.61) .. controls (338.79,254.64) and (336.12,255.97) .. (332.98,254.11) .. controls (332.96,258.82) and (331.45,261.89) .. (329.03,262.13) .. controls (326.61,262.38) and (323.67,259.77) .. (321.33,255.3) .. controls (320.33,260.13) and (317.53,261.94) .. (314.12,259.95) .. controls (310.72,257.97) and (307.33,252.55) .. (305.42,246.02) .. controls (303.08,246.48) and (300.27,244.82) .. (297.62,241.42) .. controls (294.98,238.01) and (292.72,233.15) .. (291.36,227.93) .. controls (288.97,226.4) and (286.65,222.33) .. (285.56,217.74) .. controls (284.48,213.15) and (284.85,209.01) .. (286.5,207.38) .. controls (284.36,203.43) and (283.27,198.24) .. (283.8,194.51) .. controls (284.32,190.78) and (286.34,189.36) .. (288.8,190.98) ; \draw   (286.5,207.38) .. controls (287.51,209.25) and (288.67,210.68) .. (289.84,211.5)(291.36,227.93) .. controls (291.86,228.25) and (292.35,228.45) .. (292.82,228.52)(305.42,246.02) .. controls (305.07,244.82) and (304.77,243.61) .. (304.54,242.4)(321.33,255.3) .. controls (321.51,254.42) and (321.63,253.46) .. (321.68,252.43)(332.98,254.11) .. controls (333,249.1) and (331.34,243.09) .. (328.7,238.67)(338.79,234.52) .. controls (338.37,235.87) and (337.71,236.84) .. (336.89,237.36)(334.18,214.24) .. controls (334.26,215) and (334.29,215.73) .. (334.28,216.43)(323.01,199.73) .. controls (322.61,200.2) and (322.28,200.83) .. (322.03,201.58)(313.29,193.16) .. controls (313.08,193.71) and (312.92,194.35) .. (312.82,195.07)(302.16,186.75) .. controls (302.78,187.9) and (303.36,189.13) .. (303.87,190.43)(288.85,190.8) .. controls (288.91,191.65) and (289.01,192.52) .. (289.15,193.41) ;
%Shape: Plaque [id:dp1362707080745169] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (153.79,102.29) .. controls (156.73,104.76) and (159.12,102.69) .. (159.12,97.68) -- (175.09,111.08) .. controls (175.09,116.1) and (177.47,122.16) .. (180.41,124.62) -- (180.41,172.54) .. controls (177.47,170.07) and (175.09,172.13) .. (175.09,177.14) -- (159.12,163.74) .. controls (159.12,158.73) and (156.73,152.67) .. (153.79,150.2) -- cycle ;
%Shape: Arc [id:dp5532486590461696] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (165.82,151.43) .. controls (164.94,150.58) and (164.07,149.43) .. (163.25,148.01) .. controls (159.46,141.44) and (158.11,131.38) .. (160.24,125.53) .. controls (161.5,122.06) and (163.7,120.85) .. (166.07,121.81) -- (167.1,137.41) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (165.82,151.43) .. controls (164.94,150.58) and (164.07,149.43) .. (163.25,148.01) .. controls (159.46,141.44) and (158.11,131.38) .. (160.24,125.53) .. controls (161.5,122.06) and (163.7,120.85) .. (166.07,121.81) ;  
%Shape: Rectangle [id:dp911354455190621] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (120.92,132.46) -- (120.92,150.64) -- (110.9,142.23) -- (110.9,124.05) -- cycle ;
%Curve Lines [id:da9152360626683957] 
\draw    (82.67,135.71) .. controls (107.22,117.3) and (137.9,120.98) .. (164.5,121.32) ;
%Curve Lines [id:da23731365788802572] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,135.71) .. controls (127.47,147.99) and (148.34,142.46) .. (160,140.62) ;
%Shape: Arc [id:dp24962412259499422] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (165.38,121.59) .. controls (167.21,122.01) and (169.19,123.77) .. (170.96,126.82) .. controls (174.75,133.39) and (176.1,143.45) .. (173.97,149.3) .. controls (172.39,153.63) and (169.35,154.44) .. (166.34,151.9) -- (167.1,137.41) -- cycle ; \draw   (165.38,121.59) .. controls (167.21,122.01) and (169.19,123.77) .. (170.96,126.82) .. controls (174.75,133.39) and (176.1,143.45) .. (173.97,149.3) .. controls (172.39,153.63) and (169.35,154.44) .. (166.34,151.9) ;  
%Curve Lines [id:da22438600395723718] 
\draw    (82.67,135.71) .. controls (109.06,132.64) and (145.88,130.19) .. (172.48,130.52) ;
%Straight Lines [id:da04288566691057105] 
\draw    (110.9,124.05) -- (120.92,132.46) ;
%Straight Lines [id:da24009955627276502] 
\draw    (120.92,132.46) -- (120.92,150.64) ;
%Curve Lines [id:da2608798096275331] 
\draw    (82.67,135.71) .. controls (119.49,153.51) and (147.72,160.26) .. (173.97,149.3) ;
%Shape: Rectangle [id:dp4060238856951579] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (145,208.16) -- (145,237.78) -- (128.67,224.08) -- (128.67,194.46) -- cycle ;
%Straight Lines [id:da0020399547572127474] 
\draw    (128.67,194.46) -- (145,208.16) ;
%Straight Lines [id:da9267313058167168] 
\draw    (145,208.16) -- (145,237.78) ;
%Straight Lines [id:da0648186093975518] 
\draw    (216,190) -- (308.67,197.94) ;
%Shape: Triangle [id:dp5872374835204115] 
\draw  [fill={rgb, 255:red, 65; green, 117; blue, 5 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (308.67,197.94) -- (322.54,242.19) -- (294.8,218.92) -- cycle ;
%Straight Lines [id:da08970665729081495] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (229,205) -- (313.67,212.94) ;
%Straight Lines [id:da18096265226968544] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (231.42,235.6) -- (322.54,242.19) ;
%Straight Lines [id:da9312038298840011] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (208.67,221.46) -- (294.8,218.92) ;
%Straight Lines [id:da9375785670489793] 
\draw    (322.54,242.19) -- (308.67,197.94) ;
%Shape: Plaque [id:dp410334262240851] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (198.55,350) .. controls (203.35,354.02) and (207.23,350.66) .. (207.23,342.49) -- (233.25,364.33) .. controls (233.25,372.5) and (237.14,382.37) .. (241.93,386.39) -- (241.93,464.46) .. controls (237.14,460.44) and (233.25,463.8) .. (233.25,471.96) -- (207.23,450.13) .. controls (207.23,441.96) and (203.35,432.09) .. (198.55,428.07) -- cycle ;
%Curve Lines [id:da3838321891905927] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,404.46) .. controls (124.67,378.61) and (155.22,349.46) .. (198.55,350) ;
%Curve Lines [id:da32313441291598877] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,404.46) .. controls (135.67,415.61) and (177.67,426.61) .. (198.55,428.07) ;
%Curve Lines [id:da1962555659846017] 
\draw    (82.67,404.46) .. controls (125.67,399.46) and (198.59,385.85) .. (241.93,386.39) ;
%Curve Lines [id:da05812816992043146] 
\draw    (82.67,404.46) .. controls (142.67,433.46) and (190.67,474.61) .. (233.25,471.96) ;
%Curve Lines [id:da5234476005935402] 
\draw    (82.67,404.46) .. controls (142.67,433.46) and (199.34,467.11) .. (241.93,464.46) ;
%Curve Lines [id:da6419955700262365] 
\draw    (82.67,404.46) .. controls (125.67,399.46) and (191.67,356.61) .. (233.25,364.33) ;
%Curve Lines [id:da055341502862052305] 
\draw    (82.67,404.46) .. controls (107.67,369.61) and (162.67,337.61) .. (207.23,342.49) ;
%Curve Lines [id:da4233319490088028] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,404.46) .. controls (125.67,414.61) and (186.34,448.67) .. (207.23,450.13) ;
%Curve Lines [id:da4346133532076586] 
\draw    (207.23,342.49) .. controls (262.67,346.94) and (276.67,360.94) .. (295.67,371.94) ;
%Curve Lines [id:da4106306331282128] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (198.55,350) .. controls (244.67,357.39) and (265.67,360.39) .. (287.67,374.39) ;
%Curve Lines [id:da826643089653134] 
\draw    (233.25,364.33) .. controls (276.67,369.39) and (309.67,388.39) .. (331.67,399.39) ;
%Curve Lines [id:da5661609370404672] 
\draw    (241.93,386.39) .. controls (284.67,384.61) and (324.67,411.94) .. (339.67,418.39) ;
%Curve Lines [id:da805487221698552] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (198.55,428.07) .. controls (251.55,439.22) and (270.67,422.94) .. (290.67,419.94) ;
%Curve Lines [id:da3349437766688226] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (207.23,450.13) .. controls (250.23,460.28) and (281.67,438.94) .. (295.67,430.94) ;
%Curve Lines [id:da7603321490749153] 
\draw    (241.93,464.46) .. controls (278.67,463.94) and (316.67,442.72) .. (337.67,427.94) ;
%Curve Lines [id:da6932015082329224] 
\draw    (233.25,471.96) .. controls (276.67,472.72) and (304.67,468.94) .. (327.67,452.94) ;

%Shape: Regular Polygon [id:dp17952647093138352] 
\draw  [fill={rgb, 255:red, 189; green, 16; blue, 224 }  ,fill opacity=0.21 ] (360.35,446.55) -- (329.4,493.17) -- (279.32,423.42) -- (279.32,333.69) -- (329.4,347.99) -- cycle ;
%Shape: Cloud [id:dp8699800493665175] 
\draw  [fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ] (288.85,381.8) .. controls (288.39,375.63) and (289.9,371.17) .. (292.73,370.31) .. controls (295.56,369.45) and (299.22,372.34) .. (302.16,377.75) .. controls (303.2,375.26) and (305.11,374.54) .. (307.3,375.8) .. controls (309.49,377.06) and (311.71,380.16) .. (313.29,384.16) .. controls (314.18,381.85) and (315.92,381.26) .. (317.89,382.6) .. controls (319.87,383.94) and (321.8,387.01) .. (323.01,390.73) .. controls (324.61,388.84) and (327.16,389.62) .. (329.55,392.72) .. controls (331.94,395.83) and (333.75,400.71) .. (334.18,405.24) .. controls (336.15,407.81) and (337.78,411.51) .. (338.66,415.4) .. controls (339.55,419.29) and (339.6,422.98) .. (338.79,425.52) .. controls (340.73,431.45) and (341.18,437.58) .. (339.98,441.61) .. controls (338.79,445.64) and (336.12,446.97) .. (332.98,445.11) .. controls (332.96,449.82) and (331.45,452.89) .. (329.03,453.13) .. controls (326.61,453.38) and (323.67,450.77) .. (321.33,446.3) .. controls (320.33,451.13) and (317.53,452.94) .. (314.12,450.95) .. controls (310.72,448.97) and (307.33,443.55) .. (305.42,437.02) .. controls (303.08,437.48) and (300.27,435.82) .. (297.62,432.42) .. controls (294.98,429.01) and (292.72,424.15) .. (291.36,418.93) .. controls (288.97,417.4) and (286.65,413.33) .. (285.56,408.74) .. controls (284.48,404.15) and (284.85,400.01) .. (286.5,398.38) .. controls (284.36,394.43) and (283.27,389.24) .. (283.8,385.51) .. controls (284.32,381.78) and (286.34,380.36) .. (288.8,381.98) ; \draw   (286.5,398.38) .. controls (287.51,400.25) and (288.67,401.68) .. (289.84,402.5)(291.36,418.93) .. controls (291.86,419.25) and (292.35,419.45) .. (292.82,419.52)(305.42,437.02) .. controls (305.07,435.82) and (304.77,434.61) .. (304.54,433.4)(321.33,446.3) .. controls (321.51,445.42) and (321.63,444.46) .. (321.68,443.43)(332.98,445.11) .. controls (333,440.1) and (331.34,434.09) .. (328.7,429.67)(338.79,425.52) .. controls (338.37,426.87) and (337.71,427.84) .. (336.89,428.36)(334.18,405.24) .. controls (334.26,406) and (334.29,406.73) .. (334.28,407.43)(323.01,390.73) .. controls (322.61,391.2) and (322.28,391.83) .. (322.03,392.58)(313.29,384.16) .. controls (313.08,384.71) and (312.92,385.35) .. (312.82,386.07)(302.16,377.75) .. controls (302.78,378.9) and (303.36,380.13) .. (303.87,381.43)(288.85,381.8) .. controls (288.91,382.65) and (289.01,383.52) .. (289.15,384.41) ;
%Shape: Plaque [id:dp6105997236479297] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (198.55,159) .. controls (203.35,163.02) and (207.23,159.66) .. (207.23,151.49) -- (233.25,173.33) .. controls (233.25,181.5) and (237.14,191.37) .. (241.93,195.39) -- (241.93,273.46) .. controls (237.14,269.44) and (233.25,272.8) .. (233.25,280.96) -- (207.23,259.13) .. controls (207.23,250.96) and (203.35,241.09) .. (198.55,237.07) -- cycle ;
%Curve Lines [id:da674430752492917] 
\draw    (207.23,151.49) .. controls (262.67,155.94) and (276.67,169.94) .. (295.67,180.94) ;
%Curve Lines [id:da43135455010731616] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (198.55,159) .. controls (244.67,166.39) and (265.67,169.39) .. (287.67,183.39) ;
%Curve Lines [id:da6627342008917885] 
\draw    (233.25,173.33) .. controls (276.67,178.39) and (309.67,197.39) .. (331.67,208.39) ;
%Curve Lines [id:da9316054776870943] 
\draw    (241.93,195.39) .. controls (284.67,193.61) and (324.67,220.94) .. (339.67,227.39) ;
%Curve Lines [id:da11633388424057411] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (198.55,237.07) .. controls (251.55,248.22) and (270.67,231.94) .. (290.67,228.94) ;
%Curve Lines [id:da6986162967173308] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (207.23,259.13) .. controls (250.23,269.28) and (281.67,247.94) .. (295.67,239.94) ;
%Curve Lines [id:da27111469696518675] 
\draw    (241.93,273.46) .. controls (278.67,272.94) and (316.67,251.72) .. (337.67,236.94) ;
%Curve Lines [id:da030814998019703443] 
\draw    (233.25,280.96) .. controls (276.67,281.72) and (304.67,277.94) .. (327.67,261.94) ;
%Curve Lines [id:da06021333766713166] 
\draw    (82.67,213.46) .. controls (122.67,183.46) and (172.67,189.46) .. (216,190) ;
%Curve Lines [id:da6913212353271356] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,213.46) .. controls (155.67,233.46) and (189.67,224.46) .. (208.67,221.46) ;
%Shape: Arc [id:dp8390223806944124] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (218.15,239.07) .. controls (216.72,237.68) and (215.3,235.81) .. (213.96,233.49) .. controls (207.78,222.79) and (205.59,206.39) .. (209.06,196.86) .. controls (211.11,191.21) and (214.7,189.24) .. (218.56,190.8) -- (220.24,216.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (218.15,239.07) .. controls (216.72,237.68) and (215.3,235.81) .. (213.96,233.49) .. controls (207.78,222.79) and (205.59,206.39) .. (209.06,196.86) .. controls (211.11,191.21) and (214.7,189.24) .. (218.56,190.8) ;  
%Shape: Arc [id:dp963081374738219] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (217.44,190.44) .. controls (220.42,191.13) and (223.65,193.99) .. (226.52,198.97) .. controls (232.7,209.67) and (234.89,226.07) .. (231.42,235.6) .. controls (228.86,242.65) and (223.9,243.97) .. (219,239.84) -- (220.24,216.23) -- cycle ; \draw   (217.44,190.44) .. controls (220.42,191.13) and (223.65,193.99) .. (226.52,198.97) .. controls (232.7,209.67) and (234.89,226.07) .. (231.42,235.6) .. controls (228.86,242.65) and (223.9,243.97) .. (219,239.84) ;  
%Straight Lines [id:da38997536706493063] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (208.67,221.46) -- (294.8,218.92) ;
%Curve Lines [id:da2848981400101831] 
\draw    (82.67,213.46) .. controls (125.67,208.46) and (185.67,204.46) .. (229,205) ;
%Straight Lines [id:da3689740083869757] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (207.23,151.49) ;
%Straight Lines [id:da6520316466940066] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (82.67,213.46) ;
%Straight Lines [id:da37085060455950747] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (128.67,194.46) ;
%Straight Lines [id:da3341059239258193] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (145,208.16) ;
%Straight Lines [id:da6296975436760144] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (128.67,224.08) ;
%Straight Lines [id:da4327338433979304] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (145,237.78) ;
%Straight Lines [id:da870022328775379] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (198.55,237.07) ;
%Straight Lines [id:da3930427053671095] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (207.23,259.13) ;
%Straight Lines [id:da8209010338896896] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (241.93,273.46) ;
%Straight Lines [id:da43534800333695833] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (233.25,280.96) ;
%Straight Lines [id:da9212554216612665] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (233.25,173.33) ;
%Straight Lines [id:da7437022299382638] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (241.93,195.39) ;
%Straight Lines [id:da875504834897419] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (82.67,12.17) -- (198.55,159) ;
%Straight Lines [id:da07571851322239209] 
\draw    (369.67,121.06) -- (443.21,190.68) ;
\draw [shift={(444.67,192.06)}, rotate = 223.43] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;
%Curve Lines [id:da9217574625577738] 
\draw    (82.67,213.46) .. controls (142.67,242.46) and (188.67,253.46) .. (231.42,235.6) ;

% Text Node
\draw (242,68.4) node [anchor=north west][inner sep=0.75pt]    {$\mathrm{Cone} \ \left[\color[rgb]{0.96,0.65,0.14}{X} \ \xrightarrow{f} \ \color[rgb]{0.31,0.89,0.76}{Y}\right]$};
% Text Node
\draw (395,412.4) node [anchor=north west][inner sep=0.75pt]    {$\mathrm{Cone} \ \left[\color[rgb]{0.31,0.89,0.76}{Y\ }\xrightarrow{g}\color[rgb]{0.74,0.06,0.88}{\ Z}\right]$};
% Text Node
\draw (399,206.4) node [anchor=north west][inner sep=0.75pt]    {$\mathrm{Cone} \ \left[\color[rgb]{0.96,0.65,0.14}{X} \ \xrightarrow{g\circ f}\color[rgb]{0.74,0.06,0.88}{\ Z}\right]$};
% Text Node
\draw (417,126.4) node [anchor=north west][inner sep=0.75pt]    {$g_{\ast }$};


\end{tikzpicture}

}
{% endtikzmathcha %}

将上图沿虚线压缩至一点 (这是同伦关系), 得下图. 对大多数拓扑情形而言, 八面体公理是可以直接证出的.

{% endex %}

{% ex %}
($⋆$ 处的同构). 八面体公理中有如下交换方块:
{% tikz %}
% https://q.uiver.app/#q=WzAsNCxbMCwwLCJcXG1hdGhybXtDb25lfShnXFxjaXJjIGYpIl0sWzIsMCwiWFsxXSJdLFswLDEsIlxcbWF0aHJte0NvbmV9KGdfXFxhc3QpIl0sWzIsMSwiWVsxXSJdLFswLDEsInAoZ1xcY2lyYyBmKSJdLFswLDIsImkoZ19cXGFzdCApIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsMywiZlsxXSIsMl0sWzIsMywicChnKSIsMl0sWzAsMywiXFxzdGFyICIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	{\mathrm{Cone}(g\circ f)} && {X[1]} \\
	{\mathrm{Cone}(g_\ast)} && {Y[1]}
	\arrow["{p(g\circ f)}", from=1-1, to=1-3]
	\arrow["{i(g_\ast )}"', dashed, from=1-1, to=2-1]
	\arrow["{\star }"{description}, draw=none, from=1-1, to=2-3]
	\arrow["{f[1]}"', from=1-3, to=2-3]
	\arrow["{p(g)}"', from=2-1, to=2-3]
\end{tikzcd}
{% endtikz %}
拓扑地解释如下:

{% tikzmathcha %}
\scalebox{0.7}{
   

\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,440); %set diagram left start at 0, and has height of 440

%Shape: Regular Polygon [id:dp71601660785235] 
\draw  [fill={rgb, 255:red, 189; green, 16; blue, 224 }  ,fill opacity=0.21 ] (298.35,126.55) -- (267.4,173.17) -- (217.32,103.42) -- (217.32,13.69) -- (267.4,27.99) -- cycle ;
%Shape: Rectangle [id:dp03465563175170061] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (83,79.16) -- (83,108.78) -- (66.67,95.08) -- (66.67,65.46) -- cycle ;
%Straight Lines [id:da026025848236412408] 
\draw    (66.67,65.46) -- (83,79.16) ;
%Straight Lines [id:da58849508725878] 
\draw    (83,79.16) -- (83,108.78) ;
%Straight Lines [id:da2796625839753337] 
\draw    (154,61) -- (246.67,68.94) ;
%Shape: Triangle [id:dp8823625730839788] 
\draw  [fill={rgb, 255:red, 65; green, 117; blue, 5 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (246.67,68.94) -- (260.54,113.19) -- (232.8,89.92) -- cycle ;
%Straight Lines [id:da5383526308657856] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (167,76) -- (251.67,83.94) ;
%Straight Lines [id:da5473623146174504] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (169.42,106.6) -- (260.54,113.19) ;
%Straight Lines [id:da5387459453883585] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (146.67,92.46) -- (232.8,89.92) ;
%Straight Lines [id:da34785000838768587] 
\draw    (260.54,113.19) -- (246.67,68.94) ;
%Shape: Plaque [id:dp8853447671325485] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (136.55,280) .. controls (141.35,284.02) and (145.23,280.66) .. (145.23,272.49) -- (171.25,294.33) .. controls (171.25,302.5) and (175.14,312.37) .. (179.93,316.39) -- (179.93,394.46) .. controls (175.14,390.44) and (171.25,393.8) .. (171.25,401.96) -- (145.23,380.13) .. controls (145.23,371.96) and (141.35,362.09) .. (136.55,358.07) -- cycle ;
%Curve Lines [id:da09140827609683111] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (20.67,334.46) .. controls (62.67,308.61) and (93.22,279.46) .. (136.55,280) ;
%Curve Lines [id:da7835183255457485] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (20.67,334.46) .. controls (73.67,345.61) and (115.67,356.61) .. (136.55,358.07) ;
%Curve Lines [id:da24906705328717993] 
\draw    (20.67,334.46) .. controls (63.67,329.46) and (136.59,315.85) .. (179.93,316.39) ;
%Curve Lines [id:da6777345365081464] 
\draw    (20.67,334.46) .. controls (80.67,363.46) and (128.67,404.61) .. (171.25,401.96) ;
%Curve Lines [id:da14578350962347786] 
\draw    (20.67,334.46) .. controls (80.67,363.46) and (137.34,397.11) .. (179.93,394.46) ;
%Curve Lines [id:da7733602883102373] 
\draw    (20.67,334.46) .. controls (63.67,329.46) and (129.67,286.61) .. (171.25,294.33) ;
%Curve Lines [id:da06778036893703954] 
\draw    (20.67,334.46) .. controls (45.67,299.61) and (100.67,267.61) .. (145.23,272.49) ;
%Curve Lines [id:da5035118257050151] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (20.67,334.46) .. controls (63.67,344.61) and (124.34,378.67) .. (145.23,380.13) ;
%Curve Lines [id:da4620079882338677] 
\draw    (145.23,272.49) .. controls (200.67,276.94) and (214.67,290.94) .. (233.67,301.94) ;
%Curve Lines [id:da22758493427587956] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (136.55,280) .. controls (182.67,287.39) and (203.67,290.39) .. (225.67,304.39) ;
%Curve Lines [id:da8441434596257511] 
\draw    (171.25,294.33) .. controls (214.67,299.39) and (247.67,318.39) .. (269.67,329.39) ;
%Curve Lines [id:da5692115369845487] 
\draw    (179.93,316.39) .. controls (222.67,314.61) and (262.67,341.94) .. (277.67,348.39) ;
%Curve Lines [id:da8307595984126408] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (136.55,358.07) .. controls (189.55,369.22) and (208.67,352.94) .. (228.67,349.94) ;
%Curve Lines [id:da41526617823854806] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (145.23,380.13) .. controls (188.23,390.28) and (219.67,368.94) .. (233.67,360.94) ;
%Curve Lines [id:da8939880552906254] 
\draw    (179.93,394.46) .. controls (216.67,393.94) and (254.67,372.72) .. (275.67,357.94) ;
%Curve Lines [id:da7221895709875095] 
\draw    (171.25,401.96) .. controls (214.67,402.72) and (242.67,398.94) .. (265.67,382.94) ;

%Shape: Regular Polygon [id:dp8419551326625772] 
\draw  [fill={rgb, 255:red, 189; green, 16; blue, 224 }  ,fill opacity=0.21 ] (298.35,376.55) -- (267.4,423.17) -- (217.32,353.42) -- (217.32,263.69) -- (267.4,277.99) -- cycle ;
%Shape: Cloud [id:dp8642192519946075] 
\draw  [fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ] (226.85,311.8) .. controls (226.39,305.63) and (227.9,301.17) .. (230.73,300.31) .. controls (233.56,299.45) and (237.22,302.34) .. (240.16,307.75) .. controls (241.2,305.26) and (243.11,304.54) .. (245.3,305.8) .. controls (247.49,307.06) and (249.71,310.16) .. (251.29,314.16) .. controls (252.18,311.85) and (253.92,311.26) .. (255.89,312.6) .. controls (257.87,313.94) and (259.8,317.01) .. (261.01,320.73) .. controls (262.61,318.84) and (265.16,319.62) .. (267.55,322.72) .. controls (269.94,325.83) and (271.75,330.71) .. (272.18,335.24) .. controls (274.15,337.81) and (275.78,341.51) .. (276.66,345.4) .. controls (277.55,349.29) and (277.6,352.98) .. (276.79,355.52) .. controls (278.73,361.45) and (279.18,367.58) .. (277.98,371.61) .. controls (276.79,375.64) and (274.12,376.97) .. (270.98,375.11) .. controls (270.96,379.82) and (269.45,382.89) .. (267.03,383.13) .. controls (264.61,383.38) and (261.67,380.77) .. (259.33,376.3) .. controls (258.33,381.13) and (255.53,382.94) .. (252.12,380.95) .. controls (248.72,378.97) and (245.33,373.55) .. (243.42,367.02) .. controls (241.08,367.48) and (238.27,365.82) .. (235.62,362.42) .. controls (232.98,359.01) and (230.72,354.15) .. (229.36,348.93) .. controls (226.97,347.4) and (224.65,343.33) .. (223.56,338.74) .. controls (222.48,334.15) and (222.85,330.01) .. (224.5,328.38) .. controls (222.36,324.43) and (221.27,319.24) .. (221.8,315.51) .. controls (222.32,311.78) and (224.34,310.36) .. (226.8,311.98) ; \draw   (224.5,328.38) .. controls (225.51,330.25) and (226.67,331.68) .. (227.84,332.5)(229.36,348.93) .. controls (229.86,349.25) and (230.35,349.45) .. (230.82,349.52)(243.42,367.02) .. controls (243.07,365.82) and (242.77,364.61) .. (242.54,363.4)(259.33,376.3) .. controls (259.51,375.42) and (259.63,374.46) .. (259.68,373.43)(270.98,375.11) .. controls (271,370.1) and (269.34,364.09) .. (266.7,359.67)(276.79,355.52) .. controls (276.37,356.87) and (275.71,357.84) .. (274.89,358.36)(272.18,335.24) .. controls (272.26,336) and (272.29,336.73) .. (272.28,337.43)(261.01,320.73) .. controls (260.61,321.2) and (260.28,321.83) .. (260.03,322.58)(251.29,314.16) .. controls (251.08,314.71) and (250.92,315.35) .. (250.82,316.07)(240.16,307.75) .. controls (240.78,308.9) and (241.36,310.13) .. (241.87,311.43)(226.85,311.8) .. controls (226.91,312.65) and (227.01,313.52) .. (227.15,314.41) ;
%Curve Lines [id:da12953508262489377] 
\draw    (20.67,84.46) .. controls (60.67,54.46) and (110.67,60.46) .. (154,61) ;
%Curve Lines [id:da9822453150403971] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (20.67,84.46) .. controls (93.67,104.46) and (127.67,95.46) .. (146.67,92.46) ;
%Shape: Arc [id:dp7649472644248274] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (169.42,106.6) .. controls (169.42,106.6) and (169.42,106.6) .. (169.42,106.6) .. controls (169.42,106.6) and (169.42,106.6) .. (169.42,106.6) .. controls (165.95,116.13) and (158.14,115.19) .. (151.96,104.49) .. controls (145.78,93.79) and (143.59,77.39) .. (147.06,67.86) .. controls (150.53,58.33) and (158.35,59.27) .. (164.52,69.97) .. controls (170.6,80.49) and (172.82,96.52) .. (169.59,106.11) -- (158.24,87.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (169.42,106.6) .. controls (169.42,106.6) and (169.42,106.6) .. (169.42,106.6) .. controls (169.42,106.6) and (169.42,106.6) .. (169.42,106.6) .. controls (165.95,116.13) and (158.14,115.19) .. (151.96,104.49) .. controls (145.78,93.79) and (143.59,77.39) .. (147.06,67.86) .. controls (150.53,58.33) and (158.35,59.27) .. (164.52,69.97) .. controls (170.6,80.49) and (172.82,96.52) .. (169.59,106.11) ;  
%Shape: Arc [id:dp951509083179515] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (155.44,61.44) .. controls (158.42,62.13) and (161.65,64.99) .. (164.52,69.97) .. controls (170.7,80.67) and (172.89,97.07) .. (169.42,106.6) .. controls (166.86,113.65) and (161.9,114.97) .. (157,110.84) -- (158.24,87.23) -- cycle ; \draw   (155.44,61.44) .. controls (158.42,62.13) and (161.65,64.99) .. (164.52,69.97) .. controls (170.7,80.67) and (172.89,97.07) .. (169.42,106.6) .. controls (166.86,113.65) and (161.9,114.97) .. (157,110.84) ;  
%Straight Lines [id:da12505317492269907] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (146.67,92.46) -- (232.8,89.92) ;
%Curve Lines [id:da6612017726611759] 
\draw    (20.67,84.46) .. controls (63.67,79.46) and (123.67,75.46) .. (167,76) ;
%Curve Lines [id:da520637675693624] 
\draw    (20.67,84.46) .. controls (80.67,113.46) and (126.67,124.46) .. (169.42,106.6) ;
%Shape: Rectangle [id:dp033630767219477775] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (417,111.16) -- (417,140.78) -- (400.67,127.08) -- (400.67,97.46) -- cycle ;
%Straight Lines [id:da11618778980289646] 
\draw    (400.67,97.46) -- (417,111.16) ;
%Straight Lines [id:da5751648573722619] 
\draw    (417,111.16) -- (417,140.78) ;
%Straight Lines [id:da7479214900958315] 
\draw    (488,93) -- (611.67,122.83) ;
%Straight Lines [id:da2870944630065053] 
\draw    (501,108) -- (611.67,122.83) ;
%Straight Lines [id:da3671321916466632] 
\draw    (503.42,138.6) -- (611.67,122.83) ;
%Straight Lines [id:da08131146446200122] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (480.67,124.46) -- (566.8,121.92) ;
%Shape: Plaque [id:dp37668218224858085] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (470.55,280) .. controls (475.35,284.02) and (479.23,280.66) .. (479.23,272.49) -- (505.25,294.33) .. controls (505.25,302.5) and (509.14,312.37) .. (513.93,316.39) -- (513.93,394.46) .. controls (509.14,390.44) and (505.25,393.8) .. (505.25,401.96) -- (479.23,380.13) .. controls (479.23,371.96) and (475.35,362.09) .. (470.55,358.07) -- cycle ;
%Curve Lines [id:da35140075254586756] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (354.67,334.46) .. controls (396.67,308.61) and (427.22,279.46) .. (470.55,280) ;
%Curve Lines [id:da7623639605988639] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (354.67,334.46) .. controls (407.67,345.61) and (449.67,356.61) .. (470.55,358.07) ;
%Curve Lines [id:da3045655298763168] 
\draw    (354.67,334.46) .. controls (397.67,329.46) and (470.59,315.85) .. (513.93,316.39) ;
%Curve Lines [id:da7923014480735058] 
\draw    (354.67,334.46) .. controls (414.67,363.46) and (462.67,404.61) .. (505.25,401.96) ;
%Curve Lines [id:da6842807717639574] 
\draw    (354.67,334.46) .. controls (414.67,363.46) and (471.34,397.11) .. (513.93,394.46) ;
%Curve Lines [id:da7682891643342578] 
\draw    (354.67,334.46) .. controls (397.67,329.46) and (463.67,286.61) .. (505.25,294.33) ;
%Curve Lines [id:da04471449597942101] 
\draw    (354.67,334.46) .. controls (379.67,299.61) and (434.67,267.61) .. (479.23,272.49) ;
%Curve Lines [id:da22023653599533688] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (354.67,334.46) .. controls (397.67,344.61) and (458.34,378.67) .. (479.23,380.13) ;
%Curve Lines [id:da1611997011777404] 
\draw    (479.23,272.49) .. controls (534.67,276.94) and (601.67,316.17) .. (611.67,348.39) ;
%Curve Lines [id:da49209742847433513] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (470.55,280) .. controls (519.67,282.17) and (600.67,320.17) .. (611.67,348.39) ;
%Curve Lines [id:da6436821149946559] 
\draw    (505.25,294.33) .. controls (548.67,299.39) and (594.67,335.17) .. (611.67,348.39) ;
%Curve Lines [id:da7766354232512191] 
\draw    (513.93,316.39) .. controls (556.67,314.61) and (596.67,341.94) .. (611.67,348.39) ;
%Curve Lines [id:da3807109610347288] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (470.55,358.07) .. controls (523.55,369.22) and (591.67,351.39) .. (611.67,348.39) ;
%Curve Lines [id:da7778772565169958] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (479.23,380.13) .. controls (522.23,390.28) and (597.67,356.39) .. (611.67,348.39) ;
%Curve Lines [id:da36437947012713745] 
\draw    (513.93,394.46) .. controls (550.67,393.94) and (590.67,363.17) .. (611.67,348.39) ;
%Curve Lines [id:da4922541747203928] 
\draw    (505.25,401.96) .. controls (548.67,402.72) and (591.67,372.17) .. (611.67,348.39) ;
%Curve Lines [id:da3613116131454601] 
\draw    (354.67,116.46) .. controls (394.67,86.46) and (444.67,92.46) .. (488,93) ;
%Curve Lines [id:da24522649092357596] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (354.67,116.46) .. controls (427.67,136.46) and (461.67,127.46) .. (480.67,124.46) ;
%Shape: Arc [id:dp5666074695561569] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (503.42,138.6) .. controls (503.42,138.6) and (503.42,138.6) .. (503.42,138.6) .. controls (503.42,138.6) and (503.42,138.6) .. (503.42,138.6) .. controls (499.95,148.13) and (492.14,147.19) .. (485.96,136.49) .. controls (479.78,125.79) and (477.59,109.39) .. (481.06,99.86) .. controls (484.53,90.33) and (492.35,91.27) .. (498.52,101.97) .. controls (504.6,112.49) and (506.82,128.52) .. (503.59,138.11) -- (492.24,119.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (503.42,138.6) .. controls (503.42,138.6) and (503.42,138.6) .. (503.42,138.6) .. controls (503.42,138.6) and (503.42,138.6) .. (503.42,138.6) .. controls (499.95,148.13) and (492.14,147.19) .. (485.96,136.49) .. controls (479.78,125.79) and (477.59,109.39) .. (481.06,99.86) .. controls (484.53,90.33) and (492.35,91.27) .. (498.52,101.97) .. controls (504.6,112.49) and (506.82,128.52) .. (503.59,138.11) ;  
%Shape: Arc [id:dp1859286429013658] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (489.44,93.44) .. controls (492.42,94.13) and (495.65,96.99) .. (498.52,101.97) .. controls (504.7,112.67) and (506.89,129.07) .. (503.42,138.6) .. controls (500.86,145.65) and (495.9,146.97) .. (491,142.84) -- (492.24,119.23) -- cycle ; \draw   (489.44,93.44) .. controls (492.42,94.13) and (495.65,96.99) .. (498.52,101.97) .. controls (504.7,112.67) and (506.89,129.07) .. (503.42,138.6) .. controls (500.86,145.65) and (495.9,146.97) .. (491,142.84) ;  
%Straight Lines [id:da2955774018746544] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (480.67,124.46) -- (611.67,122.83) ;
%Curve Lines [id:da13386825028091498] 
\draw    (354.67,116.46) .. controls (397.67,111.46) and (457.67,107.46) .. (501,108) ;
%Curve Lines [id:da5091631318054104] 
\draw    (354.67,116.46) .. controls (414.67,145.46) and (460.67,156.46) .. (503.42,138.6) ;

% Text Node
\draw (242.4,176.57) node [anchor=north west][inner sep=0.75pt]    {$\begin{matrix}
\mathrm{Cone} \ \left[\color[rgb]{0.96,0.65,0.14}{X} \ \xrightarrow{g\circ f}\color[rgb]{0.74,0.06,0.88}{\ Z}\right] & \rightarrow  & \color[rgb]{0.96,0.65,0.14}{X\ }[ 1]\\
\downarrow  & \star  & \downarrow \\
\mathrm{Cone} \ \left[\color[rgb]{0.31,0.89,0.76}{Y\ }\xrightarrow{g}\color[rgb]{0.74,0.06,0.88}{\ Z}\right] & \rightarrow  & \color[rgb]{0.31,0.89,0.76}{Y\ }[ 1]
\end{matrix}$};


\end{tikzpicture}

}
{% endtikzmathcha %}
{% endex %}

### 同伦的推出拉回

{% ex %}
(Abel 范畴的推出-拉回方块). 称交换图 {% tikzinline %} % https://q.uiver.app/#q=WzAsNCxbMCwwLCJYIl0sWzEsMCwiWV8xIl0sWzEsMSwiWiJdLFswLDEsIllfMiJdLFswLDEsImJfMSJdLFsxLDIsImFfMiJdLFswLDMsImFfMSIsMl0sWzMsMiwiYl8yIiwyXV0=
    \begin{tikzcd}[ampersand replacement=\&, sep = small]
        X \& {Y_1} \\
        {Y_2} \& Z
        \arrow["{b_1}", from=1-1, to=1-2]
        \arrow["{a_1}"', from=1-1, to=2-1]
        \arrow["{a_2}", from=1-2, to=2-2]
        \arrow["{b_2}"', from=2-1, to=2-2]
    \end{tikzcd} {% endtikzinline %} 是推出拉回方块, 当且仅当以下是四条 ses 的交换图
{% tikz %}
    % https://q.uiver.app/#q=WzAsMTIsWzEsMSwiWCJdLFsyLDEsIllfMSJdLFsyLDIsIloiXSxbMSwyLCJZXzIiXSxbMCwxLCJLXzEiXSxbMCwyLCJLXzEiXSxbMSwwLCJLXzIiXSxbMiwwLCJLXzIiXSxbMywxLCJDXzEiXSxbMywyLCJDXzEiXSxbMSwzLCJDXzIiXSxbMiwzLCJDXzIiXSxbMCwxLCJiXzEiXSxbMSwyLCJhXzIiXSxbMCwzLCJhXzEiLDJdLFszLDIsImJfMiIsMl0sWzQsMCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMSw4LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNSwzLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsyLDksIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs2LDAsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzMsMTAsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs3LDEsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzIsMTEsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs1LDQsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsNywiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw5LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMSwxMCwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
	& {K_2} & {K_2} \\
	{K_1} & X & {Y_1} & {C_1} \\
	{K_1} & {Y_2} & Z & {C_1} \\
	& {C_2} & {C_2}
	\arrow[equals, from=1-2, to=1-3]
	\arrow[hook, from=1-2, to=2-2]
	\arrow[hook, from=1-3, to=2-3]
	\arrow[hook, from=2-1, to=2-2]
	\arrow["{b_1}", from=2-2, to=2-3]
	\arrow["{a_1}"', from=2-2, to=3-2]
	\arrow[two heads, from=2-3, to=2-4]
	\arrow["{a_2}", from=2-3, to=3-3]
	\arrow[equals, from=2-4, to=3-4]
	\arrow[equals, from=3-1, to=2-1]
	\arrow[hook, from=3-1, to=3-2]
	\arrow["{b_2}"', from=3-2, to=3-3]
	\arrow[two heads, from=3-2, to=4-2]
	\arrow[two heads, from=3-3, to=3-4]
	\arrow[two heads, from=3-3, to=4-3]
	\arrow[equals, from=4-3, to=4-2]
\end{tikzcd}
    {% endtikz %}

也当且仅当存在短正合列
$$\begin{equation}
0\to X\xrightarrow{\binom{a_1}{b_1}} Y_2\oplus Y_1\xrightarrow{(b_2,-a_2)} Z\to 0.
\end{equation}$$
{% endex %}

{% def %}
(同伦推出拉回). 若 $⋆$ 处 $2 × 2$ 规格的交换方块是同伦推出拉回的, 若存在好三角

$$\begin{equation}
X\xrightarrow{\binom{a_1}{b_1}} Y_2⊕ Y_1\xrightarrow{(b_2,-a_2)} Z\xrightarrow h X[1].
\end{equation}$$

考虑其同伦背景, 有时将第二项记作 $Y_2∨ Y_1$. 将满足以上条件的方块 $⋆$ 称作同伦的推出拉回.

{% enddef %}

{% ex %}
(三角范畴中同伦推出拉回的特例, [证明](Homotopic_PBPO)). 若以上 $⋆$ 能补全作两行两列的好三角
{% tikz %}
    % https://q.uiver.app/#q=WzAsMTIsWzEsMSwiWCJdLFsyLDEsIllfMSJdLFsyLDIsIloiXSxbMSwyLCJZXzIiXSxbMCwxLCJQIl0sWzAsMiwiUCJdLFsxLDAsIlEiXSxbMiwwLCJRIl0sWzMsMSwiUFsxXSJdLFszLDIsIlBbMV0iXSxbMSwzLCJRWzFdIl0sWzIsMywiUVsxXSJdLFswLDEsImJfMSJdLFsxLDIsImFfMiJdLFswLDMsImFfMSIsMl0sWzMsMiwiYl8yIiwyXSxbMSw4XSxbNSwzXSxbMiw5XSxbNiwwXSxbMywxMF0sWzcsMV0sWzIsMTFdLFs1LDQsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsNywiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw5LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMSwxMCwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwwXSxbMCwyLCJcXHN0YXIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
	\& Q \& Q \\
	P \& X \& {Y_1} \& {P[1]} \\
	P \& {Y_2} \& Z \& {P[1]} \\
	\& {Q[1]} \& {Q[1]}
	\arrow[Rightarrow, no head, from=1-2, to=1-3]
	\arrow[from=1-2, to=2-2]
	\arrow[from=1-3, to=2-3]
	\arrow[from=2-1, to=2-2]
	\arrow["{b_1}", from=2-2, to=2-3]
	\arrow["{a_1}"', from=2-2, to=3-2]
	\arrow["\star"{description}, draw=none, from=2-2, to=3-3]
	\arrow[from=2-3, to=2-4]
	\arrow["{a_2}", from=2-3, to=3-3]
	\arrow[Rightarrow, no head, from=2-4, to=3-4]
	\arrow[Rightarrow, no head, from=3-1, to=2-1]
	\arrow[from=3-1, to=3-2]
	\arrow["{b_2}"', from=3-2, to=3-3]
	\arrow[from=3-2, to=4-2]
	\arrow[from=3-3, to=3-4]
	\arrow[from=3-3, to=4-3]
	\arrow[Rightarrow, no head, from=4-3, to=4-2]
\end{tikzcd}
{% endtikz %}
则 $⋆$ 是同伦推出拉回.
{% endex %}

{% thm %}
(八面体公理的等价定义, [证明](Homotopic_PBPO_Oct)). 预预三角范畴是三角范畴, 当且仅当

1. 预三角范畴满足八面体公理;
2. 任意两个红色态射给出如下三角射与交换图:
   {% tikz %}
   % https://q.uiver.app/#q=WzAsMTIsWzAsMSwiWCIsWzM1OSwxMDAsNjAsMV1dLFsxLDEsIllfMiIsWzM1OSwxMDAsNjAsMV1dLFswLDIsIllfMSIsWzM1OSwxMDAsNjAsMV1dLFsxLDIsIloiXSxbMiwxLCJXIl0sWzAsMCwiWCJdLFsxLDAsIllfMiBcXG9wbHVzIFlfMSJdLFsyLDAsIloiXSxbMywwLCJYWzFdIl0sWzMsMSwiWFsxXSIsWzIzNiwxMDAsNjAsMV1dLFsyLDIsIlciLFsyMzYsMTAwLDYwLDFdXSxbMywyLCJZXzFbMV0iXSxbMCwyLCJiXzEiLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFswLDEsImFfMSIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNjBdfSxbMzU5LDEwMCw2MCwxXV0sWzEsMywiYl8yIl0sWzEsNF0sWzUsNiwiXFxiaW5vbXthXzF9e2JfMX0iXSxbNiw3LCIoYl8xLC1hXzIpIl0sWzcsOCwiXFxtdVxcbGFtYmRhIiwwLHsiY29sb3VyIjpbMjM2LDEwMCw2MF19LFsyMzYsMTAwLDYwLDFdXSxbNCwxMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw5LCJcXG11IiwwLHsiY29sb3VyIjpbMjM2LDEwMCw2MF19LFsyMzYsMTAwLDYwLDFdXSxbOSwxMV0sWzIsMywiYV8yIl0sWzMsMTAsIlxcbGFtYmRhIiwyLHsiY29sb3VyIjpbMjM2LDEwMCw2MF19LFsyMzYsMTAwLDYwLDFdXSxbMTAsMTFdXQ==
   \begin{tikzcd}
   X & {Y_2 \oplus Y_1} & Z & {X[1]} \\
   \color{rgb,255:red,255;green,51;blue,54}{X} & \color{rgb,255:red,255;green,51;blue,54}{Y_2} & W & \color{rgb,255:red,51;green,65;blue,255}{X[1]} \\
   \color{rgb,255:red,255;green,51;blue,54}{Y_1} & Z & \color{rgb,255:red,51;green,65;blue,255}{W} & {Y_1[1]}
   \arrow["{\binom{a_1}{b_1}}", from=1-1, to=1-2]
   \arrow["{(b_2,-a_2)}", from=1-2, to=1-3]
   \arrow["{\mu\lambda}", color={rgb,255:red,51;green,65;blue,255}, from=1-3, to=1-4]
   \arrow["{a_1}", color={rgb,255:red,255;green,51;blue,54}, from=2-1, to=2-2]
   \arrow["{b_1}", color={rgb,255:red,255;green,51;blue,54}, from=2-1, to=3-1]
   \arrow[from=2-2, to=2-3]
   \arrow["{b_2}", from=2-2, to=3-2]
   \arrow["\mu", color={rgb,255:red,51;green,65;blue,255}, from=2-3, to=2-4]
   \arrow[equals, from=2-3, to=3-3]
   \arrow[from=2-4, to=3-4]
   \arrow["{a_2}", from=3-1, to=3-2]
   \arrow["\lambda"', color={rgb,255:red,51;green,65;blue,255}, from=3-2, to=3-3]
   \arrow[from=3-3, to=3-4]
   \end{tikzcd}
   {% endtikz %}
3. 给定红色处三角与同伦推出拉回方块, 则可补全下图三角与三角射
   {% tikz %}
   % https://q.uiver.app/#q=WzAsMTIsWzAsMSwiWCIsWzM1OSwxMDAsNjAsMV1dLFsxLDEsIllfMiIsWzM1OSwxMDAsNjAsMV1dLFswLDIsIllfMSIsWzM1OSwxMDAsNjAsMV1dLFsxLDIsIloiLFszNTksMTAwLDYwLDFdXSxbMiwxLCJXIixbMzU5LDEwMCw2MCwxXV0sWzAsMCwiWCJdLFsxLDAsIllfMiBcXG9wbHVzIFlfMSJdLFsyLDAsIloiXSxbMywwLCJYWzFdIl0sWzMsMSwiWFsxXSIsWzM1OSwxMDAsNjAsMV1dLFsyLDIsIlciLFsyMzYsMTAwLDYwLDFdXSxbMywyLCJZXzFbMV0iXSxbMCwyLCJiXzEiLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFswLDEsImFfMSIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNjBdfSxbMzU5LDEwMCw2MCwxXV0sWzEsMywiYl8yIiwwLHsiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbMSw0LCIiLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX1dLFs1LDYsIlxcYmlub217YV8xfXtiXzF9Il0sWzYsNywiKGJfMSwtYV8yKSJdLFs3LDgsIlxcbXVcXGxhbWJkYSIsMCx7ImNvbG91ciI6WzIzNiwxMDAsNjBdfSxbMjM2LDEwMCw2MCwxXV0sWzQsMTAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsOSwiXFxtdSIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNjBdfSxbMzU5LDEwMCw2MCwxXV0sWzksMTFdLFsyLDMsImFfMiIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNjBdfSxbMzU5LDEwMCw2MCwxXV0sWzMsMTAsIlxcbGFtYmRhIiwyLHsiY29sb3VyIjpbMjM2LDEwMCw2MF19LFsyMzYsMTAwLDYwLDFdXSxbMTAsMTFdXQ==
   \begin{tikzcd}
   X & {Y_2 \oplus Y_1} & Z & {X[1]} \\
   \color{rgb,255:red,255;green,51;blue,54}{X} & \color{rgb,255:red,255;green,51;blue,54}{Y_2} & \color{rgb,255:red,255;green,51;blue,54}{W} & \color{rgb,255:red,255;green,51;blue,54}{X[1]} \\
   \color{rgb,255:red,255;green,51;blue,54}{Y_1} & \color{rgb,255:red,255;green,51;blue,54}{Z} & \color{rgb,255:red,51;green,65;blue,255}{W} & {Y_1[1]}
   \arrow["{\binom{a_1}{b_1}}", from=1-1, to=1-2]
   \arrow["{(b_2,-a_2)}", from=1-2, to=1-3]
   \arrow["{\mu\lambda}", color={rgb,255:red,51;green,65;blue,255}, from=1-3, to=1-4]
   \arrow["{a_1}", color={rgb,255:red,255;green,51;blue,54}, from=2-1, to=2-2]
   \arrow["{b_1}", color={rgb,255:red,255;green,51;blue,54}, from=2-1, to=3-1]
   \arrow[color={rgb,255:red,255;green,51;blue,54}, from=2-2, to=2-3]
   \arrow["{b_2}", color={rgb,255:red,255;green,51;blue,54}, from=2-2, to=3-2]
   \arrow["\mu", color={rgb,255:red,255;green,51;blue,54}, from=2-3, to=2-4]
   \arrow[equals, from=2-3, to=3-3]
   \arrow[from=2-4, to=3-4]
   \arrow["{a_2}", color={rgb,255:red,255;green,51;blue,54}, from=3-1, to=3-2]
   \arrow["\lambda"', color={rgb,255:red,51;green,65;blue,255}, from=3-2, to=3-3]
   \arrow[from=3-3, to=3-4]
   \end{tikzcd}
   {% endtikz %}
{% endthm %}

{% note %}
注意: 对条件 2. 与 3. 的同伦推出拉回方块, 需要反号的态射是 $⇒$:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzAsMV0sWzEsMl0sWzIsM10sWzMsNF0sWzAsNV0sWzUsNl0sWzYsNywiIiwyLHsibGV2ZWwiOjJ9XSxbNyw0XSxbMiw3XSxbMSw2XV0=
\begin{tikzcd}
\bullet & \bullet & \bullet & \bullet \\
\bullet & \bullet & \bullet & \bullet
\arrow[from=1-1, to=1-2]
\arrow[from=1-1, to=2-1]
\arrow[from=1-2, to=1-3]
\arrow[from=1-2, to=2-2]
\arrow[from=1-3, to=1-4]
\arrow[from=1-3, to=2-3]
\arrow[from=1-4, to=2-4]
\arrow[from=2-1, to=2-2]
\arrow[Rightarrow, from=2-2, to=2-3]
\arrow[from=2-3, to=2-4]
\end{tikzcd}
{% endtikz %}
{% endnote %}

{% thm %}
([Neeman 公理](https://www.sciencedirect.com/science/article/pii/002186939190292G)). 预三角范畴是三角范畴, 若对任意交换图 {% tikzinline %} % https://q.uiver.app/#q=WzAsNCxbMCwwLCJYIl0sWzEsMCwiWSJdLFswLDEsIlgnIl0sWzEsMSwiWSciXSxbMCwxLCJ1Il0sWzIsMywidSciXSxbMCwyLCJmIl0sWzEsMywiZyJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
	X \& Y \\
	{X'} \& {Y'}
	\arrow["u", from=1-1, to=1-2]
	\arrow["f", from=1-1, to=2-1]
	\arrow["g", from=1-2, to=2-2]
	\arrow["{u'}", from=2-1, to=2-2]
\end{tikzcd} {% endtikzinline %}, 存在态射 $h$ 使得有三角射
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzEsMCwiWSJdLFswLDEsIlgnIl0sWzEsMSwiWSciXSxbMiwxLCJaJyJdLFszLDEsIlgnWzFdIl0sWzMsMCwiWFsxXSJdLFsyLDAsIloiXSxbMCwxLCJ1Il0sWzIsMywidSciXSxbMCwyLCJmIl0sWzEsMywiZyJdLFszLDQsInYnIl0sWzQsNSwidyciXSxbNiw1LCJmWzFdIl0sWzEsNywidiJdLFs3LDYsInciXSxbNyw0LCJoIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
	X \& Y \& Z \& {X[1]} \\
	{X'} \& {Y'} \& {Z'} \& {X'[1]}
	\arrow["u", from=1-1, to=1-2]
	\arrow["f", from=1-1, to=2-1]
	\arrow["v", from=1-2, to=1-3]
	\arrow["g", from=1-2, to=2-2]
	\arrow["w", from=1-3, to=1-4]
	\arrow["h", dashed, from=1-3, to=2-3]
	\arrow["{f[1]}", from=1-4, to=2-4]
	\arrow["{u'}", from=2-1, to=2-2]
	\arrow["{v'}", from=2-2, to=2-3]
	\arrow["{w'}", from=2-3, to=2-4]
\end{tikzcd}
{% endtikz %}
以及好三角
$$\begin{equation}
Y \oplus X' \xrightarrow{\begin{pmatrix}-v&0\\g&u'\end{pmatrix}} Z \oplus Y' \xrightarrow{\begin{pmatrix}-w&0\\h&v'\end{pmatrix}} X[1] \oplus W\xrightarrow{\begin{pmatrix}-u[1]&0\\f[1]&w'\end{pmatrix}} Y[1]\oplus X'[1]
\end{equation}$$


{% endthm %}

{% slo %}
TR3 中二推三态射可以选的好一些.
{% endslo %}

### 应用: MV 序列?

{% ex %}
(MV-序列). 考虑以下同伦的推出拉回:
{% tikzmathcha %}
\scalebox{0.8}{
  
\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,406); %set diagram left start at 0, and has height of 406

%Shape: Plaque [id:dp8429957223204843] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (164.55,249) .. controls (169.35,253.02) and (173.23,249.66) .. (173.23,241.49) -- (199.25,263.33) .. controls (199.25,271.5) and (203.14,281.37) .. (207.93,285.39) -- (207.93,363.46) .. controls (203.14,359.44) and (199.25,362.8) .. (199.25,370.96) -- (173.23,349.13) .. controls (173.23,340.96) and (169.35,331.09) .. (164.55,327.07) -- cycle ;
%Shape: Arc [id:dp01593962676685856] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (184.15,329.07) .. controls (182.72,327.68) and (181.3,325.81) .. (179.96,323.49) .. controls (173.78,312.79) and (171.59,296.39) .. (175.06,286.86) .. controls (177.11,281.21) and (180.7,279.24) .. (184.56,280.8) -- (186.24,306.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (184.15,329.07) .. controls (182.72,327.68) and (181.3,325.81) .. (179.96,323.49) .. controls (173.78,312.79) and (171.59,296.39) .. (175.06,286.86) .. controls (177.11,281.21) and (180.7,279.24) .. (184.56,280.8) ;  
%Shape: Rectangle [id:dp6634954782215399] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (111,298.16) -- (111,327.78) -- (94.67,314.08) -- (94.67,284.46) -- cycle ;
%Curve Lines [id:da6448183100961744] 
\draw    (48.67,303.46) .. controls (88.67,273.46) and (138.67,279.46) .. (182,280) ;
%Curve Lines [id:da46608441863155536] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (48.67,303.46) .. controls (121.67,323.46) and (155.67,314.46) .. (174.67,311.46) ;
%Shape: Arc [id:dp9712662896620226] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (183.44,280.44) .. controls (186.42,281.13) and (189.65,283.99) .. (192.52,288.97) .. controls (198.7,299.67) and (200.89,316.07) .. (197.42,325.6) .. controls (194.86,332.65) and (189.9,333.97) .. (185,329.84) -- (186.24,306.23) -- cycle ; \draw   (183.44,280.44) .. controls (186.42,281.13) and (189.65,283.99) .. (192.52,288.97) .. controls (198.7,299.67) and (200.89,316.07) .. (197.42,325.6) .. controls (194.86,332.65) and (189.9,333.97) .. (185,329.84) ;  
%Curve Lines [id:da5133230099250154] 
\draw    (48.67,303.46) .. controls (91.67,298.46) and (151.67,294.46) .. (195,295) ;
%Straight Lines [id:da8179782911340394] 
\draw    (94.67,284.46) -- (111,298.16) ;
%Straight Lines [id:da21362535876354016] 
\draw    (111,298.16) -- (111,327.78) ;
%Curve Lines [id:da34879609878021367] 
\draw    (48.67,303.46) .. controls (108.67,332.46) and (154.67,343.46) .. (197.42,325.6) ;
%Shape: Regular Polygon [id:dp22003839287642313] 
\draw  [fill={rgb, 255:red, 189; green, 16; blue, 224 }  ,fill opacity=0.21 ] (590.35,345.55) -- (559.4,392.17) -- (509.32,322.42) -- (509.32,232.69) -- (559.4,246.99) -- cycle ;
%Shape: Rectangle [id:dp16041223605668264] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (375,298.16) -- (375,327.78) -- (358.67,314.08) -- (358.67,284.46) -- cycle ;
%Straight Lines [id:da8911720464956854] 
\draw    (358.67,284.46) -- (375,298.16) ;
%Straight Lines [id:da49428805137506915] 
\draw    (375,298.16) -- (375,327.78) ;
%Straight Lines [id:da41768371326802] 
\draw    (446,280) -- (538.67,287.94) ;
%Shape: Triangle [id:dp8838205291667496] 
\draw  [fill={rgb, 255:red, 65; green, 117; blue, 5 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (538.67,287.94) -- (552.54,332.19) -- (524.8,308.92) -- cycle ;
%Straight Lines [id:da5553027421834174] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (459,295) -- (543.67,302.94) ;
%Straight Lines [id:da867281520004799] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (461.42,325.6) -- (552.54,332.19) ;
%Straight Lines [id:da20266048787719293] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (438.67,311.46) -- (524.8,308.92) ;
%Straight Lines [id:da6705537169741107] 
\draw    (552.54,332.19) -- (538.67,287.94) ;
%Curve Lines [id:da6679107186875521] 
\draw    (312.67,303.46) .. controls (352.67,273.46) and (402.67,279.46) .. (446,280) ;
%Curve Lines [id:da8405861660830691] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (312.67,303.46) .. controls (385.67,323.46) and (419.67,314.46) .. (438.67,311.46) ;
%Shape: Arc [id:dp24824312434151063] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (448.15,329.07) .. controls (446.72,327.68) and (445.3,325.81) .. (443.96,323.49) .. controls (437.78,312.79) and (435.59,296.39) .. (439.06,286.86) .. controls (441.11,281.21) and (444.7,279.24) .. (448.56,280.8) -- (450.24,306.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (448.15,329.07) .. controls (446.72,327.68) and (445.3,325.81) .. (443.96,323.49) .. controls (437.78,312.79) and (435.59,296.39) .. (439.06,286.86) .. controls (441.11,281.21) and (444.7,279.24) .. (448.56,280.8) ;  
%Shape: Arc [id:dp5160370378999888] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (447.44,280.44) .. controls (450.42,281.13) and (453.65,283.99) .. (456.52,288.97) .. controls (462.7,299.67) and (464.89,316.07) .. (461.42,325.6) .. controls (458.86,332.65) and (453.9,333.97) .. (449,329.84) -- (450.24,306.23) -- cycle ; \draw   (447.44,280.44) .. controls (450.42,281.13) and (453.65,283.99) .. (456.52,288.97) .. controls (462.7,299.67) and (464.89,316.07) .. (461.42,325.6) .. controls (458.86,332.65) and (453.9,333.97) .. (449,329.84) ;  
%Straight Lines [id:da5770180412236376] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (438.67,311.46) -- (524.8,308.92) ;
%Curve Lines [id:da715339020149331] 
\draw    (312.67,303.46) .. controls (355.67,298.46) and (415.67,294.46) .. (459,295) ;
%Curve Lines [id:da7764892439898623] 
\draw    (312.67,303.46) .. controls (372.67,332.46) and (418.67,343.46) .. (461.42,325.6) ;
%Shape: Plaque [id:dp5170927333019899] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (164.55,20) .. controls (169.35,24.02) and (173.23,20.66) .. (173.23,12.49) -- (199.25,34.33) .. controls (199.25,42.5) and (203.14,52.37) .. (207.93,56.39) -- (207.93,134.46) .. controls (203.14,130.44) and (199.25,133.8) .. (199.25,141.96) -- (173.23,120.13) .. controls (173.23,111.96) and (169.35,102.09) .. (164.55,98.07) -- cycle ;
%Shape: Regular Polygon [id:dp18597851426162615] 
\draw  [fill={rgb, 255:red, 189; green, 16; blue, 224 }  ,fill opacity=0.21 ] (590.35,116.55) -- (559.4,163.17) -- (509.32,93.42) -- (509.32,3.69) -- (559.4,17.99) -- cycle ;

% Text Node
\draw (169.4,146.57) node [anchor=north west][inner sep=0.75pt]    {$\begin{matrix}
\textcolor[rgb]{0.31,0.89,0.76}{Y} & \rightarrow  & \textcolor[rgb]{0.74,0.06,0.88}{Z}\\
\downarrow  & \text{PBPO} & \downarrow \\
\mathrm{Cone} \ \left[\textcolor[rgb]{0.96,0.65,0.14}{X} \ \xrightarrow{f}\textcolor[rgb]{0.74,0.06,0.88}{\ }\textcolor[rgb]{0.31,0.89,0.76}{Y}\right] & \rightarrow  & \mathrm{Cone} \ \left[\textcolor[rgb]{0.96,0.65,0.14}{X\ }\xrightarrow{g\circ f}\textcolor[rgb]{0.74,0.06,0.88}{\ Z}\right]
\end{matrix}$};


\end{tikzpicture}
}
{% endtikzmathcha %}
此时有函子的长正合列
$$
\begin{align}
\cdots\to [M,Y]&\xrightarrow{\begin{pmatrix}{[M,g_\ast]} \ \ {[M,i(f)]}\end{pmatrix}} [M,Z]\oplus [M,\mathrm{Cone}(f)]\\[6pt]
&\xrightarrow{\begin{pmatrix}[M,i(f\circ g)]& -[M,g_\ast]\end{pmatrix}} [M,\mathrm{Cone}(g\circ f)]\xrightarrow{[M,\delta]}[M,Y[1]]\to \cdots. 
\end{align}
$$

作为特例, 传统的 MV 序列
$$\begin{aligned}
\cdots &\to H_n(X\cap Y)\to H_n(X)\oplus H_n (Y) \to\\
&\to H_n(X\cup Y)\to H_{n-1}(X\cap Y)\to\cdots 
\end{aligned}$$
连接态射 $\delta$ 定义作以下两种相同的复合 (八面体公理). 一者是
$$\begin{equation}
\mathrm{Cone}(g\circ f)\to \mathrm{Cone}[Z\to \mathrm{Cone}(g\circ f)]\to Y[1]. 
\end{equation}$$

对应示意图

{% tikzmathcha %}
\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,538); %set diagram left start at 0, and has height of 538

%Shape: Regular Polygon [id:dp32090609986814034] 
\draw  [fill={rgb, 255:red, 189; green, 16; blue, 224 }  ,fill opacity=0.21 ] (376.35,306.15) -- (345.4,352.78) -- (295.32,283.03) -- (295.32,193.3) -- (345.4,207.59) -- cycle ;
%Shape: Plaque [id:dp8177848711257423] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (443.75,333.12) .. controls (438.96,329.1) and (435.08,332.46) .. (435.08,340.62) -- (409.05,318.79) .. controls (409.05,310.62) and (405.17,300.75) .. (400.38,296.73) -- (400.38,218.66) .. controls (405.17,222.68) and (409.05,219.32) .. (409.05,211.16) -- (435.08,232.99) .. controls (435.08,241.16) and (438.96,251.03) .. (443.75,255.05) -- cycle ;
%Curve Lines [id:da08259708730096249] 
\draw    (559.64,278.66) .. controls (517.64,304.51) and (487.09,333.66) .. (443.75,333.12) ;
%Curve Lines [id:da15202330173236844] 
\draw    (559.64,278.66) .. controls (506.64,267.51) and (464.64,256.51) .. (443.75,255.05) ;
%Curve Lines [id:da968587370696046] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (559.64,278.66) .. controls (516.64,283.66) and (443.71,297.27) .. (400.38,296.73) ;
%Curve Lines [id:da6499996741652017] 
\draw    (559.64,278.66) .. controls (499.64,249.66) and (451.64,208.51) .. (409.05,211.16) ;
%Curve Lines [id:da00465718686275185] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (559.64,278.66) .. controls (499.64,249.66) and (442.97,216.01) .. (400.38,218.66) ;
%Curve Lines [id:da16980475754706226] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (559.64,278.66) .. controls (516.64,283.66) and (450.64,326.51) .. (409.05,318.79) ;
%Curve Lines [id:da32079130054273985] 
\draw    (559.64,278.66) .. controls (534.64,313.51) and (479.64,345.51) .. (435.08,340.62) ;
%Curve Lines [id:da38356341204457656] 
\draw    (559.64,278.66) .. controls (516.64,268.51) and (455.97,234.45) .. (435.08,232.99) ;
%Curve Lines [id:da5536110091911559] 
\draw    (435.08,340.62) .. controls (379.64,336.17) and (384.67,335.83) .. (365.67,324.83) ;
%Curve Lines [id:da7111465155712728] 
\draw    (443.75,333.12) .. controls (397.64,325.73) and (391.67,330.83) .. (369.67,316.83) ;
%Curve Lines [id:da14008856956209592] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (409.05,318.79) .. controls (365.64,313.73) and (332.64,294.73) .. (310.64,283.73) ;
%Curve Lines [id:da35914466443097104] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (400.38,296.73) .. controls (357.64,298.51) and (317.64,271.17) .. (302.64,264.73) ;
%Curve Lines [id:da6343073669376345] 
\draw    (443.75,255.05) .. controls (390.75,243.9) and (381.67,257.83) .. (361.67,260.83) ;
%Curve Lines [id:da04652523364438221] 
\draw    (435.08,232.99) .. controls (392.08,222.84) and (371.67,237.83) .. (357.67,245.83) ;
%Curve Lines [id:da6249044195011277] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (400.38,218.66) .. controls (363.64,219.17) and (325.64,240.4) .. (304.64,255.17) ;
%Shape: Cloud [id:dp6007733409581826] 
\draw  [fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (353.46,301.32) .. controls (353.92,307.49) and (352.41,311.95) .. (349.58,312.81) .. controls (346.75,313.67) and (343.08,310.78) .. (340.15,305.37) .. controls (339.11,307.86) and (337.2,308.58) .. (335.01,307.32) .. controls (332.82,306.06) and (330.6,302.96) .. (329.02,298.96) .. controls (328.13,301.27) and (326.39,301.86) .. (324.41,300.52) .. controls (322.44,299.18) and (320.5,296.11) .. (319.3,292.39) .. controls (317.7,294.28) and (315.15,293.5) .. (312.76,290.4) .. controls (310.37,287.29) and (308.56,282.41) .. (308.12,277.87) .. controls (306.16,275.31) and (304.53,271.61) .. (303.64,267.72) .. controls (302.76,263.83) and (302.71,260.14) .. (303.51,257.6) .. controls (301.58,251.67) and (301.13,245.54) .. (302.33,241.51) .. controls (303.52,237.48) and (306.19,236.14) .. (309.33,238.01) .. controls (309.35,233.3) and (310.86,230.23) .. (313.28,229.98) .. controls (315.7,229.74) and (318.64,232.35) .. (320.98,236.82) .. controls (321.98,231.99) and (324.78,230.18) .. (328.19,232.16) .. controls (331.59,234.15) and (334.98,239.57) .. (336.89,246.09) .. controls (339.23,245.64) and (342.04,247.3) .. (344.69,250.7) .. controls (347.33,254.11) and (349.59,258.97) .. (350.95,264.19) .. controls (353.34,265.72) and (355.66,269.79) .. (356.74,274.38) .. controls (357.83,278.97) and (357.46,283.11) .. (355.81,284.74) .. controls (357.95,288.69) and (359.04,293.88) .. (358.51,297.61) .. controls (357.99,301.34) and (355.97,302.76) .. (353.51,301.13) ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (355.81,284.74) .. controls (354.8,282.87) and (353.64,281.44) .. (352.47,280.62)(350.95,264.19) .. controls (350.45,263.87) and (349.96,263.67) .. (349.49,263.6)(336.89,246.09) .. controls (337.24,247.3) and (337.53,248.51) .. (337.77,249.72)(320.98,236.82) .. controls (320.8,237.7) and (320.68,238.66) .. (320.63,239.69)(309.33,238.01) .. controls (309.3,243.02) and (310.97,249.03) .. (313.61,253.45)(303.51,257.6) .. controls (303.94,256.25) and (304.59,255.27) .. (305.42,254.76)(308.12,277.87) .. controls (308.05,277.12) and (308.02,276.39) .. (308.02,275.69)(319.3,292.39) .. controls (319.7,291.92) and (320.03,291.29) .. (320.28,290.53)(329.02,298.96) .. controls (329.23,298.41) and (329.39,297.77) .. (329.49,297.05)(340.15,305.37) .. controls (339.53,304.22) and (338.95,302.99) .. (338.44,301.69)(353.46,301.32) .. controls (353.39,300.47) and (353.29,299.6) .. (353.16,298.71) ;
%Shape: Rectangle [id:dp9809426056071593] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (161,258.77) -- (161,288.39) -- (144.67,274.68) -- (144.67,245.06) -- cycle ;
%Straight Lines [id:da6983785406257188] 
\draw    (144.67,245.06) -- (161,258.77) ;
%Straight Lines [id:da5338686413531029] 
\draw    (161,258.77) -- (161,288.39) ;
%Straight Lines [id:da3283205546608763] 
\draw    (232,240.61) -- (324.67,248.55) ;
%Shape: Triangle [id:dp19819807172866] 
\draw  [fill={rgb, 255:red, 65; green, 117; blue, 5 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (324.67,248.55) -- (338.54,292.8) -- (310.8,269.52) -- cycle ;
%Straight Lines [id:da947823116594815] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (245,255.61) -- (329.67,263.55) ;
%Straight Lines [id:da3962342317507359] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (247.42,286.2) -- (338.54,292.8) ;
%Straight Lines [id:da32529196355071166] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (224.67,272.06) -- (310.8,269.52) ;
%Straight Lines [id:da2272611912414948] 
\draw    (338.54,292.8) -- (324.67,248.55) ;
%Curve Lines [id:da945831967185996] 
\draw    (98.67,264.06) .. controls (138.67,234.06) and (188.67,240.06) .. (232,240.61) ;
%Curve Lines [id:da6646403531385361] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (98.67,264.06) .. controls (171.67,284.06) and (205.67,275.06) .. (224.67,272.06) ;
%Shape: Arc [id:dp787035890616316] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (234.15,289.68) .. controls (232.72,288.28) and (231.3,286.42) .. (229.96,284.09) .. controls (223.78,273.4) and (221.59,257) .. (225.06,247.47) .. controls (227.11,241.82) and (230.7,239.85) .. (234.56,241.4) -- (236.24,266.83) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (234.15,289.68) .. controls (232.72,288.28) and (231.3,286.42) .. (229.96,284.09) .. controls (223.78,273.4) and (221.59,257) .. (225.06,247.47) .. controls (227.11,241.82) and (230.7,239.85) .. (234.56,241.4) ;  
%Shape: Arc [id:dp29153575468232984] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (233.44,241.05) .. controls (236.42,241.73) and (239.65,244.6) .. (242.52,249.57) .. controls (248.7,260.27) and (250.89,276.67) .. (247.42,286.2) .. controls (244.86,293.26) and (239.9,294.58) .. (235,290.44) -- (236.24,266.83) -- cycle ; \draw   (233.44,241.05) .. controls (236.42,241.73) and (239.65,244.6) .. (242.52,249.57) .. controls (248.7,260.27) and (250.89,276.67) .. (247.42,286.2) .. controls (244.86,293.26) and (239.9,294.58) .. (235,290.44) ;  
%Straight Lines [id:da1694961379933051] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (224.67,272.06) -- (310.8,269.52) ;
%Curve Lines [id:da5732871233573038] 
\draw    (98.67,264.06) .. controls (141.67,259.06) and (201.67,255.06) .. (245,255.61) ;
%Curve Lines [id:da4888242206163922] 
\draw    (98.67,264.06) .. controls (158.67,293.06) and (204.67,304.06) .. (247.42,286.2) ;
%Curve Lines [id:da5512761337476864] 
\draw    (409.05,211.16) .. controls (383.84,210.71) and (363.82,211.8) .. (346.96,215.93) ;
%Curve Lines [id:da1760297851065702] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (346.96,215.93) .. controls (334.8,218.91) and (324.28,223.47) .. (314.64,230.17) ;
%Straight Lines [id:da8675128808920758] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (357.67,245.83) -- (346.67,253.17) ;
%Straight Lines [id:da4220025087947319] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (361.67,260.83) -- (352.67,264.17) ;
%Straight Lines [id:da7329245851099326] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (369.67,316.83) -- (353.67,307.17) ;
%Straight Lines [id:da8926726818007231] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (365.67,324.83) -- (349.67,313.17) ;
%Shape: Regular Polygon [id:dp2596709865013329] 
\draw  [fill={rgb, 255:red, 189; green, 16; blue, 224 }  ,fill opacity=0.21 ] (376.35,116.99) -- (345.4,163.61) -- (295.32,93.86) -- (295.32,4.13) -- (345.4,18.42) -- cycle ;
%Shape: Rectangle [id:dp1399809742186322] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (161,69.6) -- (161,99.22) -- (144.67,85.52) -- (144.67,55.9) -- cycle ;
%Straight Lines [id:da03348069323333802] 
\draw    (144.67,55.9) -- (161,69.6) ;
%Straight Lines [id:da6530775485879969] 
\draw    (161,69.6) -- (161,99.22) ;
%Straight Lines [id:da6458282521770125] 
\draw    (232,51.44) -- (324.67,59.38) ;
%Shape: Triangle [id:dp4411885079838167] 
\draw  [fill={rgb, 255:red, 65; green, 117; blue, 5 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (324.67,59.38) -- (338.54,103.63) -- (310.8,80.35) -- cycle ;
%Straight Lines [id:da8631775422798296] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (245,66.44) -- (329.67,74.38) ;
%Straight Lines [id:da4716152943203682] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (247.42,97.04) -- (338.54,103.63) ;
%Straight Lines [id:da15714663847827093] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (224.67,82.9) -- (310.8,80.35) ;
%Straight Lines [id:da5222964087517661] 
\draw    (338.54,103.63) -- (324.67,59.38) ;
%Curve Lines [id:da6218781707517151] 
\draw    (98.67,74.9) .. controls (138.67,44.9) and (188.67,50.9) .. (232,51.44) ;
%Curve Lines [id:da030086769354217058] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (98.67,74.9) .. controls (171.67,94.9) and (205.67,85.9) .. (224.67,82.9) ;
%Shape: Arc [id:dp3350908520085589] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (234.15,100.51) .. controls (232.72,99.11) and (231.3,97.25) .. (229.96,94.93) .. controls (223.78,84.23) and (221.59,67.83) .. (225.06,58.3) .. controls (227.11,52.65) and (230.7,50.68) .. (234.56,52.24) -- (236.24,77.67) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (234.15,100.51) .. controls (232.72,99.11) and (231.3,97.25) .. (229.96,94.93) .. controls (223.78,84.23) and (221.59,67.83) .. (225.06,58.3) .. controls (227.11,52.65) and (230.7,50.68) .. (234.56,52.24) ;  
%Shape: Arc [id:dp6361719298425286] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (233.44,51.88) .. controls (236.42,52.57) and (239.65,55.43) .. (242.52,60.41) .. controls (248.7,71.1) and (250.89,87.5) .. (247.42,97.04) .. controls (244.86,104.09) and (239.9,105.41) .. (235,101.28) -- (236.24,77.67) -- cycle ; \draw   (233.44,51.88) .. controls (236.42,52.57) and (239.65,55.43) .. (242.52,60.41) .. controls (248.7,71.1) and (250.89,87.5) .. (247.42,97.04) .. controls (244.86,104.09) and (239.9,105.41) .. (235,101.28) ;  
%Straight Lines [id:da8242534567081603] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (224.67,82.9) -- (310.8,80.35) ;
%Curve Lines [id:da5045101572646087] 
\draw    (98.67,74.9) .. controls (141.67,69.9) and (201.67,65.9) .. (245,66.44) ;
%Curve Lines [id:da8028027562568782] 
\draw    (98.67,74.9) .. controls (158.67,103.9) and (204.67,114.9) .. (247.42,97.04) ;
%Shape: Plaque [id:dp7353047060880964] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (443.75,514.12) .. controls (438.96,510.1) and (435.08,513.46) .. (435.08,521.62) -- (409.05,499.79) .. controls (409.05,491.62) and (405.17,481.75) .. (400.38,477.73) -- (400.38,399.66) .. controls (405.17,403.68) and (409.05,400.32) .. (409.05,392.16) -- (435.08,413.99) .. controls (435.08,422.16) and (438.96,432.03) .. (443.75,436.05) -- cycle ;
%Curve Lines [id:da3789689618801193] 
\draw    (559.64,459.66) .. controls (517.64,485.51) and (487.09,514.66) .. (443.75,514.12) ;
%Curve Lines [id:da6115930386181656] 
\draw    (559.64,459.66) .. controls (506.64,448.51) and (464.64,437.51) .. (443.75,436.05) ;
%Curve Lines [id:da02334165220334028] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (559.64,459.66) .. controls (516.64,464.66) and (443.71,478.27) .. (400.38,477.73) ;
%Curve Lines [id:da9296366519193751] 
\draw    (559.64,459.66) .. controls (499.64,430.66) and (451.64,389.51) .. (409.05,392.16) ;
%Curve Lines [id:da6005735926925819] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (559.64,459.66) .. controls (499.64,430.66) and (442.97,397.01) .. (400.38,399.66) ;
%Curve Lines [id:da27750738209314396] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (559.64,459.66) .. controls (516.64,464.66) and (450.64,507.51) .. (409.05,499.79) ;
%Curve Lines [id:da39873650276895534] 
\draw    (559.64,459.66) .. controls (534.64,494.51) and (479.64,526.51) .. (435.08,521.62) ;
%Curve Lines [id:da8093528664477276] 
\draw    (559.64,459.66) .. controls (516.64,449.51) and (455.97,415.45) .. (435.08,413.99) ;
%Curve Lines [id:da8385785220005453] 
\draw    (435.08,521.62) .. controls (379.64,517.17) and (311.67,473.39) .. (302.64,445.73) ;
%Curve Lines [id:da4281708542261895] 
\draw    (443.75,514.12) .. controls (397.64,506.73) and (319.67,469.72) .. (302.64,445.73) ;
%Curve Lines [id:da13664240846114684] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (409.05,499.79) .. controls (368.67,489.39) and (325.67,462.39) .. (302.64,445.73) ;
%Curve Lines [id:da2762272403644377] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (400.38,477.73) .. controls (357.64,479.51) and (317.64,452.17) .. (302.64,445.73) ;
%Curve Lines [id:da2114751722822752] 
\draw    (443.75,436.05) .. controls (390.75,424.9) and (322.64,442.73) .. (302.64,445.73) ;
%Curve Lines [id:da1303363227205545] 
\draw    (435.08,413.99) .. controls (392.08,403.84) and (316.64,437.73) .. (302.64,445.73) ;
%Curve Lines [id:da7453399494699431] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (400.38,399.66) .. controls (363.64,400.17) and (323.64,430.95) .. (302.64,445.73) ;
%Curve Lines [id:da5275539274419438] 
\draw    (409.05,392.16) .. controls (384.67,390.39) and (312.67,420.39) .. (302.64,445.73) ;

\end{tikzpicture}

{% endtikzmathcha %}

另一者是 $\mathrm{Cone}(g\circ f)\to X[1]\to Y[1]$, 对应示意图

{% tikzmathcha %}

\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,417); %set diagram left start at 0, and has height of 417

%Shape: Regular Polygon [id:dp4641073783775922] 
\draw  [fill={rgb, 255:red, 189; green, 16; blue, 224 }  ,fill opacity=0.21 ] (452.35,116.99) -- (421.4,163.61) -- (371.32,93.86) -- (371.32,4.13) -- (421.4,18.42) -- cycle ;
%Shape: Rectangle [id:dp73538041819963] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (237,69.6) -- (237,99.22) -- (220.67,85.52) -- (220.67,55.9) -- cycle ;
%Straight Lines [id:da08229015749892765] 
\draw    (220.67,55.9) -- (237,69.6) ;
%Straight Lines [id:da16649168907034118] 
\draw    (237,69.6) -- (237,99.22) ;
%Straight Lines [id:da7056178502616914] 
\draw    (308,51.44) -- (400.67,59.38) ;
%Shape: Triangle [id:dp5856618936265021] 
\draw  [fill={rgb, 255:red, 65; green, 117; blue, 5 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (400.67,59.38) -- (414.54,103.63) -- (386.8,80.35) -- cycle ;
%Straight Lines [id:da19310701644606088] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (321,66.44) -- (405.67,74.38) ;
%Straight Lines [id:da9168395168220149] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (323.42,97.04) -- (414.54,103.63) ;
%Straight Lines [id:da3562871818126496] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (300.67,82.9) -- (386.8,80.35) ;
%Straight Lines [id:da05287644082507503] 
\draw    (414.54,103.63) -- (400.67,59.38) ;
%Curve Lines [id:da5244242926063158] 
\draw    (174.67,74.9) .. controls (214.67,44.9) and (264.67,50.9) .. (308,51.44) ;
%Curve Lines [id:da4451001855699481] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (174.67,74.9) .. controls (247.67,94.9) and (281.67,85.9) .. (300.67,82.9) ;
%Shape: Arc [id:dp2674367072840975] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (310.15,100.51) .. controls (308.72,99.11) and (307.3,97.25) .. (305.96,94.93) .. controls (299.78,84.23) and (297.59,67.83) .. (301.06,58.3) .. controls (303.11,52.65) and (306.7,50.68) .. (310.56,52.24) -- (312.24,77.67) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (310.15,100.51) .. controls (308.72,99.11) and (307.3,97.25) .. (305.96,94.93) .. controls (299.78,84.23) and (297.59,67.83) .. (301.06,58.3) .. controls (303.11,52.65) and (306.7,50.68) .. (310.56,52.24) ;  
%Shape: Arc [id:dp7314639756324179] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (309.44,51.88) .. controls (312.42,52.57) and (315.65,55.43) .. (318.52,60.41) .. controls (324.7,71.1) and (326.89,87.5) .. (323.42,97.04) .. controls (320.86,104.09) and (315.9,105.41) .. (311,101.28) -- (312.24,77.67) -- cycle ; \draw   (309.44,51.88) .. controls (312.42,52.57) and (315.65,55.43) .. (318.52,60.41) .. controls (324.7,71.1) and (326.89,87.5) .. (323.42,97.04) .. controls (320.86,104.09) and (315.9,105.41) .. (311,101.28) ;  
%Straight Lines [id:da7256638142042053] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (300.67,82.9) -- (386.8,80.35) ;
%Curve Lines [id:da3534748968549357] 
\draw    (174.67,74.9) .. controls (217.67,69.9) and (277.67,65.9) .. (321,66.44) ;
%Curve Lines [id:da025500881134620235] 
\draw    (174.67,74.9) .. controls (234.67,103.9) and (280.67,114.9) .. (323.42,97.04) ;
%Shape: Rectangle [id:dp7298011574418399] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=1 ][fill={rgb, 255:red, 245; green, 166; blue, 35 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (237,190.16) -- (237,219.78) -- (220.67,206.08) -- (220.67,176.46) -- cycle ;
%Straight Lines [id:da6041891216011521] 
\draw    (220.67,176.46) -- (237,190.16) ;
%Straight Lines [id:da5161318352206448] 
\draw    (237,190.16) -- (237,219.78) ;
%Straight Lines [id:da3682600561502467] 
\draw    (308,172) -- (431.67,201.83) ;
%Straight Lines [id:da558533231078572] 
\draw    (321,187) -- (431.67,201.83) ;
%Straight Lines [id:da4682383124679539] 
\draw    (323.42,217.6) -- (431.67,201.83) ;
%Straight Lines [id:da9657298392122686] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (300.67,203.46) -- (386.8,200.92) ;
%Curve Lines [id:da7377078813702367] 
\draw    (174.67,195.46) .. controls (214.67,165.46) and (264.67,171.46) .. (308,172) ;
%Curve Lines [id:da19535642577599277] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (174.67,195.46) .. controls (247.67,215.46) and (281.67,206.46) .. (300.67,203.46) ;
%Shape: Arc [id:dp03605074057546798] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ][dash pattern={on 0.84pt off 2.51pt}] (310.15,221.07) .. controls (308.72,219.68) and (307.3,217.81) .. (305.96,215.49) .. controls (299.78,204.79) and (297.59,188.39) .. (301.06,178.86) .. controls (303.11,173.21) and (306.7,171.24) .. (310.56,172.8) -- (312.24,198.23) -- cycle ; \draw  [dash pattern={on 0.84pt off 2.51pt}] (310.15,221.07) .. controls (308.72,219.68) and (307.3,217.81) .. (305.96,215.49) .. controls (299.78,204.79) and (297.59,188.39) .. (301.06,178.86) .. controls (303.11,173.21) and (306.7,171.24) .. (310.56,172.8) ;  
%Shape: Arc [id:dp38756219672931147] 
\draw  [draw opacity=0][fill={rgb, 255:red, 248; green, 231; blue, 28 }  ,fill opacity=1 ] (309.44,172.44) .. controls (312.42,173.13) and (315.65,175.99) .. (318.52,180.97) .. controls (324.7,191.67) and (326.89,208.07) .. (323.42,217.6) .. controls (320.86,224.65) and (315.9,225.97) .. (311,221.84) -- (312.24,198.23) -- cycle ; \draw   (309.44,172.44) .. controls (312.42,173.13) and (315.65,175.99) .. (318.52,180.97) .. controls (324.7,191.67) and (326.89,208.07) .. (323.42,217.6) .. controls (320.86,224.65) and (315.9,225.97) .. (311,221.84) ;  
%Straight Lines [id:da4635713233755083] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (300.67,203.46) -- (431.67,201.83) ;
%Curve Lines [id:da9847031727227995] 
\draw    (174.67,195.46) .. controls (217.67,190.46) and (277.67,186.46) .. (321,187) ;
%Curve Lines [id:da3937938131693053] 
\draw    (174.67,195.46) .. controls (234.67,224.46) and (280.67,235.46) .. (323.42,217.6) ;
%Shape: Plaque [id:dp4460920767196215] 
\draw  [fill={rgb, 255:red, 80; green, 227; blue, 194 }  ,fill opacity=0.24 ] (307.55,274) .. controls (312.35,278.02) and (316.23,274.66) .. (316.23,266.49) -- (342.25,288.33) .. controls (342.25,296.5) and (346.14,306.37) .. (350.93,310.39) -- (350.93,388.46) .. controls (346.14,384.44) and (342.25,387.8) .. (342.25,395.96) -- (316.23,374.13) .. controls (316.23,365.96) and (312.35,356.09) .. (307.55,352.07) -- cycle ;
%Curve Lines [id:da1527113926292596] 
\draw    (342.25,288.33) .. controls (393.67,295.15) and (468.67,318.15) .. (483.67,329.15) ;
%Curve Lines [id:da9652927677203207] 
\draw    (350.93,310.39) .. controls (403.34,316.21) and (468.67,328.15) .. (483.67,329.15) ;
%Curve Lines [id:da1837764974023095] 
\draw    (350.93,388.46) .. controls (396.67,373.15) and (472.67,347.15) .. (483.67,329.15) ;
%Curve Lines [id:da4909365948860649] 
\draw    (342.25,395.96) .. controls (385.67,390.15) and (475.67,351.15) .. (483.67,329.15) ;
%Curve Lines [id:da37118828931835335] 
\draw    (316.23,266.49) .. controls (368.64,272.32) and (469.67,313.15) .. (483.67,329.15) ;
%Curve Lines [id:da49784080584203605] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (307.55,274) .. controls (359.97,279.82) and (464.67,313.15) .. (483.67,329.15) ;
%Curve Lines [id:da5489319176168823] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (316.23,374.13) .. controls (360.67,368.15) and (467.67,339.15) .. (483.67,329.15) ;
%Curve Lines [id:da8871738989421238] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (307.55,352.07) .. controls (345.67,352.15) and (468.67,335.15) .. (483.67,329.15) ;
%Curve Lines [id:da14358476333079362] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (316.08,374.13) .. controls (264.67,367.3) and (189.67,344.3) .. (174.67,333.3) ;
%Curve Lines [id:da9064510091291356] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (307.4,352.07) .. controls (254.99,346.24) and (189.67,334.3) .. (174.67,333.3) ;
%Curve Lines [id:da375935038991811] 
\draw  [dash pattern={on 0.84pt off 2.51pt}]  (307.4,274) .. controls (261.67,289.3) and (185.67,315.3) .. (174.67,333.3) ;
%Curve Lines [id:da8281717729755635] 
\draw    (316.08,266.49) .. controls (272.67,272.3) and (182.67,311.3) .. (174.67,333.3) ;
%Curve Lines [id:da0753111427067843] 
\draw    (342.1,395.96) .. controls (289.69,390.14) and (188.67,349.3) .. (174.67,333.3) ;
%Curve Lines [id:da0030503009966469374] 
\draw    (350.78,388.46) .. controls (298.36,382.64) and (193.67,349.3) .. (174.67,333.3) ;
%Curve Lines [id:da4751794832502996] 
\draw    (342.1,288.33) .. controls (297.67,294.3) and (190.67,323.3) .. (174.67,333.3) ;
%Curve Lines [id:da7794222528658603] 
\draw    (350.78,310.39) .. controls (312.67,310.3) and (189.67,327.3) .. (174.67,333.3) ;

\end{tikzpicture}

{% endtikzmathcha %}

{% endex %}

