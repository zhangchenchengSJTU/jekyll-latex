---
title: 米田嵌入是上同调函子
author: Chencheng Zhang
layout: post
category: proof
--- 
## 证明

{% lem %}
反变的米田嵌入 $𝒯^{\mathrm{op}} → 𝐅𝐮𝐧𝐜𝐭(𝒞, 𝐌𝐨𝐝_k)$ 是上同调函子. 
{% endlem %}

{% pf %}
只需证明一切 $(-,W)_{𝒯}$ 是上同调函子. 任意给定三角 $X^∙ ∈ \triangle$, 上链复形 $(X^∙ , W)_{𝒯} ∈ C(k)$ 在 $n$ 处的正合性描述作以下命题:

- 对 $f^n : X^n → W$, 复合态射 $[X^{n-1} → X^n → W] = 0$, 当且仅当 $f^n$ 通过 $[X^n → X^{n+1}]$ 分解.

对 $\{f^{n-1},f^n,f^{n+1}\}$ 使用二推三原则, 研究以下三角射即可:

$$
\begin{bmatrix}
X^{\bullet } &:& \cdots  & \rightarrow  & X^{n-1} & \rightarrow  & X^{n} & \rightarrow  & X^{n} +1 & \rightarrow  & \cdots \\
\downarrow & &  &  & \downarrow  &  & \downarrow  &  & \downarrow  &  & \\
W^{\bullet }&: & 0 & \rightarrow  & W & = & W & \rightarrow  & 0 & \rightarrow  & \cdots
\end{bmatrix}.
$$

{% endpf %}
