---
title: $𝐅𝐩 → 𝐏𝐥𝐚𝐭 → 𝐏𝐫𝐨𝐣$
author: Chencheng Zhang
layout: post
category: proof
---

{% prop %}
(有限表现 → 投射 通过平坦对象分解).
假定 $𝒞^{\mathrm{op}}$ 有弱核. 若 $P ∈ 𝐌𝐨𝐝_𝒞$ 是平坦对象, 则一切有限表现函子 $F$ 向 $P$ 的态射通过某一可表函子分解.
{% endprop %}

{% pf %}
若 $F = \mathrm{cok}(h_X\xrightarrow {h_f} h_Y)$, 仅需证明存在满射 $PZ → [F,P]$ (此情形下, 下交换图底行正合).

$$
\begin{bmatrix}
𝖭𝖺𝗍(F,P) & ↪ & 𝖭𝖺𝗍(h_{Y} ,P) & \xrightarrow{h_{f}^{∗ }} & 𝖭𝖺𝗍(h_{X} ,P)\\
↟  &  & ∥  &  & ∥ \\
PZ & ⇢ & PY & \xrightarrow{Pf} & PX \\ 
∥ &  & ∥ &  & ∥ \\
P ⊗ h^Z & \xrightarrow{h^g} & P ⊗ h^Y & \xrightarrow{h^f} & P ⊗ h^X
\end{bmatrix}.
$$

由于 $P$ 平坦, 故 

$$
𝖭𝖺𝗍(F,P) ≃ P ⊗ \ker(h^Y \xrightarrow{h^f} h^X).
$$

此时取 $Z \xrightarrow {g^{\mathrm{op}}} Y$ 为 $Y\xrightarrow{f^{\mathrm{op}}}X$ 的弱核即可.
{% endpf %}