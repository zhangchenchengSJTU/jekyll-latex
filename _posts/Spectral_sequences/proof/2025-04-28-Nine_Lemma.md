---
title: 九引理 ($3 × 3$ 序列)
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
(强 $3 × 3$ 引理). 对下图左或是下图右
{% tikz %}
% https://q.uiver.app/#q=WzAsMjYsWzUsMSwiXFxidWxsZXQiXSxbNiwxLCJcXGJ1bGxldCJdLFs3LDEsIlxcYnVsbGV0Il0sWzcsMiwiXFxidWxsZXQiXSxbNSwyLCJcXGJ1bGxldCJdLFs2LDIsIlxcYnVsbGV0Il0sWzUsMywiXFxidWxsZXQiXSxbNiwzLCJcXGJ1bGxldCJdLFs3LDMsIlxcYnVsbGV0Il0sWzcsMCwiMCJdLFs0LDEsIjAiXSxbNCwyLCIwIl0sWzQsMywiMCJdLFswLDMsIjAiXSxbMSwzLCJcXGJ1bGxldCJdLFsyLDMsIlxcYnVsbGV0Il0sWzMsMywiXFxidWxsZXQiXSxbMSwwLCIwIl0sWzIsMCwiMCJdLFszLDAsIjAiXSxbMSwxLCJcXGJ1bGxldCJdLFsxLDIsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMiwyLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzMsMiwiXFxidWxsZXQiXSxbMCwxXSxbMSwyXSxbMiwzXSxbNCw1XSxbNSwzXSxbMSw1XSxbNiw3XSxbNyw4XSxbMyw4XSxbNSw3XSxbOSwyXSxbMTAsMF0sWzExLDRdLFsxMiw2XSxbMCw0LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCw2LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTMsMTRdLFsxNCwxNV0sWzE1LDE2XSxbMTcsMjBdLFsyMCwyMV0sWzIxLDE0XSxbMTgsMjJdLFsyMiwyM10sWzIzLDE1XSxbMTksMjRdLFsyNCwyNV0sWzI1LDE2XSxbMjEsMjNdLFsyMywyNV0sWzIwLDIyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMjIsMjQsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}
	& 0 & 0 & 0 &&&& 0 \\
	& \bullet & \bullet & \bullet & 0 & \bullet & \bullet & \bullet \\
	& \bullet & \bullet & \bullet & 0 & \bullet & \bullet & \bullet \\
	0 & \bullet & \bullet & \bullet & 0 & \bullet & \bullet & \bullet
	\arrow[from=1-2, to=2-2]
	\arrow[from=1-3, to=2-3]
	\arrow[from=1-4, to=2-4]
	\arrow[from=1-8, to=2-8]
	\arrow[dashed, from=2-2, to=2-3]
	\arrow[from=2-2, to=3-2]
	\arrow[dashed, from=2-3, to=2-4]
	\arrow[from=2-3, to=3-3]
	\arrow[from=2-4, to=3-4]
	\arrow[from=2-5, to=2-6]
	\arrow[from=2-6, to=2-7]
	\arrow[dashed, from=2-6, to=3-6]
	\arrow[from=2-7, to=2-8]
	\arrow[from=2-7, to=3-7]
	\arrow[from=2-8, to=3-8]
	\arrow[from=3-2, to=3-3]
	\arrow[from=3-2, to=4-2]
	\arrow[from=3-3, to=3-4]
	\arrow[from=3-3, to=4-3]
	\arrow[from=3-4, to=4-4]
	\arrow[from=3-5, to=3-6]
	\arrow[from=3-6, to=3-7]
	\arrow[dashed, from=3-6, to=4-6]
	\arrow[from=3-7, to=3-8]
	\arrow[from=3-7, to=4-7]
	\arrow[from=3-8, to=4-8]
	\arrow[from=4-1, to=4-2]
	\arrow[from=4-2, to=4-3]
	\arrow[from=4-3, to=4-4]
	\arrow[from=4-5, to=4-6]
	\arrow[from=4-6, to=4-7]
	\arrow[from=4-7, to=4-8]
\end{tikzcd}
{% endtikz %}

若五排实线正合, 则虚线处 ($\ker$ 诱导的态射) 亦然.
\\
\\
另两张与 $\mathrm{cok}$ 相关的交换图同理.
{% endthm %}

{% pf %}
不妨看下图右, 记 $∙ \overset a ⇢ ∙ \overset b ⇢ ∙$. 使用 $\operatorname{cok} a$ 取代 $b$ 的去向, 得交换图
{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzMsMiwiXFxidWxsZXQiXSxbMSwyLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzAsNCwiXFxidWxsZXQiXSxbMiwzLCJcXGJ1bGxldCJdLFszLDMsIlxcYnVsbGV0Il0sWzMsMCwiMCJdLFswLDEsIjAiXSxbMCwyLCIwIl0sWzEsMywiXFxvcGVyYXRvcm5hbWV7Y29rfWEiXSxbMCwxXSxbMSwyXSxbMiwzXSxbNCw1XSxbNSwzXSxbMSw1XSxbNiw3LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6ImJvdHRvbSJ9fX1dLFs3LDhdLFszLDhdLFs1LDddLFs5LDJdLFsxMCwwXSxbMTEsNF0sWzAsNCwiYSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs0LDYsImIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwxMiwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzksMTIsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEyLDcsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzEyLDYsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoiYm90dG9tIn0sImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dXQ==
\begin{tikzcd}
	&&& 0 \\
	0 & \bullet & \bullet & \bullet \\
	0 & \bullet & \bullet & \bullet \\
	& {\operatorname{cok}a} & \bullet & \bullet \\
	\bullet
	\arrow[from=1-4, to=2-4]
	\arrow[dotted, no head, from=1-4, to=4-2]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow["a"', dashed, from=2-2, to=3-2]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-3]
	\arrow[from=2-4, to=3-4]
	\arrow[from=3-1, to=3-2]
	\arrow[from=3-2, to=3-3]
	\arrow[two heads, from=3-2, to=4-2]
	\arrow["b"', dashed, from=3-2, to=5-1]
	\arrow[from=3-3, to=3-4]
	\arrow[from=3-3, to=4-3]
	\arrow[from=3-4, to=4-4]
	\arrow[hook, from=4-2, to=4-3]
	\arrow[dotted, hook', from=4-2, to=5-1]
	\arrow[from=4-3, to=4-4]
	\arrow[hook', from=5-1, to=4-3]
\end{tikzcd}
{% endtikz %}
由[正合复形间的态射](Fundamental_Thm_Homological_Algebra), $\operatorname {cok} a$ 向右项的嵌入是单的. 因此 $\operatorname{cok} a = \operatorname{coim} b$, 证毕.
{% endpf %}

{% thm %}
(通常的 $3 × 3$ 引理). 给定 $3 × 3$ 短复形链的交换图
{% tikz %}
% https://q.uiver.app/#q=WzAsMjEsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzMsMiwiXFxidWxsZXQiXSxbMSwyLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzIsMywiXFxidWxsZXQiXSxbMywzLCJcXGJ1bGxldCJdLFszLDAsIjAiXSxbMCwxLCIwIl0sWzAsMiwiMCJdLFsxLDAsIjAiXSxbMiwwLCIwIl0sWzAsMywiMCJdLFsxLDQsIjAiXSxbMSwzLCJcXGJ1bGxldCJdLFsyLDQsIjAiXSxbMyw0LCIwIl0sWzQsMSwiMCJdLFs0LDIsIjAiXSxbNCwzLCIwIl0sWzAsMV0sWzEsMl0sWzIsM10sWzQsNV0sWzUsM10sWzEsNV0sWzYsN10sWzMsN10sWzUsNl0sWzgsMl0sWzksMF0sWzEwLDRdLFswLDRdLFsxMSwwXSxbMTIsMV0sWzQsMTVdLFsxNSwxNF0sWzEzLDE1XSxbMTUsNl0sWzYsMTZdLFsyLDE4XSxbMywxOV0sWzcsMjBdLFs3LDE3XV0=
\begin{tikzcd}
	& 0 & 0 & 0 \\
	0 & \bullet & \bullet & \bullet & 0 \\
	0 & \bullet & \bullet & \bullet & 0 \\
	0 & \bullet & \bullet & \bullet & 0 \\
	& 0 & 0 & 0
	\arrow[from=1-2, to=2-2]
	\arrow[from=1-3, to=2-3]
	\arrow[from=1-4, to=2-4]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-2, to=3-2]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-3]
	\arrow[from=2-4, to=2-5]
	\arrow[from=2-4, to=3-4]
	\arrow[from=3-1, to=3-2]
	\arrow[from=3-2, to=3-3]
	\arrow[from=3-2, to=4-2]
	\arrow[from=3-3, to=3-4]
	\arrow[from=3-3, to=4-3]
	\arrow[from=3-4, to=3-5]
	\arrow[from=3-4, to=4-4]
	\arrow[from=4-1, to=4-2]
	\arrow[from=4-2, to=4-3]
	\arrow[from=4-2, to=5-2]
	\arrow[from=4-3, to=4-4]
	\arrow[from=4-3, to=5-3]
	\arrow[from=4-4, to=4-5]
	\arrow[from=4-4, to=5-4]
\end{tikzcd}
{% endtikz %}
若其中五条短正合列正合, 则第六条亦然.
{% endthm %}

{% pf %}
反复使用正合复形的链映射, 以及强 $3 × 3$ 引理即可.
{% endpf %}
