---
title: Proof of Lazard's Theorem
author: Chencheng Zhang
layout: post
---
{% thm %}
(平坦对象是投射对象的滤过余极限).
给定小的加法范畴 $𝒞$, 假定以下提及的滤过余极限存在.
<ol>
<li>
假定 $𝒞^{\mathrm{op}}$ 有弱核, 则 $P ∈ 𝐌𝐨𝐝_𝒞$ 是平坦对象, 当且仅当 $P$ 是有限表现函子 $\{h_X\}$ 的滤过余极限; 
</li>
<li>
假定 $𝒞$ 有弱核, 则 $P ∈ 𝐌𝐨𝐝_{𝒞^{\mathrm{op}}}$ 是平坦对象, 当且仅当 $P$ 是有限表现函子 $\{h^X\}$ 的滤过余极限. 
</li>
</ol>
{% endthm %}

{% pf %}
只需证明第一条. 若 $P$ 平坦, 记 $P = \varinjlim\limits_{i ∈ I} M_∙$ 是限表现函子的滤过余极限. 定义新的余极限系统如下, 其对象是 $φ_{i_k}$, 使得

$$
e_i := \left[M_i  → h_{X_{i_k}} \xrightarrow {\varphi_{i_k}} P\right]
$$

是原滤过系统中指向余极限对象的典范态射. 为证明新系统与原系统共尾, 只需证明对任意给定的

$$
\left[M_1 \xrightarrow φ M_2 \xrightarrow{e_2} P\right] = e_1 = \left[M_1 → h_{X_1} \xrightarrow φ  P\right],
$$

存在可表函子 $h_{X_2}$ 使得下图交换

$$
\begin{bmatrix}
M_{1} & →  & h_{X_{1}} &  & \\
↓  &  & ↓ & ↘  & \\
M_{2} & →  & h_{X_{2}} & →  & P
\end{bmatrix}
$$

此处先取推出 $M_1 → h_{X_1} ⊕ M_2 → C → 0$. 由于 $C$ 有限表现, 故 $e_2$ 与 $φ$ 诱导的 $C → P$ 通过某有限表现投射对象分解. 这表明安插投射对象所得的新系统也是滤过的. 回顾对 $\varinjlim M_∙$ 的<a href = "Finitely_Presented_Functor">构造 (2 ⇒ 3)</a>, 可取满覆盖 $∐\limits_{X ∈ 𝖮𝖻(𝒞)}h_{X^n} ↠ M$ 以上构造的 $h_{X_i}$ 属于原系统, 共尾性证毕. 
<br>
<br>
若反之, 选定函子 $F = \varinjlim h_X$ 为可表函子的滤过余极限, 则 $(h_X ⊗ -)$ 是 $𝐌𝐨𝐝_{𝐦𝐨𝐝_{𝒞^{\mathrm{op}}}}$ 中正合函子的滤过余极限. 依照 $𝐌𝐨𝐝_k$ 是 Ab5 范畴, 故 $F ⊗-$ 是正合函子, 从而平坦.  
{% endpf %}