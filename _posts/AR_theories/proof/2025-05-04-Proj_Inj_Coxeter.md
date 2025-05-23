---
title: 投射模, 内射模在 Coxeter 反射下的表现
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% prop %}
投射模与内射模在完全 Coxeter 分解下的表现如下.

1. 投射模经 $C^+$ 消失, 换言之, $C^+ P = 0$;
2. 若 $C^+M = 0$, 则 $M$ 是投射模;
3. $C^+C^-M$ 是不含投射对象的极大直和项;
4. 内射模经 $C^-$ 消失, 换言之, $C^- I = 0$;
5. 若 $C^-M = 0$, 则 $M$ 是内射模;
6. $C^-C^+M$ 是不含内射对象的极大直和项.
{% endprop %}

{% pf %}
只看前三条.
\\
(1. 的证明). 不可分解投射对象 $P(i)$ 的支撑集是由 $i$ 向外的树, 从分支至主干地作用 $C^+_∙$ 即可 (并列的分支无关先后) 即可. 最后得内射单模 $S(i)$, 作用 $C^+_i$ 后归零. 由于 Coxeter 反射唯一, 故任意不可分解投射对象被 $C^+$ 零化.
\\
(2. 的证明). 假定 $M ≠ 0$ 是不可分解模, 但 $C^+ M= 0$. 不妨记 $C^+ = C_1^+\cdots C_n^+$. 下归纳地证明所有 $C_{k}^+\cdots C_n^+ M$ 都是 $𝐫𝐞𝐩(C_{k}^+\cdots C_n^+ Q)$ 中的不可分解投射对象 (或零对象).

1. (初始). 模在消失前的状态必然是下一反射作用位置的投射单对象. 存在极小的 $i$ 使得 $C_{i+1}^+\cdots C_n^+ M$ 是 $𝐫𝐞𝐩 (C_{i+1}^+\cdots C_n^+Q)$ 中的投射单对象;
2. (归纳). 假定得到了 $C_{i+1}^+\cdots C_n^+Q$ 中的投射对象 $C_{i+1}^+\cdots C_n^+M$. 该图中, $i$ 是 sink, $(i+1)$ 是 source. 由等式
   $$
   C_{i+1}^-C_{i+1}^+\cdots C_n^+ M ≃ C_{i+2}^+\cdots C_n^+ M,
   $$
   下证明 $M' := C_{i+1}^+\cdots C_n^+M$ 是投射对象即可.
   1. 若 $M' = P(i+1)$. 由于 $M'  = C_{i+1}^+ N$ 是不可分解模, 则 $i+1$ 有且仅有一条出边. 此时
   {% tikz %}
   % https://q.uiver.app/#q=WzAsOCxbMCwxLCIoaylfe2krMX0iXSxbMSwxLCJrIl0sWzEsMiwiXFxjZG90cyAiXSxbMSwwLCJNJyJdLFs0LDAsIkNfe2krMX1eLU0nIl0sWzMsMSwiMF97aSsxfSJdLFs0LDEsImsiXSxbNCwyLCJcXGNkb3RzIl0sWzAsMV0sWzEsMl0sWzEsMiwiIiwxLHsib2Zmc2V0IjotM31dLFsxLDIsIiIsMSx7Im9mZnNldCI6M31dLFs2LDddLFs2LDcsIiIsMSx7Im9mZnNldCI6LTN9XSxbNiw3LCIiLDEseyJvZmZzZXQiOjN9XSxbNiw1XSxbMyw0LCIiLDEseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
	& {M'} &&& {C_{i+1}^-M'} \\
	{(k)_{i+1}} & k && {0_{i+1}} & k \\
	& {\cdots } &&& \cdots
	\arrow[shorten <=16pt, shorten >=16pt, Rightarrow, dashed, from=1-2, to=1-5]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=3-2]
	\arrow[shift left=3, from=2-2, to=3-2]
	\arrow[shift right=3, from=2-2, to=3-2]
	\arrow[from=2-5, to=2-4]
	\arrow[from=2-5, to=3-5]
	\arrow[shift left=3, from=2-5, to=3-5]
	\arrow[shift right=3, from=2-5, to=3-5]
\end{tikzcd}
   {% endtikz %}
   2. 若不然, 则 $(M')_{i+1} = 0$, 因为 $(i+1)$ 是 source. 此时至多存在一个 $(i+1)$ 的邻点 $j$, 使得 $M_j ≠ 0$:
   {% tikz %}
   % https://q.uiver.app/#q=WzAsMTIsWzEsMCwiTSciXSxbNCwwLCJDX3tpKzF9Xi1NIl0sWzIsMSwiKGtebilfaiJdLFsxLDEsIjBfe2krMX0iXSxbMiwyLCJcXGNkb3RzIl0sWzQsMSwiKGtebilfe2krMX0iXSxbNSwxLCIoa15uKV9qIl0sWzAsMSwiXFxjZG90cyJdLFsxLDIsIlxcY2RvdHMiXSxbMywxLCJcXGNkb3RzIl0sWzQsMiwiXFxjZG90cyJdLFs1LDIsIlxcY2RvdHMiXSxbMywyXSxbMiw0XSxbMyw3LCIwIl0sWzMsOCwiMCJdLFs5LDUsIjAiXSxbMTAsNSwiMCJdLFs2LDUsIlxcbWF0aHJte2lkfSJdLFs2LDExXSxbMCwxLCIiLDAseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
	\& {M'} \&\&\& {C_{i+1}^-M} \\
	\cdots \& {0_{i+1}} \& {(k^n)_j} \& \cdots \& {(k^n)_{i+1}} \& {(k^n)_j} \\
	\& \cdots \& \cdots \&\& \cdots \& \cdots
	\arrow[shorten <=16pt, shorten >=16pt, Rightarrow, dashed, from=1-2, to=1-5]
	\arrow["0", from=2-2, to=2-1]
	\arrow[from=2-2, to=2-3]
	\arrow["0", from=2-2, to=3-2]
	\arrow[from=2-3, to=3-3]
	\arrow["0", from=2-4, to=2-5]
	\arrow["{\mathrm{id}}", from=2-6, to=2-5]
	\arrow[from=2-6, to=3-6]
	\arrow["0", from=3-5, to=2-5]
\end{tikzcd}
   {% endtikz %}
   $C_{i+1}^-M$ 仍是投射对象.
{% endpf %}
