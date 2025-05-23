---
title: 外三角范畴 ET3 类似物
author: Chencheng Zhang
layout: post
category: notes
---

## 证明

{% prop %}
(外三角范畴的 EX3 类似物). 假定 $gf$ 是 inflation, 且 $g$ 是 deflation. 此时, $f$ 是 inflation, 同时可补全四条 conflation 的交换图.
{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzEsMiwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFswLDIsIlxcLCJdLFs0LDIsIlxcLCJdLFswLDEsImYiXSxbMSwyLCJnIl0sWzAsMywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywyLCJnZiJdLFs1LDYsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsMV0sWzYsNF0sWzEsNF0sWzIsN10sWzQsN11d
\begin{tikzcd}
	&& \bullet & \bullet \\
	& \bullet & \bullet & \bullet \\
	{\,} & \bullet & \bullet & \bullet & {\,}
	\arrow[equals, from=1-3, to=1-4]
	\arrow[from=1-3, to=2-3]
	\arrow[from=1-4, to=2-4]
	\arrow["f", from=2-2, to=2-3]
	\arrow[equals, from=2-2, to=3-2]
	\arrow[from=2-3, to=2-4]
	\arrow["g", from=2-3, to=3-3]
	\arrow[from=2-4, to=3-4]
	\arrow["gf", from=3-2, to=3-3]
	\arrow[from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}
{% pf %}
将 $gf$ 补全作 $𝔼$-三角:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTQsWzEsMSwiWCBcXG9wbHVzIFciXSxbMiwxLCJFIl0sWzIsMiwiWSJdLFsxLDIsIlgiXSxbMywxLCJUIl0sWzIsMCwiVyJdLFszLDAsIlciXSxbMywyLCJaIl0sWzEsMCwiVyJdLFsyLDMsIlxcZGVsdGEiXSxbMSwzLCIwIl0sWzMsMywiXFxldGEiXSxbMCwyLCJcXCwiXSxbNCwyLCJcXCwiXSxbMCwxLCJmIl0sWzEsMiwiZyJdLFszLDIsImdmIl0sWzUsNiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiw0LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSw0LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiw3LCJkIl0sWzQsNywiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzUsMV0sWzgsMCwiZV8yIl0sWzAsMywicF8xIl0sWzgsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOSwxMCwiKGdmKV5cXGFzdCIsMl0sWzExLDksImReXFxhc3QiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}
	& W & W & W \\
	& {X \oplus W} & E & T \\
	{\,} & X & Y & Z & {\,} \\
	& 0 & \delta & \eta
	\arrow[equals, from=1-2, to=1-3]
	\arrow["{e_2}", from=1-2, to=2-2]
	\arrow[equals, from=1-3, to=1-4]
	\arrow[from=1-3, to=2-3]
	\arrow[dashed, from=1-4, to=2-4]
	\arrow["f", from=2-2, to=2-3]
	\arrow["{p_1}", from=2-2, to=3-2]
	\arrow[dashed, from=2-3, to=2-4]
	\arrow["g", from=2-3, to=3-3]
	\arrow[dashed, from=2-4, to=3-4]
	\arrow["gf", from=3-2, to=3-3]
	\arrow["d", from=3-3, to=3-4]
	\arrow["{(gf)^\ast}"', from=4-3, to=4-2]
	\arrow["{d^\ast}"', dashed, from=4-4, to=4-3]
\end{tikzcd}
{% endtikz %}
由长正合列, $δ ∈ \ker ((gf)^∗) = \mathrm{im}(d^∗)$. 此时, 下图底行与两纵列是 $𝔼$-三角, 但虚线处未必是 $𝔼$-三角.
{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzEsMSwiWCJdLFsyLDEsIkUiXSxbMiwyLCJZIl0sWzEsMiwiWCJdLFszLDEsIlQiXSxbMiwwLCJXIl0sWzMsMCwiVyJdLFszLDIsIloiXSxbMCwyLCJcXCwiXSxbNCwyLCJcXCwiXSxbMCwxLCJmIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsMiwiZyJdLFszLDIsImdmIl0sWzUsNiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiw0XSxbMSw0LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiw3LCJkIl0sWzQsN10sWzUsMV0sWzAsMywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
	&& W & W \\
	& X & E & T \\
	{\,} & X & Y & Z & {\,}
	\arrow[equals, from=1-3, to=1-4]
	\arrow[from=1-3, to=2-3]
	\arrow[from=1-4, to=2-4]
	\arrow["f", dashed, from=2-2, to=2-3]
	\arrow[equals, from=2-2, to=3-2]
	\arrow[dashed, from=2-3, to=2-4]
	\arrow["g", from=2-3, to=3-3]
	\arrow[from=2-4, to=3-4]
	\arrow["gf", from=3-2, to=3-3]
	\arrow["d", from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}

暂时忽略态射 $E' → T$. 使用两个 deflation 的所谓拉回, 构造核心方块 $\binom{E'T}{YZ}$ 以及四个 $𝔼$-三角的交换图. 由最右行对应的扩张关于 $d$ 的拉回唯一, 故存在同构 $φ$ 使得下图交换
{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzAsMSwiWCJdLFsxLDEsIkUiXSxbMSwyLCJZIl0sWzAsMiwiWCJdLFszLDEsIlQiXSxbMSwwLCJXIl0sWzMsMCwiVyJdLFszLDIsIloiXSxbMiwxLCJFJyJdLFsyLDAsIlciXSxbMiwyLCJZIl0sWzAsMSwiZiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDIsImciXSxbMywyLCJnZiJdLFs2LDRdLFs0LDddLFs1LDFdLFswLDMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzgsNF0sWzEsOCwiXFx2YXJwaGkiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOSw2LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDhdLFs1LDksIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEwLDddLFs4LDEwXSxbMiwxMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
	& W & W & W \\
	X & E & {E'} & T \\
	X & Y & Y & Z
	\arrow[equals, from=1-2, to=1-3]
	\arrow[from=1-2, to=2-2]
	\arrow[equals, from=1-3, to=1-4]
	\arrow[from=1-3, to=2-3]
	\arrow[from=1-4, to=2-4]
	\arrow["f", dashed, from=2-1, to=2-2]
	\arrow[equals, from=2-1, to=3-1]
	\arrow["\varphi", dashed, from=2-2, to=2-3]
	\arrow["g", from=2-2, to=3-2]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-3]
	\arrow[from=2-4, to=3-4]
	\arrow["gf", from=3-1, to=3-2]
	\arrow[equals, from=3-2, to=3-3]
	\arrow[from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}
由于 $[X → E' → T]$ 是 $𝔼$-三角, 与之等价的 $[X → E → T]$ 是 $𝔼$-三角.

{% endpf %}
{% endprop %}