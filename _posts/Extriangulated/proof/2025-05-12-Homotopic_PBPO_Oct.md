---
title: 八面体公理的等价定义
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

给定[预三角范畴](Tri_Cat_Def).

{% thm %}
(八面体公理的等价定义, [证明](Homotopic_PBPO_Oct)). 预三角范畴是三角范畴, 当且仅当

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

{% pf %}
(1 ⇒ 2). 如有上图红色箭头, 则依照八面体公理得下图, 回推上图 (证明下行是好三角):
{% tikz %}
% https://q.uiver.app/#q=WzAsMjEsWzAsMCwiWCIsWzM1OSwxMDAsNjAsMV1dLFsxLDAsIllfMiIsWzM1OSwxMDAsNjAsMV1dLFszLDAsIlhbMV0iXSxbMiwwLCJXIixbMTEyLDEwMCwzMywxXV0sWzAsMSwiWV8xIixbMzU5LDEwMCw2MCwxXV0sWzEsMSwiWiIsWzExMiwxMDAsMzMsMV1dLFsyLDEsIlciLFsxMTIsMTAwLDMzLDFdXSxbMywxLCJZXzFbMV0iXSxbMCwzLCJYIl0sWzEsMywiWV8yIl0sWzEsMiwiWV8yIFxcb3BsdXMgWV8xIixbMzU5LDEwMCw2MCwxXV0sWzAsMiwiWCIsWzM1OSwxMDAsNjAsMV1dLFsyLDIsIloiLFsxMTIsMTAwLDMzLDFdXSxbMiwzLCJXIixbMTEyLDEwMCwzMywxXV0sWzMsMywiWFsxXSIsWzExMiwxMDAsMzMsMV1dLFszLDIsIlhbMV0iXSxbMSw0LCJZXzFbMV0iXSxbMiw1LCJaWzFdIl0sWzIsNCwiWV8xWzFdIl0sWzEsNSwiWV8yWzFdIFxcb3BsdXMgWV8xWzFdIl0sWzMsNCwiWV8yWzFdIFxcb3BsdXMgWV8xWzFdIl0sWzAsMSwiYV8xIiwwLHsiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbMCw0LCJiXzEiLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFsxLDUsImJfMiJdLFs0LDUsImFfMiJdLFsxLDMsIncgYl8yIl0sWzMsMiwiIiwwLHsiY29sb3VyIjpbMTEyLDEwMCwzM119XSxbNSw2LCJ3IiwwLHsiY29sb3VyIjpbMTEyLDEwMCwzM10sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzExMiwxMDAsMzMsMV1dLFs2LDddLFszLDYsIiIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlsxMTIsMTAwLDMzXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDddLFsxMCw5LCJcXGJpbm9tIDEwIl0sWzgsOSwiYV8xIl0sWzExLDgsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzExLDEwLCJcXGJpbm9tIHthXzF9e2JfMX0iLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFsxMCwxMiwiKGJfMiwtYV8xKSJdLFs5LDEzLCJ3IGJfMiJdLFsxMywxNCwiIiwwLHsiY29sb3VyIjpbMTEyLDEwMCwzM119XSxbMTQsMTUsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEyLDE1XSxbMTIsMTMsInciLDAseyJjb2xvdXIiOlsxMTIsMTAwLDMzXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fSxbMTEyLDEwMCwzMywxXV0sWzksMTYsIjAiXSxbMTYsMTgsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEzLDE4LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTYsMTldLFsxOSwxN10sWzE4LDE3LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTgsMjAsIlxcYmlub20gMDEiXSxbMTQsMjAsIlxcYmlub217YV8xWzFdfXtiXzFbMV19Il1d
\begin{tikzcd}
	\color{rgb,255:red,255;green,51;blue,54}{X} & \color{rgb,255:red,255;green,51;blue,54}{Y_2} & \color{rgb,255:red,22;green,168;blue,0}{W} & {X[1]} \\
	\color{rgb,255:red,255;green,51;blue,54}{Y_1} & \color{rgb,255:red,22;green,168;blue,0}{Z} & \color{rgb,255:red,22;green,168;blue,0}{W} & {Y_1[1]} \\
	\color{rgb,255:red,255;green,51;blue,54}{X} & \color{rgb,255:red,255;green,51;blue,54}{Y_2 \oplus Y_1} & \color{rgb,255:red,22;green,168;blue,0}{Z} & {X[1]} \\
	X & {Y_2} & \color{rgb,255:red,22;green,168;blue,0}{W} & \color{rgb,255:red,22;green,168;blue,0}{X[1]} \\
	& {Y_1[1]} & {Y_1[1]} & {Y_2[1] \oplus Y_1[1]} \\
	& {Y_2[1] \oplus Y_1[1]} & {Z[1]}
	\arrow["{a_1}", color={rgb,255:red,255;green,51;blue,54}, from=1-1, to=1-2]
	\arrow["{b_1}", color={rgb,255:red,255;green,51;blue,54}, from=1-1, to=2-1]
	\arrow["{w b_2}", from=1-2, to=1-3]
	\arrow["{b_2}", from=1-2, to=2-2]
	\arrow[draw={rgb,255:red,22;green,168;blue,0}, from=1-3, to=1-4]
	\arrow[draw={rgb,255:red,22;green,168;blue,0}, equals, from=1-3, to=2-3]
	\arrow[from=1-4, to=2-4]
	\arrow["{a_2}", from=2-1, to=2-2]
	\arrow["w", color={rgb,255:red,22;green,168;blue,0}, dashed, from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
	\arrow["{\binom {a_1}{b_1}}", color={rgb,255:red,255;green,51;blue,54}, from=3-1, to=3-2]
	\arrow[equals, from=3-1, to=4-1]
	\arrow["{(b_2,-a_1)}", from=3-2, to=3-3]
	\arrow["{\binom 10}", from=3-2, to=4-2]
	\arrow[from=3-3, to=3-4]
	\arrow["w", color={rgb,255:red,22;green,168;blue,0}, dashed, from=3-3, to=4-3]
	\arrow["{a_1}", from=4-1, to=4-2]
	\arrow["{w b_2}", from=4-2, to=4-3]
	\arrow["0", from=4-2, to=5-2]
	\arrow[color={rgb,255:red,22;green,168;blue,0}, from=4-3, to=4-4]
	\arrow[dashed, from=4-3, to=5-3]
	\arrow[equals, from=4-4, to=3-4]
	\arrow["{\binom{a_1[1]}{b_1[1]}}", from=4-4, to=5-4]
	\arrow[equals, from=5-2, to=5-3]
	\arrow[from=5-2, to=6-2]
	\arrow["{\binom 01}", from=5-3, to=5-4]
	\arrow[dashed, from=5-3, to=6-3]
	\arrow[from=6-2, to=6-3]
\end{tikzcd}
{% endtikz %}
只需证明 $c_3$ 是好三角.
\\
\\
(2 ⇒ 3). 给定 3. 的资料 (上图红色部分), 则可以通过 $2$ 补全 (下图绿色部分):
{% tikz %}
% https://q.uiver.app/#q=WzAsMTgsWzAsMCwiWCIsWzM1OSwxMDAsNjAsMV1dLFsxLDAsIllfMiIsWzM1OSwxMDAsNjAsMV1dLFswLDEsIllfMSIsWzM1OSwxMDAsNjAsMV1dLFsxLDEsIloiLFszNTksMTAwLDYwLDFdXSxbMiwwLCJXIixbMzU5LDEwMCw2MCwxXV0sWzMsMCwiWFsxXSJdLFsyLDEsIlciLFsyMjgsMTAwLDYwLDFdXSxbMywxLCJZXzFbMV0iXSxbMCwyLCJYIixbMzU5LDEwMCw2MCwxXV0sWzEsMiwiWV8yIixbMzU5LDEwMCw2MCwxXV0sWzMsMiwiWFsxXSJdLFsyLDIsIlcnIixbMTEyLDEwMCwzMywxXV0sWzAsMywiWV8xIixbMzU5LDEwMCw2MCwxXV0sWzEsMywiWiciLFsxMTIsMTAwLDMzLDFdXSxbMiwzLCJXJyIsWzExMiwxMDAsMzMsMV1dLFszLDMsIllfMVsxXSJdLFs0LDEsIjMuIl0sWzQsMywiMi4iXSxbMCwyLCJiXzEiLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFswLDEsImFfMSIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNjBdfSxbMzU5LDEwMCw2MCwxXV0sWzEsMywiYl8yIiwwLHsiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbMSw0LCIiLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX1dLFs0LDYsIiIsMCx7ImxldmVsIjoyLCJjb2xvdXIiOlsyMjgsMTAwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDUsIiIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNjBdfV0sWzUsN10sWzIsMywiYV8yIiwwLHsiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbMyw2LCIiLDAseyJjb2xvdXIiOlsyMjgsMTAwLDYwXX1dLFs2LDcsIiIsMCx7ImNvbG91ciI6WzIyOCwxMDAsNjBdfV0sWzgsOSwiYV8xIiwwLHsiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbOCwxMiwiYl8xIiwyLHsiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbOSwxMywiYl8yJyIsMCx7ImNvbG91ciI6WzExMiwxMDAsMzNdfSxbMTEyLDEwMCwzMywxXV0sWzEyLDEzLCJhXzInIiwyLHsiY29sb3VyIjpbMTEyLDEwMCwzM119LFsxMTIsMTAwLDMzLDFdXSxbOSwxMSwiIiwyLHsiY29sb3VyIjpbMTEyLDEwMCwzM119XSxbMTEsMTAsIiIsMix7ImNvbG91ciI6WzExMiwxMDAsMzNdfV0sWzEzLDE0LCIiLDIseyJjb2xvdXIiOlsxMTIsMTAwLDMzXX1dLFsxNCwxNSwiIiwyLHsiY29sb3VyIjpbMTEyLDEwMCwzM119XSxbMTEsMTQsIiIsMSx7ImxldmVsIjoyLCJjb2xvdXIiOlsxMTIsMTAwLDMzXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCwxNV1d
\begin{tikzcd}[ampersand replacement=\&]
	\color{rgb,255:red,255;green,51;blue,54}{X} \& \color{rgb,255:red,255;green,51;blue,54}{Y_2} \& \color{rgb,255:red,255;green,51;blue,54}{W} \& {X[1]} \\
	\color{rgb,255:red,255;green,51;blue,54}{Y_1} \& \color{rgb,255:red,255;green,51;blue,54}{Z} \& \color{rgb,255:red,51;green,92;blue,255}{W} \& {Y_1[1]} \& {3.} \\
	\color{rgb,255:red,255;green,51;blue,54}{X} \& \color{rgb,255:red,255;green,51;blue,54}{Y_2} \& \color{rgb,255:red,22;green,168;blue,0}{W'} \& {X[1]} \\
	\color{rgb,255:red,255;green,51;blue,54}{Y_1} \& \color{rgb,255:red,22;green,168;blue,0}{Z'} \& \color{rgb,255:red,22;green,168;blue,0}{W'} \& {Y_1[1]} \& {2.}
	\arrow["{a_1}", color={rgb,255:red,255;green,51;blue,54}, from=1-1, to=1-2]
	\arrow["{b_1}", color={rgb,255:red,255;green,51;blue,54}, from=1-1, to=2-1]
	\arrow[color={rgb,255:red,255;green,51;blue,54}, from=1-2, to=1-3]
	\arrow["{b_2}", color={rgb,255:red,255;green,51;blue,54}, from=1-2, to=2-2]
	\arrow[color={rgb,255:red,255;green,51;blue,54}, from=1-3, to=1-4]
	\arrow[color={rgb,255:red,51;green,92;blue,255}, equals, from=1-3, to=2-3]
	\arrow[from=1-4, to=2-4]
	\arrow["{a_2}", color={rgb,255:red,255;green,51;blue,54}, from=2-1, to=2-2]
	\arrow[color={rgb,255:red,51;green,92;blue,255}, from=2-2, to=2-3]
	\arrow[color={rgb,255:red,51;green,92;blue,255}, from=2-3, to=2-4]
	\arrow["{a_1}", color={rgb,255:red,255;green,51;blue,54}, from=3-1, to=3-2]
	\arrow["{b_1}"', color={rgb,255:red,255;green,51;blue,54}, from=3-1, to=4-1]
	\arrow[color={rgb,255:red,22;green,168;blue,0}, from=3-2, to=3-3]
	\arrow["{b_2'}", color={rgb,255:red,22;green,168;blue,0}, from=3-2, to=4-2]
	\arrow[color={rgb,255:red,22;green,168;blue,0}, from=3-3, to=3-4]
	\arrow[color={rgb,255:red,22;green,168;blue,0}, equals, from=3-3, to=4-3]
	\arrow[from=3-4, to=4-4]
	\arrow["{a_2'}"', color={rgb,255:red,22;green,168;blue,0}, from=4-1, to=4-2]
	\arrow[color={rgb,255:red,22;green,168;blue,0}, from=4-2, to=4-3]
	\arrow[color={rgb,255:red,22;green,168;blue,0}, from=4-3, to=4-4]
\end{tikzcd}
{% endtikz %}

由态射嵌入的唯一性, 得 $W ≃ W'$ (这一同构不改变同伦推出拉回方块中的态射). 由 $Z ≃ Z'$, 三角射与同伦推出拉回方块同时相差一个 $φ ∘ \mathrm{id}_Z ∘ φ^{-1}$, 从而保持结论.
\\
\\
(3 ⇒ 1). 下证明八面体公理: 给定初始资料 (蓝), 取同伦的推出拉回 (红), 依照题设补全四个好三角的交换图 (如下所示)
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMCwiWCIsWzIyOCwxMDAsNjAsMV1dLFsyLDAsIllfMiIsWzM1OSwxMDAsNjAsMV1dLFsxLDEsIllfMSIsWzIyOCwxMDAsNjAsMV1dLFsyLDEsIloiLFszNTksMTAwLDYwLDFdXSxbMywwLCJXIl0sWzMsMSwiVyJdLFswLDAsIldbLTFdIixbMjI4LDEwMCw2MCwxXV0sWzAsMSwiV1stMV0iXSxbMSwyLCJMIl0sWzEsMywiWFsxXSJdLFsyLDIsIkwiXSxbMiwzLCJZXzJbMV0iXSxbMCwyLCJiXzEiLDAseyJjb2xvdXIiOlsyMjgsMTAwLDYwXX0sWzIyOCwxMDAsNjAsMV1dLFswLDEsImFfMSIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNjBdfSxbMzU5LDEwMCw2MCwxXV0sWzEsMywiYl8yIiwwLHsiY29sb3VyIjpbMzU5LDEwMCw2MF19LFszNTksMTAwLDYwLDFdXSxbMSw0XSxbNCw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDMsImFfMiIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNjBdfSxbMzU5LDEwMCw2MCwxXV0sWzMsNV0sWzYsMCwiXFxsYW1iZGEiLDAseyJjb2xvdXIiOlsyMjgsMTAwLDYwXX0sWzIyOCwxMDAsNjAsMV1dLFs2LDcsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsMl0sWzIsOF0sWzgsOV0sWzgsMTAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMTBdLFs5LDExLCJhXzFbMV0iXSxbMTAsMTFdLFswLDMsIlxcYmxhY2tzcXVhcmUiLDMseyJjb2xvdXIiOlszNTksMTAwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fSxbMzU5LDEwMCw2MCwxXV1d
\begin{tikzcd}[ampersand replacement=\&]
\color{rgb,255:red,51;green,92;blue,255}{W[-1]} \& \color{rgb,255:red,51;green,92;blue,255}{X} \& \color{rgb,255:red,255;green,51;blue,54}{Y_2} \& W \\
{W[-1]} \& \color{rgb,255:red,51;green,92;blue,255}{Y_1} \& \color{rgb,255:red,255;green,51;blue,54}{Z} \& W \\
\& L \& L \\
\& {X[1]} \& {Y_2[1]}
\arrow["\lambda", color={rgb,255:red,51;green,92;blue,255}, from=1-1, to=1-2]
\arrow[equals, from=1-1, to=2-1]
\arrow["{a_1}", color={rgb,255:red,255;green,51;blue,54}, from=1-2, to=1-3]
\arrow["{b_1}", color={rgb,255:red,51;green,92;blue,255}, from=1-2, to=2-2]
\arrow["\blacksquare"{marking, allow upside down}, color={rgb,255:red,255;green,51;blue,54}, draw=none, from=1-2, to=2-3]
\arrow[from=1-3, to=1-4]
\arrow["{b_2}", color={rgb,255:red,255;green,51;blue,54}, from=1-3, to=2-3]
\arrow[equals, from=1-4, to=2-4]
\arrow[from=2-1, to=2-2]
\arrow["{a_2}", color={rgb,255:red,255;green,51;blue,54}, from=2-2, to=2-3]
\arrow[from=2-2, to=3-2]
\arrow[from=2-3, to=2-4]
\arrow[from=2-3, to=3-3]
\arrow[equals, from=3-2, to=3-3]
\arrow[from=3-2, to=4-2]
\arrow[from=3-3, to=4-3]
\arrow["{a_1[1]}", from=4-2, to=4-3]
\end{tikzcd}
{% endtikz %}
继而证明绿色方块的交换性:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzEsMCwiWCIsWzIyOCwxMDAsNjAsMV1dLFsyLDAsIllfMiIsWzM1OSwxMDAsNjAsMV1dLFsxLDEsIllfMSIsWzIyOCwxMDAsNjAsMV1dLFsyLDEsIloiLFsxMTQsMTAwLDM2LDFdXSxbMywwLCJXIl0sWzMsMSwiVyIsWzExNCwxMDAsMzYsMV1dLFswLDAsIldbLTFdIixbMjI4LDEwMCw2MCwxXV0sWzAsMSwiV1stMV0iXSxbMSwyLCJMIl0sWzEsMywiWFsxXSJdLFsyLDIsIkwiLFsxMTQsMTAwLDM2LDFdXSxbMiwzLCJZXzJbMV0iXSxbMywyLCJYWzFdIixbMTE0LDEwMCwzNiwxXV0sWzAsMiwiYl8xIiwwLHsiY29sb3VyIjpbMjI4LDEwMCw2MF19LFsyMjgsMTAwLDYwLDFdXSxbMCwxLCJhXzEiLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFsxLDMsImJfMiIsMCx7ImNvbG91ciI6WzM1OSwxMDAsNjBdfSxbMzU5LDEwMCw2MCwxXV0sWzEsNF0sWzQsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwzLCJhXzIiLDAseyJjb2xvdXIiOlszNTksMTAwLDYwXX0sWzM1OSwxMDAsNjAsMV1dLFszLDUsIiIsMCx7ImNvbG91ciI6WzExNCwxMDAsMzZdfV0sWzYsMCwiXFxsYW1iZGEiLDAseyJjb2xvdXIiOlsyMjgsMTAwLDYwXX0sWzIyOCwxMDAsNjAsMV1dLFs2LDcsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsMl0sWzIsOF0sWzgsOV0sWzgsMTAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMTAsIiIsMCx7ImNvbG91ciI6WzExNCwxMDAsMzZdfV0sWzksMTEsImFfMVsxXSJdLFsxMCwxMV0sWzAsMywiXFxibGFja3NxdWFyZSIsMyx7ImNvbG91ciI6WzM1OSwxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19LFszNTksMTAwLDYwLDFdXSxbMTAsMTIsIiIsMix7ImNvbG91ciI6WzExNCwxMDAsMzZdfV0sWzUsMTIsIlxcbGFtYmRhWzFdIiwwLHsiY29sb3VyIjpbMTE0LDEwMCwzNl19LFsxMTQsMTAwLDM2LDFdXSxbMywxMiwiPyIsMSx7ImNvbG91ciI6WzExNCwxMDAsMzZdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19LFsxMTQsMTAwLDM2LDFdXSxbMywxMiwiaSIsMSx7ImN1cnZlIjotMiwiY29sb3VyIjpbMTE0LDEwMCwzNl19LFsxMTQsMTAwLDM2LDFdXSxbMywxMiwiaiIsMSx7ImN1cnZlIjoyLCJjb2xvdXIiOlsxMTQsMTAwLDM2XX0sWzExNCwxMDAsMzYsMV1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
	\color{rgb,255:red,51;green,92;blue,255}{W[-1]} \& \color{rgb,255:red,51;green,92;blue,255}{X} \& \color{rgb,255:red,255;green,51;blue,54}{Y_2} \& W \\
	{W[-1]} \& \color{rgb,255:red,51;green,92;blue,255}{Y_1} \& \color{rgb,255:red,18;green,184;blue,0}{Z} \& \color{rgb,255:red,18;green,184;blue,0}{W} \\
	\& L \& \color{rgb,255:red,18;green,184;blue,0}{L} \& \color{rgb,255:red,18;green,184;blue,0}{X[1]} \\
	\& {X[1]} \& {Y_2[1]}
	\arrow["\lambda", color={rgb,255:red,51;green,92;blue,255}, from=1-1, to=1-2]
	\arrow[equals, from=1-1, to=2-1]
	\arrow["{a_1}", color={rgb,255:red,255;green,51;blue,54}, from=1-2, to=1-3]
	\arrow["{b_1}", color={rgb,255:red,51;green,92;blue,255}, from=1-2, to=2-2]
	\arrow["\blacksquare"{marking, allow upside down}, color={rgb,255:red,255;green,51;blue,54}, draw=none, from=1-2, to=2-3]
	\arrow[from=1-3, to=1-4]
	\arrow["{b_2}", color={rgb,255:red,255;green,51;blue,54}, from=1-3, to=2-3]
	\arrow[equals, from=1-4, to=2-4]
	\arrow[from=2-1, to=2-2]
	\arrow["{a_2}", color={rgb,255:red,255;green,51;blue,54}, from=2-2, to=2-3]
	\arrow[from=2-2, to=3-2]
	\arrow[color={rgb,255:red,18;green,184;blue,0}, from=2-3, to=2-4]
	\arrow[color={rgb,255:red,18;green,184;blue,0}, from=2-3, to=3-3]
	\arrow["{?}"{description}, color={rgb,255:red,18;green,184;blue,0}, draw=none, from=2-3, to=3-4]
	\arrow["i"{description}, color={rgb,255:red,18;green,184;blue,0}, curve={height=-12pt}, from=2-3, to=3-4]
	\arrow["j"{description}, color={rgb,255:red,18;green,184;blue,0}, curve={height=12pt}, from=2-3, to=3-4]
	\arrow["{\lambda[1]}", color={rgb,255:red,18;green,184;blue,0}, from=2-4, to=3-4]
	\arrow[equals, from=3-2, to=3-3]
	\arrow[from=3-2, to=4-2]
	\arrow[color={rgb,255:red,18;green,184;blue,0}, from=3-3, to=3-4]
	\arrow[from=3-3, to=4-3]
	\arrow["{a_1[1]}", from=4-2, to=4-3]
\end{tikzcd}
{% endtikz %}

依定义, $j$ 恰是同伦推出拉回方块中的态射

$$\begin{equation}
X\xrightarrow{\binom{a_1}{b_1}} Y_2\oplus Y_1\xrightarrow{(- b_2,a_2)} Z\overset j \to X[1].
\end{equation}$$

同理, $-j$ 是同伦推出拉回方块中的态射

$$\begin{equation}
X\xrightarrow{\binom{a_1}{b_1}} Y_2\oplus Y_1\xrightarrow{(b_2,- a_2)} Z\overset {-j} \to X[1].
\end{equation}$$
{% endpf %}
