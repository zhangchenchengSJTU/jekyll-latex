---
title: $i ∈ 𝐈𝐧𝐟 ⇒ \binom if ∈ 𝐈𝐧𝐟$
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% prop %}
(特殊的 inflation, 添加直和项). 若 $x : A → B$ 是 inflation, 则对任意 $A$ 出发的态射 $f$, $\binom x f$ 也是 inflation. 这在正合范畴中成立, 也在外三角范畴中成立.
{% endprop %}

{% pf %}
记 $f : A → D$. 令 conflation $A \overset x→ B \overset y→ C$ 是 $δ$ 的实现. 考虑推出
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJBIl0sWzEsMCwiQiJdLFsyLDAsIkMiXSxbMCwxLCJEIl0sWzEsMSwiRSJdLFsyLDEsIkMiXSxbMywwLCJcXG1hdGhmcmFrIHMoXFxkZWx0YSkiXSxbMywxLCJcXG1hdGhmcmFrIHMoZl9cXGFzdFxcZGVsdGEpIl0sWzAsMSwieCJdLFsxLDIsInkiXSxbMCwzLCJmIiwyXSxbMiw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDQsImQiLDJdLFs0LDUsImUiLDJdLFsxLDQsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}
	A & B & C & {\mathfrak s(\delta)} \\
	D & E & C & {\mathfrak s(f_\ast\delta)}
	\arrow["x", from=1-1, to=1-2]
	\arrow["f"', from=1-1, to=2-1]
	\arrow["y", from=1-2, to=1-3]
	\arrow[dashed, from=1-2, to=2-2]
	\arrow[equals, from=1-3, to=2-3]
	\arrow["d"', from=2-1, to=2-2]
	\arrow["e"', from=2-2, to=2-3]
\end{tikzcd}
{% endtikz %}

构造四个 $𝔼$-三角的交换图:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzIsMCwiQSJdLFsyLDEsIkIiXSxbMCwyLCJEIl0sWzEsMiwiRSJdLFsyLDIsIkMiXSxbMiwzLCJcXG1hdGhmcmFrIHMoXFxkZWx0YSkiXSxbMywyLCJcXG1hdGhmcmFrIHMoZl9cXGFzdFxcZGVsdGEpIl0sWzEsMCwiQSJdLFswLDEsIkQiXSxbMSwxLCJNIl0sWzMsMSwiXFxtYXRoZnJhayBzKHleXFxhc3QgZl9cXGFzdFxcZGVsdGEpIl0sWzEsMywiXFxtYXRoZnJhayBzKGVeXFxhc3QgXFxkZWx0YSkiXSxbMCwxLCJ4Il0sWzIsMywiZCIsMl0sWzMsNCwiZSIsMl0sWzEsNCwieSJdLFs3LDAsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzgsMiwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNyw5LCJtIiwyXSxbOCw5XSxbOSwxXSxbOSwzXV0=
\begin{tikzcd}
	& A & A \\
	D & M & B & {\mathfrak s(y^\ast f_\ast\delta)} \\
	D & E & C & {\mathfrak s(f_\ast\delta)} \\
	& {\mathfrak s(e^\ast \delta)} & {\mathfrak s(\delta)}
	\arrow[equals, from=1-2, to=1-3]
	\arrow["m"', from=1-2, to=2-2]
	\arrow["x", from=1-3, to=2-3]
	\arrow[from=2-1, to=2-2]
	\arrow[equals, from=2-1, to=3-1]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-2, to=3-2]
	\arrow["y", from=2-3, to=3-3]
	\arrow["d"', from=3-1, to=3-2]
	\arrow["e"', from=3-2, to=3-3]
\end{tikzcd}
{% endtikz %}

由 $y^∗ δ = 0$, 故第二横行的 $𝔼$-三角可裂. 不妨选作 $D ⊕ B$, 相应的 $\{e_1,e_2,p_1,p_2\}$ 自明. 依照 $4 × 4$-类似物, 得
$$\begin{equation}
(e_1)_∗ f_∗ δ + m_∗ δ = 0.
\end{equation}$$

由长正合列,
$$\begin{aligned}
(e_1f+m) &∈ \ker[(A, D ⊕ B) \xrightarrow{δ _!} 𝔼 (C, D ⊕ B)]\\
& = \mathrm{im} [(B, D ⊕ B) \xrightarrow{- ∘ x} (A, D ⊕ B)].
\end{aligned}$$

记 $(e_1f+m) = s ∘ x$, 矩阵形式: $\binom f 0 + \binom {g}{x} = \binom{s_1x}{s_2x}$.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzIsMCwiQSJdLFsyLDEsIkIiXSxbMCwyLCJEIl0sWzEsMiwiRSJdLFsyLDIsIkMiXSxbMiwzLCJcXG1hdGhmcmFrIHMoXFxkZWx0YSkiXSxbMywyLCJcXG1hdGhmcmFrIHMoZl9cXGFzdFxcZGVsdGEpIl0sWzEsMCwiQSJdLFswLDEsIkQiXSxbMSwxLCJEIFxcb3BsdXMgQiJdLFszLDEsIlxcbWF0aGZyYWsgcyh5XlxcYXN0IGZfXFxhc3RcXGRlbHRhKSJdLFsxLDMsIlxcbWF0aGZyYWsgcyhlXlxcYXN0IFxcZGVsdGEpIl0sWzAsMSwieCJdLFsyLDMsImQiLDJdLFszLDQsImUiLDJdLFsxLDQsInkiXSxbNywwLCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs4LDIsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsOSwiXFxiaW5vbSBnIHgiLDJdLFs4LDksImVfMSJdLFs5LDEsInBfMiJdLFs5LDNdLFsxLDksInMiLDEseyJjdXJ2ZSI6LTIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}
	& A & A \\
	D & {D \oplus B} & B & {\mathfrak s(y^\ast f_\ast\delta)} \\
	D & E & C & {\mathfrak s(f_\ast\delta)} \\
	& {\mathfrak s(e^\ast \delta)} & {\mathfrak s(\delta)}
	\arrow[equals, from=1-2, to=1-3]
	\arrow["{\binom g x}"', from=1-2, to=2-2]
	\arrow["x", from=1-3, to=2-3]
	\arrow["{e_1}", from=2-1, to=2-2]
	\arrow[equals, from=2-1, to=3-1]
	\arrow["{p_2}", from=2-2, to=2-3]
	\arrow[from=2-2, to=3-2]
	\arrow["s"{description}, curve={height=-12pt}, dashed, from=2-3, to=2-2]
	\arrow["y", from=2-3, to=3-3]
	\arrow["d"', from=3-1, to=3-2]
	\arrow["e"', from=3-2, to=3-3]
\end{tikzcd}
{% endtikz %}
我们希望 $m = \binom g x : A → D ⊕ B$ 就是 $\binom f x$. 若要实现之, 现需要给 $D ⊕ B$ 添加合适的自同构 $φ$. 若要使 $p_1φm =f$, 计算得
$$\begin{equation}
p_1φ m=p_1φ (sx-e_1f)=-φ _{1,1}f +p_1φ sx.
\end{equation}$$

- 我们希望 $φ_{1,1} = -1_D$;
- 我们希望右项消去, 因此 $φ$ 的第一横行不平凡;
- 我们希望 $φ$ 是形式简单的可逆矩阵, 例如三角矩阵.

从而假定 $φ = \binom{-1 \ \ \ \ u}{0\quad 1}$, 其中 $u:B → D$.

1. 一方面,
   $$\begin{aligned}
   f = p_1e_1f = p_1(sx - m) = p_1sp_2m - p_1m.
   \end{aligned}$$

2. 另一方面,
   $$\begin{aligned}
   p_1φ m & = p_1((-1)⊕ 1 +e_1up_2)m \\
   &= - p_1 m + up_2m
   \end{aligned}$$

取 $u = p_1s = s_1$ 即可. 这就给出了构造.
{% endpf %}