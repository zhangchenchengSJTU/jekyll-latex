---
title: 具有投射盖的平坦对象必投射
author: Chencheng Zhang
layout: post
category: notes
--- 

## 证明

试思考以下问题: 若平坦模有投射盖, 则必是投射模.

> 证明见经典教材[环论与模论讲义 (林節玄 著)](https://link.springer.com/book/10.1007/978-1-4612-0525-8) 中的习题 Ch6-§4-20, 解答见 ([此处](https://www.maths.ed.ac.uk/~v1ranick/papers/lam2.pdf#page=126)).

特别注意: 以上证明并未使用 [Lazard 定理](Lazard_thm) (平坦模是有限生成投射模的滤过余极限), 本质上与下述证明不同.

{% thm %}
若平坦对象具有投射盖, 则其必然是投射对象.
{% endthm %}

{% pf %}
记 $P \overset π ↠ F$ 是平坦对象的投射盖, 其中 $F = \varinjlim P_i$ 是有限生成投射对象的滤过余极限 (Lazard). 取定所有拉回

$$
\begin{bmatrix}
&P_i ⊕ Q_i & \xrightarrow{(1 \ 0)}& P_i \\
\substack{g_i}&↓ &  & ↓ &\substack {f_i}\\
&P & \overset π ↠ & F \\
\end{bmatrix}.
$$

依照拉回的泛性质, $g_i$ 自动构成滤过系统. 依照 $∐ (P_i ⊕ Q_i) ↠ ∐ P_i$, 得推出拉回方块

$$
\begin{bmatrix}
 &  & ∐ (P_{i} ⊕ Q_{i}) & ↠   & ∐ P_{i}\\
 &  & ↓  &  & ↓ \\
∗   & ↪   & ∑ \operatorname{im} g_{i} & ↠   & Σ  \operatorname{im} f_{i}\\
↓   & ▦ & ↓   &  & ∥  \\
\ker π   & ↪   & P & ↠   & F
\end{bmatrix}.
$$

依照投射盖的定义, $∑ \operatorname{im}g_i ↪ P$ 是同构, $∗ → \ker π$ 亦是同构. 因此滤过系统 $\{g_i\}$ 的滤过余极限即 $P$.
\\
\\
以上得到滤过系统的态射 $\{f_i\} ↪ \{g_i\} ↠ \{f_i\}$ 这甚至是链可裂的. 依照余极限的泛性质, 存在形变收缩 $F → P → F$, 因此 $F$ 是投射对象.
{% endpf %}
