---
title: 有限型与仿射型 Dynkin 图
author: Chencheng Zhang
layout: post
category: fact
---

## 图示

{% def %}
($A_n$). 该图具有 $n$ 个顶点, 形如

$$
\begin{bmatrix}
1 & - & 2 & - & \cdots  & - & n
\end{bmatrix}.
$$

{% enddef %}

{% def %}
($D_n$, $n ≥ 3$). 该图具有 $n$ 个顶点, 形如

$$
\begin{bmatrix}
1 & - & 3 & - & \cdots  & - & n\\
 &  & \mid  &  &  &  & \\
 &  & 2 &  &  &  &
\end{bmatrix}.
$$

{% enddef %}

{% def %}
($E_n$, $n = 6,7,8$). 该图具有 $n$ 个顶点, 形如

$$
\begin{bmatrix}
1 & - & 2 & - & 4 & - & \cdots  & - & n\\
 &  &  &  & \mid  &  &  &  & \\
 &  &  &  & 3 &  &  &  &
\end{bmatrix}.
$$

{% enddef %}

对于仿射型 Dynkin 图, 将一维空间 $\ker q(-)$ 的特征向量依分量写至顶点处.

{% def %}
($\widehat {A_n}$). 该图具有 $n + 1$ 个顶点, 形如

$$
\begin{bmatrix}
1 & - &1 & - & \cdots_{1}  & - & 1 \\
\mid  &  &  &  &  &  & |\\
1 & - & 1 & - & \cdots_{1}  & - & 1&
\end{bmatrix}.
$$

特别地, $\widehat{A_1}$ 形如 $[1 = 2]$.

{% enddef %}

{% def %}
($\widehat {D_n}$, $n ≥ 4$). 该图具有 $n + 1$ 个顶点, 形如

$$
\begin{bmatrix}
1 & - & 2 & - & \cdots _{2} & - & 2 & - & 2\\
 &  & \mid  &  &  &  & | &  & \\
 &  & 1 &  &  &  & 1 &  &
\end{bmatrix}
$$

{% enddef %}

{% def %}
($\widehat {E_n}$, $n = 6,7,8$). 该图具有 $n + 1$ 个顶点, 其中

$$
\widehat{E_6} := \begin{bmatrix}
1 & - & 2 & - & 3 & - & 2 & - & 1\\
 &  &  &  & \mid  &  &  &  & \\
 &  &  &  & 2 &  &  &  & \\
 &  &  &  & | &  &  &  & \\
 &  &  &  & 1 &  &  &  &
\end{bmatrix},
$$

以及

$$
\widehat{E_7} := \begin{bmatrix}
1 & - & 2 & - & 3 & - & 4 & - & 3 & - & 2 & - & 1\\
 &  &  &  &  &  & \mid  &  &  &  &  &  & \\
 &  &  &  &  &  & 2 &  &  &  &  &  &
\end{bmatrix},
$$

以及

$$
\widehat{E_8} := \begin{bmatrix}
1 & - & 2 & - & 3 & - & 4 & - & 5 & - & 6 & - & 4 & - & 2\\
 &  &  &  &  &  &  &  &  &  & | &  &  &  & \\
 &  &  &  &  &  &  &  &  &  & 3 &  &  &  &
\end{bmatrix}
$$

{% enddef %}
