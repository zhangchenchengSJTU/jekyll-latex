---
title: 前五项
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% lem %}
(重要应用: 前五项正合列). 若 $E_2$ 落在第一象限 (或第三象限), 则有五项短正合列
\begin{equation}
\color{cyan}0 → \color{red}E_2^{1,0} → \color{red}H^1 → \color{red}E_2^{0,1} → \color{Green}E_2^{2,0} → \color{Green}H^2.
\end{equation}

{% endlem %}

{% pf %}
考虑如下 $E_2$:
<center>
<!-- https://q.uiver.app/#q=WzAsMTIsWzEsMSwiXFxjb2xvcntyZWR9RV8yXnswLDF9Il0sWzMsMiwiXFxjb2xvcntHcmVlbn1FXzJeezIsMH0iXSxbMiwxLCJcXGNvbG9ye0dyZWVufUVfMl57MSwxfSJdLFs0LDIsIkVfMl57MywwfSJdLFsyLDIsIlxcY29sb3J7cmVkfUVfMl57MSwwfSJdLFswLDIsIlxcYm94ZWR7RV8yXntcXGJ1bGxldCxcXGJ1bGxldH19Il0sWzEsMiwiXFxjb2xvcntjeWFufUVfMl57MCwwfSJdLFswLDEsIlxcY29sb3J7Y3lhbn0wIl0sWzEsMCwiXFxjb2xvcntHcmVlbn1FXzJeezAsMn0iXSxbMiwwLCJFXzJeezEsMn0iXSxbMywxLCJFXzJeezIsMX0iXSxbMCwwLCJcXGNvbG9ye3JlZH0wIl0sWzAsMV0sWzIsM10sWzQsMCwiXFxjb2xvcntyZWR9SF4xIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEsMiwiXFxjb2xvcntHcmVlbn1IXjIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNiw3LCJcXGNvbG9ye2N5YW59SF4wIiwxXSxbOCwxMF0sWzExLDJdLFs3LDRdXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTIsWzEsMSwiXFxjb2xvcntyZWR9RV8yXnswLDF9Il0sWzMsMiwiXFxjb2xvcntHcmVlbn1FXzJeezIsMH0iXSxbMiwxLCJcXGNvbG9ye0dyZWVufUVfMl57MSwxfSJdLFs0LDIsIkVfMl57MywwfSJdLFsyLDIsIlxcY29sb3J7cmVkfUVfMl57MSwwfSJdLFswLDIsIlxcYm94ZWR7RV8yXntcXGJ1bGxldCxcXGJ1bGxldH19Il0sWzEsMiwiXFxjb2xvcntjeWFufUVfMl57MCwwfSJdLFswLDEsIlxcY29sb3J7Y3lhbn0wIl0sWzEsMCwiXFxjb2xvcntHcmVlbn1FXzJeezAsMn0iXSxbMiwwLCJFXzJeezEsMn0iXSxbMywxLCJFXzJeezIsMX0iXSxbMCwwLCJcXGNvbG9ye3JlZH0wIl0sWzAsMV0sWzIsM10sWzQsMCwiXFxjb2xvcntyZWR9SF4xIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEsMiwiXFxjb2xvcntHcmVlbn1IXjIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNiw3LCJcXGNvbG9ye2N5YW59SF4wIiwxXSxbOCwxMF0sWzExLDJdLFs3LDRdXQ==&embed" width="600" height="350" style="border-radius: 8px; border: dashed;"></iframe>
</center>

以上

1. $H^0$ 的滤过仅有一项, $E_2^{0,0}$.
2. $H^1$ 的滤过仅有两项, 此时有 ses

   $$
   0 → E_2^{1,0} → H^1 → \ker [E_2^{0,1} → E_2^{2,0}] → 0.
   $$
3. $H^2$ 的滤过有 $3$ 项, 此时有左正合列

   $$
   0 → \operatorname{cok}[E_2^{0,1} → E_2^{2,0}] → H^2 → E_2^{1,1}.
   $$

拼接短正合列, 得五项正合列.
{% endpf %}
