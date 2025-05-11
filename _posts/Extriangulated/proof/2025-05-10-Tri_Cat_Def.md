---
title: 三角范畴的定义, 八面体公理
author: Chencheng Zhang
layout: post
category: caprice
---

## 预三角范畴

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
  $$\begin{equation}
  \begin{bmatrix}
  X & \rightarrow  & Y & \rightarrow  & Z & \rightarrow  & TX\\
  f\downarrow  \ \ \ \ &  & \downarrow  &  & \downarrow  &  & \ \ \ \ \downarrow Tf  \\
  X & \rightarrow  & Y & \rightarrow  & X & \rightarrow  & TX'
  \end{bmatrix};
  \end{equation}$$
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

1. (三角关于逆时针旋转封闭). 若 $[X \xrightarrow u Y\xrightarrow vZ\xrightarrow w TX] ∈ ℰ$, 则 $[T^{-1} Z \xrightarrow {T^{-1}(w)}X \xrightarrow u Y\xrightarrow vZ] ∈ ℰ$.
2. (嵌入唯一). TR 1-2 中态射嵌入的三角 (在同构的意义下) 是唯一的.
3. (嵌入无向). TR 1-2 中的态射可以嵌入三角的任意位置.
4. ([上同调函子](Yoneda_Homological)). 米田嵌入是上同调函子, 换言之, 任意可表函子导出长正合列.
5. 三角中的单态射是可裂单, 满态射是可裂满.

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
(基变换, 余积变换). 以下是八面体公理的等价形式 (请注意符号).

1. (基变换, 完整版本). 若下图中 $r_1$, $r_2$ 与 $c_3$ 均为好三角, 则 $c_2$ 是好三角且所有方块交换:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTcsWzEsMiwiWCJdLFsyLDIsIlkiXSxbMywyLCJXIixbMTE5LDEwMCw2MCwxXV0sWzQsMiwiWFsxXSJdLFsxLDMsIlgiLFsxMTksMTAwLDYwLDFdXSxbMiwzLCJaIixbMTE5LDEwMCw2MCwxXV0sWzMsMywiUiIsWzExOSwxMDAsNjAsMV1dLFs0LDMsIlhbMV0iLFsxMTksMTAwLDYwLDFdXSxbMiw0LCJTIl0sWzMsNCwiUyJdLFswLDIsInJfMSJdLFswLDMsInJfMiJdLFsyLDAsImNfMiJdLFszLDAsImNfMyJdLFs0LDQsIllbMV0iXSxbMiwxLCJTWy0xXSJdLFszLDEsIlNbLTFdIl0sWzAsMSwidSJdLFsxLDIsInYiXSxbMiwzLCJ3Il0sWzQsNSwieCIsMCx7ImNvbG91ciI6WzExOSwxMDAsNjBdfSxbMTE5LDEwMCw2MCwxXV0sWzUsNiwieSIsMCx7ImNvbG91ciI6WzExOSwxMDAsNjBdfSxbMTE5LDEwMCw2MCwxXV0sWzYsNywieiJdLFswLDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsNywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw5LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDE0LCItcVsxXSIsMCx7ImNvbG91ciI6WzM1MiwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFszNTIsMTAwLDYwLDFdXSxbNywxNCwidVsxXSIsMCx7ImNvbG91ciI6WzM1MiwxMDAsNjBdfSxbMzUyLDEwMCw2MCwxXV0sWzE1LDE2LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNSwxLCJxIiwwLHsiY29sb3VyIjpbMzUyLDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzM1MiwxMDAsNjAsMV1dLFsxLDUsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDgsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxNiwyLCJcXGFscGhhIl0sWzIsNiwiXFxiZXRhIiwwLHsiY29sb3VyIjpbMTE5LDEwMCw2MF19LFsxMTksMTAwLDYwLDFdXSxbNiw5LCJcXGdhbW1hIl1d
\begin{tikzcd}
	&& {c_2} & {c_3} \\
	&& {S[-1]} & {S[-1]} \\
	{r_1} & X & Y & \color{rgb,255:red,54;green,255;blue,51}{W} & {X[1]} \\
	{r_2} & \color{rgb,255:red,54;green,255;blue,51}{X} & \color{rgb,255:red,54;green,255;blue,51}{Z} & \color{rgb,255:red,54;green,255;blue,51}{R} & \color{rgb,255:red,54;green,255;blue,51}{{X[1]}} \\
	&& S & S & {Y[1]}
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
	\arrow["z", from=4-4, to=4-5]
	\arrow["\gamma", from=4-4, to=5-4]
	\arrow["{u[1]}", color={rgb,255:red,255;green,51;blue,78}, from=4-5, to=5-5]
	\arrow[equals, from=5-3, to=5-4]
	\arrow["{-q[1]}", color={rgb,255:red,255;green,51;blue,78}, dashed, from=5-4, to=5-5]
\end{tikzcd}
{% endtikz %}


   {% tikz %}
   % https://q.uiver.app/#q=WzAsMTcsWzEsMiwiWCJdLFsyLDIsIlkiXSxbMywyLCJXIixbMTE5LDEwMCw2MCwxXV0sWzQsMiwiWFsxXSJdLFsxLDMsIlgiLFsxMTksMTAwLDYwLDFdXSxbMiwzLCJaIixbMTE5LDEwMCw2MCwxXV0sWzMsMywiUiIsWzExOSwxMDAsNjAsMV1dLFs0LDMsIlhbMV0iLFsxMTksMTAwLDYwLDFdXSxbMiw0LCJTIl0sWzMsNCwiUyJdLFswLDIsInJfMSJdLFswLDMsInJfMiJdLFsyLDAsImNfMiJdLFszLDAsImNfMyJdLFs0LDQsIllbMV0iXSxbMiwxLCJTWy0xXSJdLFszLDEsIlNbLTFdIl0sWzAsMSwidSJdLFsxLDIsInYiXSxbMiwzLCJ3Il0sWzQsNSwieCIsMCx7ImNvbG91ciI6WzExOSwxMDAsNjBdfSxbMTE5LDEwMCw2MCwxXV0sWzUsNiwieSIsMCx7ImNvbG91ciI6WzExOSwxMDAsNjBdfSxbMTE5LDEwMCw2MCwxXV0sWzYsNywieiJdLFswLDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsNywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw5LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDE0LCItcVsxXSIsMCx7ImNvbG91ciI6WzM1MiwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFszNTIsMTAwLDYwLDFdXSxbNywxNCwidVsxXSIsMCx7ImNvbG91ciI6WzM1MiwxMDAsNjBdfSxbMzUyLDEwMCw2MCwxXV0sWzE1LDE2LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNSwxLCJxIiwwLHsiY29sb3VyIjpbMzUyLDEwMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzM1MiwxMDAsNjAsMV1dLFsxLDUsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDgsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxNiwyLCJcXGFscGhhIl0sWzIsNiwiXFxiZXRhIiwwLHsiY29sb3VyIjpbMTE5LDEwMCw2MF19LFsxMTksMTAwLDYwLDFdXSxbNiw5LCJcXGdhbW1hIl1d
   \begin{tikzcd}[ampersand replacement=\&]
   \&\& {c_2} \& {c_3} \\
   \&\& {S[-1]} \& {S[-1]} \\
   {r_1} \& X \& Y \& \color{green}{W} \& {X[1]} \\
   {r_2} \& \color{green}{X} \& \color{green}{Z} \& \color{green}{R} \& \color{green}{{X[1]}} \\
   \&\& S \& S \& {Y[1]}
   \arrow[equals, from=2-3, to=2-4]
   \arrow["q", color={red}, dashed, from=2-3, to=3-3]
   \arrow["\alpha", from=2-4, to=3-4]
   \arrow["u", from=3-2, to=3-3]
   \arrow[equals, from=3-2, to=4-2]
   \arrow["v", from=3-3, to=3-4]
   \arrow[dashed, from=3-3, to=4-3]
   \arrow["w", from=3-4, to=3-5]
   \arrow["\beta", color={green}, from=3-4, to=4-4]
   \arrow[equals, from=3-5, to=4-5]
   \arrow["x", color={green}, from=4-2, to=4-3]
   \arrow["y", color={green}, from=4-3, to=4-4]
   \arrow[dashed, from=4-3, to=5-3]
   \arrow["z", from=4-4, to=4-5]
   \arrow["\gamma", from=4-4, to=5-4]
   \arrow["{u[1]}", color={red}, from=4-5, to=5-5]
   \arrow[equals, from=5-3, to=5-4]
   \arrow["{-q[1]}", color={red}, dashed, from=5-4, to=5-5]
   \end{tikzcd}
   {% endtikz %}

2. (基变换, 精简版本). 基变换中, 绿色部分 (横三角 + 纵箭头) 补成全图.
   

{% endprop %}

## 八面体公理是同伦的推出拉回

{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzEsMiwiMSJdLFsyLDIsIjFcXHN0YXIgMiJdLFszLDIsIjIiXSxbNCwyLCIxIl0sWzQsMywiMSJdLFsxLDMsIjEiXSxbMiwzLCJcXGJ1bGxldCJdLFszLDMsIjJcXHN0YXIgMyJdLFsyLDQsIjMiXSxbMyw0LCIzIl0sWzIsMSwiMyJdLFszLDEsIjMiXSxbMCwyLCJyXzIiXSxbMCwzLCJyXzMiXSxbMiwwLCJjXzIiXSxbMywwLCJjXzMiXSxbMCwxXSxbMSwyXSxbMiwzXSxbMyw0LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDUsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsNl0sWzcsNF0sWzYsN10sWzgsOSwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTAsMTEsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEwLDFdLFsxMSwyXSxbMiw3XSxbNyw5XSxbMSw2XSxbNiw4XV0=
\begin{tikzcd}
	&& {c_2} & {c_3} \\
	&& 3 & 3 \\
	{r_2} & 1 & {1\star 2} & 2 & 1 \\
	{r_3} & 1 & \bullet & {2\star 3} & 1 \\
	&& 3 & 3
	\arrow[equals, from=2-3, to=2-4]
	\arrow[from=2-3, to=3-3]
	\arrow[from=2-4, to=3-4]
	\arrow[from=3-2, to=3-3]
	\arrow[equals, from=3-2, to=4-2]
	\arrow[from=3-3, to=3-4]
	\arrow[from=3-3, to=4-3]
	\arrow[from=3-4, to=3-5]
	\arrow[from=3-4, to=4-4]
	\arrow[equals, from=3-5, to=4-5]
	\arrow[from=4-2, to=4-3]
	\arrow[from=4-3, to=4-4]
	\arrow[from=4-3, to=5-3]
	\arrow[from=4-4, to=4-5]
	\arrow[from=4-4, to=5-4]
	\arrow[equals, from=5-3, to=5-4]
\end{tikzcd}
{% endtikz %}

{% def %}
(三角扩张). 给定三角范畴的两个对象类 $O_1$ 与 $O_2$, 定义
$$\begin{equation}
O_1\star O_2=\{Y\mid \exists X\in O_1\,\text{与}\, Z\in O_2\,\text{ 使得存在好三角 }\, X\to Y\to Z\to X[1]\}.
\end{equation}$$
{% enddef %}

