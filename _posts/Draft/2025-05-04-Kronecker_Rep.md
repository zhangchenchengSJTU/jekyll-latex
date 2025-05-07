---
title: Kronecker quiver 的表示
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

<center>
<!-- https://q.uiver.app/#q=WzAsMTUsWzAsMiwiWzAgXFxtaWQgMV0iLFsyMzIsMTAwLDYwLDFdXSxbMSwyLCJbMSBcXG1pZCAyXSIsWzIzMiwxMDAsNjAsMV1dLFsxLDMsIlsyIFxcbWlkIDNdIixbMjA2LDEwMCw2MCwxXV0sWzIsMywiWzNcXG1pZCA0XSIsWzIwNiwxMDAsNjAsMV1dLFsyLDQsIlxcY2RvdHMiLFsyMDYsMTAwLDYwLDFdXSxbNCwwLCJcXGNkb3RzIixbMTksMTAwLDYwLDFdXSxbNCwxLCJbNCBcXG1pZCAzXSIsWzE5LDEwMCw2MCwxXV0sWzUsMSwiWzNcXG1pZDJdIixbMTksMTAwLDYwLDFdXSxbNSwyLCJbMlxcbWlkMV0iLFszNTcsMTAwLDYwLDFdXSxbNiwyLCJbMVxcbWlkMF0iLFszNTcsMTAwLDYwLDFdXSxbMiwyLCJcXHRleHR7cHJvan0iLFsyMzIsMTAwLDYwLDFdXSxbMywzLCJcXHRleHR7cHJlLXByb2p9IixbMjA2LDEwMCw2MCwxXV0sWzMsMSwiXFx0ZXh0e3ByZS1pbmp9IixbMTksMTAwLDYwLDFdXSxbNCwyLCJcXHRleHR7aW5qfSIsWzM1NywxMDAsNjAsMV1dLFszLDIsIlxcYm94ZWR7XFx0ZXh0e3JlZ3VsYXIgbW9kfX0iLFsxMjAsNjAsNjAsMV1dLFswLDFdLFsxLDJdLFsyLDNdLFszLDRdLFswLDEsIiIsMSx7Im9mZnNldCI6LTN9XSxbMSwyLCIiLDEseyJvZmZzZXQiOi0zfV0sWzIsMywiIiwxLHsib2Zmc2V0IjotM31dLFszLDQsIiIsMSx7Im9mZnNldCI6LTN9XSxbNiw3XSxbNyw4XSxbNiw3LCIiLDEseyJvZmZzZXQiOi0zfV0sWzgsOSwiIiwxLHsib2Zmc2V0IjotM31dLFs1LDZdLFs1LDYsIiIsMSx7Im9mZnNldCI6LTN9XSxbMiwwLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMywxLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNCwyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNyw1LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOCw2LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOSw3LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMTEsMTAsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxNCwxMSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoic3F1aWdnbHkifX19XSxbMTIsMTQsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6InNxdWlnZ2x5In19fV0sWzEzLDEyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNyw4LCIiLDEseyJvZmZzZXQiOi0zfV0sWzgsOV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTUsWzAsMiwiWzAgXFxtaWQgMV0iLFsyMzIsMTAwLDYwLDFdXSxbMSwyLCJbMSBcXG1pZCAyXSIsWzIzMiwxMDAsNjAsMV1dLFsxLDMsIlsyIFxcbWlkIDNdIixbMjA2LDEwMCw2MCwxXV0sWzIsMywiWzNcXG1pZCA0XSIsWzIwNiwxMDAsNjAsMV1dLFsyLDQsIlxcY2RvdHMiLFsyMDYsMTAwLDYwLDFdXSxbNCwwLCJcXGNkb3RzIixbMTksMTAwLDYwLDFdXSxbNCwxLCJbNCBcXG1pZCAzXSIsWzE5LDEwMCw2MCwxXV0sWzUsMSwiWzNcXG1pZDJdIixbMTksMTAwLDYwLDFdXSxbNSwyLCJbMlxcbWlkMV0iLFszNTcsMTAwLDYwLDFdXSxbNiwyLCJbMVxcbWlkMF0iLFszNTcsMTAwLDYwLDFdXSxbMiwyLCJcXHRleHR7cHJvan0iLFsyMzIsMTAwLDYwLDFdXSxbMywzLCJcXHRleHR7cHJlLXByb2p9IixbMjA2LDEwMCw2MCwxXV0sWzMsMSwiXFx0ZXh0e3ByZS1pbmp9IixbMTksMTAwLDYwLDFdXSxbNCwyLCJcXHRleHR7aW5qfSIsWzM1NywxMDAsNjAsMV1dLFszLDIsIlxcYm94ZWR7XFx0ZXh0e3JlZ3VsYXIgbW9kfX0iLFsxMjAsNjAsNjAsMV1dLFswLDFdLFsxLDJdLFsyLDNdLFszLDRdLFswLDEsIiIsMSx7Im9mZnNldCI6LTN9XSxbMSwyLCIiLDEseyJvZmZzZXQiOi0zfV0sWzIsMywiIiwxLHsib2Zmc2V0IjotM31dLFszLDQsIiIsMSx7Im9mZnNldCI6LTN9XSxbNiw3XSxbNyw4XSxbNiw3LCIiLDEseyJvZmZzZXQiOi0zfV0sWzgsOSwiIiwxLHsib2Zmc2V0IjotM31dLFs1LDZdLFs1LDYsIiIsMSx7Im9mZnNldCI6LTN9XSxbMiwwLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMywxLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNCwyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNyw1LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOCw2LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOSw3LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMTEsMTAsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxNCwxMSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoic3F1aWdnbHkifX19XSxbMTIsMTQsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6InNxdWlnZ2x5In19fV0sWzEzLDEyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNyw4LCIiLDEseyJvZmZzZXQiOi0zfV0sWzgsOV1d&embed" width="600" height="350" style="border-radius: 8px; border: dashed;"></iframe>
</center>

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

<center>
<!-- https://q.uiver.app/#q=WzAsMTAsWzUsMCwia15uIl0sWzUsMSwia15uIl0sWzMsMCwia157Mm59Il0sWzMsMSwia157Mm59Il0sWzEsMCwia15uIl0sWzEsMSwia15uIl0sWzAsMCwiMCJdLFswLDEsIjAiXSxbNiwwLCIwIl0sWzYsMSwiMCJdLFswLDEsIkpfe259KFxcbGFtYmRhKSIsMCx7Im9mZnNldCI6LTJ9XSxbMCwxLCJJIiwyLHsib2Zmc2V0IjoyfV0sWzIsMywiSl97Mm59KFxcbGFtYmRhKSIsMCx7Im9mZnNldCI6LTJ9XSxbMiwzLCJJX3sybn0iLDIseyJvZmZzZXQiOjJ9XSxbMiwwLCIoTyBcXCBJKSJdLFszLDEsIihPIFxcIEkpIiwyXSxbNCw1LCJJIiwyLHsib2Zmc2V0IjoyfV0sWzUsMywiXFxiaW5vbSB7SX17T30iLDJdLFs0LDIsIlxcYmlub20ge0l9e099Il0sWzQsNSwiSl97bn0oXFxsYW1iZGEpIiwwLHsib2Zmc2V0IjotMn1dLFs2LDRdLFs3LDVdLFswLDhdLFsxLDldXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTAsWzUsMCwia15uIl0sWzUsMSwia15uIl0sWzMsMCwia157Mm59Il0sWzMsMSwia157Mm59Il0sWzEsMCwia15uIl0sWzEsMSwia15uIl0sWzAsMCwiMCJdLFswLDEsIjAiXSxbNiwwLCIwIl0sWzYsMSwiMCJdLFswLDEsIkpfe259KFxcbGFtYmRhKSIsMCx7Im9mZnNldCI6LTJ9XSxbMCwxLCJJIiwyLHsib2Zmc2V0IjoyfV0sWzIsMywiSl97Mm59KFxcbGFtYmRhKSIsMCx7Im9mZnNldCI6LTJ9XSxbMiwzLCJJX3sybn0iLDIseyJvZmZzZXQiOjJ9XSxbMiwwLCIoTyBcXCBJKSJdLFszLDEsIihPIFxcIEkpIiwyXSxbNCw1LCJJIiwyLHsib2Zmc2V0IjoyfV0sWzUsMywiXFxiaW5vbSB7SX17T30iLDJdLFs0LDIsIlxcYmlub20ge0l9e099Il0sWzQsNSwiSl97bn0oXFxsYW1iZGEpIiwwLHsib2Zmc2V0IjotMn1dLFs2LDRdLFs3LDVdLFswLDhdLFsxLDldXQ==&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
</center>

实际上, 正规模的 AR 平移是自身, 计算如下:

<center>
<!-- https://q.uiver.app/#q=WzAsMTgsWzYsMCwia15uIl0sWzYsMSwia15uIl0sWzQsMCwia15uIl0sWzQsMSwia157Mm59Il0sWzIsMCwiMCJdLFsyLDEsImtebiJdLFs2LDIsIk0iXSxbNCwyLCJQXzFebiJdLFsyLDIsIlBfMl5uIl0sWzQsMywiSV8xXm4iXSxbMiwzLCJJXzJebiJdLFswLDMsIlxcdGF1IE0iXSxbMiw1LCJrXm4iXSxbMiw0LCJrXnsybn0iXSxbNCw0LCJrXm4iXSxbNCw1LCIwIl0sWzAsNCwia15uIl0sWzAsNSwia15uIl0sWzAsMSwiSl9uKFxcbGFtYmRhKSIsMCx7Im9mZnNldCI6LTJ9XSxbMCwxLCJJIiwyLHsib2Zmc2V0IjoyfV0sWzIsMywiXFxiaW5vbXtPfXtJfSIsMCx7Im9mZnNldCI6LTJ9XSxbMiwzLCJcXGJpbm9te0l9e099IiwyLHsib2Zmc2V0IjoyfV0sWzIsMCwiSSJdLFszLDEsIihJIFxcIEpfbihcXGxhbWJkYSkpIiwyXSxbNCw1LCIiLDEseyJvZmZzZXQiOjJ9XSxbNCw1LCIiLDEseyJvZmZzZXQiOi0yfV0sWzUsMywiXFxiaW5vbXstSl9uKFxcbGFtYmRhKX17SX0iLDJdLFs0LDJdLFs4LDddLFs3LDZdLFsxMCw5XSxbMTEsMTBdLFsxMywxMiwiKEkgXFwgTykiLDIseyJvZmZzZXQiOjJ9XSxbMTMsMTIsIihPIFxcIEkpIiwwLHsib2Zmc2V0IjotMn1dLFsxMywxNCwiKC0gSl9uIChcXGxhbWJkYSkgXFwgTykiXSxbMTIsMTVdLFsxNCwxNSwiIiwxLHsib2Zmc2V0IjoyfV0sWzE0LDE1LCIiLDEseyJvZmZzZXQiOi0yfV0sWzE2LDE3LCJJIiwyLHsib2Zmc2V0IjoyfV0sWzE2LDE3LCJKX24oXFxsYW1iZGEpIiwwLHsib2Zmc2V0IjotMn1dLFsxNiwxMywiXFxiaW5vbXtJfXtKX24oXFxsYW1iZGEpfSJdLFsxNywxMl0sWzYsMTEsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTgsWzYsMCwia15uIl0sWzYsMSwia15uIl0sWzQsMCwia15uIl0sWzQsMSwia157Mm59Il0sWzIsMCwiMCJdLFsyLDEsImtebiJdLFs2LDIsIk0iXSxbNCwyLCJQXzFebiJdLFsyLDIsIlBfMl5uIl0sWzQsMywiSV8xXm4iXSxbMiwzLCJJXzJebiJdLFswLDMsIlxcdGF1IE0iXSxbMiw1LCJrXm4iXSxbMiw0LCJrXnsybn0iXSxbNCw0LCJrXm4iXSxbNCw1LCIwIl0sWzAsNCwia15uIl0sWzAsNSwia15uIl0sWzAsMSwiSl9uKFxcbGFtYmRhKSIsMCx7Im9mZnNldCI6LTJ9XSxbMCwxLCJJIiwyLHsib2Zmc2V0IjoyfV0sWzIsMywiXFxiaW5vbXtPfXtJfSIsMCx7Im9mZnNldCI6LTJ9XSxbMiwzLCJcXGJpbm9te0l9e099IiwyLHsib2Zmc2V0IjoyfV0sWzIsMCwiSSJdLFszLDEsIihJIFxcIEpfbihcXGxhbWJkYSkpIiwyXSxbNCw1LCIiLDEseyJvZmZzZXQiOjJ9XSxbNCw1LCIiLDEseyJvZmZzZXQiOi0yfV0sWzUsMywiXFxiaW5vbXstSl9uKFxcbGFtYmRhKX17SX0iLDJdLFs0LDJdLFs4LDddLFs3LDZdLFsxMCw5XSxbMTEsMTBdLFsxMywxMiwiKEkgXFwgTykiLDIseyJvZmZzZXQiOjJ9XSxbMTMsMTIsIihPIFxcIEkpIiwwLHsib2Zmc2V0IjotMn1dLFsxMywxNCwiKC0gSl9uIChcXGxhbWJkYSkgXFwgTykiXSxbMTIsMTVdLFsxNCwxNSwiIiwxLHsib2Zmc2V0IjoyfV0sWzE0LDE1LCIiLDEseyJvZmZzZXQiOi0yfV0sWzE2LDE3LCJJIiwyLHsib2Zmc2V0IjoyfV0sWzE2LDE3LCJKX24oXFxsYW1iZGEpIiwwLHsib2Zmc2V0IjotMn1dLFsxNiwxMywiXFxiaW5vbXtJfXtKX24oXFxsYW1iZGEpfSJdLFsxNywxMl0sWzYsMTEsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==&embed" width="600" height="500" style="border-radius: 8px; border: dashed;"></iframe>
</center>

{% endex %}

{% ex %}
正规部分的 AR quiver 不连通, 且每一连通分支无限.
{% endex %}

### $\mathrm{coh}(ℙ_k^1)$ 的等价解释

{% ex %}
(射影概型的非正式介绍). 正如将欧式平面粘成球面, 可以将仿射概型粘做射影概型. 例如 $ℙ_k^1$ 的由两份 $𝔸_k^1$ 粘合而成, 定义式作

$$
\begin{bmatrix}
\mathbb{P}_{k}^{1} & \supset  & \mathbb{A}_{k}^{1} &  &  &  & k[ y]\\
\cup  &  & \cup  & ⇐ &  &  & \downarrow \\
\mathbb{A}_{k}^{1} & \supset  & \mathbb{A}_{k}^{1} \smallsetminus \{0\} &  & k[ x] & \rightarrow  & \frac{k[ x,y]}{( xy-1)}\\
 &  &  &  &  &  & \\
 &  & \mathrm{Sch}_{k} & \substack{Γ\\ ⟶ \\ ⊥ \\ ⟵ \\ \mathrm{Spec}} & \mathrm{CAlg}_{k}^{\mathrm{op}} &  &
\end{bmatrix}
$$

以上,

1. 右侧代数同态是局部化, 例如 $k [x] → k[x]_x ≃ \frac{k[x,y]}{(xy-1)}$ 是局部化;
2. 从仿射概型层面看, 局部化 $k [x] → k[x]_x$ 对应仿射概型的包含 $(𝔸 _k ^1 ∖ \{[0]\}) ⊆ 𝔸_k^1$. 拉回所得的 $ℙ_k ^1$ 可粗略地理解做两条直线粘成的圆环.

{% endex %}

{% ex %}
(通过齐次素理想构造射影概型) $ℙ_k ^1$ 一般不是仿射概型. 例如对 $k = ℂ$, 由 Liouville 定理知 $Γ(ℙ_ℂ ^1) ≃ ℂ$, 而显然 $\mathrm{Spec}(ℂ) ≠ ℙ_ℂ^1$.
\\
\\
总之, 射影概型无法直接写作环的素谱. 一个常见的修复引入齐次素理想, 其本质上是选取子概型 $ℙ^1_k ⊂ 𝔸^2_k$. 例如, $[p] ∈ 𝔸^2_k$ 属于 $ℙ_k^1$, 当且仅当 $[p]$ 由齐次多项式生成. 该观点下, 记
\begin{equation}
  \mathrm{Proj}(k[x,y]) =: ℙ _k ^1.
\end{equation}
{% endex %}

{% note %}
对代数闭域而言, 所有闭点形如 $(λ x - μ y) ≠ [0]$. 其对应射影坐标中的点 $[μ : λ]$.
{% endnote %}

{% def %}
(拟凝聚层). 给定环空间 $(X, 𝒪_X)$ 与结构层上模 $ℱ$. 称 $ℱ$ 是拟凝聚的, 若对任意 $p ∈ X$, 总存在开邻域 $U = U_p$ 使得有表现

$$
𝒪|_{U_p}^{(κ)} → 𝒪|_{U_p}^{(λ)} → ℱ|_{U_p} → 0.
$$

{% enddef %}

{% note %}
简单地说, 模层就是一族以开集为指标的相容模, 子拓扑空间对应子族. 单一环上的模总能通过某一基数表现; 若上述的一族模能被一致地表现, 则称之拟凝聚.  
{% endnote %}

{% def %}
(凝聚层). 称拟凝聚层是凝聚的, 若以下同时满足

1. 任意 $p ∈ X$, 存在开邻域 $U_p$ 使得 $𝒪|_{U_p}^n → ℱ|_{U_p}$ 是满态射.
2. 任意 $𝒪|_{V}^m → ℱ|_{V}$ 的 kernel 有限生成 (定义如上一条).

{% enddef %}

{% thm %}
(Serre). 给定交换环 $R$.

1. $R$ 上的拟凝聚层范畴等价于 $𝐌𝐨𝐝_R$;
2. $R$ 上凝聚层范畴等价于 $𝐦𝐨𝐝 _R$.

特别地, 由模至层的函子由局部化诱导; 由层至模的函子是整体截面.
{% endthm %}

{% ex %}
Serre 定理对应了凝聚层语言与有限表现模语言. 以下是对 $ℙ_k^1$ 四种描述:
<center>
<!-- https://q.uiver.app/#q=WzAsMTYsWzEsMCwiXFxtYXRoYmIgQV9rIF4xIl0sWzAsMSwiXFxtYXRoYmIgQV9rIF4xIl0sWzEsMSwiXFxtYXRoYmIgQV9rIF4xIFxcc2V0bWludXMgXFx7MFxcfSJdLFswLDAsIlxcbWF0aGJiIFBfayBeMSJdLFszLDAsImtbeV0iXSxbMywxLCJcXGZyYWN7a1t4LHldfXsoeHktMSl9Il0sWzIsMSwia1t4XSJdLFswLDIsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgUF9rIF4xKSJdLFsxLDIsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgQV9rIF4xKSJdLFswLDMsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgQV9rIF4xKSJdLFsxLDMsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgQV9rIF4xIFxcc2V0bWludXMgXFx7MFxcfSkiXSxbMiwzLCJcXG1hdGhiZnttb2R9X3trW3leey0xfV19Il0sWzMsMiwiXFxtYXRoYmZ7bW9kfV97a1t5XX0iXSxbMywzLCJcXG1hdGhiZnttb2R9X3trW3kseV57LTF9XX0iXSxbMiwyLCJcXG1hdGhzY3IgQSJdLFsyLDAsIj8iXSxbMiwwLCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDEsIlxcc3Vic2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsMywiXFxzdWJzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwzLCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDVdLFs2LDVdLFs4LDcsIlxcdGV4dHtSZXN9IiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiYXJyb3doZWFkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTAsOCwiXFx0ZXh0e1Jlc30iLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJhcnJvd2hlYWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDcsIlxcdGV4dHtSZXN9IiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiYXJyb3doZWFkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTAsOSwiXFx0ZXh0e1Jlc30iLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJhcnJvd2hlYWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMSwxM10sWzEyLDEzXSxbMTQsMTIsIiIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxNCwxMSwiIiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzE1LDQsIiIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxNSw2LCIiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTYsWzEsMCwiXFxtYXRoYmIgQV9rIF4xIl0sWzAsMSwiXFxtYXRoYmIgQV9rIF4xIl0sWzEsMSwiXFxtYXRoYmIgQV9rIF4xIFxcc2V0bWludXMgXFx7MFxcfSJdLFswLDAsIlxcbWF0aGJiIFBfayBeMSJdLFszLDAsImtbeV0iXSxbMywxLCJcXGZyYWN7a1t4LHldfXsoeHktMSl9Il0sWzIsMSwia1t4XSJdLFswLDIsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgUF9rIF4xKSJdLFsxLDIsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgQV9rIF4xKSJdLFswLDMsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgQV9rIF4xKSJdLFsxLDMsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgQV9rIF4xIFxcc2V0bWludXMgXFx7MFxcfSkiXSxbMiwzLCJcXG1hdGhiZnttb2R9X3trW3leey0xfV19Il0sWzMsMiwiXFxtYXRoYmZ7bW9kfV97a1t5XX0iXSxbMywzLCJcXG1hdGhiZnttb2R9X3trW3kseV57LTF9XX0iXSxbMiwyLCJcXG1hdGhzY3IgQSJdLFsyLDAsIj8iXSxbMiwwLCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDEsIlxcc3Vic2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsMywiXFxzdWJzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwzLCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDVdLFs2LDVdLFs4LDcsIlxcdGV4dHtSZXN9IiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiYXJyb3doZWFkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTAsOCwiXFx0ZXh0e1Jlc30iLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJhcnJvd2hlYWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDcsIlxcdGV4dHtSZXN9IiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiYXJyb3doZWFkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTAsOSwiXFx0ZXh0e1Jlc30iLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJhcnJvd2hlYWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMSwxM10sWzEyLDEzXSxbMTQsMTIsIiIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxNCwxMSwiIiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzE1LDQsIiIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxNSw2LCIiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0=&embed" width="600" height="400" style="border-radius: 8px; border: dashed;"></iframe>
</center>

由于 $ℙ_k^1$ 不是仿射概型, 右上角的 $k$-代数拉回不存在, 以下转而寻求右下角模范畴的拉回, 并说明 $𝒜$ 与 $\mathrm{coh}(ℙ_k^1)$ 范畴等价.
{% endex %}

{% def %}
将 $𝒜 ↣ 𝐦𝐨𝐝 _{k[y]} × 𝐦𝐨𝐝 _{k [y^{-1}]}$ 明确如下,

1. 对象是三元组 $(M,N,φ)$, 其中 $φ : M_y ≃ M_{y^{-1}}$ 是 $𝐦𝐨𝐝 _{k[y,y^{-1}]}$ 中的同构;
2. 态射是二元组 $(α , β)$, 使下图交换:

   <center>
   <!-- https://q.uiver.app/#q=WzAsMTAsWzEsMCwiTSAiXSxbMSwxLCJNJyJdLFs0LDAsIk4iXSxbNCwxLCJOJyJdLFsyLDAsIk1fe3l9Il0sWzIsMSwiTV97eX0nIl0sWzMsMCwiTl97eV57LTF9fSJdLFszLDEsIk5fe3leey0xfX0nIl0sWzAsMCwiXFxtYXRoc2Z7T2J9Il0sWzAsMSwiXFxtYXRoc2Z7T2J9Il0sWzAsMSwiXFxhbHBoYSAiLDJdLFsyLDMsIlxcYmV0YSAiXSxbNCw1LCJcXGFscGhhIF95ICIsMl0sWzYsNywiXFxiZXRhIF97eV57LTF9fSJdLFs0LDYsIlxcdmFycGhpICJdLFs1LDcsIlxcdmFycGhpICciLDJdLFs4LDksIlxcbWF0aHNme01vcn0iLDIseyJsZXZlbCI6Mn1dXQ== -->
   <iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTAsWzEsMCwiTSAiXSxbMSwxLCJNJyJdLFs0LDAsIk4iXSxbNCwxLCJOJyJdLFsyLDAsIk1fe3l9Il0sWzIsMSwiTV97eX0nIl0sWzMsMCwiTl97eV57LTF9fSJdLFszLDEsIk5fe3leey0xfX0nIl0sWzAsMCwiXFxtYXRoc2Z7T2J9Il0sWzAsMSwiXFxtYXRoc2Z7T2J9Il0sWzAsMSwiXFxhbHBoYSAiLDJdLFsyLDMsIlxcYmV0YSAiXSxbNCw1LCJcXGFscGhhIF95ICIsMl0sWzYsNywiXFxiZXRhIF97eV57LTF9fSJdLFs0LDYsIlxcdmFycGhpICJdLFs1LDcsIlxcdmFycGhpICciLDJdLFs4LDksIlxcbWF0aHNme01vcn0iLDIseyJsZXZlbCI6Mn1dXQ==&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
   </center>

为说明 $𝒜$ 确实是拉回, 只需构造范畴等价

$$
\mathrm{coh}(ℙ _k^1) → 𝒜 ,\quad ℱ ↦ (ℱ|_{[∞]^c}, ℱ|_{[0]^c}, \mathrm{id}_{ℱ|_{\{[0], [∞]\}^c}}).
$$

取 $𝒜$ 的骨架, 使 $φ$ 视同等号. 三元组对应截面的合法粘合.
{% enddef %}

{% ex %}
(Serre 的观察). 若直接从环空间 $ℙ_k^1$ 构造 $\mathrm{coh}(ℙ_k^1)$, 先需考虑各分析有限生成的无限 $ℤ$-分次模 $𝐦𝐨𝐝^ℤ_{k[x,y]}$, 得交换图

$$
\begin{bmatrix}
M & \mathbf{grmod}_{k[ a,b]} & \rightarrow  & \mathbf{mod}_{k[ b/a]} & ( M_{a})^{\deg =0}\\
 & \downarrow  &  & \downarrow  & \\
( M_{b})^{\deg =0} & \mathbf{mod}_{k[ a/b]} & \rightarrow  & \mathbf{mod}_{k\left[ y.y^{-1}\right]} & ( M_{a,b})^{\deg a+\deg b=0}
\end{bmatrix}.
$$

此处, $(M_b)^{\deg 0}$ 中元素形如 $∑_{k ∈ ℕ} \frac{a^k}{b^k} m_i$. 右下角的模是 $M_{a,b}$ 中形如 $∑_{k ∈ ℤ}\frac{a^k}{b^k} ⋅ m_k$ 的元素. 因此交换. 转换映射是

$$
((M_b)^{\deg 0})_{a/b} ≃ ((M_a)^{\deg 0})_{b/a}. 
$$

以上正是泛性质给出的 $𝐠𝐫𝐦𝐨𝐝 _{k[x,y]} → \mathrm{coh}(ℙ_k^1)$.

对一般交换代数上的多项式环 (或更一般的 toric variety 等), 上述模型建立了层语言与模语言的对应:
<center>
<!-- https://q.uiver.app/#q=WzAsMTMsWzIsMiwiXFxtYXRoYmZ7bW9kfV97a1t5XnstMX1dfSJdLFswLDEsIlxcbWF0aGJme21vZH1ee1xcbWF0aGJiIFp9X3trW3gseV19Il0sWzIsMSwiXFxtYXRocm17Y29ofShcXG1hdGhiYiBBX2teMSkiLFsxODAsNjAsNjAsMV1dLFsyLDMsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgQV9rXjEpIixbMTgwLDYwLDYwLDFdXSxbMywyLCJcXG1hdGhybXtjb2h9KFxcbWF0aGJiIEFfa14xIFxcc2V0bWludXMgXFx7MFxcfSkiLFsxODAsNjAsNjAsMV1dLFsxLDIsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgUF9rXjEpIixbMTgwLDYwLDYwLDFdXSxbMywxLCJcXG1hdGhiZnttb2R9X3trW3kseV57LTF9XX0iXSxbMiwwLCJcXG1hdGhiZnttb2R9X3trW3ldfSJdLFsxLDEsIlxcbWF0aHNjciBBIl0sWzAsMCwie14wfVxcbWF0aGJme21vZH1fe2tbeCx5XX1ee1xcbWF0aGJiIFp9Il0sWzAsMiwiXFxmcmFje1xcbWF0aGJme21vZH1ee1xcbWF0aGJiIFp9X3trW3gseV19fXt7XjB9XFxtYXRoYmZ7bW9kfV97a1t4LHldfV57XFxtYXRoYmIgWn19Il0sWzQsMSwiXFx0ZXh0e+aooeivreiogH0iXSxbNCwyLCJcXHRleHR75bGC6K+t6KiAfSIsWzE4MCw2MCw2MCwxXV0sWzUsMiwiIiwwLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dLFsyLDQsIiIsMCx7ImNvbG91ciI6WzE4MCw2MCw2MF19XSxbMyw0LCIiLDIseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzUsMywiIiwyLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dLFs3LDZdLFswLDZdLFs4LDBdLFs4LDddLFs5LDEsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMSwwLCIiLDIseyJjdXJ2ZSI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEsNywiIiwwLHsiY3VydmUiOi0yLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMSw4LCJHIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsMTAsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxMCw1LCIoLSlee1xcI30iLDAseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlsxODAsNjAsNjBdfSxbMTgwLDYwLDYwLDFdXSxbNSwxMCwiXFxHYW1tYSAiLDAseyJvZmZzZXQiOi0zfV0sWzI3LDI2LCJcXHRvcCAiLDEseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTMsWzIsMiwiXFxtYXRoYmZ7bW9kfV97a1t5XnstMX1dfSJdLFswLDEsIlxcbWF0aGJme21vZH1ee1xcbWF0aGJiIFp9X3trW3gseV19Il0sWzIsMSwiXFxtYXRocm17Y29ofShcXG1hdGhiYiBBX2teMSkiLFsxODAsNjAsNjAsMV1dLFsyLDMsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgQV9rXjEpIixbMTgwLDYwLDYwLDFdXSxbMywyLCJcXG1hdGhybXtjb2h9KFxcbWF0aGJiIEFfa14xIFxcc2V0bWludXMgXFx7MFxcfSkiLFsxODAsNjAsNjAsMV1dLFsxLDIsIlxcbWF0aHJte2NvaH0oXFxtYXRoYmIgUF9rXjEpIixbMTgwLDYwLDYwLDFdXSxbMywxLCJcXG1hdGhiZnttb2R9X3trW3kseV57LTF9XX0iXSxbMiwwLCJcXG1hdGhiZnttb2R9X3trW3ldfSJdLFsxLDEsIlxcbWF0aHNjciBBIl0sWzAsMCwie14wfVxcbWF0aGJme21vZH1fe2tbeCx5XX1ee1xcbWF0aGJiIFp9Il0sWzAsMiwiXFxmcmFje1xcbWF0aGJme21vZH1ee1xcbWF0aGJiIFp9X3trW3gseV19fXt7XjB9XFxtYXRoYmZ7bW9kfV97a1t4LHldfV57XFxtYXRoYmIgWn19Il0sWzQsMSwiXFx0ZXh0e+aooeivreiogH0iXSxbNCwyLCJcXHRleHR75bGC6K+t6KiAfSIsWzE4MCw2MCw2MCwxXV0sWzUsMiwiIiwwLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dLFsyLDQsIiIsMCx7ImNvbG91ciI6WzE4MCw2MCw2MF19XSxbMyw0LCIiLDIseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzUsMywiIiwyLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dLFs3LDZdLFswLDZdLFs4LDBdLFs4LDddLFs5LDEsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMSwwLCIiLDIseyJjdXJ2ZSI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEsNywiIiwwLHsiY3VydmUiOi0yLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMSw4LCJHIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsMTAsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxMCw1LCIoLSlee1xcI30iLDAseyJvZmZzZXQiOi0zLCJjb2xvdXIiOlsxODAsNjAsNjBdfSxbMTgwLDYwLDYwLDFdXSxbNSwxMCwiXFxHYW1tYSAiLDAseyJvZmZzZXQiOi0zfV0sWzI3LDI2LCJcXHRvcCAiLDEseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=&embed" width="600" height="350" style="border-radius: 8px; border: dashed;"></iframe>
</center>
左侧三项小 Abel 范畴的``短正合列''给出 Serre 商范畴.
\\
\\
我们暂时回归初始假定, 此时 $k[x,y]$ 是 Noether 环. 左下角的伴随实际上是范畴等价, 即, $G$ 诱导了

$$
\frac{𝐦𝐨𝐝_{k[x,y]}^ℤ}{^0𝐦𝐨𝐝_{k[x,y]}^ℤ} ≃ \mathrm{coh}(ℙ_k^1).
$$

凭借一些粗浅地构造, 可以看出

1. $\ker G$ 恰好是支撑有限的分次模. 由层的粘合原理知 $GX=0$ 当且仅当其限制在两处 $𝔸_k^1$ 上为 $0$. 相应地, 存在 $N$ 使得 $GX$ 被 $x^N$ 与 $y^N$ 同时零化.
2. $G$ 是本质满且全的, 因为可以按照

   $$
   ((M_a)^{deg =0} ⟹ (M_{a,b})^{\deg a + \deg b =0} ⟸ (M_b)^{\deg =0 })
   $$

   复原 $M$ (不必唯一). 这一基于自由余代数 $k(x)$-作用的构造也是函子性的 (该构造对非 Noether 环会出一些问题);
3. $G$ 也是正合的. 假定 $G$ 保持一切有限极限与余极限, 则拉回图交换. 依照泛性质, $G$ 唯一, 从而是正合函子.
4. 之所以 $\overline G : \frac{𝐦𝐨𝐝_{k[x,y]}^ℤ}{^0𝐦𝐨𝐝_{k[x,y]}^ℤ} → \mathrm{coh}(ℙ_k^1)$ 忠实, 是因为 $G$ 是以 torsion class 为核的正合函子.

{% endex %}

### 导出等价 $D^b (\mathrm{coh}(ℙ_k^1)) ≃ D^b (𝐫𝐞𝐩(k[∙ ⇉ ∙]))$
