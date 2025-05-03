---
title: 滤过完备当且仅当 $\varprojlim {}^1$ 消失
author: Chencheng Zhang
layout: post
category: caprice
---

{% lem %}
([证明](Complete_Filtration))
完备蕴含 Haussdorff. 完备当且仅当 $\varprojlim ^{0,1} F^p M = 0$.
{% endlem %}

{% pf %}
采用导出极限的定义, 考虑正合列系统
    \begin{equation}
        θ _p : 0 → F^pM → M → \frac{M}{F^p M} → 0.
    \end{equation}
此时有四项短正合列 (由 $\varprojlim{}^1M = 0$):
\begin{equation}
    0 → \varprojlim F^pM → M → \varprojlim \frac{M}{F^p M} →  \varprojlim{}^1 F^pM → 0.
\end{equation}
该滤过是完备的, 当且仅当中项 $M → \varprojlim \frac{M}{F^p M}$ 是同构. 此时

1. 完备等价于 $\varprojlim ^{0,1} F^p M = 0$.
2. 完备蕴含 Hausdorff, 即 $\varprojlim F^p M = 0$.
3. 假定滤过 Hausdorff, 则完备当且仅当 $\varprojlim ^{1} F^p M = 0$.
{% endpf %}
