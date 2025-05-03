---
title: $\varprojlim{}_{ℕ}^1$ 是右导出极限
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% def %}
(Abel 群的投射塔). 即预层 $\mathrm{PSh}(\mathbb N)$, 其对象 (函子 $M$) 表现做映射链
\begin{equation}
  \cdots \xrightarrow{m_2} M_2\xrightarrow{m_1} M_1\xrightarrow{m_0} M_0.
\end{equation}
记 $m:\prod_{\mathbb N} M_k\to \prod _{\mathbb N}M_k,\quad (x_k)_{k\in \mathbb N}\mapsto (x_k-m_k(x_{k+1}))$ 由泛性质 $\{p_{k}m=m_{k+1}p_{k+1}\}_{k\in \mathbb N}$ 确立. 记正合列

\begin{equation}
  0\to {\varprojlim}^0 M\to \prod_{\mathbb N} M\xrightarrow{1-m}\prod_{\mathbb N} M\to {\varprojlim}^1 M\to 0.
\end{equation}

其中, $1-m$ 自动对应如下泛性质确立的序列 ($\oplus$ 强调了双积)

<center>
<!-- https://q.uiver.app/#q=WzAsNCxbMCwwLCJcXHByb2QgTSJdLFsyLDAsIlxccHJvZCBNIl0sWzAsMSwiTV9rXFxvcGx1cyBNX3trKzF9Il0sWzIsMSwiTV9rIl0sWzAsMSwiMS1tIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsMiwiKHBfayxwX3trKzF9KSIsMl0sWzEsMywicF9rIl0sWzIsMywiKFxcbWF0aHJte2lkfV97TV9rfSwgLW1fe2srMX0pIiwyXSxbMCwzXV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNCxbMCwwLCJcXHByb2QgTSJdLFsyLDAsIlxccHJvZCBNIl0sWzAsMSwiTV9rXFxvcGx1cyBNX3trKzF9Il0sWzIsMSwiTV9rIl0sWzAsMSwiMS1tIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsMiwiKHBfayxwX3trKzF9KSIsMl0sWzEsMywicF9rIl0sWzIsMywiKFxcbWF0aHJte2lkfV97TV9rfSwgLW1fe2srMX0pIiwyXSxbMCwzXV0=&embed" width="600" height="180" style="border-radius: 8px; border: dahsed;"></iframe>
</center>

{% enddef %}

{% pro %}
${\varprojlim}^1$ 是 $\varprojlim$ 的右导出函子.
{% endpro %}

{% pf %}
证明的关键: 构造内射对象 $M\hookrightarrow I$, 使得 $I$ 的位移算子是满的.

* 记 $X_{\geq n}: \left[X=X=\cdots = X\to 0\to \cdots 0\right]$ ($n$ 个 $0$ 对象), 则有伴随函子

   \begin{equation}
     (Y,X_{\geq n})_{\mathrm{PSh}(\mathbb N)}\simeq (Y_n, X).
   \end{equation}

* 特别地, 若 $I$ 是 Abel 群范畴的内射对象, 则 $I_{\geq n}$ 亦然 (右伴随保持内射对象).
* $X_{\geq n}$ 的位移算子是可裂满的. 例如对 $X_{\geq n}$, 其左逆元可以通过以下无穷阵的等式验证 (仍需要回溯一边泛性质的定义):

  $$
  \begin{pmatrix}
    1 &   &   &        \\
    1 & 1 &   &        \\
      & 1 & 1 &        \\
      &   & 1 & \ddots
  \end{pmatrix} \cdot \begin{pmatrix}
    1 & -1 &    &        &        \\
      & 1  & -1 &        &        \\
      &    & 1  & -1     &        \\
      &    &    & \ddots & \ddots
  \end{pmatrix} =\begin{pmatrix}
    1 &   &   &        \\
      & 1 &   &        \\
      &   & 1 &        \\
      &   &   & \ddots
  \end{pmatrix}.
  $$

* 记 $I(M_k)$ 是 $M_k$ 嵌入的内射对象, 则 $\prod (I(M_k))_{\geq k}$ 是 $M$ 嵌入的内射对象, 其 $(1-m)$-型算子也是可裂满 (直积正合).

构造内射分解 $0\to M\xrightarrow{\iota} I_\alpha\xrightarrow{\varphi_{\beta,\alpha}} I_\beta\xrightarrow{\varphi_{\gamma,\beta}}  I_\gamma\to \cdots$. 依照定义, $\varprojlim$ 的一次右导出是
\begin{equation}
    (R^1\varprojlim)(M)=\frac{\ker (\varprojlim \varphi_{\gamma,\beta})}{\mathrm{im}(\varprojlim \varphi_{\beta,\alpha})}=\frac{\varprojlim (\ker \varphi_{\gamma,\beta})}{\mathrm{im}(\varprojlim \varphi_{\beta,\alpha})}.
\end{equation}
对 $0\to M\to I_\alpha\to \ker (\varphi_{\gamma,\beta})\to 0$ 使用正合的直积, 使用蛇引理得长正合列
\begin{equation}
    0\to \varprojlim M\xrightarrow{\iota} \varprojlim I_\alpha\xrightarrow{\varphi_{\beta,\alpha}} \varprojlim \ker(\varphi_{\gamma,\beta})\to {\varprojlim}^1 M\to 0.
\end{equation}
其余核项等于 $R^1\varprojlim$, 因此 ${\varprojlim}^1$ 确实是 ${\varprojlim}$ 的右导出.
{% endpf %}
