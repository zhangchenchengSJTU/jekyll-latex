---
title: 四引理 (推出拉回)
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% ex %}
给定交换方块, 则有如下链复形
{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzAsNCwiSF57LTF9KFQpIl0sWzIsNCwiSF4wKFQpIl0sWzQsNCwiSF4xKFQpIl0sWzQsMywiRCJdLFsyLDMsIkJcXG9wbHVzIEMiXSxbMCwzLCJBIl0sWzMsMCwiQiJdLFszLDIsIkQiXSxbMSwyLCJDIl0sWzEsMCwiQSJdLFs0LDMsIihnLC1rKSJdLFs1LDQsIlxcYmlub217Zn17aH0iXSxbNiw3LCJnIl0sWzgsNywiayIsMl0sWzksNiwiZiJdLFs5LDcsIlxcdmFycGhpICIsMV0sWzksOCwiaCIsMl1d
\begin{tikzcd}
	& A && B \\
	\\
	& C && D \\
	A && {B\oplus C} && D \\
	{H^{-1}(T)} && {H^0(T)} && {H^1(T)}
	\arrow["f", from=1-2, to=1-4]
	\arrow["h"', from=1-2, to=3-2]
	\arrow["{\varphi }"{description}, from=1-2, to=3-4]
	\arrow["g", from=1-4, to=3-4]
	\arrow["k"', from=3-2, to=3-4]
	\arrow["{\binom{f}{h}}", from=4-1, to=4-3]
	\arrow["{(g,-k)}", from=4-3, to=4-5]
\end{tikzcd}
{% endtikz %}
则下图四行正合:
{% tikz %}
% https://q.uiver.app/#q=WzAsMzQsWzEsMSwiXFxrZXIgKGYpIl0sWzIsMSwiXFxrZXIgKFxcdmFycGhpKSJdLFszLDEsIlxca2VyKGcpIl0sWzUsMSwiXFxtYXRocm17Y29rfShmKSJdLFs2LDEsIlxcbWF0aHJte2Nva30oXFx2YXJwaGkgKSJdLFs3LDEsIlxcbWF0aHJte2Nva30oZykiXSxbOCwxLCIwIl0sWzAsMSwiMCJdLFs2LDAsIlxcbWF0aHJte2Nva30oXFx2YXJwaGkgKSJdLFsyLDAsIlxca2VyIChcXHZhcnBoaSkiXSxbMSwwLCJcXGtlciAoaCkiXSxbMywwLCJcXGtlciAoaykiXSxbNSwwLCJcXG1hdGhybXtjb2t9KGgpIl0sWzcsMCwiXFxtYXRocm17Y29rfShrKSJdLFswLDAsIjAiXSxbOCwwLCIwIl0sWzMsMywiXFxrZXIgKGspIl0sWzUsMywiXFxtYXRocm17Y29rfShmKSJdLFsyLDMsIlxca2VyIChmKSJdLFs2LDMsIlxcbWF0aHJte2Nva30oaykiXSxbOCwzLCIwIl0sWzAsMywiMCJdLFs0LDMsIkheMChUKSJdLFsxLDMsIkheey0xfShUKSJdLFs3LDMsIkheMShUKSJdLFsxLDIsIkheey0xfShUKSJdLFs0LDIsIkheMChUKSJdLFs3LDIsIkheMShUKSJdLFs4LDIsIjAiXSxbMCwyLCIwIl0sWzIsMiwiXFxrZXIgKGgpIl0sWzMsMiwiXFxrZXIoZykiXSxbNSwyLCJcXG1hdGhybXtjb2t9KGgpIl0sWzYsMiwiXFxtYXRocm17Y29rfShnKSJdLFs3LDBdLFswLDFdLFsxLDJdLFsyLDMsIlxcZGVsdGEiXSxbMyw0XSxbNCw1XSxbNSw2XSxbNCw4LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNCwxMF0sWzEwLDldLFs5LDExXSxbMTEsMTIsIlxcZGVsdGEiXSxbMTIsOF0sWzgsMTNdLFsxMywxNV0sWzE3LDE5XSxbMTgsMTZdLFsxLDksIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIxLDIzXSxbMjMsMThdLFsxNiwyMl0sWzE5LDI0XSxbMjIsMTddLFsyNCwyMF0sWzI5LDI1XSxbMjUsMzBdLFszMCwzMV0sWzMxLDI2XSxbMjYsMzJdLFszMiwzM10sWzMzLDI3XSxbMjcsMjhdLFsyNSwyMywiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMjYsMjIsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzI3LDI0LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	0 & {\ker (h)} & {\ker (\varphi)} & {\ker (k)} && {\mathrm{cok}(h)} & {\mathrm{cok}(\varphi )} & {\mathrm{cok}(k)} & 0 \\
	0 & {\ker (f)} & {\ker (\varphi)} & {\ker(g)} && {\mathrm{cok}(f)} & {\mathrm{cok}(\varphi )} & {\mathrm{cok}(g)} & 0 \\
	0 & {H^{-1}(T)} & {\ker (h)} & {\ker(g)} & {H^0(T)} & {\mathrm{cok}(h)} & {\mathrm{cok}(g)} & {H^1(T)} & 0 \\
	0 & {H^{-1}(T)} & {\ker (f)} & {\ker (k)} & {H^0(T)} & {\mathrm{cok}(f)} & {\mathrm{cok}(k)} & {H^1(T)} & 0
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-2, to=1-3]
	\arrow[from=1-3, to=1-4]
	\arrow["\delta", from=1-4, to=1-6]
	\arrow[from=1-6, to=1-7]
	\arrow[from=1-7, to=1-8]
	\arrow[from=1-8, to=1-9]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[equals, from=2-3, to=1-3]
	\arrow[from=2-3, to=2-4]
	\arrow["\delta", from=2-4, to=2-6]
	\arrow[from=2-6, to=2-7]
	\arrow[equals, from=2-7, to=1-7]
	\arrow[from=2-7, to=2-8]
	\arrow[from=2-8, to=2-9]
	\arrow[from=3-1, to=3-2]
	\arrow[from=3-2, to=3-3]
	\arrow[equals, from=3-2, to=4-2]
	\arrow[from=3-3, to=3-4]
	\arrow[from=3-4, to=3-5]
	\arrow[from=3-5, to=3-6]
	\arrow[equals, from=3-5, to=4-5]
	\arrow[from=3-6, to=3-7]
	\arrow[from=3-7, to=3-8]
	\arrow[from=3-8, to=3-9]
	\arrow[equals, from=3-8, to=4-8]
	\arrow[from=4-1, to=4-2]
	\arrow[from=4-2, to=4-3]
	\arrow[from=4-3, to=4-4]
	\arrow[from=4-4, to=4-5]
	\arrow[from=4-5, to=4-6]
	\arrow[from=4-6, to=4-7]
	\arrow[from=4-7, to=4-8]
	\arrow[from=4-8, to=4-9]
\end{tikzcd}
{% endtikz %}
等价地, 下图横行与螺旋线均正合:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTksWzQsMiwiXFxrZXIgKGspIl0sWzYsMCwiXFxtYXRocm17Y29rfShmKSJdLFsyLDAsIlxca2VyIChmKSJdLFs4LDIsIlxcbWF0aHJte2Nva30oaykiXSxbMTAsMiwiMCJdLFswLDAsIjAiXSxbNSwxLCJIXjAoVCkiXSxbOSwxLCJIXjEoVCkiXSxbMSwxLCJIXnstMX0oVCkiXSxbMTAsMCwiMCJdLFswLDIsIjAiXSxbMiwyLCJcXGtlciAoaCkiXSxbNCwwLCJcXGtlcihnKSJdLFs2LDIsIlxcbWF0aHJte2Nva30oaCkiXSxbOCwwLCJcXG1hdGhybXtjb2t9KGcpIl0sWzMsMCwiXFxrZXIgKFxcdmFycGhpKSJdLFszLDIsIlxca2VyIChcXHZhcnBoaSkiXSxbNywwLCJcXG1hdGhybXtjb2t9KFxcdmFycGhpICkiXSxbNywyLCJcXG1hdGhybXtjb2t9KFxcdmFycGhpICkiXSxbMSwzLCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXX1dLFsyLDAsIiIsMCx7ImNvbG91ciI6WzAsNjAsNjBdfV0sWzAsNiwiIiwwLHsiY29sb3VyIjpbMCw2MCw2MF19XSxbMyw3LCIiLDEseyJjb2xvdXIiOlswLDYwLDYwXX1dLFs2LDEsIiIsMCx7ImNvbG91ciI6WzAsNjAsNjBdfV0sWzcsNCwiIiwxLHsiY29sb3VyIjpbMjQwLDYwLDYwXX1dLFsxMCw4LCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXX1dLFs4LDExLCIiLDAseyJjb2xvdXIiOlsyNDAsNjAsNjBdfV0sWzExLDEyLCIiLDAseyJjb2xvdXIiOlsyNDAsNjAsNjBdfV0sWzEzLDE0LCIiLDAseyJjb2xvdXIiOlsyNDAsNjAsNjBdfV0sWzUsOCwiIiwxLHsiY29sb3VyIjpbMjQwLDYwLDYwXX1dLFs4LDIsIiIsMSx7ImNvbG91ciI6WzAsNjAsNjBdfV0sWzEyLDYsIiIsMCx7ImNvbG91ciI6WzI0MCw2MCw2MF19XSxbNiwxMywiIiwwLHsiY29sb3VyIjpbMjQwLDYwLDYwXX1dLFsxNCw3LCIiLDAseyJjb2xvdXIiOlsyNDAsNjAsNjBdfV0sWzcsOSwiIiwwLHsiY29sb3VyIjpbMCw2MCw2MF19XSxbNSwyXSxbMiwxNV0sWzE1LDEyXSxbMTIsMV0sWzEsMTddLFsxNywxNF0sWzE0LDldLFsxMCwxMV0sWzExLDE2XSxbMTYsMF0sWzAsMTNdLFsxMywxOF0sWzE4LDNdLFszLDRdXQ==
\begin{tikzcd}
	0 && {\ker (f)} & {\ker (\varphi)} & {\ker(g)} && {\mathrm{cok}(f)} & {\mathrm{cok}(\varphi )} & {\mathrm{cok}(g)} && 0 \\
	& {H^{-1}(T)} &&&& {H^0(T)} &&&& {H^1(T)} \\
	0 && {\ker (h)} & {\ker (\varphi)} & {\ker (k)} && {\mathrm{cok}(h)} & {\mathrm{cok}(\varphi )} & {\mathrm{cok}(k)} && 0
	\arrow[from=1-1, to=1-3]
	\arrow[draw={rgb,255:red,92;green,92;blue,214}, from=1-1, to=2-2]
	\arrow[from=1-3, to=1-4]
	\arrow[draw={rgb,255:red,214;green,92;blue,92}, from=1-3, to=3-5]
	\arrow[from=1-4, to=1-5]
	\arrow[from=1-5, to=1-7]
	\arrow[draw={rgb,255:red,92;green,92;blue,214}, from=1-5, to=2-6]
	\arrow[from=1-7, to=1-8]
	\arrow[draw={rgb,255:red,214;green,92;blue,92}, from=1-7, to=3-9]
	\arrow[from=1-8, to=1-9]
	\arrow[from=1-9, to=1-11]
	\arrow[draw={rgb,255:red,92;green,92;blue,214}, from=1-9, to=2-10]
	\arrow[draw={rgb,255:red,214;green,92;blue,92}, from=2-2, to=1-3]
	\arrow[draw={rgb,255:red,92;green,92;blue,214}, from=2-2, to=3-3]
	\arrow[draw={rgb,255:red,214;green,92;blue,92}, from=2-6, to=1-7]
	\arrow[draw={rgb,255:red,92;green,92;blue,214}, from=2-6, to=3-7]
	\arrow[draw={rgb,255:red,214;green,92;blue,92}, from=2-10, to=1-11]
	\arrow[draw={rgb,255:red,92;green,92;blue,214}, from=2-10, to=3-11]
	\arrow[draw={rgb,255:red,214;green,92;blue,92}, from=3-1, to=2-2]
	\arrow[from=3-1, to=3-3]
	\arrow[draw={rgb,255:red,92;green,92;blue,214}, from=3-3, to=1-5]
	\arrow[from=3-3, to=3-4]
	\arrow[from=3-4, to=3-5]
	\arrow[draw={rgb,255:red,214;green,92;blue,92}, from=3-5, to=2-6]
	\arrow[from=3-5, to=3-7]
	\arrow[draw={rgb,255:red,92;green,92;blue,214}, from=3-7, to=1-9]
	\arrow[from=3-7, to=3-8]
	\arrow[from=3-8, to=3-9]
	\arrow[draw={rgb,255:red,214;green,92;blue,92}, from=3-9, to=2-10]
	\arrow[from=3-9, to=3-11]
\end{tikzcd}
{% endtikz %}
{% endex %}

{% prop %}
(拉回方块判定准则).
特别地, 以下条件等价:

1. 方块是拉回;
2. $H^{-1}(T)=H^0(T)=0$, 即 $0\to A\to B\oplus C\to D$ 正合;
3. $\ker(g)\simeq \ker(h)$ 且 $\mathrm{coker}(h)\to \mathrm{coker}(g)$ 是单射;
4. $\ker(k)\simeq \ker(f)$ 且 $\mathrm{coker}(f)\to \mathrm{coker}(k)$ 是单射.

{% endprop %}

{% prop %}
(推出方块判定准则). 对偶命题略.
{% endprop %}

{% note %}
模范畴中, 单射的拉回是单的, 满射的拉回是满的, 同构的拉回是同构.
{% endnote %}

{% prop %}
(拉回方块的合成律, 该结论对一般范畴亦成立). 给定交换图

$$
\begin{bmatrix}
\bullet  & \rightarrow  & \bullet  & \rightarrow  & \bullet \\
\downarrow  & [ 1] & \downarrow  & [ 2] & \downarrow \\
\bullet  & \rightarrow  & \bullet  & \rightarrow  & \bullet
\end{bmatrix}.
$$

若 $[2]$ 是拉回方块, 则 $[1]$ 是拉回方块当且仅当 $[1]\cup [2]$ 是拉回方块.
{% endprop %}

{% pf %}
依照拉回方块判定准则之第三条, $\ker$ 层面的二推三显然, 下仅需验证 $\mathrm{coker}$ 层面. 回顾熟知结论: 若 $g$ 是单射, $g\circ f$ 可复合, 则 $g\circ f$ 单当且仅当 $f$ 单.
{% endpf %}
