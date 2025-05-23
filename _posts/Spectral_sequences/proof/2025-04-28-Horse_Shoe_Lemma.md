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
{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwwLCJQIl0sWzAsMSwiTCJdLFsyLDEsIk0iXSxbNCwxLCJOIl0sWzIsMCwiUCBcXG9wbHVzIFEiXSxbNCwwLCJRIl0sWzAsMSwicCIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs0LDIsIihcXGlvdGEgIHAgXFwgXFwgcSkiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMSwyLCJcXGlvdGEiXSxbMiwzLCJcXHBpICJdLFswLDQsIlxcYmlub20gMTAiXSxbNCw1LCIoMCBcXCBcXCBcXCAxKSJdLFs1LDMsIlxccGkgcSIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dXQ==
\begin{tikzcd}
	P && {P \oplus Q} && Q \\
	L && M && N
	\arrow["{\binom 10}", from=1-1, to=1-3]
	\arrow["p"', two heads, from=1-1, to=2-1]
	\arrow["{(0 \ \ \ 1)}", from=1-3, to=1-5]
	\arrow["{(\iota  p \ \ q)}"', two heads, from=1-3, to=2-3]
	\arrow["{\pi q}"', two heads, from=1-5, to=2-5]
	\arrow["\iota", from=2-1, to=2-3]
	\arrow["{\pi }", from=2-3, to=2-5]
\end{tikzcd}
{% endtikz %}
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
