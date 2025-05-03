---
title: 关于谱序列与滤过复形等
author: Chencheng Zhang
layout: post
category: notes
---

* toc
{:toc}

{% abs %}
本节通过滤过复形构造谱序列, 并将之引申至双复形的谱序列, 以此证明同调代数中的若干的基本定理.

1. $2 × 2$ 交换图的同调群, 推出拉回等;
2. 复形态射基本定理 (包括正合复形的态射, 强形式的 $3 × 3$ 引理, 强形式蛇引理等);
3. AR 公式与高阶导出函子, 主要是 $\mathrm{Tor}$ (见 torsionless 模), 高阶 $\mathrm{Ext}$ (见 Auslander-Bridger 公式);
4. Grothendieck 谱序列 (复合函子求导);
5. 投射维度有限的 tilting 模 (广义 tilting 模) 的 Brenner-Butler 定理.

需要一些技巧, 例如:

1. $E_2$ 步的长正合列;
2. Eilenberg-Cartan 消解;
3. 函子同构 $(- ⊗{}_R P) ≃ (P_R, -)$;
4. 等等.

关于谱序列早期工作见 [Milnor 的综述](https://www.semanticscholar.org/paper/On-axiomatic-homology-theory.-Milnor/cef00c184979cbcfcc38bb85d2aae53d56013375).

特别注释: 没有正合耦.
{% endabs %}

## 谱序列的滤过构造

### 滤过复形

正式介绍谱序列的构造前, 应先明确谱序列的一般格式. 类似链复形与上链复形之别, 谱序列亦有同调类型与上同调类型者.

{% def %}
(上同调谱序列). 称一组资料 $\{(E_r, f_r)\}$ 是 Abel 范畴的上同调谱序列, 若

1. (推广复形对象). 所有 $E_r$ 是 $(ℤ × ℤ)$-分次对象,
2. (推广微分). $d_r: E_r → E_r$ 的方向是 $(r, 1-r)$, 满足 $d_r ^2 = 0$,
3. (递推关系) 对 $(E_r, d_r)$ 取 $(ℤ × ℤ)$-分次上同调群, 结果是 $E_r$.

一般地, $E_{r+1}$ 是导出的, 而 $d_r$ 不是内蕴的.
{% enddef %}

{% note %}
以上定义纯粹是一类满足特殊关系的箭头, 仅代表上同调谱序列的合法格式.
{% endnote %}

习惯上, 将页的指标 $r$ 写在 $E_∙^{∙ , ∙}$ 的下方, 即 $E_r$. 对每一 $r$, 再有双分次对象 $E_r^{∙ , ∙}$.

此外, 暂时混同复形与微分分次对象.

{% def %}
(上滤过, 分次). 给定 Abel 范畴的对象 $X$. 一个 $X$ 的 $ℤ$-上滤过是一族子对象 ${X^p}_{p ∈ ℤ}$, 满足

\begin{equation}
    \cdots F^{n-1}X ↩ F^{n}X ↩ F^{n+1}X ↩ \cdots.
\end{equation}

特别地, 通常要求 $⋂F^pX = 0$ 以及 $⋃ F^p X= X$.
\\
给定上滤过 $F^∙X$, 使用以下记号表示分次对象:
\begin{equation}
    \mathrm{Gr}_p (X) := \frac{F^p}{F^{p+1}} X := \frac{F^p X}{F^{p+1}X}.
\end{equation}
{% enddef %}

分次化 $\mathrm{Gr}_∙(-)$ 是加法函子. 关于分次化与完备性的关系见[此文](Complete_Z_Filtration).

### 滤过复形构造谱序列

{% ex %}
(初始状态). 输入上链复形 $(A^∙, d)$ 和滤过 $F^∙$, 朝向为
<center>
<!-- https://q.uiver.app/#q=WzAsMTEsWzEsMSwiRl5wQV57cCtxfSJdLFsyLDIsIkZee3ArMX1BXntwK3F9Il0sWzAsMCwiRl57cC0xfUFee3ArcX0iXSxbMSwwLCJGXntwfUFee3ArcSsxfSJdLFsyLDEsIkZee3ArMX1BXntwK3ErMX0iXSxbMSwyLCJGXntwfUFee3ArcS0xfSJdLFswLDEsIkZee3AtMX1BXntwK3EtMX0iXSxbMCwyLCJcXGJveGVke1xcdGV4dHvovpPlhaV9IFxcIChBLEYpfSJdLFswLDMsIkZee3AtMX1BXlxcYnVsbGV0ICJdLFsxLDMsIkZee3B9QV5cXGJ1bGxldCAiXSxbMiwzLCJGXntwKzF9QV5cXGJ1bGxldCAiXSxbMCwyLCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsMCwiXFxzdWJzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDMsIlxcc3Vic2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNSw2LCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMl0sWzAsM10sWzUsMF0sWzEsNF0sWzgsOSwiXFxzdXBzZXQiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOSwxMCwiXFxzdXBzZXQiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTEsWzEsMSwiRl5wQV57cCtxfSJdLFsyLDIsIkZee3ArMX1BXntwK3F9Il0sWzAsMCwiRl57cC0xfUFee3ArcX0iXSxbMSwwLCJGXntwfUFee3ArcSsxfSJdLFsyLDEsIkZee3ArMX1BXntwK3ErMX0iXSxbMSwyLCJGXntwfUFee3ArcS0xfSJdLFswLDEsIkZee3AtMX1BXntwK3EtMX0iXSxbMCwyLCJcXGJveGVke1xcdGV4dHvovpPlhaV9IFxcIChBLEYpfSJdLFswLDMsIkZee3AtMX1BXlxcYnVsbGV0ICJdLFsxLDMsIkZee3B9QV5cXGJ1bGxldCAiXSxbMiwzLCJGXntwKzF9QV5cXGJ1bGxldCAiXSxbMCwyLCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsMCwiXFxzdWJzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDMsIlxcc3Vic2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNSw2LCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMl0sWzAsM10sWzUsMF0sWzEsNF0sWzgsOSwiXFxzdXBzZXQiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOSwxMCwiXFxzdXBzZXQiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endex %}

{% note %}
特别地, $↘$ 朝向的链是对 $A^{p+q}$ 的滤过. 上图不是 $E_0$!
{% endnote %}

{% ex %}
(构造 $E_0$). 在每点取商, 得 $E_0$:
<center>
<!-- https://q.uiver.app/#q=WzAsOCxbMSwxLCJcXGZyYWN7Rl5wQV57cCtxfX17Rl57cCsxfUFee3ArcX19Il0sWzIsMiwiXFxmcmFje0Zee3ArMX1BXntwK3F9fXtGXntwKzJ9QV57cCtxfX0iXSxbMCwwLCJcXGZyYWN7Rl57cC0xfUFee3ArcX19e0ZecEFee3ArcX19Il0sWzEsMCwiXFxmcmFje0Zee3B9QV57cCtxKzF9fXtGXntwKzF9QV57cCtxKzF9fSJdLFsyLDEsIlxcZnJhY3tGXntwKzF9QV57cCtxKzF9fXtGXntwKzJ9QV57cCtxKzF9fSJdLFsxLDIsIlxcZnJhY3tGXntwfUFee3ArcS0xfX17Rl57cCsxfUFee3ArcS0xfX0iXSxbMCwxLCJcXGZyYWN7Rl57cC0xfUFee3ArcS0xfX17Rl57cH1BXntwK3EtMX19Il0sWzAsMiwiXFxib3hlZHtFXzAoQSxGKX0iXSxbMSw0XSxbNSwwXSxbMCwzXSxbNiwyXV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsOCxbMSwxLCJcXGZyYWN7Rl5wQV57cCtxfX17Rl57cCsxfUFee3ArcX19Il0sWzIsMiwiXFxmcmFje0Zee3ArMX1BXntwK3F9fXtGXntwKzJ9QV57cCtxfX0iXSxbMCwwLCJcXGZyYWN7Rl57cC0xfUFee3ArcX19e0ZecEFee3ArcX19Il0sWzEsMCwiXFxmcmFje0Zee3B9QV57cCtxKzF9fXtGXntwKzF9QV57cCtxKzF9fSJdLFsyLDEsIlxcZnJhY3tGXntwKzF9QV57cCtxKzF9fXtGXntwKzJ9QV57cCtxKzF9fSJdLFsxLDIsIlxcZnJhY3tGXntwfUFee3ArcS0xfX17Rl57cCsxfUFee3ArcS0xfX0iXSxbMCwxLCJcXGZyYWN7Rl57cC0xfUFee3ArcS0xfX17Rl57cH1BXntwK3EtMX19Il0sWzAsMiwiXFxib3hlZHtFXzAoQSxGKX0iXSxbMSw0XSxbNSwwXSxbMCwzXSxbNiwyXV0=&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>
此处
\begin{equation}
   E_0^{p,q} = \frac{F^p A^{p+q}}{F^{p+1}A^{p+q}},
\end{equation}
微分 $d_0$ 继承自 $d$, $(p,q)$-处的同调群是
\begin{equation}
    H^{p,q}(E_0) = \frac{[F^pA^{p+q} \quad ∩ \quad {\color{red}d^{-1}(F^{p+1}A^{p+q+1})}]\quad + \quad F^{p+1}A^{p+q}}{[F^pA^{p+q} \quad ∩ \quad {\color{blue}d(F^{p}A^{p+q-1})}]\quad + \quad F^{p+1}A^{p+q}}.
\end{equation}
{% endex %}

{% note %}
往后同调群的滤过, 决定于$\textcolor{red}{红处}$与$\textcolor{blue}{蓝处}$的指标变动, 黑处固定!
{% endnote %}

{% ex %}
(构造 $E_1$). 将视角从 $ℤ^2$-分次模拓展至 dg-模, 以上同调群整合作
\begin{equation}
    H_0^{p,∙} := \frac{Z_0^p}{B_0^p} := \frac{[F^p \quad ∩ \quad {\color{red}d^{-1}(F^{p+1})}]\quad + \quad F^{p+1}}{[F^p \quad ∩ \quad {\color{blue}d(F^{p})}]\quad + \quad F^{p+1}}.
\end{equation}

此处 $F^∙A$ 是 dg-模 $A$ 的滤过, 分次模态射之分次是自明的. 定义

1. $Z_r^p = F^p \quad ∩ \quad {\color{red}d^{-1}(F^{p+1\color{black}{+r}})}\quad +  \ \quad F^{p+1}$;
2. $B_r^p = F^p \quad ∩ \quad {\color{blue}d(F^{p\color{black}{-r}})}\qquad + \qquad F^{p+1}$.

以上括号之所以可去, 是因为子商间的模恒等式. 此时有滤过
\begin{equation}
    Z^p_0 ⊃ Z^p_r ⊃ Z^p_∞ ⊃ B^p_∞ ⊃ B^p_r ⊃ B^p_0.
\end{equation}

示意图如下
<center>
<!-- https://q.uiver.app/#q=WzAsNixbMCwwLCJGXnAg4oipIGReey0xfShGXntwKzF9KStGXntwKzF9Il0sWzAsMSwiRl5wIOKIqSAoZF57LTF9KEZee3ArcisxfSkpICsgRl57cCsxfSJdLFswLDIsIkZecCDiiKkgKFxca2VyIGQpICsgRl57cCsxfSJdLFsxLDIsIkZecCDiiKkgKFxcbWF0aHJte2ltfVxcIGQpICsgRl57cCsxfSJdLFsxLDEsIkZecCDiiKkgKGQoRl57cC1yfSkpICsgRl57cCsxfSJdLFsxLDAsIkZecCDiiKkgKDApICsgRl57cCsxfSJdLFswLDEsIlxcc3Vwc2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEsMiwiXFxzdXBzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMiwzLCJcXHN1cHNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFszLDQsIlxcc3Vwc2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzQsNSwiXFxzdXBzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMCwxLCIiLDMseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMSwyLCIiLDMseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMiwzLCIiLDMseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMyw0LCIiLDMseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNCw1LCIiLDMseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMCwxLCIiLDMseyJvZmZzZXQiOjMsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxLDIsIiIsMyx7Im9mZnNldCI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzIsMywiIiwzLHsib2Zmc2V0IjozLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMyw0LCIiLDMseyJvZmZzZXQiOjMsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs0LDUsIiIsMyx7Im9mZnNldCI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNixbMCwwLCJGXnAg4oipIGReey0xfShGXntwKzF9KStGXntwKzF9Il0sWzAsMSwiRl5wIOKIqSAoZF57LTF9KEZee3ArcisxfSkpICsgRl57cCsxfSJdLFswLDIsIkZecCDiiKkgKFxca2VyIGQpICsgRl57cCsxfSJdLFsxLDIsIkZecCDiiKkgKFxcbWF0aHJte2ltfVxcIGQpICsgRl57cCsxfSJdLFsxLDEsIkZecCDiiKkgKGQoRl57cC1yfSkpICsgRl57cCsxfSJdLFsxLDAsIkZecCDiiKkgKDApICsgRl57cCsxfSJdLFswLDEsIlxcc3Vwc2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEsMiwiXFxzdXBzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMiwzLCJcXHN1cHNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFszLDQsIlxcc3Vwc2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzQsNSwiXFxzdXBzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMCwxLCIiLDMseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMSwyLCIiLDMseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMiwzLCIiLDMseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMyw0LCIiLDMseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNCw1LCIiLDMseyJvZmZzZXQiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMCwxLCIiLDMseyJvZmZzZXQiOjMsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxLDIsIiIsMyx7Im9mZnNldCI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzIsMywiIiwzLHsib2Zmc2V0IjozLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMyw0LCIiLDMseyJvZmZzZXQiOjMsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs0LDUsIiIsMyx7Im9mZnNldCI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endex %}

{% ex %}
(构造翻页 $E_{r} → H(E_r) := E_{r+1}$). 取

$$
E_{r+1}^{p, ∙} = H_r^{p, ∙} := {Z_r^{p, ∙} } / {B_r^{p, ∙} },
$$

构造 $d^{p, ∙}_r$ 的满-单分解:
\begin{equation}
 E_{r}^p = \frac{Z_{r-1}^p}{B_{r-1}^p} ↠ \frac{Z_{r-1}^p}{Z_{r}^p} ≃ \frac{B_{r}^{p+r}}{B_{r-1}^{p+r}} ↪ \frac{Z_{r-1}^{p+r}}{B_{r-1}^{p+r}} = E_r^{p+r}.
\end{equation}
中间的同构是 Zassenhaus 引理的函子性:

$$
\begin{aligned}
\frac{Z_{r-1} ^p}{Z_{r} ^p} &= \frac{F^p ∩ (d^{-1}(F^{p+r})) + F^{p+1}}{F^{p} ∩ (d^{-1}(F^{p+r+1})) + F^{p+1}} \\[6pt]
    \left[\frac{A^♯ ∩ {\color{red} X^♯} + A^♭}{A^♯ ∩ {\color{red} X^♭} + A^♭}\right] \ \ &≃ \frac{d(F^p) ∩ {\color{red} F^{p+r}} + d(F^{p+1})}{d(F^{p}) ∩ {\color{red} F^{p+r+1}} + d(F^{p+1})} \\[6pt]
    \left[\frac{ {\color{red} X^♯} ∩ A^♯ + {\color{red} X^♭}}{ {\color{red} X^♯} ∩ A^♭ + {\color{red} X^♭}}\right]  \ \  &≃ \frac{ {\color{red} F^{p+r}} ∩ d(F^p) + {\color{red} F^{p+r+1}}}{ {\color{red} F^{p+r}} ∩ d(F^{p+1}) + {\color{red} F^{p+r+1}}} \quad = \frac{B^{p+r}_r}{B^{p+r}_{r-1}}  
\end{aligned}
$$

考虑链复形的 $(X, \ker , \mathrm{cok}, \mathrm{im}, \mathrm{cim}, H)$-六要件, 得以下翻页:

<center>
<!-- https://q.uiver.app/#q=WzAsMjIsWzAsMCwiRSIsWzE4MCw2MCw2MCwxXV0sWzUsMCwiRSIsWzE4MCw2MCw2MCwxXV0sWzUsMiwiSCIsWzE4MCw2MCw2MCwxXV0sWzIsMCwiXFxtYXRocm17aW19IixbMTgwLDYwLDYwLDFdXSxbNywwLCJcXG1hdGhybXtpbX0iLFsxODAsNjAsNjAsMV1dLFs0LDEsIlxcbWF0aHJte2tlcn0iLFsxODAsNjAsNjAsMV1dLFs2LDEsIlxcbWF0aHJte2Nva30iLFsxODAsNjAsNjAsMV1dLFsxLDEsIlxcbWF0aHJte2Nva30iLFsxODAsNjAsNjAsMV1dLFswLDIsIkgiLFsxODAsNjAsNjAsMV1dLFs1LDEsIlxcZnJhY3taX3tyLTF9XnB9e0Jfe3ItMX1ecH0iXSxbNywxLCJcXGZyYWN7Wl97ci0xfV5wfXtaX3tyfV5wfSJdLFs4LDAsIlxcY2RvdHMiLFsxODAsNjAsNjAsMV1dLFs4LDEsIlxcY2RvdHMiXSxbNiwyLCJcXGZyYWN7Wl97ci0xfV5wfXtCX3tyfV5wfSJdLFs1LDMsIlxcZnJhY3taX3tyfV5wfXtCX3tyfV5wfSJdLFszLDAsIlxcbWF0aHJte2NpbX0iLFsxODAsNjAsNjAsMV1dLFs0LDIsIlxcZnJhY3taX3tyfV5wfXtCX3tyLTF9XnB9Il0sWzMsMSwiXFxmcmFje0Jfe3J9XntwfX17Ql97ci0xfV57cH19Il0sWzIsMSwiXFxmcmFje1pfe3ItMX1ee3Atcn19e1pfe3J9XntwLXJ9fSJdLFsxLDIsIlxcZnJhY3taX3tyLTF9XntwLXJ9fXtCX3tyfV57cC1yfX0iXSxbMCwxLCJcXGZyYWN7Wl97ci0xfV57cC1yfX17Ql97ci0xfV57cC1yfX0iXSxbMCwzLCJcXGZyYWN7Wl97cn1ee3Atcn19e0Jfe3J9XntwLXJ9fSJdLFswLDMsIiIsMyx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxLDQsIiIsMyx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs1LDEsIiIsMyx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzEsNiwiIiwzLHsiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzUsMiwiIiwzLHsiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsNiwiIiwzLHsiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNiw0LCIiLDMseyJjb2xvdXIiOlsxODAsNjAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMCw3LCIiLDMseyJjb2xvdXIiOlsxODAsNjAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNywzLCIiLDMseyJjb2xvdXIiOlsxODAsNjAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbOCw3LCIiLDMseyJjb2xvdXIiOlsxODAsNjAsNjBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs0LDExLCIiLDIseyJsZXZlbCI6MiwiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCwxMiwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTQsMTMsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzksMTMsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxMywxMCwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzE1LDEsIiIsMyx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzE1LDUsIiIsMyx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzMsMTUsIiIsMix7ImxldmVsIjoyLCJjb2xvdXIiOlsxODAsNjAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzE2LDE0LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMTYsOSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMTcsMTYsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzE4LDE3LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxOSwxOCwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIxLDE5LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsyMCwxOSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMjIsWzAsMCwiRSIsWzE4MCw2MCw2MCwxXV0sWzUsMCwiRSIsWzE4MCw2MCw2MCwxXV0sWzUsMiwiSCIsWzE4MCw2MCw2MCwxXV0sWzIsMCwiXFxtYXRocm17aW19IixbMTgwLDYwLDYwLDFdXSxbNywwLCJcXG1hdGhybXtpbX0iLFsxODAsNjAsNjAsMV1dLFs0LDEsIlxcbWF0aHJte2tlcn0iLFsxODAsNjAsNjAsMV1dLFs2LDEsIlxcbWF0aHJte2Nva30iLFsxODAsNjAsNjAsMV1dLFsxLDEsIlxcbWF0aHJte2Nva30iLFsxODAsNjAsNjAsMV1dLFswLDIsIkgiLFsxODAsNjAsNjAsMV1dLFs1LDEsIlxcZnJhY3taX3tyLTF9XnB9e0Jfe3ItMX1ecH0iXSxbNywxLCJcXGZyYWN7Wl97ci0xfV5wfXtaX3tyfV5wfSJdLFs4LDAsIlxcY2RvdHMiLFsxODAsNjAsNjAsMV1dLFs4LDEsIlxcY2RvdHMiXSxbNiwyLCJcXGZyYWN7Wl97ci0xfV5wfXtCX3tyfV5wfSJdLFs1LDMsIlxcZnJhY3taX3tyfV5wfXtCX3tyfV5wfSJdLFszLDAsIlxcbWF0aHJte2NpbX0iLFsxODAsNjAsNjAsMV1dLFs0LDIsIlxcZnJhY3taX3tyfV5wfXtCX3tyLTF9XnB9Il0sWzMsMSwiXFxmcmFje0Jfe3J9XntwfX17Ql97ci0xfV57cH19Il0sWzIsMSwiXFxmcmFje1pfe3ItMX1ee3Atcn19e1pfe3J9XntwLXJ9fSJdLFsxLDIsIlxcZnJhY3taX3tyLTF9XntwLXJ9fXtCX3tyfV57cC1yfX0iXSxbMCwxLCJcXGZyYWN7Wl97ci0xfV57cC1yfX17Ql97ci0xfV57cC1yfX0iXSxbMCwzLCJcXGZyYWN7Wl97cn1ee3Atcn19e0Jfe3J9XntwLXJ9fSJdLFswLDMsIiIsMyx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxLDQsIiIsMyx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs1LDEsIiIsMyx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzEsNiwiIiwzLHsiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzUsMiwiIiwzLHsiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsNiwiIiwzLHsiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNiw0LCIiLDMseyJjb2xvdXIiOlsxODAsNjAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMCw3LCIiLDMseyJjb2xvdXIiOlsxODAsNjAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNywzLCIiLDMseyJjb2xvdXIiOlsxODAsNjAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbOCw3LCIiLDMseyJjb2xvdXIiOlsxODAsNjAsNjBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs0LDExLCIiLDIseyJsZXZlbCI6MiwiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCwxMiwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTQsMTMsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzksMTMsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxMywxMCwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzE1LDEsIiIsMyx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzE1LDUsIiIsMyx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzMsMTUsIiIsMix7ImxldmVsIjoyLCJjb2xvdXIiOlsxODAsNjAsNjBdLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzE2LDE0LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMTYsOSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMTcsMTYsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzE4LDE3LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxOSwxOCwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIxLDE5LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsyMCwxOSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV1d&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>

同样地, 同调群之间没有自然诱导的微分, 需借助滤过结构定义.
{% endex %}

谱序列的微分向 $↘$ 方向移动. 若谱序列在 $↘$ 向有限, 则收敛.

{% ex %}
(收敛性). 假定谱序列每项收敛, 此时 $E_∞$ 存在. 由 Zassenhaus 定理得
\begin{equation}
    E_∞^p = \frac{F^p ∩ {\color{red}{\ker d}} + F^{p+1}}{F^p ∩ {\color{blue}{\mathrm{im} \ d}} + F^{p+1}} ≃ \frac{ {\color{red}{\ker d}} ∩ F^p + {\color{blue}{\mathrm{im} \ d}}}{ {\color{red}{\ker d}} ∩ F^{p+1} + {\color{blue}{\mathrm{im} \ d}}}.
\end{equation}
依分次拆解之,  
\begin{equation}
    E_∞^{p,q} = \frac{ {\color{red}{\ker d}} ∩ F^p + {\color{blue}{\mathrm{im} \ d}}\qquad \text{之 $(p+q)$-分次}}{ {\color{red}{\ker d}} ∩ F^{p+1} + {\color{blue}{\mathrm{im} \ d}}\quad \ \text{之 $(p+q)$-分次}}.
\end{equation}
依照假定, 滤过终点是 $F^{-∞}A = A$, 且 $F^{+∞} A = A$.

依照 Noether 同构取 $H^{l := p+q}(A)$ 之子商如下:
\begin{equation}
    E_∞ ^{t, l-t} = \frac{ {\color{red}{\ker d}} ∩ F^t + {\color{blue}{\mathrm{im} \ d}} \ \text{之 $l$-分次} \ \ /\ \ \mathrm{im}(d)\ \text{之 $l$-分次}}{ {\color{red}{\ker d}} ∩ F^{t+1} + {\color{blue}{\mathrm{im} \ d}}\ \text{之 $l$-分次} \ \ /\ \ \mathrm{im}(d) \ \text{之 $l$-分次}}.
\end{equation}

因此, 存在 $H^l$ 的滤过 $[ \ \cdots ⊃ F^t H^l ⊃ \cdots \ ]$, 商去相邻子项得 $E_∞^{t,l-t}$.

{% endex %}

{% note %}
谱序列是逐项计算的. 双复形的局部有限性是指, 每一 $↖↘$ 斜向线上有且仅有有限项非零. 例如 $(p × ∞)$-型, $(∞ × q)$-型, 第一(三)象限型.
\\
若谱序列在 $↘↖$-方向无限, 则 $E_∙$ 未必收敛至同调群的滤过. [反例](Z_Infty_Spectral_Not_Converge).
{% endnote %}

### 双复形

{% def %}
双复形 $(A,d_↑, d_→)$ 是 $(ℤ × ℤ)$-微分分次对象. 满足

1. $d_→ : A^{p,q} → A^{p+1, q}, d_↑ : A^{p,q} → A^{p, q+1}$,
2. $d_↑ ∘ d_↑ = d_→ ∘ d_→ = 0, d_→ ∘ d_↑ + d_↑ ∘ d_→ = 0$.

{% enddef %}

有时规定 $I:= →$ 与 $II:= ↑$.

{% def %}
(全复形). 记 $\mathrm{Tot}(X)$ 是双复形 $X$ 的全复形,

1. $l$-分次为 $∐_{p+q = l} X^{p,q}$;
2. $l$-分次微分为 $∐_{p+q = l}(d^{p,q}_→ + d^{p,q}_↑)$.

{% enddef %}

{% note %}
依照谱序列的计算, 双复形的符号不重要. 全复形亦可选作 $∏$-复形.
{% endnote %}

{% ex %}
(双复形滤过). 考虑全复形 $\mathrm{Tot}(X)$ 的如下滤过
<center>
<!-- https://q.uiver.app/#q=WzAsMTIsWzEsMSwi4oiQX3tzK3QgPSBwK3F9XntzIFxcZ2VxIHF9IFhee3MsdH0iXSxbMCwwLCLiiJBfe3MrdCA9IHArcX1ee3MgXFxnZXEgcS0xfSBYXntzLHR9Il0sWzIsMiwi4oiQX3tzK3QgPSBwK3F9XntzIFxcZ2VxIHErMX0gWF57cyx0fSJdLFsxLDAsIuKIkF97cyt0ID0gcCtxKzF9XntzIFxcZ2VxIHF9IFhee3MsdH0iXSxbMSwyLCLiiJBfe3MrdCA9IHArcS0xfV57cyBcXGdlcSBxfSBYXntzLHR9Il0sWzIsMSwi4oiQX3tzK3QgPSBwK3ErMX1ee3MgXFxnZXEgcSsxfSBYXntzLHR9Il0sWzIsMCwi4oiQX3tzK3QgPSBwK3ErMn1ee3MgXFxnZXEgcSsxfSBYXntzLHR9Il0sWzAsMSwi4oiQX3tzK3QgPSBwK3EtMX1ee3MgXFxnZXEgcS0xfSBYXntzLHR9Il0sWzAsMiwi4oiQX3tzK3QgPSBwK3EtMn1ee3MgXFxnZXEgcS0xfSBYXntzLHR9Il0sWzEsMywiRl5xKFxcbWF0aHJte1RvdH0oWCkpIl0sWzAsMywiRl57cS0xfShcXG1hdGhybXtUb3R9KFgpKSJdLFsyLDMsIkZee3ErMX0oXFxtYXRocm17VG90fShYKSkiXSxbOCw3XSxbNywxXSxbNCwwXSxbMCwzXSxbMiw1XSxbNSw2XSxbMCwxLCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMCwiXFxzdWJzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDMsIlxcc3Vic2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw3LCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEwLDksIlxcc3Vwc2V0ZXEgIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzksMTEsIlxcc3Vwc2V0ZXEgIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTIsWzEsMSwi4oiQX3tzK3QgPSBwK3F9XntzIFxcZ2VxIHF9IFhee3MsdH0iXSxbMCwwLCLiiJBfe3MrdCA9IHArcX1ee3MgXFxnZXEgcS0xfSBYXntzLHR9Il0sWzIsMiwi4oiQX3tzK3QgPSBwK3F9XntzIFxcZ2VxIHErMX0gWF57cyx0fSJdLFsxLDAsIuKIkF97cyt0ID0gcCtxKzF9XntzIFxcZ2VxIHF9IFhee3MsdH0iXSxbMSwyLCLiiJBfe3MrdCA9IHArcS0xfV57cyBcXGdlcSBxfSBYXntzLHR9Il0sWzIsMSwi4oiQX3tzK3QgPSBwK3ErMX1ee3MgXFxnZXEgcSsxfSBYXntzLHR9Il0sWzIsMCwi4oiQX3tzK3QgPSBwK3ErMn1ee3MgXFxnZXEgcSsxfSBYXntzLHR9Il0sWzAsMSwi4oiQX3tzK3QgPSBwK3EtMX1ee3MgXFxnZXEgcS0xfSBYXntzLHR9Il0sWzAsMiwi4oiQX3tzK3QgPSBwK3EtMn1ee3MgXFxnZXEgcS0xfSBYXntzLHR9Il0sWzEsMywiRl5xKFxcbWF0aHJte1RvdH0oWCkpIl0sWzAsMywiRl57cS0xfShcXG1hdGhybXtUb3R9KFgpKSJdLFsyLDMsIkZee3ErMX0oXFxtYXRocm17VG90fShYKSkiXSxbOCw3XSxbNywxXSxbNCwwXSxbMCwzXSxbMiw1XSxbNSw2XSxbMCwxLCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMCwiXFxzdWJzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDMsIlxcc3Vic2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw3LCJcXHN1YnNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEwLDksIlxcc3Vwc2V0ZXEgIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzksMTEsIlxcc3Vwc2V0ZXEgIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d&embed" width="600" height="400" style="border-radius: 8px; border: dashed;"></iframe>
</center>
计算 $E_0$ 与 $E_1$, 结果如下:
<center>
<!-- https://q.uiver.app/#q=WzAsMjAsWzEsMSwiWF57cSxwfSJdLFswLDAsIlhee3EtMSwgcCsxfSJdLFsyLDIsIlhee3ErMSwgcC0xfSJdLFsxLDAsIlhee3EscCsxfSJdLFsxLDIsIlhee3EscC0xfSJdLFsyLDEsIlhee3ErMSwgcH0iXSxbMiwwLCJYXntxKzEsIHArMX0iXSxbMCwxLCJYXntxLTEsIHB9Il0sWzAsMiwiWF57cS0xLCBwLTF9Il0sWzAsMywiXFxib3hlZHtFXzB9Il0sWzMsMywiXFxib3hlZHtFXzF9Il0sWzMsMiwiSF9cXHVwYXJyb3cgXntxLTEscC0xfSJdLFszLDEsIkhfXFx1cGFycm93IF57cS0xLHB9Il0sWzMsMCwiSF9cXHVwYXJyb3cgXntxLTEscCsxfSJdLFs0LDIsIkhfXFx1cGFycm93IF57cSxwLTF9Il0sWzUsMiwiSF9cXHVwYXJyb3cgXntxKzEscC0xfSJdLFs1LDEsIkhfXFx1cGFycm93IF57cSsxLHB9Il0sWzUsMCwiSF9cXHVwYXJyb3cgXntxKzEscCsxfSJdLFs0LDEsIkhfXFx1cGFycm93IF57cSxwfSJdLFs0LDAsIkhfXFx1cGFycm93IF57cSxwKzF9Il0sWzgsNywiZF9cXHVwYXJyb3cgIl0sWzcsMSwiZF9cXHVwYXJyb3cgIl0sWzQsMCwiZF9cXHVwYXJyb3cgIl0sWzAsMywiZF9cXHVwYXJyb3cgIl0sWzIsNSwiZF9cXHVwYXJyb3cgIl0sWzUsNiwiZF9cXHVwYXJyb3cgIl0sWzEzLDE5LCI/Il0sWzE5LDE3LCI/Il0sWzEyLDE4LCI/Il0sWzE4LDE2LCI/Il0sWzExLDE0LCI/Il0sWzE0LDE1LCI/Il1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMjAsWzEsMSwiWF57cSxwfSJdLFswLDAsIlhee3EtMSwgcCsxfSJdLFsyLDIsIlhee3ErMSwgcC0xfSJdLFsxLDAsIlhee3EscCsxfSJdLFsxLDIsIlhee3EscC0xfSJdLFsyLDEsIlhee3ErMSwgcH0iXSxbMiwwLCJYXntxKzEsIHArMX0iXSxbMCwxLCJYXntxLTEsIHB9Il0sWzAsMiwiWF57cS0xLCBwLTF9Il0sWzAsMywiXFxib3hlZHtFXzB9Il0sWzMsMywiXFxib3hlZHtFXzF9Il0sWzMsMiwiSF9cXHVwYXJyb3cgXntxLTEscC0xfSJdLFszLDEsIkhfXFx1cGFycm93IF57cS0xLHB9Il0sWzMsMCwiSF9cXHVwYXJyb3cgXntxLTEscCsxfSJdLFs0LDIsIkhfXFx1cGFycm93IF57cSxwLTF9Il0sWzUsMiwiSF9cXHVwYXJyb3cgXntxKzEscC0xfSJdLFs1LDEsIkhfXFx1cGFycm93IF57cSsxLHB9Il0sWzUsMCwiSF9cXHVwYXJyb3cgXntxKzEscCsxfSJdLFs0LDEsIkhfXFx1cGFycm93IF57cSxwfSJdLFs0LDAsIkhfXFx1cGFycm93IF57cSxwKzF9Il0sWzgsNywiZF9cXHVwYXJyb3cgIl0sWzcsMSwiZF9cXHVwYXJyb3cgIl0sWzQsMCwiZF9cXHVwYXJyb3cgIl0sWzAsMywiZF9cXHVwYXJyb3cgIl0sWzIsNSwiZF9cXHVwYXJyb3cgIl0sWzUsNiwiZF9cXHVwYXJyb3cgIl0sWzEzLDE5LCI/Il0sWzE5LDE3LCI/Il0sWzEyLDE4LCI/Il0sWzE4LDE2LCI/Il0sWzExLDE0LCI/Il0sWzE0LDE1LCI/Il1d&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>
以上,

1. $E_0^{s,t}$ 各项由 $F^s(\mathrm{Tot}(X)^{s+t})$ 商去相邻子对象所得, 即 $X^{s,t}$.
2. $E_1$ 涉及一串 $H_↑^{s,t}(X) → H_↑^{s+1, t}$ 的微分, 我们希望是 $H_↑(d_→)$.

由追图法 (或蝾螈引理等), 问号处的满-单分解为
\begin{equation}
  \frac{d_\uparrow^{-1}(0^{s,t+1})}{d_\uparrow(X^{s,t-1})} ↠ \frac{d_\uparrow^{-1}(0^{s,t+1})}{d_\to ^{-1}(d_\uparrow(X^{s+1,t-1}))} ≃ \frac{d_\to (d_\uparrow^{-1}(0^{s,t+1}))}{d_\uparrow(X^{s+1,t-1})} ↪ \frac{d_\uparrow^{-1}(0^{s+1,t+1})}{d_\uparrow(X^{s+1,t-1})}.
\end{equation}
这就是上同调函子诱导的 $H_↑(d_→)$.

{% endex %}

{% ex %}
(关于纵向谱序列). 相应地, 取转置 $\mathrm{Tot}(X^T)$ 的滤过, $E_1$ 页的微分是 $H_→ (d_↑)$. 谱序列微分方向如下图所示
<center>
<!-- https://q.uiver.app/#q=WzAsMTAsWzAsMCwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbMCwyLCJcXGJveGVke1xcdGV4dHvnurV9fSJdLFszLDIsIlxcYm94ZWR7XFx0ZXh0e+aoqn19Il0sWzQsMiwiXFxidWxsZXQiXSxbNSwyLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbMywwLCJkXzA9ZF9cXHVwYXJyb3cgIl0sWzMsMSwiZF8xPSBIX1xcdXBhcnJvdyAoZF9cXHRvICkiXSxbMywyLCJkXzIiLDJdLFs2LDcsImRfMCA9IGRfXFx0byAiLDJdLFs2LDgsImRfMSA9IEhfXFx0byAoZF9cXHVwYXJyb3cgKSIsMl0sWzYsOSwiZF8yIl0sWzAsMSwiIiwxLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dLFsxLDIsIiIsMSx7ImNvbG91ciI6WzE4MCw2MCw2MF19XSxbNyw4LCIiLDEseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzgsOSwiIiwxLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTAsWzAsMCwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbMCwyLCJcXGJveGVke1xcdGV4dHvnurV9fSJdLFszLDIsIlxcYm94ZWR7XFx0ZXh0e+aoqn19Il0sWzQsMiwiXFxidWxsZXQiXSxbNSwyLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbMywwLCJkXzA9ZF9cXHVwYXJyb3cgIl0sWzMsMSwiZF8xPSBIX1xcdXBhcnJvdyAoZF9cXHRvICkiXSxbMywyLCJkXzIiLDJdLFs2LDcsImRfMCA9IGRfXFx0byAiLDJdLFs2LDgsImRfMSA9IEhfXFx0byAoZF9cXHVwYXJyb3cgKSIsMl0sWzYsOSwiZF8yIl0sWzAsMSwiIiwxLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dLFsxLDIsIiIsMSx7ImNvbG91ciI6WzE4MCw2MCw2MF19XSxbNyw4LCIiLDEseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzgsOSwiIiwxLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dXQ==&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endex %}

{% thm %}
(双复形能成为谱序列的 $E_2$-项). 给定交换或反交换的双复形 $X^{∙ , ∙ }$.

1. 存在收敛至全复形的谱序列, 满足
   1. $0$-页是 $X^{∙, ∙}$ 与 $d_↑$;
   2. $1$-页是 $H_↑^{∙ , ∙}(X)$ 与 $H_↑(d_→)$;
   3. $2$-页是 $H_→ (H_↑)$, 微分从略.
2. 存在收敛至全复形的谱序列, 满足
   1. $0$-页是 $X^{∙, ∙}$ 与 $d_→$;
   2. $1$-页是 $H_→^{∙ , ∙}(X)$ 与 $H_→(d_↑)$;
   3. $2$-页是 $H_↑ (H_→)$, 微分从略.

{% endthm %}

### 技巧: 从 $E_2$ 看出长正合列

该技巧来自同调代数基本定理的长正合列.

{% lem %}
([证明](E_2_Trick)). 假定 $E_3^{p,q} = E_∞^{p,q}$, 且同调群确定. 若 $E_2^{p,q}$ 形如以下
<center>
<!-- https://q.uiver.app/#q=WzAsMTEsWzEsMCwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFs1LDEsIlxcYnVsbGV0Il0sWzQsMCwiXFxidWxsZXQiXSxbNiwxLCJcXGJ1bGxldCJdLFswLDAsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMCwxLCJcXGJveGVke0VfMl57XFxidWxsZXQsXFxidWxsZXR9fSJdLFswLDFdLFsyLDNdLFs0LDVdLFs2LDddLFs4LDldXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTEsWzEsMCwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFs1LDEsIlxcYnVsbGV0Il0sWzQsMCwiXFxidWxsZXQiXSxbNiwxLCJcXGJ1bGxldCJdLFswLDAsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMCwxLCJcXGJveGVke0VfMl57XFxidWxsZXQsXFxidWxsZXR9fSJdLFswLDFdLFsyLDNdLFs0LDVdLFs2LDddLFs4LDldXQ==&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
</center>
此时有长正合列
<center>
<!-- https://q.uiver.app/#q=WzAsMTEsWzEsMCwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFs1LDEsIlxcYnVsbGV0Il0sWzQsMCwiXFxidWxsZXQiXSxbNiwxLCJcXGJ1bGxldCJdLFswLDAsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMCwxLCJcXGJveGVke0VfMl57XFxidWxsZXQsXFxidWxsZXR9fSJdLFswLDFdLFsyLDNdLFs0LDVdLFs2LDddLFs4LDldLFs5LDAsIkgiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMSwyLCJIIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsNCwiSCIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs1LDYsIkgiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTEsWzEsMCwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFs1LDEsIlxcYnVsbGV0Il0sWzQsMCwiXFxidWxsZXQiXSxbNiwxLCJcXGJ1bGxldCJdLFswLDAsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMCwxLCJcXGJveGVke0VfMl57XFxidWxsZXQsXFxidWxsZXR9fSJdLFswLDFdLFsyLDNdLFs0LDVdLFs2LDddLFs4LDldLFs5LDAsIkgiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMSwyLCJIIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsNCwiSCIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs1LDYsIkgiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0=&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endlem %}

{% note %}
这一技巧对 $↘↖$ 向仅两项非零的 $E_2$-谱序列成立. 类似技巧域证明不予赘述.
{% endnote %}

{% lem %}
(重要应用: 前五项正合列, [证明](First_Five_Terms)). 若 $E_2$ 落在第一象限, 则有五项 (左) 短正合列
\begin{equation}
\color{cyan}0 → \color{red}E_2^{1,0} → \color{red}H^1 → \color{red}E_2^{0,1} → \color{Green}E_2^{2,0} → \color{Green}H^2.
\end{equation}
对第三象限谱序列, 有五项 (右) 短正合列. 证明类似.
{% endlem %}

### 技巧: Eilenburg-Cartan 消解

假定 Abel 范畴有足够投射对象 (内射对象).

{% ex %}
(通常的 Eilenburg-Cartan 分解). 复形 $(X^∙, d^∙)$ 的 Eilenburg-Cartan (余) 分解是指以下 (余) 消解.

1. 对所有 $\color{red}\mathrm{im}$ 与 $\color{red}H^n$ 取投射分解 (内射分解);
2. 依照马蹄引理, 对所有 $\color{blue}\ker$ 与 $\color{blue}\operatorname {cok}$ 取投射分解 (内射分解);
3. 依照马蹄引理, 对所有 $X$ 取投射分解 (内射分解), 这一步可以从
   1. $0 → {\color{blue}\ker } → X → {\color{red}\operatorname {im}} → 0$, 或
   2. $0 → {\color{red}\operatorname {im}} → X → {\color{blue}\operatorname {cok}} → 0$
   构造. 其结果都是

   $$
   P^k (X^l) = P^k (\operatorname{im}d^l) ⊕ P^k (H^l) ⊕ P^k (\operatorname{im}d^{l-1}).
   $$

图示如下:
<center>
<!-- https://q.uiver.app/#q=WzAsOSxbNCwwLCJcXGNvbG9ye3JlZH1cXG9wZXJhdG9ybmFtZSB7aW19Il0sWzMsMSwiXFxjb2xvcntibHVlfVxcb3BlcmF0b3JuYW1lIHtjb2t9Il0sWzIsMiwiXFxjb2xvcntyZWR9SCJdLFs1LDEsIlxcY29sb3J7Ymx1ZX1cXG9wZXJhdG9ybmFtZSB7a2VyfSJdLFs2LDIsIlxcY29sb3J7cmVkfUgiXSxbMiwwLCJYIl0sWzYsMCwiWCJdLFsxLDEsIlxcY29sb3J7Ymx1ZX1cXGtlciAiXSxbMCwwLCJcXGNvbG9ye3JlZH1cXG9wZXJhdG9ybmFtZSB7aW19Il0sWzUsMCwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzUsMSwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzEsMCwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsNCwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsMSwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMCwzLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFszLDYsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzAsNiwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNyw1LCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs3LDIsIiIsMSx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs4LDUsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn0sImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs4LDcsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsOSxbNCwwLCJcXGNvbG9ye3JlZH1cXG9wZXJhdG9ybmFtZSB7aW19Il0sWzMsMSwiXFxjb2xvcntibHVlfVxcb3BlcmF0b3JuYW1lIHtjb2t9Il0sWzIsMiwiXFxjb2xvcntyZWR9SCJdLFs1LDEsIlxcY29sb3J7Ymx1ZX1cXG9wZXJhdG9ybmFtZSB7a2VyfSJdLFs2LDIsIlxcY29sb3J7cmVkfUgiXSxbMiwwLCJYIl0sWzYsMCwiWCJdLFsxLDEsIlxcY29sb3J7Ymx1ZX1cXGtlciAiXSxbMCwwLCJcXGNvbG9ye3JlZH1cXG9wZXJhdG9ybmFtZSB7aW19Il0sWzUsMCwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzUsMSwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzEsMCwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsNCwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsMSwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMCwzLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFszLDYsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzAsNiwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNyw1LCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs3LDIsIiIsMSx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs4LDUsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn0sImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs4LDcsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV1d&embed" width="600" height="250" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endex %}

EC 分解来自马蹄引理, 由[相对版本的马蹄引理](Horse_Shoe_Lemma), 得以下相对版本的 EC 分解.

{% thm %}
(相对版本的 EC 分解). 给定对象类 $𝒳$.

1. 称存在足够 $𝒳$ 出发的满态射, 若对任意 $M ∈ 𝒜$, 总存在 $X ∈ 𝒳$ 使得有满态射 $X ↠ M$;
2. 称存在足够 $𝒳$ 收尾的单态射, 若对任意 $N ∈ 𝒜$, 总存在 $X ∈ 𝒳$ 使得有单态射 $N ↪ X$.

此时, 对以上两种情形, 分别有

1. 任意复形存在可裂 $𝒳$-复形的相对投射分解;
2. 任意复形存在可裂 $𝒳$-复形的相对内射分解.
{% endthm %}

{% cor %}
(推论, [证明](Proj_Epi_Complex)). 上有界投射复形存在上有界的投射分解. 若有足够 $𝒳$ 出发的满态射, 则上有界投射复形存在上有界 $𝒳$-复形相对投射分解. 相对内射的情形对偶.
{% endcor %}

## 谱序列直接应用

### 同调代数的简单应用

{% thm %}
(同调代数基本定理, [证明](Fundamental_Thm_Homological_Algebra)). 以下是三种常见形式.

1. (通常形式). 给定上链复形 (dg-模) 的正合列 $0 → K → X → Q → 0$, 此时有长正合列
   \begin{equation}
     \cdots → H^{p-1} (Q) → H^p (K) → H^p (X) → H^p (Q) → H^{p+1} (K) → \cdots.
   \end{equation}
2. (同伦形式). 给定复形态射 $f : X → Y$, 取全复形 $E : = \mathrm{Cone}(f)$, 此时有长正合列
   \begin{equation}
       \cdots → H^{p-1} (Y) → H^p (X) → H^p (E) → H^p (Y) → H^{p+1} (X) → \cdots.
   \end{equation}
3. (正合复形的态射). 给定正合复形间的态射 $f : X → Y$, 则 $H^{p+1}(\ker) ≃ H^{p-1}(\mathrm{cok})$. 这是强形式的蛇引理.
{% endthm %}

{% prop %}
(蛇引理). 这是正合复形间态射的推论. 特别地, 有以下变式.

1. [$2 × 2$ 交换方块](Four_Lemma), 以及推出拉回等.
2. [五项引理](Five_Lemma), 以及单四引理, 满四引理等.
3. [ker-cok 六项序列](Six_Lemma), 以及指标公式等.
4. [$3 × 3$ 引理](Nine_Lemma), 以及强 $3 × 3$ 引理等.
{% endprop %}

### 维数移动

以下考虑投射, 右正合版本的维度移动.

<!-- 假定 Abel 范畴 $𝒜$ 有足够投射, 或相对地, 存在对象类 $𝒳$ 使得对任意 $M ∈ 𝒜$ 总有满态射 $X ↠ M$ ($X ∈ 𝒳$). -->

{% lem %}
任取无环复形 $X$, 使得投射分解满足收敛性条件. 例如以下任意一者:

1. 所有 $\mathrm{im}(d)$ 的投射维度有一致上界;
2. $X$ 上有界.

此时, 任取右正合函子 $F$, 记 $L_{-p}F$ 为 $F$ 的 $p$-次左导出. 此时,

1. 若所有 $(L_{≤ -1}F)(X)$ 是无环复形, 则 $F(X)$ 无环;
2. 若仅有 $(L_{-k}F)(X)$ 与 $(L_{-k-r}F)(X)$ 非无环复形, 则 $(L_{-k}F)(X)$ 与 $Σ^{r+1}[(L_{-k-r}F)(X)]$ 有相同的上同调群 (未必由态射连接).
{% endlem %}

{% thm %}
(一致的正合性). 以下是一些常见的结论:

1. 假定 $X^∙$ 是上有界无环复形, 或是 $\mathrm{im}(d)$ 投射维数一致有界的无环复形. 若所有 $\mathrm{Ext}^{≥ 1}(X^∙, M)$ 无环, 则 $(X^∙, M)$ 无环.
2. 假定 $X^∙$ 是下有界无环复形, 或是 $\mathrm{im}(d)$ 内射维数一致有界的无环复形. 若所有 $\mathrm{Ext}^{≥ 1}(N, X^∙)$ 无环, 则 $(N, X^∙)$ 无环.
3. 假定 $X^∙$ 是上有界无环复形, 或是 $\mathrm{im}(d)$ 平坦维数一致有界的无环复形. 若所有 $\mathrm{Tor}_{ ≥ 1}(X^∙, M)$ 无环, 则 $X^∙ ⊗ M$ 无环.
{% endthm %}

### AR 转置与谱序列

以下所有对象均是 Artin 代数中的有限表面模, 基本记号等见[此处](AR-notes#稳定范畴等价). 本小结证明[此处](AR-notes#ar-定理)的同调定理.

{% lem %}
(缺陷公式, [证明](AR_Defect)). 给定 ses
\begin{equation}
    θ : 0 → K → X → Y → 0.
\end{equation}
则有长正合列

$$
\begin{aligned}
  0 →  (-, K) &→ (-, X) → (-, Y)  →  \\[6pt]
  &→ K ⊗ \mathrm{Tr}(-) → X ⊗ \mathrm{Tr}(-) →  Y ⊗ \mathrm{Tr}(-) → 0.
\end{aligned}
$$

{% endlem %}

{% note %}
回顾缺陷公式的[证明](AR_Defect), 可使用投射分解与 AR 转置快速计算一次导出函子.
{% endnote %}

{% lem %}
($\mathrm{Tor}_{1,2}(Y, \mathrm{Tr}(X))$, 稳定 $\mathrm{Hom}$, [证明](AR_Tor)).
存在函子的四项正合列

$$
0 → \mathrm{Tor}_2(Y, \mathrm{Tr}(X)) → Y ⊗ X^∗ → (X, Y) → \mathrm{Tor}_1(Y, \mathrm{Tr}(X)) → 0
$$

此处, $\mathrm{Tor}_1(Y, \mathrm{Tr}(X)) ≃ \underline {(X,Y)}$.
{% endlem %}

{% lem %}
($\mathrm{Tor}_{≥ 3}(Y, \mathrm{Tr}(X))$, [证明](AR_Tor)).
$\mathrm{Tor}_{n+3}(Y, \mathrm{Tr}(X)) ≃ \mathrm{Tor}_{n+1}(Y, X^∗)$.
{% endlem %}

以下两条对偶命题证明略.

{% lem %}
($\mathrm{Ext}^{1,2}(\mathrm{Tr}(M), N)$, AB 公式).
存在函子的四项正合列

$$
0 → \mathrm{Ext}^1(\mathrm{Tr}(M), N) → N ⊗ M → (M^∗, N) → \mathrm{Ext}^2(\mathrm{Tr}(M), N) → 0
$$
{% endlem %}

{% lem %}
($\mathrm{Ext}^{≥ 3}(\mathrm{Tr}(M), N)$).
$\mathrm{Ext}^{n + 3}(\mathrm{Tr}(M), N) ≃ \mathrm{Ext}^{n}(M^∗, N)$.
{% endlem %}

{% note %}
[Torsionless 模](Torsion_Less)的等价定义使用了上述 AB (Auslander-Bridger) 公式.
{% endnote %}

### Kunneth 公式

称上链复形 $X$

1. 是正 (负) 的, 若其支撑在 $ℕ_+$ ($ℕ _-$) 上;
2. 是 $𝒳$-的, 若 $X$ 在对象类 $𝒳$ 中取值.

{% thm %}
(Kunneth 谱序列定理, [证明](Kunneth_Spectral_Seq)).
记 $A$ 与 $C$ 均是负复形, 一者平坦, 则有

$$
E^{p,q}_2 = ∐\limits_{s + t = q} \mathrm{Tor}_p (H^s(A), H^t(C)) ⇒ H^{p+q} (\mathrm{Tot}(A⊗C)).
$$

记 $A$ 是负复形, $C$ 是正复形, 假定 $A$ 投射或 $C$ 内射, 则存在第一象限谱序列

$$
E_2 ^{p,q} = ∐\limits_{s + t = q} \mathrm{Ext}^p (H^{-s}(A), H^{t}(C)) ⇒ H^{p+q} (ℋ(A,C)).
$$

{% endthm %}

关于 $\mathrm{Tor}_{≥ 2}$ 消失的特殊结论, 亦见[证明](Kunneth_Spectral_Seq).

{% note %}
Kunneth 谱序列, 本质上是复合函子的谱序列.
{% endnote %}

## 导出函子相关

### Grothendieck 谱序列

{% def %}
(Grothendieck 函子的基本资料). 给定 Abel 范畴间的右正合函子
\begin{equation}
  𝒜\xrightarrow F ℬ \xrightarrow G 𝒞.
\end{equation}
称 $(F, G)$ 是右正合 Grothendieck 谱序列的基本资料, 若

1. 范畴有足够投射对象;
2. 对任意 $P ∈ 𝒫_A$, 对象 $F(P) ∈ ℬ$ 关于 $L_{≤ -1}G$ 消失.

类似地, 可以规定左正合 Grothendieck 谱序列的基本资料.
{% enddef %}

为与上链复形配合, 对固定的 $n ∈ ℕ_{≥ 0}$, 以下选用 $L_{-n}F$ 表示 $F$ 的 $n$ 次左导出; 选用 $R^{n}F$ 表示 $F$ 的 $n$ 次右导出. 简单地说,

1. 将右导出写至上标, 例如 $R^{≥ 0} F$.
2. 将左导出写至下标, 例如 $L_{≤ 0} G$.

{% thm %}
(Grothendieck 谱序列定理, [证明](Grothendieck_Spectral_Sequence)). 给定右正合的 Grothendieck 谱序列资料, 则存在第三象限的谱序列 $E$, 使得

\begin{equation}
  E_2^{p,q} = L_{-p}G (L_{-q} F(X)) ⇒ (L_{-(p+q)} (G ∘ F)) (X).
\end{equation}

相应地, 对于左正合 Grothendieck 谱序列, 存在第一象限的谱序列
\begin{equation}
  E_2^{p,q} = (R^p G) ∘ (R^q F) ⇒ R^{p+q} (G ∘ F).
\end{equation}
{% endthm %}

{% cor %}
(前五项, [证明](Grothendieck_Spectral_Sequence#前五项)). 对左导出的复合, 有前五项正合列
\begin{equation}
   L_{-2}(GF) → (L_{-2}G)F → G(L_{-1}F) → L_{-1}(GF) → (L_{-1}G)F → 0.
\end{equation}
对右导出的复合, 有前五项正合列
\begin{equation}
   0 → (R^1G)F → R^1(GF) → (R^1F)G → (R^2 G)F → R^2(GF).
\end{equation}
{% endcor %}

{% cor %}
(特殊情形: 短正合列, [证明](Grothendieck_Spectral_Sequence#特殊情形)). 若复合函子的外侧二次导出消失, 则前五项正合列可延续.
{% endcor %}

{% cor %}
(特殊情形: 长正合列, [证明](Grothendieck_Spectral_Sequence#特殊情形)). 若复合函子的内侧二次导出消失, 则谱序列断作若干 ses.
{% endcor %}

{% ex %}
[前五项态射描述](Grothendieck_Spectral_Sequence#前五项态射的描述).
{% endex %}

### 导出极限

假定 $𝒜$ 是满足 AB4* 的局部小范畴. $\varprojlim_ℕ$ 是二次导出消失的函子, 适用 [Gorthendieck 谱序列的特殊情形](Grothendieck_Spectral_Sequence#特殊情形).

{% def %}
(塔与极限) 称函子 $Y: ℕ^{\mathrm{op}} → 𝒜$ 是塔, 若 $Y$ 映至
\begin{equation}
  \cdots → Y_2 → Y_1 → Y_0.
\end{equation}
依照[熟知结论](Projlim_1_Vanish), 自同态 $φ : (\mathrm{id} - ∑ Y_{(i+1) → i})$ 给出函子的短正合列

$$
0 → \varprojlim Y → ∏_{ℕ} Y_∙ \xrightarrow φ  ∏_{ℕ} Y_∙ → \varprojlim{} ^1 Y → 0.
$$

{% enddef %}

{% thm %}
假定范畴有正合的可数积 (AB4*), 则 $\varprojlim{}^1$ 就是经典导出函子, 且 $\varprojlim^{≥ 2} = 0$.
{% endthm %}

{% prop %}
($\varprojlim{}_ℕ^1$ 消失的充分条件, [证明](Projlim_1_Vanish)). 假定 $𝒜$ 是满足 AB4* 的局部小范畴. 假定范畴存在投射生成元, 则 Mittag-Leffler 条件使得 $\varprojlim ^1 = 0$.
{% endprop %}

{% ex %}
(导出极限). 假定 $𝒜$ 是满足 AB4* 的局部小范畴. 取塔 $Y : ℕ^{\mathrm{op}}→ 𝒜$, 则极限的二次导出消失. 取函子
<center>
<!-- https://q.uiver.app/#q=WzAsNCxbMCwxLCJcXG1hdGhzY3IgQSJdLFsyLDEsIlxcbWF0aGJme0FifSJdLFswLDAsIlxcbWF0aHNjcntBfV57XFxtYXRoYmIgTl57XFxtYXRocm17b3B9fX0iXSxbMiwwLCJcXG1hdGhiZntBYn1ee1xcbWF0aGJiIE5ee1xcbWF0aHJte29wfX19Il0sWzIsMywiRjo9IChYLC0pIl0sWzIsMCwiRzo9XFx2YXJwcm9qbGltICIsMl0sWzAsMSwiRjo9IChYLC0pIiwyXSxbMywxLCJHOj1cXHZhcnByb2psaW0gIl1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNCxbMCwxLCJcXG1hdGhzY3IgQSJdLFsyLDEsIlxcbWF0aGJme0FifSJdLFswLDAsIlxcbWF0aHNjcntBfV57XFxtYXRoYmIgTl57XFxtYXRocm17b3B9fX0iXSxbMiwwLCJcXG1hdGhiZntBYn1ee1xcbWF0aGJiIE5ee1xcbWF0aHJte29wfX19Il0sWzIsMywiRjo9IChYLC0pIl0sWzIsMCwiRzo9XFx2YXJwcm9qbGltICIsMl0sWzAsMSwiRjo9IChYLC0pIiwyXSxbMywxLCJHOj1cXHZhcnByb2psaW0gIl1d&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
</center>
此处 $GF \xrightarrow ∼ FG$ 是自然同构 (极限的泛性质). 同时有正合列
<center>
<!-- https://q.uiver.app/#q=WzAsMTIsWzEsMSwiRl4xRyJdLFsyLDEsIihGRyleMSJdLFsyLDAsIkdeMUYiXSxbMiwyLCJHRl4xIl0sWzMsMSwiRkdeMSJdLFs0LDEsIkZeMkciXSxbNSwxLCIoRkcpXjIiXSxbNiwxLCJGXjFHXjEiXSxbNSwwLCJHXjFGXjEiXSxbNSwyLCJHRl4yIl0sWzAsMSwiMCJdLFs3LDEsIlxcY2RvdHMgIl0sWzEwLDBdLFswLDFdLFsxLDRdLFs0LDVdLFs1LDZdLFs2LDddLFsyLDEsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzEsMywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzgsNiwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNiw5LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNywxMV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTIsWzEsMSwiRl4xRyJdLFsyLDEsIihGRyleMSJdLFsyLDAsIkdeMUYiXSxbMiwyLCJHRl4xIl0sWzMsMSwiRkdeMSJdLFs0LDEsIkZeMkciXSxbNSwxLCIoRkcpXjIiXSxbNiwxLCJGXjFHXjEiXSxbNSwwLCJHXjFGXjEiXSxbNSwyLCJHRl4yIl0sWzAsMSwiMCJdLFs3LDEsIlxcY2RvdHMgIl0sWzEwLDBdLFswLDFdLFsxLDRdLFs0LDVdLFs1LDZdLFs2LDddLFsyLDEsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzEsMywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzgsNiwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNiw5LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNywxMV1d&embed" width="600" height="250" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endex %}

{% ex %}
($\mathrm{Hom}(X, -)$ 与导出极限). 假定 $Y$ 是逆向极限决定的, 谱序列给纵向 ses 与横向长正合列:
<center>
<!-- https://q.uiver.app/#q=WzAsMTAsWzAsMSwiXFxtYXRocm17RXh0fV4xKFgsIFxcdmFycHJvamxpbSBZX1xcYnVsbGV0ICkiXSxbMSwxLCIoRkcpXjEiXSxbMSwyLCJcXHZhcnByb2psaW1eMSAoWCwgWV9cXGJ1bGxldCkiXSxbMSwwLCJcXHZhcnByb2psaW1cXG1hdGhybXtFeHR9XjEoWCwgWV9cXGJ1bGxldCApIl0sWzIsMSwiKFgsIFxcdmFycHJvamxpbV4xWV9cXGJ1bGxldCkiXSxbMywxLCJcXG1hdGhybXtFeHR9XjIoWCwgXFx2YXJwcm9qbGltIFlfXFxidWxsZXQgKSJdLFs0LDEsIihGRyleMiJdLFs1LDEsIlxcbWF0aHJte0V4dH1eMShYLCBcXHZhcnByb2psaW1eMVlfXFxidWxsZXQgKSJdLFs0LDIsIlxcdmFycHJvamxpbV4xXFxtYXRocm17RXh0fV4xKFgsIFlfXFxidWxsZXQgKSJdLFs0LDAsIlxcdmFycHJvamxpbVxcbWF0aHJte0V4dH1eMihYLCBZX1xcYnVsbGV0ICkiXSxbMSw0XSxbNCw1XSxbNSw2XSxbNiw3XSxbMiwxLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxLDMsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs4LDYsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzYsOSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzAsMSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTAsWzAsMSwiXFxtYXRocm17RXh0fV4xKFgsIFxcdmFycHJvamxpbSBZX1xcYnVsbGV0ICkiXSxbMSwxLCIoRkcpXjEiXSxbMSwyLCJcXHZhcnByb2psaW1eMSAoWCwgWV9cXGJ1bGxldCkiXSxbMSwwLCJcXHZhcnByb2psaW1cXG1hdGhybXtFeHR9XjEoWCwgWV9cXGJ1bGxldCApIl0sWzIsMSwiKFgsIFxcdmFycHJvamxpbV4xWV9cXGJ1bGxldCkiXSxbMywxLCJcXG1hdGhybXtFeHR9XjIoWCwgXFx2YXJwcm9qbGltIFlfXFxidWxsZXQgKSJdLFs0LDEsIihGRyleMiJdLFs1LDEsIlxcbWF0aHJte0V4dH1eMShYLCBcXHZhcnByb2psaW1eMVlfXFxidWxsZXQgKSJdLFs0LDIsIlxcdmFycHJvamxpbV4xXFxtYXRocm17RXh0fV4xKFgsIFlfXFxidWxsZXQgKSJdLFs0LDAsIlxcdmFycHJvamxpbVxcbWF0aHJte0V4dH1eMihYLCBZX1xcYnVsbGV0ICkiXSxbMSw0XSxbNCw1XSxbNSw2XSxbNiw3XSxbMiwxLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxLDMsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs4LDYsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzYsOSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzAsMSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XV0=&embed" width="600" height="180" style="border-radius: 8px; border: dashed;"></iframe>
</center>
例如,

1. 假定 $M$ 是投射模的逆向极限, 则有 $3$-周期长正合列
   \begin{equation}
       0 → \mathrm{Ext}^1(X,M) → \varprojlim{}^1 (X,P_∙) → (X, \varprojlim {}^1P_∙) → \cdots .
   \end{equation}
2. 若 $Y_∙$ 是模且满足 Mittag-Leffler 条件, 则有短正合列
   \begin{equation}
       0 → \varprojlim {}^1\mathrm{Ext}^p(X, Y_∙ ) → \mathrm{Ext}^p(X, \varprojlim {}^1 Y_∙ ) → \varprojlim \mathrm{Ext}^{p+1}(X, Y_∙) → 0.
   \end{equation}
3. 对遗传范畴而言, $\varprojlim{}^1\mathrm{Ext}^1(X, Y_∙ ) ≃ \mathrm{Ext}^1(X, \varprojlim{}^1Y_∙)$.
{% endex %}

{% ex %}
(导出余极限). 记 $𝒜$ 是满足 AB4 (任意余积正合) 的局部小范畴, 则 $𝒜^{\mathrm{op}}$ 是满足 AB4* 的局部小范畴. 考虑函子
<center>
<!-- https://q.uiver.app/#q=WzAsNCxbMCwxLCJcXG1hdGhzY3IgQV57XFxtYXRocm17b3B9fSJdLFsyLDEsIlxcbWF0aGJme0FifSJdLFswLDAsIihcXG1hdGhzY3IgQV57XFxtYXRocm17b3B9fSlee3tcXG1hdGhiYiBOXntcXG1hdGhybXtvcH19fX0iXSxbMiwwLCJcXG1hdGhiZntBYn1ee1xcbWF0aGJiIE5ee1xcbWF0aHJte29wfX19Il0sWzAsMSwiRjo9KC0sWSkiLDJdLFsyLDMsIkY6PSgtLCBZKSJdLFszLDEsIkc6PVxcdmFycHJvamxpbSAiXSxbMiwwLCJHOj1cXHZhcnByb2psaW0gIiwyXV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNCxbMCwxLCJcXG1hdGhzY3IgQV57XFxtYXRocm17b3B9fSJdLFsyLDEsIlxcbWF0aGJme0FifSJdLFswLDAsIihcXG1hdGhzY3IgQV57XFxtYXRocm17b3B9fSlee3tcXG1hdGhiYiBOXntcXG1hdGhybXtvcH19fX0iXSxbMiwwLCJcXG1hdGhiZntBYn1ee1xcbWF0aGJiIE5ee1xcbWF0aHJte29wfX19Il0sWzAsMSwiRjo9KC0sWSkiLDJdLFsyLDMsIkY6PSgtLCBZKSJdLFszLDEsIkc6PVxcdmFycHJvamxpbSAiXSxbMiwwLCJHOj1cXHZhcnByb2psaW0gIiwyXV0=&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endex %}

正逆极限在一般的 Abel 范畴中是无趣的对偶. 不妨回归模范畴, 注

* 若塔 $A_∙ → A_0$ 满足 Mittag-Leffler 条件, 则有短正合列
  \begin{equation}
      0 → \varprojlim A_∙ → ∏ A_∙ \xrightarrow{\mathrm{id}-A_{i, i+1}} ∏ A_∙ → 0.
  \end{equation}
  
  对偶地, 我们希望构造 $[0 → ∐ → ∐ → \varinjlim → 0]$ 类的短正合列.

{% slo %}
模范畴中, Mittag-Leffler 条件的对偶是 AB5.
{% endslo %}

{% prop %}
([证明](AB5_Derived_Limit)). 若 $𝒜$ 满足 AB5 (滤过余极限正合), 则对余塔 $A_0 → A_∙$ 总有短正合列
\begin{equation}
    0 → ∐ A_∙ \xrightarrow{\mathrm{id}-A_{i+1, i}} ∐ A_∙ → \varinjlim A_∙ → 0.
\end{equation}
{% endprop %}

{% prop %}
([证明](Injlim_Ext_Seq)). 若 $𝒜$ 有正合的滤过余极限, 则逆向塔的 $\varinjlim_{-1}$ 消失. 若进一步假定余积正合, 则有短正合列 ($p ≥ 0$):
\begin{equation}
    0 → \varprojlim {}^1\mathrm{Ext}^p(X_∙, Y) → \mathrm{Ext}^{p+1}(\varinjlim X_∙,Y) → \varprojlim \mathrm{Ext}^{p+1}(X_∙, Y) → 0.
\end{equation}
{% endprop %}

### Brenner-Butler 理论

见[此章节](Happel_Derived_Equivalence#谱序列方法).
