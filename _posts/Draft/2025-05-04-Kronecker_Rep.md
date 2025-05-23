---
title: Kronecker quiver 的不可分解表示
author: Chencheng Zhang
layout: post
category: [notes, pending]
---

* toc
{:toc}

## Kronecker quiver 的表示

{% def %}
(Kronecker). 称 $Q = [1 ⇉ 2]$ 为 Kronecker quiver. 记 $α$ 与 $β$ 是上下箭头, 则路代数 $kQ$ 是矩阵代数

$$
kQ ≃ \begin{pmatrix}
    s & 0\\ xα ⊕ yβ & t
\end{pmatrix}_{s,t,x,y ∈ k} ≃ \begin{pmatrix}
    s & 0 & 0\\ x & t & 0 \\ y & 0 & t
\end{pmatrix}_{s,t,x,y ∈ k}.
$$

{% enddef %}

### 预投射部分, 预内射部分

以下取 $Q$ 为 Kronecker quier. 涉及 Coxeter 反射的内容见[此文](Coxeter-Reflection).

{% def %}
(Kronecker quiver 的 Coxeter 矩阵). 对不可分解对象 $M ∈ 𝐫𝐞𝐩 (kQ)$, 定义维数向量 $𝐝𝐢𝐦 M = \binom{\dim M_1}{\dim M_2} =: \binom mn$. 依照[此处](Coxeter-Reflection#反射函子初探)计算以及 $C^± = τ ^±$, 得

$$
\begin{aligned}
𝐝𝐢𝐦 \  C^+M_{(∉ 𝐩𝐫𝐨𝐣)} & = \begin{pmatrix}
3 & -2 \\ 2 & -1
\end{pmatrix} ⋅ \binom mn = \binom{3m-2n}{2m-n}; \\[6pt]
𝐝𝐢𝐦 \ C^-M_{(∉ 𝐢𝐧𝐣)} & = \begin{pmatrix}
-1 & 2 \\ -2 & 3
\end{pmatrix} ⋅ \binom mn = \binom{-m + 2n}{- 2m+ 2n}.
\end{aligned}
$$

需要提及, $C^+$ 将投射模映至 $0$, $C^-$ 将内射模映至 $0$.

{% enddef %}

{% thm %}
([证明](Kronecker_Dim_Vec)). 以下是 Kronecker quiver 的所有预投射模与预内射模:

1. 预投射模的维数向量是 $\binom{n}{n + 1}$;
2. 预投射模在同构的意义下形如

   $$
   k^n \ \overset A {\underset B ⇉} \ k^{n+1},\quad A = \binom{I_n}{0}, \ B = \binom{0}{I_n} ∈ k^{n × (n+1)}.
   $$

3. 预内射模的维数向量是 $\binom{n+1}{n}$.
4. 预内射模在同构的意义下形如

   $$
   k^{n+1} \ \overset A {\underset B ⇉} \ k^{n},\quad A = \binom{I_n}{0}^T, \ B = \binom{0}{I_n}^T ∈ k^{(n+1) × n}.
   $$

{% endthm %}

{% ex %}
对 Kronecker quiver $a ⇉ b$ 上的预投射与预内射模 $M$, 维数向量唯一决定了同构类. 下使用 $[m ∣ n]$ 表示 $M$ ($𝐝𝐢𝐦 M = \binom mn$) 的同构类.

1. 预投射模 $[n ∣ n+1]$, 包含投射模 $[1 ∣ 2]$ 与 $[0 ∣ 1]$;
2. 预内射模 $[n+1 ∣ n]$, 包含内射模 $[2 ∣ 1]$ 与 $[1 ∣ 0]$;
3. 正规模, 其结构暂不明确, 但是维数向量形如 $\binom nn$.

以是预投射与预内射部分的 AR quiver:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTUsWzAsMiwiWzAgXFxtaWQgMV0iLFsyMzIsMTAwLDYwLDFdXSxbMSwyLCJbMSBcXG1pZCAyXSIsWzIzMiwxMDAsNjAsMV1dLFsxLDMsIlsyIFxcbWlkIDNdIixbMjA2LDEwMCw2MCwxXV0sWzIsMywiWzNcXG1pZCA0XSIsWzIwNiwxMDAsNjAsMV1dLFsyLDQsIlxcY2RvdHMiLFsyMDYsMTAwLDYwLDFdXSxbNCwwLCJcXGNkb3RzIixbMTksMTAwLDYwLDFdXSxbNCwxLCJbNCBcXG1pZCAzXSIsWzE5LDEwMCw2MCwxXV0sWzUsMSwiWzNcXG1pZDJdIixbMTksMTAwLDYwLDFdXSxbNSwyLCJbMlxcbWlkMV0iLFszNTcsMTAwLDYwLDFdXSxbNiwyLCJbMVxcbWlkMF0iLFszNTcsMTAwLDYwLDFdXSxbMiwyLCJcXHRleHR7cHJvan0iLFsyMzIsMTAwLDYwLDFdXSxbMywzLCJcXHRleHR7cHJlLXByb2p9IixbMjA2LDEwMCw2MCwxXV0sWzMsMSwiXFx0ZXh0e3ByZS1pbmp9IixbMTksMTAwLDYwLDFdXSxbNCwyLCJcXHRleHR7aW5qfSIsWzM1NywxMDAsNjAsMV1dLFszLDIsIlxcYm94ZWR7XFx0ZXh0e3JlZ3VsYXIgbW9kfX0iLFsxMjAsNjAsNjAsMV1dLFswLDFdLFsxLDJdLFsyLDNdLFszLDRdLFswLDEsIiIsMSx7Im9mZnNldCI6LTN9XSxbMSwyLCIiLDEseyJvZmZzZXQiOi0zfV0sWzIsMywiIiwxLHsib2Zmc2V0IjotM31dLFszLDQsIiIsMSx7Im9mZnNldCI6LTN9XSxbNiw3XSxbNyw4XSxbNiw3LCIiLDEseyJvZmZzZXQiOi0zfV0sWzgsOSwiIiwxLHsib2Zmc2V0IjotM31dLFs1LDZdLFs1LDYsIiIsMSx7Im9mZnNldCI6LTN9XSxbMiwwLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMywxLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNCwyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNyw1LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOCw2LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOSw3LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMTEsMTAsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxNCwxMSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoic3F1aWdnbHkifX19XSxbMTIsMTQsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6InNxdWlnZ2x5In19fV0sWzEzLDEyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNyw4LCIiLDEseyJvZmZzZXQiOi0zfV0sWzgsOV1d
\begin{tikzcd}
	&&&& \color{rgb,255:red,255;green,116;blue,51}{\cdots} \\
	&&& \color{rgb,255:red,255;green,116;blue,51}{\text{pre-inj}} & \color{rgb,255:red,255;green,116;blue,51}{[4 \mid 3]} & \color{rgb,255:red,255;green,116;blue,51}{[3\mid2]} \\
	\color{rgb,255:red,51;green,78;blue,255}{[0 \mid 1]} & \color{rgb,255:red,51;green,78;blue,255}{[1 \mid 2]} & \color{rgb,255:red,51;green,78;blue,255}{\text{proj}} & \color{rgb,255:red,92;green,214;blue,92}{\boxed{\text{regular mod}}} & \color{rgb,255:red,255;green,51;blue,61}{\text{inj}} & \color{rgb,255:red,255;green,51;blue,61}{[2\mid1]} & \color{rgb,255:red,255;green,51;blue,61}{[1\mid0]} \\
	& \color{rgb,255:red,51;green,167;blue,255}{[2 \mid 3]} & \color{rgb,255:red,51;green,167;blue,255}{[3\mid 4]} & \color{rgb,255:red,51;green,167;blue,255}{\text{pre-proj}} \\
	&& \color{rgb,255:red,51;green,167;blue,255}{\cdots}
	\arrow[from=1-5, to=2-5]
	\arrow[shift left=3, from=1-5, to=2-5]
	\arrow[squiggly, from=2-4, to=3-4]
	\arrow[from=2-5, to=2-6]
	\arrow[shift left=3, from=2-5, to=2-6]
	\arrow[dotted, from=2-6, to=1-5]
	\arrow[from=2-6, to=3-6]
	\arrow[shift left=3, from=2-6, to=3-6]
	\arrow[from=3-1, to=3-2]
	\arrow[shift left=3, from=3-1, to=3-2]
	\arrow[from=3-2, to=4-2]
	\arrow[shift left=3, from=3-2, to=4-2]
	\arrow[squiggly, from=3-4, to=4-4]
	\arrow[dotted, from=3-5, to=2-4]
	\arrow[dotted, from=3-6, to=2-5]
	\arrow[shift left=3, from=3-6, to=3-7]
	\arrow[from=3-6, to=3-7]
	\arrow[dotted, from=3-7, to=2-6]
	\arrow[dotted, from=4-2, to=3-1]
	\arrow[from=4-2, to=4-3]
	\arrow[shift left=3, from=4-2, to=4-3]
	\arrow[dotted, from=4-3, to=3-2]
	\arrow[from=4-3, to=5-3]
	\arrow[shift left=3, from=4-3, to=5-3]
	\arrow[dotted, from=4-4, to=3-3]
	\arrow[dotted, from=5-3, to=4-2]
\end{tikzcd}
{% endtikz %}

{% endex %}

### 正规部分

依照 Coxeter 矩阵, 正规模 (既非预投射, 亦非预内射的模) 的维数向量必然是 $\binom{n}{n}$.

{% thm %}
([证明](Kronecker_Regular)). 若 $k$ 是代数闭域, 则正规模在同构的意义下形如 $\binom{I}{J_n (λ)}: k^n ⇉ k^n$. 其中 $J_n(λ)$ 是大小为 $n$ 的 Jordan 块. 约定 $\binom{I}{J_n (∞ )} := \binom{J_n (0)}{I}$.
{% endthm %}

{% cor %}
([证明](Kronecker_Regular)). 若 $k$ 不是代数闭域, 则正规模在同构意义下形如 $\binom{I}{J_n(λ)}$ ($λ ∈ k∪ \{∞\}$), 或是 $\binom{I}{J_s(C(f))} : k^n → k^n$. 此处, $C(f)$ 是 $k[x]$ 中不可约多项式对应的友矩阵, $J_s(C(f))$ 是有理标准型, 满足 $\deg f ⋅ J(s) = n$.
{% endcor %}

{% slo %}
正规模对应 $ℕ_+ × ℙ_k^1$, 也就是带重数的素点.
{% endslo %}

{% ex %}
需要提及, 正规部分的 AR quiver 存在环路. 例如以下均为不可约态射:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzUsMCwia15uIl0sWzUsMSwia15uIl0sWzMsMCwia157Mm59Il0sWzMsMSwia157Mm59Il0sWzEsMCwia15uIl0sWzEsMSwia15uIl0sWzAsMCwiMCJdLFswLDEsIjAiXSxbNiwwLCIwIl0sWzYsMSwiMCJdLFswLDEsIkpfe259KFxcbGFtYmRhKSIsMCx7Im9mZnNldCI6LTJ9XSxbMCwxLCJJIiwyLHsib2Zmc2V0IjoyfV0sWzIsMywiSl97Mm59KFxcbGFtYmRhKSIsMCx7Im9mZnNldCI6LTJ9XSxbMiwzLCJJX3sybn0iLDIseyJvZmZzZXQiOjJ9XSxbMiwwLCIoTyBcXCBJKSJdLFszLDEsIihPIFxcIEkpIiwyXSxbNCw1LCJJIiwyLHsib2Zmc2V0IjoyfV0sWzUsMywiXFxiaW5vbSB7SX17T30iLDJdLFs0LDIsIlxcYmlub20ge0l9e099Il0sWzQsNSwiSl97bn0oXFxsYW1iZGEpIiwwLHsib2Zmc2V0IjotMn1dLFs2LDRdLFs3LDVdLFswLDhdLFsxLDldXQ==
\begin{tikzcd}
	0 & {k^n} && {k^{2n}} && {k^n} & 0 \\
	0 & {k^n} && {k^{2n}} && {k^n} & 0
	\arrow[from=1-1, to=1-2]
	\arrow["{\binom {I}{O}}", from=1-2, to=1-4]
	\arrow["I"', shift right=2, from=1-2, to=2-2]
	\arrow["{J_{n}(\lambda)}", shift left=2, from=1-2, to=2-2]
	\arrow["{(O \ I)}", from=1-4, to=1-6]
	\arrow["{J_{2n}(\lambda)}", shift left=2, from=1-4, to=2-4]
	\arrow["{I_{2n}}"', shift right=2, from=1-4, to=2-4]
	\arrow[from=1-6, to=1-7]
	\arrow["{J_{n}(\lambda)}", shift left=2, from=1-6, to=2-6]
	\arrow["I"', shift right=2, from=1-6, to=2-6]
	\arrow[from=2-1, to=2-2]
	\arrow["{\binom {I}{O}}"', from=2-2, to=2-4]
	\arrow["{(O \ I)}"', from=2-4, to=2-6]
	\arrow[from=2-6, to=2-7]
\end{tikzcd}
{% endtikz %}

实际上, 正规模的 AR 平移是自身, 计算如下:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTgsWzYsMCwia15uIl0sWzYsMSwia15uIl0sWzQsMCwia15uIl0sWzQsMSwia157Mm59Il0sWzIsMCwiMCJdLFsyLDEsImtebiJdLFs2LDIsIk0iXSxbNCwyLCJQXzFebiJdLFsyLDIsIlBfMl5uIl0sWzQsMywiSV8xXm4iXSxbMiwzLCJJXzJebiJdLFswLDMsIlxcdGF1IE0iXSxbMiw1LCJrXm4iXSxbMiw0LCJrXnsybn0iXSxbNCw0LCJrXm4iXSxbNCw1LCIwIl0sWzAsNCwia15uIl0sWzAsNSwia15uIl0sWzAsMSwiSl9uKFxcbGFtYmRhKSIsMCx7Im9mZnNldCI6LTJ9XSxbMCwxLCJJIiwyLHsib2Zmc2V0IjoyfV0sWzIsMywiXFxiaW5vbXtPfXtJfSIsMCx7Im9mZnNldCI6LTJ9XSxbMiwzLCJcXGJpbm9te0l9e099IiwyLHsib2Zmc2V0IjoyfV0sWzIsMCwiSSJdLFszLDEsIihJIFxcIEpfbihcXGxhbWJkYSkpIiwyXSxbNCw1LCIiLDEseyJvZmZzZXQiOjJ9XSxbNCw1LCIiLDEseyJvZmZzZXQiOi0yfV0sWzUsMywiXFxiaW5vbXstSl9uKFxcbGFtYmRhKX17SX0iLDJdLFs0LDJdLFs4LDddLFs3LDZdLFsxMCw5XSxbMTEsMTBdLFsxMywxMiwiKEkgXFwgTykiLDIseyJvZmZzZXQiOjJ9XSxbMTMsMTIsIihPIFxcIEkpIiwwLHsib2Zmc2V0IjotMn1dLFsxMywxNCwiKC0gSl9uIChcXGxhbWJkYSkgXFwgTykiXSxbMTIsMTVdLFsxNCwxNSwiIiwxLHsib2Zmc2V0IjoyfV0sWzE0LDE1LCIiLDEseyJvZmZzZXQiOi0yfV0sWzE2LDE3LCJJIiwyLHsib2Zmc2V0IjoyfV0sWzE2LDE3LCJKX24oXFxsYW1iZGEpIiwwLHsib2Zmc2V0IjotMn1dLFsxNiwxMywiXFxiaW5vbXtJfXtKX24oXFxsYW1iZGEpfSJdLFsxNywxMl0sWzYsMTEsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}
	&& 0 && {k^n} && {k^n} \\
	&& {k^n} && {k^{2n}} && {k^n} \\
	&& {P_2^n} && {P_1^n} && M \\
	{\tau M} && {I_2^n} && {I_1^n} \\
	{k^n} && {k^{2n}} && {k^n} \\
	{k^n} && {k^n} && 0
	\arrow[from=1-3, to=1-5]
	\arrow[shift right=2, from=1-3, to=2-3]
	\arrow[shift left=2, from=1-3, to=2-3]
	\arrow["I", from=1-5, to=1-7]
	\arrow["{\binom{O}{I}}", shift left=2, from=1-5, to=2-5]
	\arrow["{\binom{I}{O}}"', shift right=2, from=1-5, to=2-5]
	\arrow["{J_n(\lambda)}", shift left=2, from=1-7, to=2-7]
	\arrow["I"', shift right=2, from=1-7, to=2-7]
	\arrow["{\binom{-J_n(\lambda)}{I}}"', from=2-3, to=2-5]
	\arrow["{(I \ J_n(\lambda))}"', from=2-5, to=2-7]
	\arrow[from=3-3, to=3-5]
	\arrow[from=3-5, to=3-7]
	\arrow[dashed, from=3-7, to=4-1]
	\arrow[from=4-1, to=4-3]
	\arrow[from=4-3, to=4-5]
	\arrow["{\binom{I}{J_n(\lambda)}}", from=5-1, to=5-3]
	\arrow["I"', shift right=2, from=5-1, to=6-1]
	\arrow["{J_n(\lambda)}", shift left=2, from=5-1, to=6-1]
	\arrow["{(- J_n (\lambda) \ O)}", from=5-3, to=5-5]
	\arrow["{(I \ O)}"', shift right=2, from=5-3, to=6-3]
	\arrow["{(O \ I)}", shift left=2, from=5-3, to=6-3]
	\arrow[shift right=2, from=5-5, to=6-5]
	\arrow[shift left=2, from=5-5, to=6-5]
	\arrow[from=6-1, to=6-3]
	\arrow[from=6-3, to=6-5]
\end{tikzcd}
{% endtikz %}
{% endex %}

{% ex %}
正规部分的 AR quiver 不连通, 且每一连通分支无限.
{% endex %}
