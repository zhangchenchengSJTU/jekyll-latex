---
title: Coxeter 反射入门
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
<center>
<!-- https://q.uiver.app/#q=WzAsMTIsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJpIixbMjQwLDYwLDYwLDFdXSxbMywxLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzEsMCwiXFxidWxsZXQiXSxbNSwxLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzUsMCwiXFxidWxsZXQiXSxbNiwxLCJpIixbMCw2MCw2MCwxXV0sWzcsMSwiXFxidWxsZXQiXSxbMiwyLCJRIl0sWzYsMiwiQ19pIFEiXSxbMiwxLCJcXGdhbW1hICIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFswLDNdLFs0LDBdLFswLDEsIlxcYWxwaGEgIiwwLHsib2Zmc2V0IjotMywiY29sb3VyIjpbMjQwLDYwLDYwXX0sWzI0MCw2MCw2MCwxXV0sWzAsMSwiXFxiZXRhICIsMix7Im9mZnNldCI6MywiY29sb3VyIjpbMjQwLDYwLDYwXX0sWzI0MCw2MCw2MCwxXV0sWzUsNl0sWzcsNV0sWzgsNSwiXFxhbHBoYSAnICIsMix7Im9mZnNldCI6MywiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXSxbOCw1LCJcXGJldGEgJyIsMCx7Im9mZnNldCI6LTMsImNvbG91ciI6WzAsNjAsNjBdfSxbMCw2MCw2MCwxXV0sWzgsOSwiXFxnYW1tYSAnIiwwLHsiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXSxbMTAsMTEsIkNfaSAiLDAseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJsZXZlbCI6Mn1dXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTIsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJpIixbMjQwLDYwLDYwLDFdXSxbMywxLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzEsMCwiXFxidWxsZXQiXSxbNSwxLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzUsMCwiXFxidWxsZXQiXSxbNiwxLCJpIixbMCw2MCw2MCwxXV0sWzcsMSwiXFxidWxsZXQiXSxbMiwyLCJRIl0sWzYsMiwiQ19pIFEiXSxbMiwxLCJcXGdhbW1hICIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFswLDNdLFs0LDBdLFswLDEsIlxcYWxwaGEgIiwwLHsib2Zmc2V0IjotMywiY29sb3VyIjpbMjQwLDYwLDYwXX0sWzI0MCw2MCw2MCwxXV0sWzAsMSwiXFxiZXRhICIsMix7Im9mZnNldCI6MywiY29sb3VyIjpbMjQwLDYwLDYwXX0sWzI0MCw2MCw2MCwxXV0sWzUsNl0sWzcsNV0sWzgsNSwiXFxhbHBoYSAnICIsMix7Im9mZnNldCI6MywiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXSxbOCw1LCJcXGJldGEgJyIsMCx7Im9mZnNldCI6LTMsImNvbG91ciI6WzAsNjAsNjBdfSxbMCw2MCw2MCwxXV0sWzgsOSwiXFxnYW1tYSAnIiwwLHsiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXSxbMTAsMTEsIkNfaSAiLDAseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJsZXZlbCI6Mn1dXQ==&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>
此处, $C_i$ 仅对 sink 定义.
{% enddef %}

{% def %}
(模 Coxeter 反射). 表示的 Coxeter 反射定义作如下函子
<center>
<!-- https://q.uiver.app/#q=WzAsMTIsWzIsMSwiWF9iIl0sWzMsMSwiWF9pIixbMjQwLDYwLDYwLDFdXSxbNCwxLCJYX2QiXSxbMSwxLCJYX2EiXSxbMiwwLCJYX2MiXSxbMiwzLCJYX2IiXSxbMSwzLCJYX2EiXSxbMiwyLCJYX2MiXSxbMywzLCJcXGtlciBcXGxlZnRbXFxiaWdvcGx1c197dChmKSA9IDF9WF97cyhmKX0gXFx4cmlnaHRhcnJvd3tcXHN1bSBYX2Z9IFhfaVxccmlnaHRdIixbMCw2MCw2MCwxXV0sWzQsMywiWF9kIl0sWzAsMSwiXFxtYXRoYmZ7cmVwfV9rKFEpIl0sWzAsMywiXFxtYXRoYmZ7cmVwfV9rKENfaVEpIl0sWzIsMSwiWF9cXGdhbW1hICIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFswLDNdLFs0LDBdLFswLDEsIlhfXFxhbHBoYSAiLDAseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlsyNDAsNjAsNjBdfSxbMjQwLDYwLDYwLDFdXSxbMCwxLCJYX1xcYmV0YSAiLDIseyJvZmZzZXQiOjMsImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFs1LDZdLFs4LDUsInAgIiwyLHsib2Zmc2V0IjozLCJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFs4LDUsInAiLDAseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFs4LDksInAiLDAseyJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFsxMCwxMSwiQ19pICIsMCx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sImxldmVsIjoyfV0sWzcsNV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTIsWzIsMSwiWF9iIl0sWzMsMSwiWF9pIixbMjQwLDYwLDYwLDFdXSxbNCwxLCJYX2QiXSxbMSwxLCJYX2EiXSxbMiwwLCJYX2MiXSxbMiwzLCJYX2IiXSxbMSwzLCJYX2EiXSxbMiwyLCJYX2MiXSxbMywzLCJcXGtlciBcXGxlZnRbXFxiaWdvcGx1c197dChmKSA9IDF9WF97cyhmKX0gXFx4cmlnaHRhcnJvd3tcXHN1bSBYX2Z9IFhfaVxccmlnaHRdIixbMCw2MCw2MCwxXV0sWzQsMywiWF9kIl0sWzAsMSwiXFxtYXRoYmZ7cmVwfV9rKFEpIl0sWzAsMywiXFxtYXRoYmZ7cmVwfV9rKENfaVEpIl0sWzIsMSwiWF9cXGdhbW1hICIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFswLDNdLFs0LDBdLFswLDEsIlhfXFxhbHBoYSAiLDAseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlsyNDAsNjAsNjBdfSxbMjQwLDYwLDYwLDFdXSxbMCwxLCJYX1xcYmV0YSAiLDIseyJvZmZzZXQiOjMsImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFs1LDZdLFs4LDUsInAgIiwyLHsib2Zmc2V0IjozLCJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFs4LDUsInAiLDAseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFs4LDksInAiLDAseyJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFsxMCwxMSwiQ19pICIsMCx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sImxldmVsIjoyfV0sWzcsNV1d&embed" width="600" height="350" style="border-radius: 8px; border: dashed;"></iframe>
</center>

对给定 $X ∈ 𝐫𝐞𝐩(Q)$, $C_i X ∈ 𝐫𝐞𝐩 (C_iQ)$ 定义如下

1. $X$ 与 $C_iX$ 在 $X_{≠ i}$ 与 $φ_{≠ [∙ → i]}$ 处相同 (仅有的改变是上图的着色部分);
2. $(C_iX)_i$ 是 $⨁\limits_{t(f) = i}X_{s(f)}$ 的 ker-子模; 态射由投影 $⨁\limits_{t(f) = i}X_{s(f)} ↠ X_{a}$ 诱导.
{% enddef %}

{% def %}
($C_i^±$). 记 $C_i^+$ 是 sink 处的反射 (以上定义的 $C_i$), $C_i^-$ 是 source 处的反射.
{% enddef %}

{% note %}
若无歧义, 暂不区分图的 Coxeter 反射与模的 Coxeter 反射.
{% endnote %}

{% ex %}
(例子, Kronecker quiver). 给定 Kronecker quiver, 相应的 Coxeter 反射如下:
<center>
<!-- https://q.uiver.app/#q=WzAsMjAsWzEsMiwiWF8xIl0sWzIsMiwiWF8yIl0sWzIsMywiWF8yJyAiLFsyMzQsMTAwLDYwLDFdXSxbMSwzLCJYXzEiXSxbMCwyLCJcXG1hdGhiZntyZXB9KFxccmlnaHRyaWdodGFycm93cykiXSxbMCwzLCJcXG1hdGhiZntyZXB9KFxcbGVmdGxlZnRhcnJvd3MpIl0sWzMsMywiWF8xIl0sWzQsMiwiWF8xIl0sWzMsMiwiWF8yJyIsWzIzNCwxMDAsNjAsMV1dLFs0LDMsIlhfMiJdLFswLDEsIlxcbWF0aGJme3JlcH0oXFxyaWdodHJpZ2h0YXJyb3dzKSJdLFswLDAsIlxcbWF0aGJme3JlcH0oXFxsZWZ0bGVmdGFycm93cykiXSxbMSwxLCJYXzEiXSxbMSwwLCJYXzEnJyIsWzAsNjAsNjAsMV1dLFsyLDAsIlhfMiJdLFsyLDEsIlhfMiJdLFszLDAsIlhfMSJdLFs0LDEsIlhfMScnIixbMCw2MCw2MCwxXV0sWzMsMSwiWF8yIl0sWzQsMCwiWF8yIl0sWzAsMSwiZiIsMCx7Im9mZnNldCI6LTJ9XSxbMCwxLCJnIiwyLHsib2Zmc2V0IjoyfV0sWzIsMywiZiciLDIseyJvZmZzZXQiOjIsImNvbG91ciI6WzIzNCwxMDAsNjBdfSxbMjM0LDEwMCw2MCwxXV0sWzIsMywiZyciLDAseyJvZmZzZXQiOi0yLCJjb2xvdXIiOlsyMzQsMTAwLDYwXX0sWzIzNCwxMDAsNjAsMV1dLFs0LDUsIkNfMl4rIiwyLHsibGV2ZWwiOjJ9XSxbOCw3LCJmJyIsMCx7ImNvbG91ciI6WzIzNCwxMDAsNjBdfSxbMjM0LDEwMCw2MCwxXV0sWzcsOSwiZiJdLFs4LDYsImcnIiwyLHsiY29sb3VyIjpbMjM0LDEwMCw2MF19LFsyMzQsMTAwLDYwLDFdXSxbNiw5LCJnIiwyXSxbOCw5LCJcXHRleHR75ouJ5ZuefSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMiwxNSwiZiIsMCx7Im9mZnNldCI6LTJ9XSxbMTIsMTUsImciLDIseyJvZmZzZXQiOjJ9XSxbMTQsMTMsImYnJyIsMix7Im9mZnNldCI6MiwiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXSxbMTQsMTMsImcnJyIsMCx7Im9mZnNldCI6LTIsImNvbG91ciI6WzAsNjAsNjBdfSxbMCw2MCw2MCwxXV0sWzE2LDE3LCJcXHRleHR75o6o5Ye6fSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCwxMSwiQ18xXi0iLDAseyJsZXZlbCI6Mn1dLFsxNiwxOSwiZiJdLFsxNiwxOCwiZyIsMl0sWzE5LDE3LCJnJyciLDAseyJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFsxOCwxNywiZicnIiwyLHsiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMjAsWzEsMiwiWF8xIl0sWzIsMiwiWF8yIl0sWzIsMywiWF8yJyAiLFsyMzQsMTAwLDYwLDFdXSxbMSwzLCJYXzEiXSxbMCwyLCJcXG1hdGhiZntyZXB9KFxccmlnaHRyaWdodGFycm93cykiXSxbMCwzLCJcXG1hdGhiZntyZXB9KFxcbGVmdGxlZnRhcnJvd3MpIl0sWzMsMywiWF8xIl0sWzQsMiwiWF8xIl0sWzMsMiwiWF8yJyIsWzIzNCwxMDAsNjAsMV1dLFs0LDMsIlhfMiJdLFswLDEsIlxcbWF0aGJme3JlcH0oXFxyaWdodHJpZ2h0YXJyb3dzKSJdLFswLDAsIlxcbWF0aGJme3JlcH0oXFxsZWZ0bGVmdGFycm93cykiXSxbMSwxLCJYXzEiXSxbMSwwLCJYXzEnJyIsWzAsNjAsNjAsMV1dLFsyLDAsIlhfMiJdLFsyLDEsIlhfMiJdLFszLDAsIlhfMSJdLFs0LDEsIlhfMScnIixbMCw2MCw2MCwxXV0sWzMsMSwiWF8yIl0sWzQsMCwiWF8yIl0sWzAsMSwiZiIsMCx7Im9mZnNldCI6LTJ9XSxbMCwxLCJnIiwyLHsib2Zmc2V0IjoyfV0sWzIsMywiZiciLDIseyJvZmZzZXQiOjIsImNvbG91ciI6WzIzNCwxMDAsNjBdfSxbMjM0LDEwMCw2MCwxXV0sWzIsMywiZyciLDAseyJvZmZzZXQiOi0yLCJjb2xvdXIiOlsyMzQsMTAwLDYwXX0sWzIzNCwxMDAsNjAsMV1dLFs0LDUsIkNfMl4rIiwyLHsibGV2ZWwiOjJ9XSxbOCw3LCJmJyIsMCx7ImNvbG91ciI6WzIzNCwxMDAsNjBdfSxbMjM0LDEwMCw2MCwxXV0sWzcsOSwiZiJdLFs4LDYsImcnIiwyLHsiY29sb3VyIjpbMjM0LDEwMCw2MF19LFsyMzQsMTAwLDYwLDFdXSxbNiw5LCJnIiwyXSxbOCw5LCJcXHRleHR75ouJ5ZuefSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMiwxNSwiZiIsMCx7Im9mZnNldCI6LTJ9XSxbMTIsMTUsImciLDIseyJvZmZzZXQiOjJ9XSxbMTQsMTMsImYnJyIsMix7Im9mZnNldCI6MiwiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXSxbMTQsMTMsImcnJyIsMCx7Im9mZnNldCI6LTIsImNvbG91ciI6WzAsNjAsNjBdfSxbMCw2MCw2MCwxXV0sWzE2LDE3LCJcXHRleHR75o6o5Ye6fSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCwxMSwiQ18xXi0iLDAseyJsZXZlbCI6Mn1dLFsxNiwxOSwiZiJdLFsxNiwxOCwiZyIsMl0sWzE5LDE3LCJnJyciLDAseyJjb2xvdXIiOlswLDYwLDYwXX0sWzAsNjAsNjAsMV1dLFsxOCwxNywiZicnIiwyLHsiY29sb3VyIjpbMCw2MCw2MF19LFswLDYwLDYwLDFdXV0=&embed" width="600" height="400" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endex %}

### $C_i^±$ 几乎是等价

{% prop %}
([证明](Coxeter_PM_Adjoint)) 假定 $C_i^+ : Q_1 → Q_2$, 则以下是伴随函子:
\begin{equation}
  C_i ^- : \mathbf{rep}_k(Q_2) ⇄ \mathbf{rep}_k(Q_1) : C_i ^+.
\end{equation}
{% endprop %}

{% ex %}
容易计算,

1. (单位). $M \simeq C_i^+ C_i^- M \oplus \ker[M_i → \bigoplus M_{\neq i}] \twoheadrightarrow C_i^+ C_i^- M$ 是投影;
2. (余单位) $C_i^- C_i^+ N \hookrightarrow C_i^- C_i^+ N \oplus \mathrm{coker}[\bigoplus_{\neq i} N_i → N] \simeq N$ 是嵌入.

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
C_i^- : 𝐢 (Q_1) ⇆ 𝐢 (Q_2) : C_i^+.
$$

{% endthm %}

{% ex %}
(反射的例子). 考虑 $D_4$ 型 quiver 的反射, 比较如下 AR quiver:
<center>
<!-- https://q.uiver.app/#q=WzAsMzIsWzEsMSwiNCJdLFsyLDAsIjEiXSxbMiwxLCIyIl0sWzIsMiwiMyJdLFszLDEsIlAoNCkiXSxbNCwwLCJQKDEpIl0sWzQsMiwiUCgzKSJdLFs0LDEsIlAoMikiXSxbNSwxLCJcXHN1YnN0YWNreyBcXCBcXCBcXCBcXCAxXFxcXDIgXFwgXFwgMVxcXFwgXFwgXFwgXFwgXFwgMX0iXSxbNiwwLCJcXHN1YnN0YWNreyBcXCBcXCBcXCBcXCAwXFxcXDEgXFwgXFwgMVxcXFwgXFwgXFwgXFwgXFwgMX0iXSxbNiwxLCJcXHN1YnN0YWNreyBcXCBcXCBcXCBcXCAxXFxcXDEgXFwgXFwgMFxcXFwgXFwgXFwgXFwgXFwgMX0iXSxbNiwyLCJcXHN1YnN0YWNreyBcXCBcXCBcXCBcXCAxXFxcXDEgXFwgXFwgMVxcXFwgXFwgXFwgXFwgXFwgMH0iXSxbNywxLCJJKDQpIl0sWzgsMCwiSSgxKSJdLFs4LDEsIkkoMikiXSxbOCwyLCJTKDMpIl0sWzIsMywiMSJdLFsyLDQsIjIiXSxbMSw0LCI0Il0sWzAsNSwiMyJdLFsyLDUsIlMoMykiXSxbMyw0LCJQKDQpIl0sWzQsMywiUCgxKSJdLFs0LDQsIlAoMikiXSxbNCw1LCJTKDQpIl0sWzUsNCwiXFxzdWJzdGFja3sgXFwgXFwgXFwgXFwgMVxcXFwyIFxcIFxcIDFcXFxcMSBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCB9Il0sWzYsMywiXFxzdWJzdGFja3sgXFwgXFwgXFwgXFwgMFxcXFwxIFxcIFxcIDFcXFxcMCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCB9Il0sWzYsNCwiXFxzdWJzdGFja3sgXFwgXFwgXFwgXFwgMVxcXFwxIFxcIFxcIDBcXFxcMCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCB9Il0sWzYsNSwiSSgzKSJdLFs3LDQsIkkoNCkiXSxbOCwzLCJJKDEpIl0sWzgsNCwiSSgyKSJdLFsxLDBdLFsyLDBdLFszLDBdLFs0LDVdLFs0LDddLFs0LDZdLFs1LDhdLFs3LDhdLFs2LDhdLFs4LDldLFs4LDEwXSxbOCwxMV0sWzksMTJdLFsxMiwxM10sWzEwLDEyXSxbMTIsMTRdLFsxMSwxMl0sWzEyLDE1XSxbMTYsMThdLFsxNywxOF0sWzE4LDE5XSxbMjAsMjFdLFsyMSwyMl0sWzIxLDIzXSxbMjEsMjRdLFsyMiwyNV0sWzIzLDI1XSxbMjQsMjVdLFsyNSwyNl0sWzI1LDI3XSxbMjUsMjhdLFsyNiwyOV0sWzI3LDI5XSxbMjgsMjldLFsyOSwzMF0sWzI5LDMxXV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMzIsWzEsMSwiNCJdLFsyLDAsIjEiXSxbMiwxLCIyIl0sWzIsMiwiMyJdLFszLDEsIlAoNCkiXSxbNCwwLCJQKDEpIl0sWzQsMiwiUCgzKSJdLFs0LDEsIlAoMikiXSxbNSwxLCJcXHN1YnN0YWNreyBcXCBcXCBcXCBcXCAxXFxcXDIgXFwgXFwgMVxcXFwgXFwgXFwgXFwgXFwgMX0iXSxbNiwwLCJcXHN1YnN0YWNreyBcXCBcXCBcXCBcXCAwXFxcXDEgXFwgXFwgMVxcXFwgXFwgXFwgXFwgXFwgMX0iXSxbNiwxLCJcXHN1YnN0YWNreyBcXCBcXCBcXCBcXCAxXFxcXDEgXFwgXFwgMFxcXFwgXFwgXFwgXFwgXFwgMX0iXSxbNiwyLCJcXHN1YnN0YWNreyBcXCBcXCBcXCBcXCAxXFxcXDEgXFwgXFwgMVxcXFwgXFwgXFwgXFwgXFwgMH0iXSxbNywxLCJJKDQpIl0sWzgsMCwiSSgxKSJdLFs4LDEsIkkoMikiXSxbOCwyLCJTKDMpIl0sWzIsMywiMSJdLFsyLDQsIjIiXSxbMSw0LCI0Il0sWzAsNSwiMyJdLFsyLDUsIlMoMykiXSxbMyw0LCJQKDQpIl0sWzQsMywiUCgxKSJdLFs0LDQsIlAoMikiXSxbNCw1LCJTKDQpIl0sWzUsNCwiXFxzdWJzdGFja3sgXFwgXFwgXFwgXFwgMVxcXFwyIFxcIFxcIDFcXFxcMSBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCB9Il0sWzYsMywiXFxzdWJzdGFja3sgXFwgXFwgXFwgXFwgMFxcXFwxIFxcIFxcIDFcXFxcMCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCB9Il0sWzYsNCwiXFxzdWJzdGFja3sgXFwgXFwgXFwgXFwgMVxcXFwxIFxcIFxcIDBcXFxcMCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCBcXCB9Il0sWzYsNSwiSSgzKSJdLFs3LDQsIkkoNCkiXSxbOCwzLCJJKDEpIl0sWzgsNCwiSSgyKSJdLFsxLDBdLFsyLDBdLFszLDBdLFs0LDVdLFs0LDddLFs0LDZdLFs1LDhdLFs3LDhdLFs2LDhdLFs4LDldLFs4LDEwXSxbOCwxMV0sWzksMTJdLFsxMiwxM10sWzEwLDEyXSxbMTIsMTRdLFsxMSwxMl0sWzEyLDE1XSxbMTYsMThdLFsxNywxOF0sWzE4LDE5XSxbMjAsMjFdLFsyMSwyMl0sWzIxLDIzXSxbMjEsMjRdLFsyMiwyNV0sWzIzLDI1XSxbMjQsMjVdLFsyNSwyNl0sWzI1LDI3XSxbMjUsMjhdLFsyNiwyOV0sWzI3LDI5XSxbMjgsMjldLFsyOSwzMF0sWzI5LDMxXV0=&embed" width="600" height="400" style="border-radius: 8px; border: dashed;"></iframe>
</center>

可以发现, 在 $C_3^±$ 建立了不可分解对象的双射 ($S(3)$ 除外), 同时保持 $\mathrm{Irr}$-空间维度.
{% endex %}

### 完全 Coxeter 反射

以下是一个自然的想法: 若存在一列遍历所有 $Q_0$ 的反射 $C_{i_k}^-$ 使得 $C^-_{i_n} \cdots C_{i_1}^-$ 可复合, 则得自函子 $𝐫𝐞𝐩_k(Q) → 𝐫𝐞𝐩_k(Q)$. 实际上, 这一自函子存在且唯一.

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

### AR 转置

{% lem %}
([证明](C_is_tau_for_Proj)). 若 $i$ 是 source, 对不可分解投射对象 $P_i ∈ 𝐦𝐨𝐝_{kQ}$, 则 $τ⁻¹ (P_i)$ 与 $C_i^-P_i$ 是 $𝐦𝐨𝐝_{kC_i^- Q}$ 中同构的模.
{% endlem %}

{% thm %}
(完全 Coxeter 反射就是 AR 平移, [证明](C_is_tau)). $C^+ M ≃ τ M$.
{% endthm %}

对偶地, $C^- = τ ⁻¹$.
