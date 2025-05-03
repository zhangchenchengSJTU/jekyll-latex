---
title: AB5 下 $\varinjlim{}_{-1}$ 消失
author: Chencheng Zhang
layout: post
category: example
---

## 证明

{% prop %}
若 $𝒜$ 满足 AB5 (滤过余极限正合), 则对余塔 $A_0 → A_∙$ 总有短正合列
\begin{equation}
    0 → ∐ A_∙ \xrightarrow{\mathrm{id}-A_{i+1, i}} ∐ A_∙ → \varinjlim A_∙ → 0.
\end{equation}
{% endprop %}

{% pf %}
对短正合列截断构造滤过系统即可:
<center>
<!-- https://q.uiver.app/#q=WzAsMTUsWzEsMCwiXFxjb3Byb2QgX3tcXGxlcSBwfUFfXFxidWxsZXQiXSxbMiwwLCJcXGNvcHJvZCBfe1xcbGVxIHArMX1BX1xcYnVsbGV0Il0sWzMsMCwiQ19wIl0sWzQsMCwiMCJdLFswLDAsIjAiXSxbMSwxLCJcXGNvcHJvZCBfe1xcbGVxIHArMX1BX1xcYnVsbGV0Il0sWzIsMSwiXFxjb3Byb2QgX3tcXGxlcSBwKzJ9QV9cXGJ1bGxldCJdLFswLDEsIjAiXSxbMywxLCJDX3twKzF9Il0sWzQsMSwiMCJdLFsxLDIsIlxcdmRvdHMgIl0sWzIsMiwiXFx2ZG90cyAiXSxbMywyLCJcXHZkb3RzICJdLFs0LDIsIjAiXSxbMCwyLCIwIl0sWzQsMF0sWzEsMl0sWzIsM10sWzAsNSwiYSIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzEsNiwiYiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzcsNV0sWzYsOF0sWzgsOV0sWzAsMSwiYSIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzUsNiwiYiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzIsOCwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzE0LDEwXSxbMTAsMTFdLFsxMSwxMl0sWzEyLDEzXSxbNSwxMF0sWzYsMTFdLFs4LDEyLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTUsWzEsMCwiXFxjb3Byb2QgX3tcXGxlcSBwfUFfXFxidWxsZXQiXSxbMiwwLCJcXGNvcHJvZCBfe1xcbGVxIHArMX1BX1xcYnVsbGV0Il0sWzMsMCwiQ19wIl0sWzQsMCwiMCJdLFswLDAsIjAiXSxbMSwxLCJcXGNvcHJvZCBfe1xcbGVxIHArMX1BX1xcYnVsbGV0Il0sWzIsMSwiXFxjb3Byb2QgX3tcXGxlcSBwKzJ9QV9cXGJ1bGxldCJdLFswLDEsIjAiXSxbMywxLCJDX3twKzF9Il0sWzQsMSwiMCJdLFsxLDIsIlxcdmRvdHMgIl0sWzIsMiwiXFx2ZG90cyAiXSxbMywyLCJcXHZkb3RzICJdLFs0LDIsIjAiXSxbMCwyLCIwIl0sWzQsMF0sWzEsMl0sWzIsM10sWzAsNSwiYSIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzEsNiwiYiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzcsNV0sWzYsOF0sWzgsOV0sWzAsMSwiYSIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzUsNiwiYiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzIsOCwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzE0LDEwXSxbMTAsMTFdLFsxMSwxMl0sWzEyLDEzXSxbNSwxMF0sWzYsMTFdLFs4LDEyLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endpf %}


