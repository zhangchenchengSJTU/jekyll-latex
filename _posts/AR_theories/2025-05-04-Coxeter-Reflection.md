---
title: Coxeter 反射简介
author: Chencheng Zhang
layout: post
category: caprice
---

* toc
{:toc}

## Coxeter 反射: AR 平移的另一表示方式

约定所有 quiver 是有限无环的 (允许重边).

{% def %}
(sink, source). 给定 $Q = (Q_0, Q_1, s, t)$, 称

1. $i ∈ Q_0$ 是 sink, 当且仅当 $s^{-1}(i) = ∅$;
2. $i ∈ Q_0$ 是 source, 当且仅当 $t^{-1}(i) = ∅$.
{% enddef %}

### 反射函子初探

{% def %}
(图的 Coxeter 反射). 给定 quiver $Q$, 对任意 sink $i ∈ Q_0$, 定义 Coxeter 反射为反转指向 $i$ 的箭头:
̧
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJpIixbMjQwLDYwLDYwLDFdXSxbMywxLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzEsMCwiXFxidWxsZXQiXSxbNSwxLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzUsMCwiXFxidWxsZXQiXSxbNiwxLCJpIixbMCw2MCw2MCwxXV0sWzcsMSwiXFxidWxsZXQiXSxbMiwyLCJRIl0sWzYsMiwiQ19pIFEiXSxbMiwxLCJcXGdhbW1hICIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFswLDNdLFs0LDBdLFswLDEsIlxcYWxwaGEgIiwwLHsib2Zmc2V0IjotMywiY29sb3VyIjpbMjQwLDYwLDYwXX0sWzI0MCw2MCw2MCwxXV0sWzAsMSwiXFxiZXRhICIsMix7Im9mZnNldCI6MywiY29sb3VyIjpbMjQwLDYwLDYwXX0sWzI0MCw2MCw2MCwxXV0sWzUsNl0sWzcsNV0sWzgsNSwiXFxhbHBoYSAnICIsMix7Im9mZnNldCI6MywiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXSxbOCw1LCJcXGJldGEgJyIsMCx7Im9mZnNldCI6LTMsImNvbG91ciI6WzAsNjAsNjBdfSxbMCw2MCw2MCwxXV0sWzgsOSwiXFxnYW1tYSAnIiwwLHsiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXSxbMTAsMTEsIkNfaSAiLDAseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJsZXZlbCI6Mn1dXQ==
\begin{tikzcd}
	& \bullet &&&& \bullet \\
	\bullet & \bullet & \color{rgb,255:red,92;green,92;blue,214}{i} & \bullet & \bullet & \bullet & \color{rgb,255:red,214;green,92;blue,92}{i} & \bullet \\
	&& Q &&&& {C_i Q}
	\arrow[from=1-2, to=2-2]
	\arrow[from=1-6, to=2-6]
	\arrow[from=2-2, to=2-1]
	\arrow["{\alpha }", shift left=3, color={rgb,255:red,92;green,92;blue,214}, from=2-2, to=2-3]
	\arrow["{\beta }"', shift right=3, color={rgb,255:red,92;green,92;blue,214}, from=2-2, to=2-3]
	\arrow["{\gamma }"', color={rgb,255:red,92;green,92;blue,214}, from=2-4, to=2-3]
	\arrow[from=2-6, to=2-5]
	\arrow["{\alpha ' }"', shift right=3, color={rgb,255:red,214;green,92;blue,92}, from=2-7, to=2-6]
	\arrow["{\beta '}", shift left=3, color={rgb,255:red,214;green,92;blue,92}, from=2-7, to=2-6]
	\arrow["{\gamma '}", color={rgb,255:red,214;green,92;blue,92}, from=2-7, to=2-8]
	\arrow["{C_i }", shorten <=22pt, shorten >=22pt, Rightarrow, from=3-3, to=3-7]
\end{tikzcd}
{% endtikz %}

此处, $C_i$ 仅对 sink 定义.
{% enddef %}

{% def %}
(模 Coxeter 反射). 表示的 Coxeter 反射定义作如下函子

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzIsMSwiWF9iIl0sWzMsMSwiWF9pIixbMjQwLDYwLDYwLDFdXSxbNCwxLCJYX2QiXSxbMSwxLCJYX2EiXSxbMiwwLCJYX2MiXSxbMiwzLCJYX2IiXSxbMSwzLCJYX2EiXSxbMiwyLCJYX2MiXSxbMywzLCJcXGtlciBcXGxlZnRbXFxiaWdvcGx1c197dChmKSA9IDF9WF97cyhmKX0gXFx4cmlnaHRhcnJvd3tcXHN1bSBYX2Z9IFhfaVxccmlnaHRdIixbMCw2MCw2MCwxXV0sWzQsMywiWF9kIl0sWzAsMSwiXFxtYXRoYmZ7cmVwfV9rKFEpIl0sWzAsMywiXFxtYXRoYmZ7cmVwfV9rKENfaVEpIl0sWzIsMSwiWF9cXGdhbW1hICIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFswLDNdLFs0LDBdLFswLDEsIlhfXFxhbHBoYSAiLDAseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlsyNDAsNjAsNjBdfSxbMjQwLDYwLDYwLDFdXSxbMCwxLCJYX1xcYmV0YSAiLDIseyJvZmZzZXQiOjMsImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFs1LDZdLFs4LDUsInAgIiwyLHsib2Zmc2V0IjozLCJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFs4LDUsInAiLDAseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFs4LDksInAiLDAseyJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFsxMCwxMSwiQ19pICIsMCx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sImxldmVsIjoyfV0sWzcsNV1d
\begin{tikzcd}
	&& {X_c} \\
	{\mathbf{rep}_k(Q)} & {X_a} & {X_b} & \color{rgb,255:red,92;green,92;blue,214}{X_i} & {X_d} \\
	&& {X_c} \\
	{\mathbf{rep}_k(C_iQ)} & {X_a} & {X_b} & \color{rgb,255:red,214;green,92;blue,92}{\ker \left[\bigoplus_{t(f) = 1}X_{s(f)} \xrightarrow{\sum X_f} X_i\right]} & {X_d}
	\arrow[from=1-3, to=2-3]
	\arrow["{C_i }", shorten <=6pt, shorten >=6pt, Rightarrow, from=2-1, to=4-1]
	\arrow[from=2-3, to=2-2]
	\arrow["{X_\alpha }", shift left=3, color={rgb,255:red,92;green,92;blue,214}, from=2-3, to=2-4]
	\arrow["{X_\beta }"', shift right=3, color={rgb,255:red,92;green,92;blue,214}, from=2-3, to=2-4]
	\arrow["{X_\gamma }"', color={rgb,255:red,92;green,92;blue,214}, from=2-5, to=2-4]
	\arrow[from=3-3, to=4-3]
	\arrow[from=4-3, to=4-2]
	\arrow["{p }"', shift right=3, color={rgb,255:red,214;green,92;blue,92}, from=4-4, to=4-3]
	\arrow["p", shift left=3, color={rgb,255:red,214;green,92;blue,92}, from=4-4, to=4-3]
	\arrow["p", color={rgb,255:red,214;green,92;blue,92}, from=4-4, to=4-5]
\end{tikzcd}
{% endtikz %}

对给定 $X ∈ 𝐫𝐞𝐩(Q)$, $C_i X ∈ 𝐫𝐞𝐩 (C_iQ)$ 定义如下

1. $X$ 与 $C_iX$ 在 $X_{≠ i}$ 与 $φ_{≠ [∙ → i]}$ 处相同 (仅有的改变是上图的着色部分);
2. $(C_iX)_i$ 是 $⨁\limits_{t(f) = i}X_{s(f)}$ 的 ker-子模; 态射由投影 $⨁\limits_{t(f) = i}X_{s(f)} ↠ X_{a}$ 诱导.
{% enddef %}

{% note %}
从 $Q → Q'$ 到 $𝐫𝐞𝐩 (Q) → 𝐫𝐞𝐩 (Q')$ 保持方向.
{% endnote %}

{% def %}
($C_i^±$). 记 $C_i^+$ 是 sink 处的反射 (以上定义的 $C_i$), $C_i^-$ 是 source 处的反射. 若无歧义, 统一使用 $C_i^±$ 表示图的 Coxeter 反射与模的 Coxeter 反射.
{% enddef %}

{% ex %}
(例子, Kronecker quiver). 给定 Kronecker quiver, 相应的 Coxeter 反射如下:
{% tikz %}
% https://q.uiver.app/#q=WzAsMjAsWzEsMiwiWF8xIl0sWzIsMiwiWF8yIl0sWzIsMywiWF8yJyAiLFsyMzQsMTAwLDYwLDFdXSxbMSwzLCJYXzEiXSxbMCwyLCJcXG1hdGhiZntyZXB9KFxccmlnaHRyaWdodGFycm93cykiXSxbMCwzLCJcXG1hdGhiZntyZXB9KFxcbGVmdGxlZnRhcnJvd3MpIl0sWzMsMywiWF8xIl0sWzQsMiwiWF8xIl0sWzMsMiwiWF8yJyIsWzIzNCwxMDAsNjAsMV1dLFs0LDMsIlhfMiJdLFswLDEsIlxcbWF0aGJme3JlcH0oXFxyaWdodHJpZ2h0YXJyb3dzKSJdLFswLDAsIlxcbWF0aGJme3JlcH0oXFxsZWZ0bGVmdGFycm93cykiXSxbMSwxLCJYXzEiXSxbMSwwLCJYXzEnJyIsWzAsNjAsNjAsMV1dLFsyLDAsIlhfMiJdLFsyLDEsIlhfMiJdLFszLDAsIlhfMSJdLFs0LDEsIlhfMScnIixbMCw2MCw2MCwxXV0sWzMsMSwiWF8yIl0sWzQsMCwiWF8yIl0sWzAsMSwiZiIsMCx7Im9mZnNldCI6LTJ9XSxbMCwxLCJnIiwyLHsib2Zmc2V0IjoyfV0sWzIsMywiZiciLDIseyJvZmZzZXQiOjIsImNvbG91ciI6WzIzNCwxMDAsNjBdfSxbMjM0LDEwMCw2MCwxXV0sWzIsMywiZyciLDAseyJvZmZzZXQiOi0yLCJjb2xvdXIiOlsyMzQsMTAwLDYwXX0sWzIzNCwxMDAsNjAsMV1dLFs0LDUsIkNfMl4rIiwyLHsibGV2ZWwiOjJ9XSxbOCw3LCJmJyIsMCx7ImNvbG91ciI6WzIzNCwxMDAsNjBdfSxbMjM0LDEwMCw2MCwxXV0sWzcsOSwiZiJdLFs4LDYsImcnIiwyLHsiY29sb3VyIjpbMjM0LDEwMCw2MF19LFsyMzQsMTAwLDYwLDFdXSxbNiw5LCJnIiwyXSxbOCw5LCJcXHRleHR75ouJ5ZuefSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMiwxNSwiZiIsMCx7Im9mZnNldCI6LTJ9XSxbMTIsMTUsImciLDIseyJvZmZzZXQiOjJ9XSxbMTQsMTMsImYnJyIsMix7Im9mZnNldCI6MiwiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXSxbMTQsMTMsImcnJyIsMCx7Im9mZnNldCI6LTIsImNvbG91ciI6WzAsNjAsNjBdfSxbMCw2MCw2MCwxXV0sWzE2LDE3LCJcXHRleHR75o6o5Ye6fSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCwxMSwiQ18xXi0iLDAseyJsZXZlbCI6Mn1dLFsxNiwxOSwiZiJdLFsxNiwxOCwiZyIsMl0sWzE5LDE3LCJnJyciLDAseyJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFsxOCwxNywiZicnIiwyLHsiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXV0=
\begin{tikzcd}
	{\mathbf{rep}(\leftleftarrows)} & \color{rgb,255:red,214;green,92;blue,92}{X_1''} & {X_2} & {X_1} & {X_2} \\
	{\mathbf{rep}(\rightrightarrows)} & {X_1} & {X_2} & {X_2} & \color{rgb,255:red,214;green,92;blue,92}{X_1''} \\
	{\mathbf{rep}(\rightrightarrows)} & {X_1} & {X_2} & \color{rgb,255:red,51;green,71;blue,255}{X_2'} & {X_1} \\
	{\mathbf{rep}(\leftleftarrows)} & {X_1} & \color{rgb,255:red,51;green,71;blue,255}{X_2' } & {X_1} & {X_2}
	\arrow["{f''}"', shift right=2, color={rgb,255:red,214;green,92;blue,92}, from=1-3, to=1-2]
	\arrow["{g''}", shift left=2, color={rgb,255:red,214;green,92;blue,92}, from=1-3, to=1-2]
	\arrow["f", from=1-4, to=1-5]
	\arrow["g"', from=1-4, to=2-4]
	\arrow["{\text{推出}}"{description}, draw=none, from=1-4, to=2-5]
	\arrow["{g''}", color={rgb,255:red,214;green,92;blue,92}, from=1-5, to=2-5]
	\arrow["{C_1^-}", Rightarrow, from=2-1, to=1-1]
	\arrow["f", shift left=2, from=2-2, to=2-3]
	\arrow["g"', shift right=2, from=2-2, to=2-3]
	\arrow["{f''}"', color={rgb,255:red,214;green,92;blue,92}, from=2-4, to=2-5]
	\arrow["{C_2^+}"', Rightarrow, from=3-1, to=4-1]
	\arrow["f", shift left=2, from=3-2, to=3-3]
	\arrow["g"', shift right=2, from=3-2, to=3-3]
	\arrow["{f'}", color={rgb,255:red,51;green,71;blue,255}, from=3-4, to=3-5]
	\arrow["{g'}"', color={rgb,255:red,51;green,71;blue,255}, from=3-4, to=4-4]
	\arrow["{\text{拉回}}"{description}, draw=none, from=3-4, to=4-5]
	\arrow["f", from=3-5, to=4-5]
	\arrow["{f'}"', shift right=2, color={rgb,255:red,51;green,71;blue,255}, from=4-3, to=4-2]
	\arrow["{g'}", shift left=2, color={rgb,255:red,51;green,71;blue,255}, from=4-3, to=4-2]
	\arrow["g"', from=4-4, to=4-5]
\end{tikzcd}
{% endtikz %}

{% endex %}

{% lem %}
$C_i^±$ 是表示范畴间的加法函子. 其中, $C_i^± (φ)$ 由 kernel 或 cokernel 的泛性质诱导. $C_i^±$ 保持模的直和关系.
{% endlem %}

### $C_i^±$ 几乎是等价

{% prop %}
([证明](Coxeter_PM_Adjoint)) 若 $i$ 是 $Q_1$ 的 sink, 则 $C_i^+ : Q_1 ⇄ Q_2 : C_i ^-$ 是互逆的图运算. 此时存在伴随函子:
\begin{equation}
  C_i ^- : \mathbf{rep}_k(Q_2) ⇄ \mathbf{rep}_k(Q_1) : C_i ^+.
\end{equation}
{% endprop %}


{% ex %}
$Q = →$. 对 $(f : A → B) ∈ 𝐫𝐞𝐩 (→)$, 有以下短正合列
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMiwwLCJBIl0sWzIsMSwiQiJdLFsxLDAsIkEiXSxbMSwxLCJcXG1hdGhybXtpbX0oZikiXSxbMywwLCIwIl0sWzMsMSwiXFxtYXRocm17Y29rfShmKSJdLFswLDEsIlxcLCJdLFs0LDEsIlxcLCJdLFswLDEsImYiLDJdLFsyLDMsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFszLDEsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzIsMCwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCw0XSxbNCw1XSxbMSw1LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
	\& A \& A \& 0 \\
	{\,} \& {\mathrm{im}(f)} \& B \& {\mathrm{cok}(f)} \& {\,}
	\arrow[equals, from=1-2, to=1-3]
	\arrow[two heads, from=1-2, to=2-2]
	\arrow[from=1-3, to=1-4]
	\arrow["f"', from=1-3, to=2-3]
	\arrow[from=1-4, to=2-4]
	\arrow[hook, from=2-2, to=2-3]
	\arrow[two heads, from=2-3, to=2-4]
\end{tikzcd}
{% endtikz %}
最右项是 $𝐫𝐞𝐩$ 中的投射单对象, 从而正合列可列. 确实也有线性空间的直和 $\mathrm{im}(f) ⊕ \mathrm{cok}(f) ≃ B$.
{% endex %}

{% ex %}
容易计算,

1. (单位, $i$ 是 source). $M ↠ C_i^+ C_i^- M$ 是投影.
   1. 合并 $i$ 处指出的箭头, 得态射 $φ : M_i → ⨁ M_{≠ i}$. 商对象 $C_i^+ C_i^- M$ 在 $i$ 处的分量是 $\mathrm{coim}(φ)$.
   2. 若 $φ$ 是单的, 则 $M ≃ C_i^+ C_i^- M$.
   3. $M ≃ C_i^+ C_i^- M ⊕ S_i^{\dim \ker (φ )}$.
2. (余单位, $i$ 是 sink) $C_i^- C_i^+ N ↪ N$ 是嵌入.
   1. 合并 $i$ 处指入的箭头, 得态射 $ψ : ⨁ _{ ≠ i} → N_i$. 子对象 $C_i^- C_i ^+$ 在 $i$ 处的分量是 $\mathrm{im}(ψ)$.
   2. 若 $ψ$ 是满的, 则 $C_i^- C_i^+ N ≃ N$.
   3. $N ≃ C_i^- C_i^+ N ⊕ S_i^{\dim \mathrm{cok}(ψ )}$

{% endex %}

{% note %}
反射函子 $C_i^±$ 极大地分离出半单 $S_i$-部分.
{% endnote %}

{% lem %}
([证明](Coxeter_Ref_Idem)). Coxeter 反射 $C_i^±$ 保持不可分解模; 除了映 $S_i$ 至 $0$.
{% endlem %}

基于以上引理, 不难得到:

{% thm %}
假定 $C_i ^- : Q_1 ⇆  Q_2 : C_i^+$. 记 $𝐢(Q_i)$ 是 $𝐦𝐨𝐝_{kQ_i}$ 中的不可分解对象 (的同构类), 则以下是双射:

$$
C_i^- : 𝐢 (Q_1 ∖ \{S_i\}) ⇆ 𝐢 (Q_2 ∖ \{S_i\}) : C_i^+.
$$

{% endthm %}

{% ex %}
(反射的例子). 考虑 $D_4$ 型 quiver 的反射, 比较如下 AR quiver:
{% tikz %}
% https://q.uiver.app/#q=WzAsMzIsWzEsMSwiNCJdLFsyLDAsIjEiXSxbMiwxLCIyIl0sWzIsMiwiMyIsWzIzNSwxMDAsNjAsMV1dLFszLDEsIlAoNCkiXSxbNCwwLCJQKDEpIl0sWzQsMiwiUCgzKSJdLFs0LDEsIlAoMikiXSxbNSwxLCIxMTEyIl0sWzYsMCwiMDExMSJdLFs2LDEsIjEwMTEiXSxbNiwyLCIxMTAxIl0sWzcsMSwiSSg0KSJdLFs4LDAsIkkoMSkiXSxbOCwxLCJJKDIpIl0sWzgsMiwiUygzKSIsWzM1OCwxMDAsNjAsMV1dLFsyLDMsIjEiXSxbMiw0LCIyIl0sWzEsNCwiNCJdLFswLDUsIjMiLFsyMzUsMTAwLDYwLDFdXSxbMiw1LCJTKDMpIixbMzU4LDEwMCw2MCwxXV0sWzMsNCwiUCg0KSJdLFs0LDMsIlAoMSkiXSxbNCw0LCJQKDIpIl0sWzQsNSwiUyg0KSJdLFs1LDQsIjExMTIiXSxbNiwzLCIwMTAxIl0sWzYsNCwiMTAwMSJdLFs2LDUsIkkoMykiXSxbNyw0LCJJKDQpIl0sWzgsMywiSSgxKSJdLFs4LDQsIkkoMikiXSxbMSwwXSxbMiwwXSxbMywwLCIiLDAseyJjb2xvdXIiOlsyMzUsMTAwLDYwXX1dLFs0LDVdLFs0LDddLFs0LDZdLFs1LDhdLFs3LDhdLFs2LDhdLFs4LDldLFs4LDEwXSxbOCwxMV0sWzksMTJdLFsxMiwxM10sWzEwLDEyXSxbMTIsMTRdLFsxMSwxMl0sWzEyLDE1LCIiLDAseyJjb2xvdXIiOlszNTgsMTAwLDYwXX1dLFsxNiwxOF0sWzE3LDE4XSxbMTgsMTksIiIsMCx7ImNvbG91ciI6WzIzNSwxMDAsNjBdfV0sWzIwLDIxLCIiLDAseyJjb2xvdXIiOlszNTgsMTAwLDYwXX1dLFsyMSwyMl0sWzIxLDIzXSxbMjEsMjRdLFsyMiwyNV0sWzIzLDI1XSxbMjQsMjVdLFsyNSwyNl0sWzI1LDI3XSxbMjUsMjhdLFsyNiwyOV0sWzI3LDI5XSxbMjgsMjldLFsyOSwzMF0sWzI5LDMxXV0=
\begin{tikzcd}
	&& 1 && {P(1)} && 0111 && {I(1)} \\
	& 4 & 2 & {P(4)} & {P(2)} & 1112 & 1011 & {I(4)} & {I(2)} \\
	&& \color{rgb,255:red,51;green,68;blue,255}{3} && {P(3)} && 1101 && \color{rgb,255:red,255;green,51;blue,58}{S(3)} \\
	&& 1 && {P(1)} && 0101 && {I(1)} \\
	& 4 & 2 & {P(4)} & {P(2)} & 1112 & 1001 & {I(4)} & {I(2)} \\
	\color{rgb,255:red,51;green,68;blue,255}{3} && \color{rgb,255:red,255;green,51;blue,58}{S(3)} && {S(4)} && {I(3)}
	\arrow[from=1-3, to=2-2]
	\arrow[from=1-5, to=2-6]
	\arrow[from=1-7, to=2-8]
	\arrow[from=2-3, to=2-2]
	\arrow[from=2-4, to=1-5]
	\arrow[from=2-4, to=2-5]
	\arrow[from=2-4, to=3-5]
	\arrow[from=2-5, to=2-6]
	\arrow[from=2-6, to=1-7]
	\arrow[from=2-6, to=2-7]
	\arrow[from=2-6, to=3-7]
	\arrow[from=2-7, to=2-8]
	\arrow[from=2-8, to=1-9]
	\arrow[from=2-8, to=2-9]
	\arrow[color={rgb,255:red,255;green,51;blue,58}, from=2-8, to=3-9]
	\arrow[color={rgb,255:red,51;green,68;blue,255}, from=3-3, to=2-2]
	\arrow[from=3-5, to=2-6]
	\arrow[from=3-7, to=2-8]
	\arrow[from=4-3, to=5-2]
	\arrow[from=4-5, to=5-6]
	\arrow[from=4-7, to=5-8]
	\arrow[color={rgb,255:red,51;green,68;blue,255}, from=5-2, to=6-1]
	\arrow[from=5-3, to=5-2]
	\arrow[from=5-4, to=4-5]
	\arrow[from=5-4, to=5-5]
	\arrow[from=5-4, to=6-5]
	\arrow[from=5-5, to=5-6]
	\arrow[from=5-6, to=4-7]
	\arrow[from=5-6, to=5-7]
	\arrow[from=5-6, to=6-7]
	\arrow[from=5-7, to=5-8]
	\arrow[from=5-8, to=4-9]
	\arrow[from=5-8, to=5-9]
	\arrow[color={rgb,255:red,255;green,51;blue,58}, from=6-3, to=5-4]
	\arrow[from=6-5, to=5-6]
	\arrow[from=6-7, to=5-8]
\end{tikzcd}
{% endtikz %}

可以发现, 在 $C_3^±$ 建立了不可分解对象的双射 ($S(3)$ 除外), 同时保持 $\mathrm{Irr}$-空间维度.
{% endex %}

### 完全 Coxeter 反射与 AR 转置

以下是一个自然的想法: 若存在一列遍历所有 $Q_0$ 的反射 $C_{i_k}^+$ 使得 $C^+_{i_n} \cdots C_{i_1}^+$ 可复合, 则得自函子 $𝐫𝐞𝐩_k(Q) → 𝐫𝐞𝐩_k(Q)$. 实际上, 这一自函子存在且唯一.

{% thm %}
(完全 Coxeter 反射的存在性与唯一性, [证明](Complete_Coxeter_Reflection)). 存在 $σ ∈ 𝔖_{Q_0}$, 使得有自函子

$$
C^+ := C^+_{σ (n)} C^+_{σ (n-1)} \cdots C_{σ (1)}^+ : \mathbf{rep}_k (Q) → \mathbf{rep}_k (Q).
$$

相应地记 $C^- = C^-_{σ (1)}C^-_{σ (2)}\cdots C^-_{σ (n)}$. 特别地, $C^±$ 的定义与置换顺序 $σ$ 无关.
{% endthm %}

{% prop %}
([证明](Proj_Inj_Coxeter)). 投射模与内射模在完全 Coxeter 分解下的表现如下.

1. 投射模经 $C^+$ 消失, 换言之, $C^+ P = 0$;
2. 若 $C^+M = 0$, 则 $M$ 是投射模;
3. $C^+C^-M$ 是不含投射对象的极大直和项;
4. 内射模经 $C^-$ 消失, 换言之, $C^- I = 0$;
5. 若 $C^-M = 0$, 则 $M$ 是内射模;
6. $C^-C^+M$ 是不含内射对象的极大直和项.
{% endprop %}

{% lem %}
([证明](C_is_tau_for_Proj)). 若 $i$ 是 source, 对不可分解投射对象 $P_i ∈ 𝐦𝐨𝐝_{kQ}$, 则 $τ⁻¹ (P_i)$ 与 $C_i^-P_i$ 是 $𝐦𝐨𝐝_{kC_i^- Q}$ 中同构的模.
{% endlem %}

{% thm %}
(完全 Coxeter 反射就是 AR 平移, [证明](C_is_tau)). $C^+ M ≃ τ M$.
{% endthm %}

对偶地, $C^- = τ ⁻¹$.
