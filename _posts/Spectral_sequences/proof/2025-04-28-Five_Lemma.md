---
title: 五引理
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
(单四引理). 给定上下正合列之间的态射, 若相应的竖向实箭头是单射与满射, 则虚线处是单射.
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzAsMV0sWzEsMl0sWzIsM10sWzAsNCwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsNV0sWzUsNl0sWzYsN10sWzEsNSwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMiw2LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMyw3LCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dXQ==
\begin{tikzcd}
	\bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet
	\arrow[from=1-1, to=1-2]
	\arrow[two heads, from=1-1, to=2-1]
	\arrow[from=1-2, to=1-3]
	\arrow[hook, from=1-2, to=2-2]
	\arrow[from=1-3, to=1-4]
	\arrow[dashed, from=1-3, to=2-3]
	\arrow[hook, from=1-4, to=2-4]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
\end{tikzcd}
{% endtikz %}
{% endthm %}

{% pf %}
计算 ker-复形与 cok-复形如下:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTcsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXQiXSxbMSwyLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzMsMiwiXFxidWxsZXQiXSxbNCwyLCJcXGJ1bGxldCJdLFsyLDAsIjAiXSxbNCwwLCIwIl0sWzEsMywiMCJdLFszLDAsIiEiXSxbMCwzLCI/Il0sWzIsMywiPyJdLFszLDMsIj8iXSxbNCwzLCI/Il0sWzEsMCwiPyJdLFswLDFdLFsxLDJdLFsyLDNdLFswLDQsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs0LDVdLFs1LDZdLFs2LDddLFsxLDUsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzIsNiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNywiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMTEsMTAsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEyLDEwXSxbMTAsMTNdLFsxMywxNF0sWzE0LDE1XSxbMTYsOF0sWzgsMTFdLFsxMSw5XV0=
\begin{tikzcd}
	& {?} & 0 & {!} & 0 \\
	& \bullet & \bullet & \bullet & \bullet \\
	& \bullet & \bullet & \bullet & \bullet \\
	{?} & 0 & {?} & {?} & {?}
	\arrow[from=1-2, to=1-3]
	\arrow[from=1-3, to=1-4]
	\arrow[from=1-4, to=1-5]
	\arrow[dotted, no head, from=1-4, to=4-2]
	\arrow[from=2-2, to=2-3]
	\arrow[two heads, from=2-2, to=3-2]
	\arrow[from=2-3, to=2-4]
	\arrow[hook, from=2-3, to=3-3]
	\arrow[from=2-4, to=2-5]
	\arrow[dashed, from=2-4, to=3-4]
	\arrow[hook, from=2-5, to=3-5]
	\arrow[from=3-2, to=3-3]
	\arrow[from=3-3, to=3-4]
	\arrow[from=3-4, to=3-5]
	\arrow[from=4-1, to=4-2]
	\arrow[from=4-2, to=4-3]
	\arrow[from=4-3, to=4-4]
	\arrow[from=4-4, to=4-5]
\end{tikzcd}
{% endtikz %}
依照正合复形间的态射, $!$ 处的同调群等于 $0$ 处的同调群. 从而 $! = 0$, 即虚线处态射单.
{% endpf %}

{% thm %}
(满四引理). 给定上下正合列之间的态射, 若相应的竖向实箭头是单射与满射, 则虚线处是满射.

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzAsMV0sWzEsMl0sWzIsM10sWzQsNV0sWzUsNl0sWzYsN10sWzEsNSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsNCwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsNiwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsNywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XV0=
\begin{tikzcd}
	\bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet
	\arrow[from=1-1, to=1-2]
	\arrow[two heads, from=1-1, to=2-1]
	\arrow[from=1-2, to=1-3]
	\arrow[dashed, from=1-2, to=2-2]
	\arrow[from=1-3, to=1-4]
	\arrow[two heads, from=1-3, to=2-3]
	\arrow[hook, from=1-4, to=2-4]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
\end{tikzcd}
{% endtikz %}
{% endthm %}

{% pf %}
计算 ker-复形与 cok-复形如下:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzAsMSwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbMCwyLCJcXGJ1bGxldCJdLFsxLDIsIlxcYnVsbGV0Il0sWzIsMiwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFswLDMsIjAiXSxbMiwzLCIwIl0sWzMsMCwiMCJdLFsxLDMsIiEiXSxbMiwwLCI/Il0sWzQsMCwiPyJdLFsxLDAsIj8iXSxbMCwwLCI/Il0sWzAsMV0sWzEsMl0sWzIsM10sWzQsNV0sWzUsNl0sWzYsN10sWzEsNSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsNCwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsNiwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsNywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMTUsMTRdLFsxNCwxMl0sWzEyLDEwXSxbMTAsMTNdLFs4LDExXSxbMTEsOV0sWzEwLDExLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	{?} & {?} & {?} & 0 & {?} \\
	\bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet \\
	0 & {!} & 0
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-2, to=1-3]
	\arrow[from=1-3, to=1-4]
	\arrow[from=1-4, to=1-5]
	\arrow[dotted, no head, from=1-4, to=4-2]
	\arrow[from=2-1, to=2-2]
	\arrow[two heads, from=2-1, to=3-1]
	\arrow[from=2-2, to=2-3]
	\arrow[dashed, from=2-2, to=3-2]
	\arrow[from=2-3, to=2-4]
	\arrow[two heads, from=2-3, to=3-3]
	\arrow[hook, from=2-4, to=3-4]
	\arrow[from=3-1, to=3-2]
	\arrow[from=3-2, to=3-3]
	\arrow[from=3-3, to=3-4]
	\arrow[from=4-1, to=4-2]
	\arrow[from=4-2, to=4-3]
\end{tikzcd}
{% endtikz %}
依照正合复形间的态射, $!$ 处的同调群等于 $0$ 处的同调群. 从而 $! = 0$, 即虚线处态射满.
{% endpf %}

{% thm %}
(五引理). 给定上下正合列之间的态射, 若相应的竖向实箭头是单射, 满射以及同构, 则虚线处是同构.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzEsMCwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzQsMCwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbNCwxLCJcXGJ1bGxldCJdLFswLDAsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbMCwxXSxbMSwyXSxbMiwzXSxbNCw1XSxbNSw2XSxbNiw3XSxbMSw1LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCw0LCJcXHNpbWVxICIsMl0sWzIsNiwiXFxzaW1lcSAiLDJdLFszLDcsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzgsMF0sWzgsOSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzksNF1d
\begin{tikzcd}
	\bullet & \bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet
	\arrow[from=1-1, to=1-2]
	\arrow[two heads, from=1-1, to=2-1]
	\arrow[from=1-2, to=1-3]
	\arrow["{\simeq }"', from=1-2, to=2-2]
	\arrow[from=1-3, to=1-4]
	\arrow[dashed, from=1-3, to=2-3]
	\arrow[from=1-4, to=1-5]
	\arrow["{\simeq }"', from=1-4, to=2-4]
	\arrow[hook, from=1-5, to=2-5]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-4, to=2-5]
\end{tikzcd}
{% endtikz %}
{% endthm %}

{% pf %}
计算 ker-复形与 cok-复形如下:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTgsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXQiXSxbMSwyLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzMsMiwiXFxidWxsZXQiXSxbNCwyLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzAsMiwiXFxidWxsZXQiXSxbMCwzLCIwIl0sWzQsMCwiMCJdLFszLDAsIjAiXSxbMSwwLCIwIl0sWzEsMywiMCJdLFszLDMsIjAiXSxbMiwzLCLvvIEiXSxbMiwwLCLvvIEiXSxbMCwxXSxbMSwyXSxbMiwzXSxbNCw1XSxbNSw2XSxbNiw3XSxbMSw1LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCw0LCJcXHNpbWVxICIsMl0sWzIsNiwiXFxzaW1lcSAiLDJdLFszLDcsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzgsMF0sWzgsOSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzksNF0sWzEzLDE3XSxbMTcsMTJdLFsxMiwxMV0sWzEwLDE0XSxbMTQsMTZdLFsxNiwxNV0sWzE3LDEwLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMSwxNiwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
	& 0 & {！} & 0 & 0 \\
	\bullet & \bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet \\
	0 & 0 & {！} & 0
	\arrow[from=1-2, to=1-3]
	\arrow[from=1-3, to=1-4]
	\arrow[dotted, no head, from=1-3, to=4-1]
	\arrow[from=1-4, to=1-5]
	\arrow[dotted, no head, from=1-5, to=4-3]
	\arrow[from=2-1, to=2-2]
	\arrow[two heads, from=2-1, to=3-1]
	\arrow[from=2-2, to=2-3]
	\arrow["{\simeq }"', from=2-2, to=3-2]
	\arrow[from=2-3, to=2-4]
	\arrow[dashed, from=2-3, to=3-3]
	\arrow[from=2-4, to=2-5]
	\arrow["{\simeq }"', from=2-4, to=3-4]
	\arrow[hook, from=2-5, to=3-5]
	\arrow[from=3-1, to=3-2]
	\arrow[from=3-2, to=3-3]
	\arrow[from=3-3, to=3-4]
	\arrow[from=3-4, to=3-5]
	\arrow[from=4-1, to=4-2]
	\arrow[from=4-2, to=4-3]
	\arrow[from=4-3, to=4-4]
\end{tikzcd}
{% endtikz %}
依照正合复形间的态射, $!$ 处的同调群等于 $0$ 处的同调群. 从而 $! = 0$, 即虚线处态射是同构.
{% endpf %}
