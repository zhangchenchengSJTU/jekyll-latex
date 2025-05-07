---
title: Kronecker quiver 的 regular 模
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
若 $k$ 是代数闭域, 则 regular 模在同构的意义下形如 $\binom{I}{J_n (λ)}: k^n ⇉ k^n$. 其中 $J_n(λ)$ 是大小为 $n$ 的 Jordan 块. 约定 $\binom{I}{J_n (∞ )} := \binom{J_n (0)}{I}$.
{% endthm %}

{% pf %}
下使用数学归纳法证明. 若 $n = 1$, 则结论显然成立.
\\
\\
对一般的 $n$, 若 $A$ 是可逆矩阵, 则表示 $\binom{A}{B}$ 同构于 $\binom{I}{A^{-1}B}$. 不妨设 $A = I$, 则模的自同态代数为 $\{X ∣ BX = XB\}$, 其理应是局部环. 依照 $B$ 的 Jordan 型, 得 $B$ 的 Jordan 块个数只能是 $1$.
\\
若 $A$ 不可逆, 则任取 $Av = 0$. 得表示的 ses:

<center>
<!-- https://q.uiver.app/#q=WzAsMTAsWzEsMCwia3YiXSxbMSwxLCJrdiJdLFszLDAsImtebiJdLFszLDEsImtebiJdLFs1LDAsImtee24tMX0iXSxbNSwxLCJrXntuLTF9Il0sWzAsMCwiMCJdLFswLDEsIjAiXSxbNiwwLCIwIl0sWzYsMSwiMCJdLFs2LDBdLFswLDJdLFsyLDRdLFs0LDhdLFs3LDFdLFsxLDNdLFszLDVdLFs1LDldLFswLDEsIkJ8X3trdn0iLDAseyJvZmZzZXQiOi0yfV0sWzIsMywiQiIsMCx7Im9mZnNldCI6LTJ9XSxbNCw1LCIiLDAseyJvZmZzZXQiOi0yfV0sWzAsMSwiMCIsMix7Im9mZnNldCI6Mn1dLFsyLDMsIkEiLDIseyJvZmZzZXQiOjJ9XSxbNCw1LCIiLDAseyJvZmZzZXQiOjJ9XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTAsWzEsMCwia3YiXSxbMSwxLCJrdiJdLFszLDAsImtebiJdLFszLDEsImtebiJdLFs1LDAsImtee24tMX0iXSxbNSwxLCJrXntuLTF9Il0sWzAsMCwiMCJdLFswLDEsIjAiXSxbNiwwLCIwIl0sWzYsMSwiMCJdLFs2LDBdLFswLDJdLFsyLDRdLFs0LDhdLFs3LDFdLFsxLDNdLFszLDVdLFs1LDldLFswLDEsIkJ8X3trdn0iLDAseyJvZmZzZXQiOi0yfV0sWzIsMywiQiIsMCx7Im9mZnNldCI6LTJ9XSxbNCw1LCIiLDAseyJvZmZzZXQiOi0yfV0sWzAsMSwiMCIsMix7Im9mZnNldCI6Mn1dLFsyLDMsIkEiLDIseyJvZmZzZXQiOjJ9XSxbNCw1LCIiLDAseyJvZmZzZXQiOjJ9XV0=&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
</center>

比较 $\mathrm{Irr}$, 商对象的直和项不含预投射部分, (由维数) 亦不含预内射部分. 依照归纳假设, 商对象是若干 regular 模的直和, 每一直和项通过 $J_s(λ)$ 确定. 任取直和项 $J_s(λ)$, 对 $J_1(0)$ 作内射分解得 ses $J_1(0) → I(2) → I(1)$. 此时有四项长正合列

$$
0 → (J_s(λ), J_1(0)) → (J_s(λ), I(2)) → (J_s(λ), I(1)) → \mathrm{Ext}^1(J_s(λ), J_1(0)) → 0.
$$

由 $\dim (J_s(λ), I(2)) = s$ 于 $\dim (J_s(λ), I(1)) = s$, 得

$$
\dim (J_s(λ), J_1(0)) = \dim \mathrm{Ext}^1(J_s(λ), J_1(0)).
$$

今断言商对象的直和项 $J_s(λ)$ 必满足 $λ = 0$. 若不然, 则 $\dim (J_s(λ), J_1(0)) = \dim \mathrm{Ext}^1(J_s(λ), J_1(0)) = 0$. 此时有如下推出拉回:
<center>
<!-- https://q.uiver.app/#q=WzAsOCxbMCwwLCJKXzEoMCkiXSxbMCwxLCJKXzEoMCkiXSxbMSwwLCJFIl0sWzEsMSwiSl8xKDApIFxcb3BsdXMgSl9zKFxcbGFtYmRhKSJdLFsyLDEsIkpfcyhcXGxhbWJkYSkiXSxbMiwwLCJKX3MoXFxsYW1iZGEpIFxcb3BsdXMgVyJdLFszLDAsIkpfcyhcXGxhbWJkYSkiLFswLDAsNTAsMV1dLFsxLDIsIkpfcyhcXGxhbWJkYSkiLFswLDAsNTAsMV1dLFswLDEsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMiwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMiw1LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMSwzLCJcXGJpbm9tIDEwIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMyw0LCIoMCBcXCAxKSIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs0LDUsIlxcYmlub20gMTAiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFszLDIsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzIsNCwiXFxzcXVhcmUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNywzLCIiLDIseyJjb2xvdXIiOlswLDAsNTBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs1LDYsIiIsMix7ImNvbG91ciI6WzAsMCw1MF0sInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsOCxbMCwwLCJKXzEoMCkiXSxbMCwxLCJKXzEoMCkiXSxbMSwwLCJFIl0sWzEsMSwiSl8xKDApIFxcb3BsdXMgSl9zKFxcbGFtYmRhKSJdLFsyLDEsIkpfcyhcXGxhbWJkYSkiXSxbMiwwLCJKX3MoXFxsYW1iZGEpIFxcb3BsdXMgVyJdLFszLDAsIkpfcyhcXGxhbWJkYSkiLFswLDAsNTAsMV1dLFsxLDIsIkpfcyhcXGxhbWJkYSkiLFswLDAsNTAsMV1dLFswLDEsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMiwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMiw1LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMSwzLCJcXGJpbm9tIDEwIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMyw0LCIoMCBcXCAxKSIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs0LDUsIlxcYmlub20gMTAiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFszLDIsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzIsNCwiXFxzcXVhcmUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNywzLCIiLDIseyJjb2xvdXIiOlswLDAsNTBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs1LDYsIiIsMix7ImNvbG91ciI6WzAsMCw1MF0sInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dXQ==&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>
得 $J_s(λ)$ 是 $E$ 的直和项, 与 $E$ 不可分解矛盾.
\\
由以上, 商对象形如若干 $J_s(0)$. 由子对象与商对象的右侧箭头是满秩矩阵, 必然有 $\ker B = 0$. 由 $B$ 可逆, 按照上文归纳即可.

{% endpf %}

{% cor %}
若 $k$ 不是代数闭域, 则 regular 模在同构意义下形如 $\binom{I}{J_n(λ)}$ ($λ ∈ k∪ \{∞\}$), 或是 $\binom{I}{J_s(C(f))} : k^n → k^n$. 此处, $C(f)$ 是 $k[x]$ 中不可约多项式对应的友矩阵, $J_s(C(f))$ 是有理标准型, 满足 $\deg f ⋅ J(s) = n$.
{% endcor %}

{% pf %}
预投射与预内射部分无关域的选取. 对 regular 模的讨论也是从矩阵可逆与否开始. 依照初等因子组, $\mathrm{Hom}(J_m(C(f)), J_n(C(g))) = 0$ 当且仅当 $f = g$. 剩余的证明步骤同上.
{% endpf %}
