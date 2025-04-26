---
title: Equivalent Definitions of Finitely Presented Functor
author: Chencheng Zhang
layout: post
category: notes
---

对模范畴而言, $M ∈ 𝐌𝐨𝐝 _R$ 是有限表现模, 若以下等价命题成立:

1. 存在投射模的态射, 使得 $R^m → R^n → M → 0$ 是模的有限表现;
2. $M ⊗ - : 𝐌𝐨𝐝_{R^{\mathrm{op}}} → 𝐀𝐛$ 与任意指标集的积 $∏$ 交换;
3. $\mathrm{Hom}_R(M, -)$ 保持滤过余极限.

证明见 [n-lab](https://ncatlab.org/nlab/show/finitely+presented+module). 以下将这一结论迁移至有限表现函子范畴 $𝐦𝐨𝐝_𝒞$ 上.

{% thm %}
(有限表现函子的等价定义) 选定 $F ∈ 𝐌𝐨𝐝_𝒞$, 以下等价:

1. (有限表现函子) $F ∈ 𝐦𝐨𝐝_𝒞$;
2. (紧对象) 对 $𝐌𝐨𝐝_k$ 中的滤过系统 $G_∙$, 典范态射

   $$
   \varinjlim (F, G_∙)_{𝒞^{\mathrm{op}}} ≃  (F, \varinjlim G_∙)_{𝒞^{\mathrm{op}}}
   $$

   是同构;
3. $F ⊗ -: 𝐌𝐨𝐝_{𝒞 ^{\mathrm{op}}} → 𝐌𝐨𝐝_k$ 保持任意积.

{% endthm %}
{% pf %}
证明顺序: 2 ⟺ 1 ⟺ 3.
\\
(1 ⟹ 2). 记 $F = \mathrm{cok}(h_{X \xrightarrow φ Y})$, 则对任意滤过系统 $G_∙$,

$$
\begin{bmatrix}
0&\to &(\mathrm{cok}(h_φ),\varinjlim G_∙) &\to &(h_Y,\varinjlim G_∙)&\to &(h_X,\varinjlim G_∙)\\
&&\downarrow&&\downarrow&&\downarrow&&\\
0&\to &\varinjlim G_∙ (\mathrm{cok}(φ))&\to &\varinjlim G_∙ (Y)&\to &\varinjlim G_∙ (X)
\end{bmatrix}.
$$

依照 $𝐌𝐨𝐝_k$ 是 AB5 范畴, 下一行是正合列. 考虑自然同构

$$
(h_Z, \varinjlim G_∙)\xlongequal[\sim]{\text{米田引理}}(\varinjlim G_\bullet)(X)\xlongequal{\text{定义}}\varinjlim G_∙ (X).
$$

由此得自然同构

$$
(\mathrm{cok}(h_φ),\varinjlim G_∙)  ≃ \varinjlim G_∙ (\mathrm{cok}(φ)) ≃ \varinjlim(\mathrm{cok}(h_φ), G_∙) . 
$$

(2 ⇒ 1) 记余极限 $∐\limits_{i ∈ I} h_{X_i} ↠ \varinjlim\limits_{i ∈ I} h_X = F$, 定义滤过系统 $\{(L, I_0), ≤ \}$. 其中 $I_0 ⊂ I$ 是有限集, $L$ 是有限生成的 (可表函子的商). 称 $(L, I_0) ≤ (H, J_0)$, 当且仅当 $L ↪ H$ 且 $I_0 ⊂ J_0$, 如下图所示

$$
\begin{bmatrix}
H & \hookrightarrow  & K\cap \coprod _{i\in J_{0}} h_{X_{i}} & \hookrightarrow  & \coprod _{i\in J_{0}} h_{X_{i}} &  & \\
\downarrow  &  & \downarrow  &  & \downarrow  &  & \\
L & \hookrightarrow  & K\cap \coprod _{i\in I_{0}} h_{X_{i}} & \hookrightarrow  & \coprod _{i\in I_{0}} h_{X_{i}} &  & \\
&  & \downarrow  &  & \downarrow  &  & \\
&  & K & \hookrightarrow  & \coprod _{i\in I} h_{X_{i}} & \twoheadrightarrow  & F
\end{bmatrix}.
$$

下检验这一偏序集是滤过的.

> 对 $\{(L_i, I_i)\}_{i = 1,2}$, 形式地定义 $L_1 + L_2$ 为 $\{L_i ↪ K ∩ ∐\limits_{I_1 ∪ I_2} h_i\}_{i=1,2}$ 拉回之推出. 由于 $L_1 + L_2$ 是 $L_1 ⊕ L_2$ 的商, 从而是有限生成的. 因此 $(L_1 + L_2, I_1 ∪ I_2)$ 是两者的公共上界.

对 $0 → L → ∐\limits_{I_0} h_{x_i} → \frac{∐_{I_0} h_{x_i}}{L} → 0$ 取滤过余极限, 得

$$
F = \varinjlim\limits_{(L, I_0)} \mathrm{cok}(L ↪ ∐\limits_{x ∈ I_0} h_{x}).
$$

这说明 $F$ 是有限表现函子的滤过余极限 (记 $F = \varinjlim M_∙$). 依照假定,

$$
\mathrm{id}_F ∈ (F,F) ≃ \varinjlim (F, M_∙),
$$

从而 $\mathrm{id}_F$ 通过某一有限表现函子 $M_∙$ 分解.
\\
(1 ⇒ 3) 选定 $F = \mathrm{cok}(h_{X\xrightarrow φ Y})$, 依照直积的正合性, 以下是正合列的交换图 
$$
\begin{bmatrix}
h_X\otimes \prod-&\to&h_Y\otimes \prod-&\to&F\otimes \prod-&\to&0\\
\downarrow&&\downarrow&&\downarrow&&\\
\prod h_X\otimes-&\to&\prod h_Y\otimes-&\to&\prod F\otimes- &\to&0
\end{bmatrix}.
$$
左侧竖向同构, 从而是推出方块, 故右两项同构.
\\
(3 ⇒ 1) 由于 $𝒞$ 本质小, 将自然变换 $\mathrm{id}_F$ 视作集合

$$
∏\limits_{(M,N) ∈ 𝖮𝖻(X) × 𝖮𝖻(Y)}(FM,FN)^{(FM,FN)}
$$

中的一个元素. 依照函子性, 存在自然同构 $(FM, FN) = F ⊗ 𝖭𝖺𝗍(h^N,h^M)$. 因此有

$$
\begin{align*}
&\  ∏\limits_{(M,N) ∈ 𝖮𝖻(X) × 𝖮𝖻(Y)}(FM,FN)^{(FM,FN)}\\ 
≃ &\  ∏\limits_{(M,N) ∈ 𝖮𝖻(X) × 𝖮𝖻(Y)}(F ⊗ 𝖭𝖺𝗍 (h^N, h^M))^{(FM,FN)}\\
≃ &\ F ⊗ ∏\limits_{(M,N) ∈ 𝖮𝖻(X) × 𝖮𝖻(Y)}(𝖭𝖺𝗍 (h^N, h^M))^{(FM,FN)}\\
≃ &\ (\varinjlim Y_∙) ⊗ ∏\limits_{(M,N) ∈ 𝖮𝖻(X) × 𝖮𝖻(Y)}(𝖭𝖺𝗍 (h^N, h^M))^{(FM,FN)}\\
≃ &\ \varinjlim \left(h_{X_i} ⊗ ∏\limits_{(M,N) ∈ 𝖮𝖻(X) × 𝖮𝖻(Y)}(𝖭𝖺𝗍 (h^N, h^M))^{(FM,FN)}\right)\\
≃ &\ \varinjlim ∏\limits_{(M,N) ∈ 𝖮𝖻(X) × 𝖮𝖻(Y)}(Y_∙ ⊗ 𝖭𝖺𝗍 (h^N, h^M))^{(FM,FN)}\\
≃ &\ \varinjlim ∏\limits_{(M,N) ∈ 𝖮𝖻(X) × 𝖮𝖻(Y)}(Y_∙ (M), Y_∙ (N))^{(FM,FN)}.
\end{align*}
$$

以上将 $F$ 表示作有限表现函子的滤过余极限 $\varinjlim Y_∙$, 每一 $Y_i$ 均与 $∏$ 交换. 从而 $\mathrm{id}_F$ 是某一 $𝖭𝖺𝗍(Y_i, F)$ 的像. 此时存在满的自然变换 $Y_i → F$, 得 $F$ 有限生成. 取 $𝐌𝐨𝐝_{𝒞}$ 的短正合列
$$
0 → K → h_{X} → F → 0.
$$
由于后两项保持积, 蛇引理给出函子的满的自然变换 $(K ⊗ ∏ -) ↠ ∏(K ⊗ -)$. 基于类似的论证, 存在满态射 $h_{Y_j} ↠ K$ , 因此 $h_{Y_j} → h_{X_i} → F → 0$ 正合.
{% endpf %}
