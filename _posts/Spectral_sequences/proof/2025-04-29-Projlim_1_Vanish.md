---
title: $\varprojlim{}_{ℕ}^1$ 消失的充分条件
author: Chencheng Zhang
layout: post
category: notes
---

* toc
{:toc}

{% abs %}
以下推演一列 Abel 范畴中 $\lim^1$ 函子的基本事实, 及其在一般 Abel 范畴上的推广 (需要一些必要之假定). 重点模型是 Mittag-Leffler 条件, 以及 Mittag-Leffler 定理等经典例子.
{% endabs %}

## 塔与 $\varprojlim{}^1$

{% def %}
(Abel 群的投射塔). 即预层 $\mathrm{PSh}(\mathbb N)$, 其对象 (函子 $M$) 表现做映射链
\begin{equation}
  \cdots \xrightarrow{m_2} M_2\xrightarrow{m_1} M_1\xrightarrow{m_0} M_0.
\end{equation}
记 $m:\prod_{\mathbb N} M_k\to \prod _{\mathbb N}M_k,\quad (x_k)_{k\in \mathbb N}\mapsto (x_k-m_k(x_{k+1}))$ 由泛性质 $\{p_{k}m=m_{k+1}p_{k+1}\}_{k\in \mathbb N}$ 确立. 记正合列

\begin{equation}
  0\to {\varprojlim}^0 M\to \prod_{\mathbb N} M\xrightarrow{1-m}\prod_{\mathbb N} M\to {\varprojlim}^1 M\to 0.
\end{equation}

其中, $1-m$ 自动对应如下泛性质确立的序列 ($\oplus$ 强调了双积)

<center>
<!-- https://q.uiver.app/#q=WzAsNCxbMCwwLCJcXHByb2QgTSJdLFsyLDAsIlxccHJvZCBNIl0sWzAsMSwiTV9rXFxvcGx1cyBNX3trKzF9Il0sWzIsMSwiTV9rIl0sWzAsMSwiMS1tIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsMiwiKHBfayxwX3trKzF9KSIsMl0sWzEsMywicF9rIl0sWzIsMywiKFxcbWF0aHJte2lkfV97TV9rfSwgLW1fe2srMX0pIiwyXSxbMCwzXV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNCxbMCwwLCJcXHByb2QgTSJdLFsyLDAsIlxccHJvZCBNIl0sWzAsMSwiTV9rXFxvcGx1cyBNX3trKzF9Il0sWzIsMSwiTV9rIl0sWzAsMSwiMS1tIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsMiwiKHBfayxwX3trKzF9KSIsMl0sWzEsMywicF9rIl0sWzIsMywiKFxcbWF0aHJte2lkfV97TV9rfSwgLW1fe2srMX0pIiwyXSxbMCwzXV0=&embed" width="600" height="200" style="border-radius: 8px; border: dahsed;"></iframe>
</center>

{% enddef %}

{% prop %}
([证明](Proj_0_is_Lim)). ${\varprojlim}^0 M:=\mathrm{ker}(m)=\varprojlim M$ 是通常的极限.
{% endprop %}

{% ex %}
给定逆像塔的正合列 $0\to X\to Y\to Z\to 0$, 依直积的正合型与蛇引理得长正合列
\begin{equation}
    0\to {\varprojlim}^0X\to {\varprojlim}^0Y\to {\varprojlim}^0Z\to {\varprojlim}^1X\to {\varprojlim}^1Y\to {\varprojlim}^1Z\to 0.
\end{equation}
{% endex %}

{% pro %}
([证明](Proj_is_1_Derivative)). ${\varprojlim}^1$ 是 $\varprojlim$ 的右导出函子.
{% endpro %}

{% note %}
上文构造性地证明了 $X_{\geq n}$ 的位移算子可裂满. 同理地, 一切 $m_k$ 可裂满蕴含 $M$ 的位移算子可裂满.
{% endnote %}

{% ex %}
给定余预层 $A\in \mathrm{PSh}(\mathbb N^{\mathrm{op}})$ (正向塔), 得函子范畴的塔
\begin{equation}
    h^A:[\cdots \to (A_2,-)\to (A_1,-)\to (A_0,-)].
\end{equation}
记正向塔的位移运算为 $f$, 由 AB5 知 $(1-f)$ 是单态射. 短正合列 $0\to \coprod A\to \coprod A\to \varinjlim A\to 0$ 给出
<center>
<!-- https://q.uiver.app/#q=WzAsMTMsWzEsMSwiKFxcdmFyaW5qbGltIEEsLSkiXSxbMCwxLCIwIl0sWzIsMSwiKFxcY29wcm9kIEEsLSkiXSxbMywxLCIoXFxjb3Byb2QgQSwtKSJdLFs0LDEsIlxcbWF0aHJte0V4dH1eMShcXHZhcmluamxpbSBBLC0pIl0sWzUsMSwiXFxtYXRocm17RXh0fV4xKFxcY29wcm9kIEEsLSkiXSxbNiwxLCJcXG1hdGhybXtFeHR9XjEoXFxjb3Byb2QgQSwtKSJdLFsxLDAsIlxcdmFycHJvamxpbSAoQSwtKSJdLFswLDAsIjAiXSxbMiwwLCJcXHByb2QgKEEsLSkiXSxbMywwLCJcXHByb2QgKEEsLSkiXSxbNCwwLCJ7XFx2YXJwcm9qbGltfV4xIChBLC0pIl0sWzUsMCwiMCJdLFsxLDBdLFs0LDVdLFswLDJdLFsyLDNdLFszLDRdLFs1LDZdLFs4LDddLFs3LDldLFs5LDEwXSxbMTAsMTFdLFsxMSwxMl0sWzcsMCwiXFxzaW0gIiwyXSxbOSwyLCJcXHNpbSAiLDJdLFsxMCwzLCJcXHNpbSAiLDJdXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTMsWzEsMSwiKFxcdmFyaW5qbGltIEEsLSkiXSxbMCwxLCIwIl0sWzIsMSwiKFxcY29wcm9kIEEsLSkiXSxbMywxLCIoXFxjb3Byb2QgQSwtKSJdLFs0LDEsIlxcbWF0aHJte0V4dH1eMShcXHZhcmluamxpbSBBLC0pIl0sWzUsMSwiXFxtYXRocm17RXh0fV4xKFxcY29wcm9kIEEsLSkiXSxbNiwxLCJcXG1hdGhybXtFeHR9XjEoXFxjb3Byb2QgQSwtKSJdLFsxLDAsIlxcdmFycHJvamxpbSAoQSwtKSJdLFswLDAsIjAiXSxbMiwwLCJcXHByb2QgKEEsLSkiXSxbMywwLCJcXHByb2QgKEEsLSkiXSxbNCwwLCJ7XFx2YXJwcm9qbGltfV4xIChBLC0pIl0sWzUsMCwiMCJdLFsxLDBdLFs0LDVdLFswLDJdLFsyLDNdLFszLDRdLFs1LDZdLFs4LDddLFs3LDldLFs5LDEwXSxbMTAsMTFdLFsxMSwxMl0sWzcsMCwiXFxzaW0gIiwyXSxbOSwyLCJcXHNpbSAiLDJdLFsxMCwzLCJcXHNpbSAiLDJdXQ==&embed" width="600" height="150" style="border-radius: 8px; border: dashed;"></iframe>
</center>
依照 AB3, $\mathrm{Ext}^1$ 与 $\coprod$ 交换. 取 $\mathrm{Ext}^1(\varinjlim A,-)$ 处的合冲子得短正合列
\begin{equation}
    0\to {\varprojlim}^1(A,-)\to \mathrm{Ext}^1(\varinjlim A,-)\to {\varprojlim}^0\mathrm{Ext}^1(A,-)\to 0.
\end{equation}

{% endex %}

{% note %}
对上述系统 $\mathbb N$, $\varprojlim^{\geq 2}$ 消失.
{% endnote %}

{% cor %}
对 Abel 范畴而言, ${\varprojlim}^0=\varprojlim$ 是显而易见的, 附加足够多内射对象与 AB4* 可知 ${\varprojlim}^1=R^1\varprojlim$, 再附加 AB5 可得
\begin{equation}
  \mathrm{Ext}^1(\varinjlim A,-) / {\varprojlim}^1(A,-) ≃ \varprojlim \mathrm{Ext}^1(A,-).
\end{equation}
{% endcor %}

{% prop %}
([证明](When_1_m_epi)). 若 Abel 范畴 (对必要的条件) 完备, 且有投射生成元 $U$. 若逆向塔 $M$ 中的一切 $m_i$ 满, 则 $(1-m)$ 满.
{% endprop %}

## Mittag-Leffler 条件

{% def %}
(Mittag-Leffler 条件). 假定范畴存在像. 函子 $(X,\varphi)\in \mathrm{PSh}(\mathbb N)$ 满足 Mittag-Leffler 条件, 若对任意 $n\in \mathbb N$, $\{\mathrm{im}(\varphi_{k,n} : X_k → X_n)\}_{k≥ n}$ 在有限步内驻定.
{% enddef %}

{% note %}
简单地说, $X_∞ \cdots → X_{n+1} → X_n$ 的像由某一 $X_k$ 完全决定.
{% endnote %}

{% ex %}
假定特定的核与积存在, 则对具体范畴而言, Mittag-Leffler 条件给出极限 $\{(x_n)_{n\geq 0}\mid φ_{i,i + j}(x_i)=x_{i+j}\}$. 此时
<center>
<!-- https://q.uiver.app/#q=WzAsOCxbMywwLCJNXzAiXSxbMiwwLCJNXzEiXSxbMSwwLCJNXzIiXSxbMCwwLCJcXGNkb3RzIl0sWzMsMSwiXFxtYXRocm17aW19KFxcdmFycGhpIF97XFxpbmZ0eSwwfSkiXSxbMiwxLCJcXG1hdGhybXtpbX0oXFx2YXJwaGkgX3tcXGluZnR5LDF9KSJdLFsxLDEsIlxcbWF0aHJte2ltfShcXHZhcnBoaSBfe1xcaW5mdHksMX0pIl0sWzAsMSwiXFxjZG90cyAiXSxbMSwwLCJcXHZhcnBoaSBfezEsMH0iXSxbMiwxLCJcXHZhcnBoaSBfezIsMH0iXSxbNSw0LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNiw1LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMywyXSxbNyw2XSxbNCwwLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs1LDEsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzYsMiwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsOCxbMywwLCJNXzAiXSxbMiwwLCJNXzEiXSxbMSwwLCJNXzIiXSxbMCwwLCJcXGNkb3RzIl0sWzMsMSwiXFxtYXRocm17aW19KFxcdmFycGhpIF97XFxpbmZ0eSwwfSkiXSxbMiwxLCJcXG1hdGhybXtpbX0oXFx2YXJwaGkgX3tcXGluZnR5LDF9KSJdLFsxLDEsIlxcbWF0aHJte2ltfShcXHZhcnBoaSBfe1xcaW5mdHksMX0pIl0sWzAsMSwiXFxjZG90cyAiXSxbMSwwLCJcXHZhcnBoaSBfezEsMH0iXSxbMiwxLCJcXHZhcnBoaSBfezIsMH0iXSxbNSw0LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNiw1LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMywyXSxbNyw2XSxbNCwwLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs1LDEsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzYsMiwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XV0=&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
</center>
是等价的逆像系统.
{% endex %}

{% slo %}
满足 Mittag-Leffler 的逆向塔等价某个子对象, 该子对象的中的态射都是满的.
{% endslo %}

{% note %}
逆像塔极限与拉回存在诸多神似之处, 例如其保持可裂满. [特别地](Projective_Generators#满态射的拉回满), 若范畴具有投射生成元, 则满态射的拉回仍满.
\\
基于同样的研究方式, 不妨猜想具有投射生成元的范畴中, 满态射组成的逆向塔具有满的位移态射, 并可将 $m_i$ 均满弱化至 Mittag-Leffler 条件.
{% endnote %}

{% note %}
分析学的 Mittag-Leffler 定理见[此处](ML_analysis).
{% endnote %}

## $\varprojlim{}^1$ 消失的充分条件

{% lem %}
([证明](Projective_Generators#投射生成元与-ml-条件)). 投射生成元保持并反射 Mittag-Leffler 条件.
{% endlem %}

{% lem %}
([证明](ML_Mod))模范畴中, Mittag-Leffler 条件使得 $\varprojlim ^1 = 0$.
{% endlem %}

结合以上两条引理, 得以下结论.

{% prop %}
($\varprojlim{}_ℕ^1$ 消失的充分条件). 假定 $𝒜$ 是满足 AB4* 的局部小范畴. 假定范畴存在投射生成元, 则 Mittag-Leffler 条件使得 $\varprojlim ^1 = 0$.
{% endprop %}
