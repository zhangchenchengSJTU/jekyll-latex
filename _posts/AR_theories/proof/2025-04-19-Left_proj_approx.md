---
title: 左投射逼近的等价命题
author: Chencheng Zhang
layout: post
category: proof
---

{% thm %}
(左投射逼近).
给定 ses $0 → L \overset i → P → N → 0$, $P$ 投射. 以下等价.
<ol>
<li>
$i$ 是左投射逼近.
</li>
<li>
$i^∗$ 是满的.
</li>
<li>
$\mathrm{Ext}^1(N, A) = 0$.
</li>
</ol>
{% endthm %}

{% pf %}
给定考虑四项函子的正合列
$$
0 → (N,-) → (P,-) → (L,-) → {}^1(N,-) → 0.
$$
此时 $(P,-) → (L,-)$ 满等价于 ${}^1(N,-)$ 消失.
{% endpf %}
