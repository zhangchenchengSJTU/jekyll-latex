---
title: 马蹄引理
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% def %}
给定对象类 $𝒳$.

1. 称存在足够 $𝒳$ 出发的满态射, 若对任意 $M ∈ 𝒜$, 总存在 $X ∈ 𝒳$ 使得有满态射 $X ↠ M$;
2. 称存在足够 $𝒳$ 收尾的单态射, 若对任意 $N ∈ 𝒜$, 总存在 $X ∈ 𝒳$ 使得有单态射 $N ↪ X$.
{% enddef %}

{% note %}
例如对有余集和[生成子](Projective_Generators) $U$ 的范畴, 总有满态射 $∐_{(U,X)} U ↠ X$, 因此 $𝒳 := U^{∐ \mathrm{Sets}}$ 提供了足够满射. 余生成子类似.
{% endnote %}

{% thm %}
(相对版本的马蹄引理). 假定存在足够 $𝒳$ 出发的满态射, 任意 ses 存在可裂 $𝒳$-复形的相对投射分解.
{% endthm %}

{% pf %}
下构造归纳步骤. 取定 ses
\begin{equation}
  0 → L \xrightarrow ι  M \xrightarrow π  N → 0.
\end{equation}
取 $p : P ↠ L$ 与 $q : Q ↠ M$, 此时有
<center>
<!-- https://q.uiver.app/#q=WzAsMTAsWzEsMCwiUCJdLFsxLDEsIkwiXSxbMywxLCJNIl0sWzUsMSwiTiJdLFs2LDEsIjAiXSxbMCwxLCIwIl0sWzMsMCwiUCBcXG9wbHVzIFEiXSxbNSwwLCJRIl0sWzAsMCwiMCJdLFs2LDAsIjAiXSxbMCwxLCJwIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzYsMiwiKFxcaW90YSAgcCBcXCBcXCBxKSIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxLDIsIlxcaW90YSJdLFsyLDMsIlxccGkgIl0sWzAsNiwiXFxiaW5vbSAxMCJdLFs1LDFdLFs4LDBdLFs2LDcsIigwIFxcIFxcIFxcIDEpIl0sWzcsMywicSIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs3LDldLFszLDRdXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTAsWzEsMCwiUCJdLFsxLDEsIkwiXSxbMywxLCJNIl0sWzUsMSwiTiJdLFs2LDEsIjAiXSxbMCwxLCIwIl0sWzMsMCwiUCBcXG9wbHVzIFEiXSxbNSwwLCJRIl0sWzAsMCwiMCJdLFs2LDAsIjAiXSxbMCwxLCJwIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzYsMiwiKFxcaW90YSAgcCBcXCBcXCBxKSIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxLDIsIlxcaW90YSJdLFsyLDMsIlxccGkgIl0sWzAsNiwiXFxiaW5vbSAxMCJdLFs1LDFdLFs4LDBdLFs2LDcsIigwIFxcIFxcIFxcIDEpIl0sWzcsMywicSIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs3LDldLFszLDRdXQ==&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
</center>
这就完成了归纳.
{% endpf %}

{% thm %}
(相对版本的马蹄引理). 假定存在足够 $𝒳$ 收尾的单态射, 任意 ses 存在可裂 $𝒳$-复形的相对内射分解.
{% endthm %}

{% pf %}
对偶.
{% endpf %}

{% note %}
推广见 [EC 分解](Spectral_sequence_filtered#技巧-eilenburg-cartan-消解).
{% endnote %}
