---
title: 合冲-逼近伴随 (稳定范畴中)
author: Chencheng Zhang
layout: post
category: proof
---

{% thm %}
(逼近与合冲在稳定范畴中伴随).
$Ω_∙$ 与 $C_∙$ 是稳定投射范畴的伴随函子; $℧^∙$ 与 $K^∙$ 是稳定内范畴的伴随函子.
<ol>
<li>
$C_k: \underline{𝐦𝐨𝐝_A} ⇆ \underline{𝐦𝐨𝐝_A} : Ω_k$ 是左右伴随.
</li>
<li>
$℧^k: \overline{𝐦𝐨𝐝_A} ⇆ \overline{𝐦𝐨𝐝_A} : K^k$ 是左右伴随.
</li>
<li>
$C_k ≃ \mathrm{Tr}(Ω_k(\mathrm{Tr}))$.
</li>
<li>
$K^k ≃ τ(℧^k(τ⁻¹))$.
</li>
</ol>
{% endthm %}

{% pf %}
对前两条, 仅证明第一处 $k=1$ 的情形. 考虑以下两条横向正合列 (原范畴中):
$$
\begin{bmatrix}
M & →  & F( M) & ↠  & C( M)\\
h⇣ \  &  & g⇣ \  &  & f⇣ \ \\
Ω ( N) & →  & P( M) & ↠  & N
\end{bmatrix}.
$$
若有 $f$, 则投射盖 $P_0(N) ↠ N$ 诱导了 $g$, 核的泛性质诱导了 $h$. 若有 $h$, 则左逼近的泛性质诱导了 $g$, 余核的泛性质诱导了 $f$. 之后说明在稳定范畴中, 以上对应 $f ↔ h$ 是双射.
<ol>
<li>
给定 $f$, 假定存在满足条件的 $g_1 ≠ g_2$, 则 $(g_1 - g_2)$ 通过 $Ω_1(N)$ 分解. 依照泛性质, $h_i$ 唯一决定, 且 $(h_1 - h_2)$ 通过 $F(M)$ 分解. 这说明由 $f$ 决定的一族 $\{h_i\}$ 在稳定范畴中相等.
</li>
<li>
给定 $h$, 假定存在满足条件的 $g_1 ≠ g_2$, 则 $(g_1 - g_2)$ 通过 $C(M)$ 分解. 依照泛性质, $f_i$ 唯一决定, 且 $(f_1 - f_2)$ 通过 $P_0(N)$ 分解. 这说明由 $h$ 决定的一族 $\{f_i\}$ 在稳定范畴中相等.
</li>
</ol>
特别地, 右伴随函子 $C(-)$ 无关逼近的选取.
<br>
对后一命题, 仅证明 $C(-) = \mathrm{Tr}(Ω_1(\mathrm{Tr}(-)))$. 给定左逼近对应的右正合列

$$
M → Q → C(M) → 0,
$$

取任意投射表现 (不必极小) 诱导的四项正合列

$$
0 → M^∗ → P_0^∗ \overset α → P_1^∗ → \widetilde{\mathrm{Tr}(M)} → 0.
$$

注意到 $\operatorname{im}α$ 与 $Ω_1(\mathrm{Tr}(M))$ 在稳定范畴中相等, 而

$$
\operatorname{coim}α = \operatorname{cok}[M^∗ ↪ P_0^∗]
= \operatorname{cok}[Q^∗ ↠ M^∗ ↪ P_0^∗]
$$

由 $C(M) = \operatorname{cok}[P_0 ↠ M → Q]$, 从而 $\mathrm{Tr}(C(M))$ 与 $\operatorname{coim}α$ 在稳定范畴中同构. 最后由 $\mathrm{Tr}$ 是稳定等价, 得

$$
Ω_1(\mathrm{Tr}(M)) ≃ \operatorname{im}α ≃ \operatorname{coim}α ≃ \mathrm{Tr}(C(M))\quad \text{稳定范畴中}.
$$

因此 $C_k ≃ \mathrm{Tr}(Ω_k(\mathrm{Tr}))$ (稳定范畴中).

$$
\begin{bmatrix}
 &  &  &  & \widetilde{Ω _{1}\widetilde{\mathrm{Tr}( M)}} &  &  &  & \\
 &  &  & ↗  & ∥  & ⤥  &  &  & \\
M^{*} & ↪  & P_{0}^{*} & ↠  & \operatorname{(co)im}, & ↪  & P_{1}^{*} & ↠  & \widetilde{\mathrm{Tr}}( M)\\
↟  & ↗  &  &  &  &  &  &  & \\
Q^{*} &  &  &  &  &  &  &  &
\end{bmatrix}
$$

以上是证明涉及的对象.
{% endpf %}
