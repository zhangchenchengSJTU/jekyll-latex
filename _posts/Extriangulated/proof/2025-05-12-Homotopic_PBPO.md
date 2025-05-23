---
title: 特殊的同伦推出拉回
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

给定[三角范畴](Tri_Cat_Def).

{% lem %}
(同伦推出拉回的特例). 若 $⋆$ 处 $2 × 2$ 规格的交换方块补全作两行两列的好三角
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

当且仅当存在好三角

$$\begin{equation}
X\xrightarrow{\binom{a_1}{b_1}} Y_2⊕ Y_1\xrightarrow{(b_2,-a_2)} Z\xrightarrow h X[1].
\end{equation}$$

考虑其同伦背景, 有时将第二项记作 $Y_2∨ Y_1$. 将满足以上条件的方块 $⋆$ 称作同伦的推出拉回.

{% endlem %}

{% pf %}
一方面, 若有上述同伦的推出拉回, 下验证基变换的交换图:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzEsMCwiWCJdLFsxLDEsIllfMSBcXG9wbHVzIFlfMiJdLFsxLDIsIloiXSxbMSwzLCJYWzFdIl0sWzAsMiwiWV8xIl0sWzIsMiwiUVsxXSJdLFswLDEsIllfMSJdLFszLDIsIllfMVsxXSJdLFszLDEsIllfMVsxXSJdLFsyLDEsIllfMiJdLFsyLDMsIlhbMV0iXSxbMiwwLCJYIl0sWzMsMywiWV8xWzFdXFxvcGx1cyBZXzJbMV0iXSxbMCwxLCJcXGJpbm9te2FfMX17Yl8xfSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDIsIihhXzIsIC1iXzIpIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsMywiaCIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDVdLFs0LDIsImFfMiJdLFs2LDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzgsNywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNSw3LCItIl0sWzYsMSwiXFxiaW5vbSAxMCJdLFsxLDksIigwLDEpIl0sWzksOCwiMCJdLFszLDEwLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDEwLCItIl0sWzksNV0sWzExLDksImFfMSJdLFswLDExLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCwxMiwiXFxiaW5vbXthXzF9e2JfMX1bMV0iXSxbNywxMiwiXFxiaW5vbSAxMCJdXQ==
\begin{tikzcd}
	& X & X \\
	{Y_1} & {Y_1 \oplus Y_2} & {Y_2} & {Y_1[1]} \\
	{Y_1} & Z & {Q[1]} & {Y_1[1]} \\
	& {X[1]} & {X[1]} & {Y_1[1]\oplus Y_2[1]}
	\arrow[equals, from=1-2, to=1-3]
	\arrow["{\binom{a_1}{b_1}}", dashed, from=1-2, to=2-2]
	\arrow["{a_1}", from=1-3, to=2-3]
	\arrow["{\binom 10}", from=2-1, to=2-2]
	\arrow[equals, from=2-1, to=3-1]
	\arrow["{(0,1)}", from=2-2, to=2-3]
	\arrow["{(a_2, -b_2)}", dashed, from=2-2, to=3-2]
	\arrow["0", from=2-3, to=2-4]
	\arrow[from=2-3, to=3-3]
	\arrow[equals, from=2-4, to=3-4]
	\arrow["{a_2}", from=3-1, to=3-2]
	\arrow[from=3-2, to=3-3]
	\arrow["h", dashed, from=3-2, to=4-2]
	\arrow["{-}", from=3-3, to=3-4]
	\arrow["{-}", from=3-3, to=4-3]
	\arrow["{\binom 10}", from=3-4, to=4-4]
	\arrow[equals, from=4-2, to=4-3]
	\arrow["{\binom{a_1}{b_1}[1]}", from=4-3, to=4-4]
\end{tikzcd}
{% endtikz %}
以上实线处均为好三角 (右下方块的复号由好三角的顺时针旋转得到), 不难验证所有方块交换 ($h$ 通过交换方块定义), 从而虚线处是好三角.

{% note %}
$h$ 既是 $Z \overset ∙ → P[1] \overset {- ∙ [1]}→ X[1]$, 也是 $Z \overset ∙ → Q[1] \overset {- ∙ [1]}→ X[1]$. 请注意符号.
{% endnote %}

{% endpf %}
