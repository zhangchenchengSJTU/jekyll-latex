---
title: 遗传范畴的 $\mathrm{Hom}_{D𝒜}(-,-)$.
author: Chencheng Zhang
layout: post
category: proof
---
## 证明

{% thm %}
遗传范畴中, $X^∙$ 与 $H^∙(X)$ (同调群构成的轴复形) 导出等价.
{% endthm %}

{% pf %}
给定上链复形 $(X^∙, d^∙)$. 考虑 $X^n$ 附近的交换图

$$
\begin{bmatrix}
r_{1} : & \cdots  & \rightarrow  & X^{n-2} & \rightarrow  & X^{n-1} & \xrightarrow{d^{n-1}} & X^{n} & \xrightarrow{d^{n}} & X^{n+1} & \rightarrow  & \cdots \\
\uparrow  &  &  & \uparrow  &  & \parallel  & ⊠  & \uparrow  &  & \uparrow  &  & \\
r_{2} : & \cdots  & \rightarrow  & 0 & \rightarrow  & X^{n-1} & \hookrightarrow  & E & \rightarrow  & 0 & \rightarrow  & \cdots \\
\Downarrow  &  &  & \Downarrow  &  & \Downarrow  &  & \Downarrow  &  & \Downarrow  &  & \\
r_{3} : & \cdots  & \rightarrow  & 0 & \rightarrow  & 0 & \rightarrow  & H^{n}( X) & \rightarrow  & 0 & \rightarrow  & \cdots 
\end{bmatrix}.
$$

此处, 交换方块 $⊠$ 内部如下 ($▦$ 是推出拉回):

$$
⊠ = \begin{bmatrix}
X^{n-1} & = & X^{n-1} & \xrightarrow{d^{n-1}} & X^{n}\\
\parallel  &  & ↡  &  & \uparrow \\
\parallel  &  & \operatorname{im} d^{n-1} & ↪  & \ker d^{n}\\
\parallel  &  & ↟  & ▦ & ↟ \\
X^{n-1} & = & X^{n-1} & \rightarrow  & E
\end{bmatrix}.
$$

特别地, $r_2 ⇒ r_3$ 是拟同构, $r_2 → r_1$ 仅投影 $X^n$ 处同调群. 将 $r_2$ 取遍所有 $X^k ↪ E'$, 得拟同构

$$
X^∙ ⇐ ∑\limits_k [X^k ↪ E'] ⇒ H^∙ (X).
$$

{% endpf %}
