---
title: 上有界复形存在上有界投射分解
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
假定 $𝒜$ 是有足够投射的 Abel 范畴, $X$ 是负的复形 ($X^{≥ 0 } = X$). 若有足够 $𝒳$ 出发的满态射, 则存在 $𝒳$-复形 $P$ 使得 $P ↠ X$ 是满的拟同构.
{% endthm %}

{% pf %}
(由谱序列). 取 [EC 分解](Spectral_sequence_filtered#技巧-eilenburg-cartan-消解) $P^{∙ , ∙ } ⇗ X$, 下证明 $\mathrm{Tot}(P) → X$ 是拟同构.
\\
由 $P^{∙, ∙}$ 是第三象限双复形, 谱序列收敛至双复形同调的滤过. 先计算纵向微分, 则 $E_1$ 是 $X$, 从而 $P$ 与 $X$ 收敛至相同的上同调群.
{% endpf %}

以上是基于谱序列的做法. 直接的构造是推出拉回.

### 直接的证明: 推出拉回

{% thm %}
假定 $𝒜$ 是有足够投射的 Abel 范畴, $X$ 是负的复形 ($X^{≥ 0 } = X$). 若有足够 $𝒳$ 出发的满态射, 则存在 $𝒳$-复形 $P$ 使得 $P ↠ X$ 是满的拟同构.
{% endthm %}

{% pf %}
(由推出拉回). 取出负复形 $X$, 采用下图归纳之 ($P^i ∈ 𝒳$):
<center>
<!-- https://q.uiver.app/#q=WzAsMTQsWzYsMSwiUV4wIl0sWzUsMCwiUF4wIl0sWzUsMiwiWF57LTF9Il0sWzQsMSwiUV57LTF9Il0sWzMsMiwiWF57LTJ9Il0sWzMsMCwiUF57LTF9Il0sWzcsMiwiWF4wIl0sWzIsMSwiUV57LTJ9Il0sWzEsMiwiWF57LTN9Il0sWzEsMCwiUF57LTJ9Il0sWzAsMiwiXFxjZG90cyAiXSxbMCwwLCJcXGNkb3RzICJdLFs1LDEsIlxcdGV4dHvilqZ9Il0sWzMsMSwiXFx0ZXh0e+KWpn0iXSxbMSwwLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMywxXSxbMywyLCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNCwyLCJkX1heey0yfSIsMl0sWzQsMSwiIiwwLHsiY3VydmUiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwzXSxbNSwzLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMCw2LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDYsImRfWF57LTF9IiwyXSxbMiwwXSxbNyw1XSxbNyw0XSxbOCw0LCJkX1heey0zfSIsMl0sWzgsN10sWzgsNSwiIiwwLHsiY3VydmUiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOSw3LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMTAsOF0sWzUsMV0sWzksNV0sWzExLDldXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTQsWzYsMSwiUV4wIl0sWzUsMCwiUF4wIl0sWzUsMiwiWF57LTF9Il0sWzQsMSwiUV57LTF9Il0sWzMsMiwiWF57LTJ9Il0sWzMsMCwiUF57LTF9Il0sWzcsMiwiWF4wIl0sWzIsMSwiUV57LTJ9Il0sWzEsMiwiWF57LTN9Il0sWzEsMCwiUF57LTJ9Il0sWzAsMiwiXFxjZG90cyAiXSxbMCwwLCJcXGNkb3RzICJdLFs1LDEsIlxcdGV4dHvilqZ9Il0sWzMsMSwiXFx0ZXh0e+KWpn0iXSxbMSwwLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMywxXSxbMywyLCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNCwyLCJkX1heey0yfSIsMl0sWzQsMSwiIiwwLHsiY3VydmUiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwzXSxbNSwzLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMCw2LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDYsImRfWF57LTF9IiwyXSxbMiwwXSxbNyw1XSxbNyw0XSxbOCw0LCJkX1heey0zfSIsMl0sWzgsN10sWzgsNSwiIiwwLHsiY3VydmUiOi0zLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOSw3LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMTAsOF0sWzUsMV0sWzksNV0sWzExLDldXQ==&embed" width="600" height="250" style="border-radius: 8px; border: dashed;"></iframe>
</center>

以上 $Q^{-k}$ 是拉回给出的, 虚线处 (零态射) 诱导了 $X^{-k-1}→ Q^{-k}$, 满态射 $P^{-k} ↠ Q^{-k}$ 是任意选取的. 由于 Abel 范畴中满态射的拉回方块亦是推出, 一切 $▦$ 是推出拉回.
\\
\\
去除一切不必要之指标, 将以上交换图精简作下图:
<center>
<!-- https://q.uiver.app/#q=WzAsOCxbNCwwLCJQIl0sWzQsMiwiWCJdLFszLDEsIlEiXSxbMiwyLCJYIl0sWzIsMCwiUCJdLFsxLDEsIlEiXSxbMCwyLCJYIl0sWzAsMCwiUCJdLFsyLDAsImEiXSxbMiwxLCJjIiwyXSxbMywyLCJkIiwyXSxbNCwyLCJiIl0sWzUsNCwiYSJdLFs1LDMsImMiLDJdLFs2LDUsImQiLDJdLFs3LDUsImIiXSxbNyw0XSxbNCwwXSxbNiwzXSxbMywxXV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsOCxbNCwwLCJQIl0sWzQsMiwiWCJdLFszLDEsIlEiXSxbMiwyLCJYIl0sWzIsMCwiUCJdLFsxLDEsIlEiXSxbMCwyLCJYIl0sWzAsMCwiUCJdLFsyLDAsImEiXSxbMiwxLCJjIiwyXSxbMywyLCJkIiwyXSxbNCwyLCJiIl0sWzUsNCwiYSJdLFs1LDMsImMiLDJdLFs2LDUsImQiLDJdLFs3LDUsImIiXSxbNyw0XSxbNCwwXSxbNiwzXSxbMywxXV0=&embed" width="600" height="250" style="border-radius: 8px; border: dashed;"></iframe>
</center>

往证映射锥 $\mathrm{Cone}(cb)$ 是无环复形, 其微分是 $D=\binom{-ab\qquad }{cb\quad cd}$.

* ($\ker$ 项). 此时 $D\binom{x}{y}=0$ 当且仅当 $0=\binom{-abx}{cbx+cdy}=\binom{-a(bx+dy)}{c(bx+dy)}$.
* ($\ker ⊆ \operatorname{im}$). 由 $\binom{-a}{c}$ 单知 $bx+dy=0$. 由 $\mathrm{ker}(b\,\,d)=\mathrm{im}\binom{-a}{c}$ 知 $\binom{x}{y}=\binom{-at}{ct}$. 最后由 $(b\,\,d)$ 满知 $t$ 形如 $bm+dn$, 立得 $\binom{x}{y}=D\binom{m}{n}$.

因此 $\mathrm{Cone}(cb)$ 是无环复形. 依照同伦范畴的同调代数基本定理, $P^\bullet$ 与 $X^\bullet$ 是拟同构.

{% endpf %}
