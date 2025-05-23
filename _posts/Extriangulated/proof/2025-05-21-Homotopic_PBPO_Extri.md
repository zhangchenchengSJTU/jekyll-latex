---
title: 外三角范畴的同伦的推出拉回
author: Chencheng Zhang
layout: post
category: proof
---

## 外三角范畴的推论

暂时称预外三角范畴是满足 ET1, ET2, ET3 与 ET3' 的三元组 $(𝒞 , 𝔼 , 𝔰 )$, 见[此文](Stable_Cat_Analogue#外三角范畴的定义). 若预外三角范畴满足 ET4 与 ET4', 则称之外三角范畴.

{% prop %}
对外三角范畴, 若下图是 $δ$ 与 $λ _∗ δ$ 的实现, 则存在一个较好的 $w$ 使得方块交换, 同时下方是 $y^∗ δ$ 的实现.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiWCJdLFs0LDAsIloiXSxbMiwwLCJZIl0sWzUsMCwiXFwsIl0sWzAsMSwiQSJdLFsyLDEsIkIiXSxbNCwxLCJaIl0sWzUsMSwiXFwsIl0sWzAsMiwiWCJdLFsyLDIsIkEgXFxvcGx1cyBZIl0sWzQsMiwiQiJdLFs1LDIsIlxcLCJdLFswLDIsImEiXSxbMiwxLCJiIl0sWzEsMywiXFxkZWx0YSAiXSxbNCw1LCJ4IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzUsNiwieSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDYsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsNSwidyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs2LDcsIlxcbGFtYmRhIF9cXGFzdCBcXGRlbHRhICJdLFs4LDksIlxcYmlub20gXFxsYW1iZGEgYSJdLFs5LDEwLCIoLXgsdykiXSxbMCw0LCJcXGxhbWJkYSAiXSxbMTAsMTEsInleXFxhc3QgXFxkZWx0YSAiXV0=
\begin{tikzcd}
	X && Y && Z & {\,} \\
	A && B && Z & {\,} \\
	X && {A \oplus Y} && B & {\,}
	\arrow["a", from=1-1, to=1-3]
	\arrow["{\lambda }", from=1-1, to=2-1]
	\arrow["b", from=1-3, to=1-5]
	\arrow["w", dashed, from=1-3, to=2-3]
	\arrow["{\delta }", from=1-5, to=1-6]
	\arrow[equals, from=1-5, to=2-5]
	\arrow["x", dashed, from=2-1, to=2-3]
	\arrow["y", dashed, from=2-3, to=2-5]
	\arrow["{\lambda _\ast \delta }", from=2-5, to=2-6]
	\arrow["{\binom \lambda a}", from=3-1, to=3-3]
	\arrow["{(-x,w)}", from=3-3, to=3-5]
	\arrow["{y^\ast \delta }", from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}

{% pf %}
依照两个 [deflation 的拉回](4_times_4_extri)补全交换图:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMiwiWCJdLFsxLDIsIlkiXSxbMiwyLCJaIl0sWzIsMSwiQiJdLFsyLDAsIkEiXSxbMSwxLCJBIFxcb3BsdXMgWSJdLFswLDEsIlgiXSxbMSwwLCJBIl0sWzMsMiwiXFwsIl0sWzMsMSwiXFwsIl0sWzIsMywiXFwsICJdLFsxLDMsIlxcLCJdLFswLDEsImEiXSxbMSwyLCJiIl0sWzMsMiwieSJdLFs0LDMsIngiXSxbNiw1LCJcXGJpbm9tICB7XFxsYW1iZGEgJ30gYSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs3LDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMCwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNyw1LCJlXzEiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSwxLCJwXzIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSwzLCIoeCwtdycpIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsOCwiXFxkZWx0YSAiXSxbMyw5LCJ5XlxcYXN0IFxcZGVsdGEgIl0sWzIsMTAsIlxcbGFtYmRhX1xcYXN0IFxcZGVsdGEgIl0sWzEsMTEsImJeXFxhc3QgXFxsYW1iZGEgX1xcYXN0IFxcZGVsdGEgIl1d
\begin{tikzcd}
	& A & A \\
	X & {A \oplus Y} & B & {\,} \\
	X & Y & Z & {\,} \\
	& {\,} & {\, }
	\arrow[equals, from=1-2, to=1-3]
	\arrow["{e_1}", dashed, from=1-2, to=2-2]
	\arrow["x", from=1-3, to=2-3]
	\arrow["{\binom  {\lambda '} a}", dashed, from=2-1, to=2-2]
	\arrow[equals, from=2-1, to=3-1]
	\arrow["{(x,-w')}", dashed, from=2-2, to=2-3]
	\arrow["{p_2}", dashed, from=2-2, to=3-2]
	\arrow["{y^\ast \delta }", from=2-3, to=2-4]
	\arrow["y", from=2-3, to=3-3]
	\arrow["a", from=3-1, to=3-2]
	\arrow["b", from=3-2, to=3-3]
	\arrow["{b^\ast \lambda _\ast \delta }", from=3-2, to=4-2]
	\arrow["{\delta }", from=3-3, to=3-4]
	\arrow["{\lambda_\ast \delta }", from=3-3, to=4-3]
\end{tikzcd}
{% endtikz %}
由 $b^\ast \delta = 0$, 不妨将 $b^\ast \lambda _\ast \delta$ 写作标准直和形式, $A⊕ Y$ 处相差的自同构不影响原有箭头. 依照反交换等式, 得
$$\begin{equation}
0 = \binom {λ '}{a} _∗ δ + \binom {1}{0} _∗  λ _∗ δ = \binom {λ ' + λ} a_∗ δ.
\end{equation}$$
等式第二分量本就恒等. 对于第一分量, 长正合列表明存在 $l$ 使得
$$\begin{equation}
[X \xrightarrow a Y \xrightarrow l A] = X \xrightarrow {λ + λ '} A.
\end{equation}$$
分解, 记 $(λ + λ ' ) = l ∘ a$. 
\\
\\
下只需证明, 存在较好的 $w$ 使得以下态射图交换:
{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwxLCJYIl0sWzIsMSwiQSBcXG9wbHVzIFkiXSxbNCwxLCJCIl0sWzQsMCwiQiJdLFsyLDAsIkEgXFxvcGx1cyBZIl0sWzAsMCwiWCJdLFswLDEsIlxcYmlub20ge1xcbGFtYmRhfSBhIl0sWzEsMiwiKC14LCB3KSJdLFszLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsNCwiXFxiaW5vbSB7XFxsYW1iZGEgJ30gYSJdLFs1LDAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsMSwiXFxiaW5vbSB7LTEgXFwgXFwgbFxcIH17MCBcXCBcXCBcXCAxfSJdLFs0LDMsIih4LC13JykiXV0=
\begin{tikzcd}[ampersand replacement=\&]
	X \&\& {A \oplus Y} \&\& B \\
	X \&\& {A \oplus Y} \&\& B
	\arrow["{\binom {\lambda '} a}", from=1-1, to=1-3]
	\arrow[equals, from=1-1, to=2-1]
	\arrow["{(x,-w')}", from=1-3, to=1-5]
	\arrow["{\binom {-1 \ \ l\ }{0 \ \ \ 1}}", from=1-3, to=2-3]
	\arrow[equals, from=1-5, to=2-5]
	\arrow["{\binom {\lambda} a}", from=2-1, to=2-3]
	\arrow["{(-x, w)}", from=2-3, to=2-5]
\end{tikzcd}
{% endtikz %}
以上 $l$ 的选取使得左侧交换. 右侧交换等价于 $w+ w' = xl$, 直接取 $w = xl - w'$.

- $wa - x λ = xla - w'a - xλ = xla - x λ ' - xλ = x(la - λ - λ ' ) = 0$;
- $yw - b = yxl - yw' - b = 0 l + b - b = 0$.

因此, 以上对 $w$ 的选取合法.

{% endpf %}
{% endprop %}

{% prop %}
(对偶命题). 对于以上 $δ$ 与 $s^∗ δ$ 的实现, 存在较好的 $t$ 使得上图交换, 且下图是 $a_∗ δ$ 的实现.
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldCJdLFs0LDAsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzUsMSwiXFwsIl0sWzUsMCwiXFwsIl0sWzAsMiwiXFxidWxsZXQiXSxbMiwyLCJcXGJ1bGxldCBcXG9wbHVzIFxcYnVsbGV0Il0sWzQsMiwiXFxidWxsZXQiXSxbNSwyLCJcXCwiXSxbMCwxLCJhIl0sWzEsMiwiYiJdLFswLDMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsNCwiYyJdLFs0LDUsImQiXSxbMSw0LCJ0IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsNSwicyJdLFs1LDYsIlxcZGVsdGEgIl0sWzIsNywic15cXGFzdCBcXGRlbHRhICJdLFs4LDksIlxcYmlub217LWJ9e3R9Il0sWzksMTAsIihzLGQpIl0sWzEwLDExLCJhX1xcYXN0IFxcZGVsdGEiXV0=
\begin{tikzcd}[ampersand replacement=\&]
	\bullet \&\& \bullet \&\& \bullet \& {\,} \\
	\bullet \&\& \bullet \&\& \bullet \& {\,} \\
	\bullet \&\& {\bullet \oplus \bullet} \&\& \bullet \& {\,}
	\arrow["a", from=1-1, to=1-3]
	\arrow[equals, from=1-1, to=2-1]
	\arrow["b", from=1-3, to=1-5]
	\arrow["t", dashed, from=1-3, to=2-3]
	\arrow["{s^\ast \delta }", from=1-5, to=1-6]
	\arrow["s", from=1-5, to=2-5]
	\arrow["c", from=2-1, to=2-3]
	\arrow["d", from=2-3, to=2-5]
	\arrow["{\delta }", from=2-5, to=2-6]
	\arrow["{\binom{-b}{t}}", from=3-1, to=3-3]
	\arrow["{(s,d)}", from=3-3, to=3-5]
	\arrow["{a_\ast \delta}", from=3-5, to=3-6]
\end{tikzcd}
{% endtikz %}
{% endprop %}
