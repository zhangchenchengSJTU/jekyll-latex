---
title: Proof of Gabriel's Theorem
author: Chencheng Zhang
layout: post
category: notes
---

{% abs %}
关键步骤: 表示的轨道语言; Krull 维数公式; 不可约表示是极大开子轨道; 图分类定理 (有限型与仿射型).
\\
推广: Kac 定理等?
{% endabs %}

## Gabriel 定理

### 轨道

{% def %}
(不带关系的箭图).
选定有限无环的 quiver $Q$, 定义代数闭域 $k = \overline k$ 上的路代数 $kQ$, 并将 $Q$ 的资料记作 $(Q_0, Q_1, s, t)$, 其中 $t(α) \xleftarrow α s(α)$.
{% enddef %}

{% def %}
(路代数). 回顾小 $k$-范畴的 $k$-等价 $𝐦𝐨𝐝_{kQ} ≃ 𝐫𝐞𝐩_k(Q)$. 将路代数的模记作函子

$$
M : Q → \mathrm{vec}_k, \quad [i ↦ M_i,\quad α ↦ M_α].
$$

{% enddef %}

记 $P(i)$ 是 $i ∈ Q_0$ 处对应的投射模. 以上 $kQ$ 是有限维遗传代数. 任意 $M ∈ 𝐦𝐨𝐝_{kQ}$ 的[极小投射分解](Ringel_Resolution)是

$$
0 → ⨁_{α∈ Q_1}P(t(α))^{\dim  M_{s(α)}} → ⨁_{i∈ Q_0}P(i)^{\dim M_i} → M → 0.
$$

{% def %}
(维数向量).
子范畴 $ι: Q_0 ↪ Q_1$ 给出拉回

$$
𝐝𝐢𝐦:= \quad ι^∗: 𝐦𝐨𝐝_{kQ} → 𝐦𝐨𝐝_{kQ_0},\quad M ↦ (\dim M_i)_{i ∈ Q_0}.
$$

{% enddef %}

简单地看, $ι(M)$ 是将一切 $M_α$ 替换作零态射. 函子 $𝐦𝐨𝐝$ 本质满, 但未必全忠实.

{% def %}
(轨道). 给定 $𝐯 ∈ 𝐦𝐨𝐝_{kQ_0}$. 一个以 $𝐯$ 为维数向量的表示, 对应以下同构类中的一个代表元

$$
\{M ∈ 𝐫𝐞𝐩_k(Q) ∣ 𝐝𝐢𝐦 \ M = 𝐯\} / ≃ .
$$

以下使用轨道定义之.

1. (Variety) 定义 representation variety:

   $$
   𝐫𝐞𝐩(𝐯) = ∏_{α ∈ Q_1} k^{𝐯_{t(α )} × 𝐯_{s(α)}}.
   $$

   $X$ 中的一个对象 (一族 $Q_1$-指标的矩阵) 对应一个以 $𝐯$ 为维度向量的模. 特别地,

   $$
   M_{t(α )} \xleftarrow{M_{α }} M_{s(α )} ,\quad k^{𝐯_{t(α )}} \xleftarrow{Y} k^{𝐯_{s(α)}}\quad (Y ∈  k^{𝐯_{t(α )} ×  𝐯_{s(α )}}).
   $$

2. (代数群) 称 $𝐫𝐞𝐩(𝐯) =$ 中元素等价 ($M ∼  N$), 当且仅当其作为 $kQ$-模同构. 相应地, 存在 $g ∈  ∏ _{i ∈  Q_0}\mathrm{GL}(k, 𝐯_i)$ 使得

   $$
   g_{t(α )} ⋅  M_α  = N_α  ⋅  g_{s(α )} \ \quad (∀  α  ∈  Q_1)
   $$

3. (群作用) 定义 $G := ∏ _{i ∈  Q_0}\mathrm{GL}(k, 𝐯_i)$ 在 $𝐫𝐞𝐩(𝐯) =$ 上的 (共轭) 作用如下:

   $$
   g. (x_α )_{α  ∈  Q_1} := (g_{t(α )} ⋅  x_α  ⋅  g_{s(α )}^{-1})_{α  ∈  Q_1}.
   $$

{% enddef %}

记 $[M]$ 是 $M$ 所在的轨道. $[M]$ 代表一个表示.

{% slo %}
Gabriel 定理证明的出发点: 找到 $𝐫𝐞𝐩(𝐯)$ 的所有 $G$-轨道.
{% endslo %}

### 维度公式

{% note %}
涉及 Krull 维度的部分暂不给出证明.
{% endnote %}

{% thm %}
(Krull 维度公式). 同上, $G$ 是共轭作用在 $𝐫𝐞𝐩(𝐯)$ 上的代数群概型. 一个表示就是一个 $G$-轨道.

1. 所有 $G$-轨道 $[M]$ 都是不可约的局部闭集:
   1. 不可约: 所有开子集稠密, 等价地, 任意两个开集有非空交;
   2. 局部闭: $X$ 是 $\overline X$ 的开子集, 等价地, $X$ 是开集与闭集的交.
2. 对任意 $M$, 稳定子群 $\mathrm{Stab}_{M}$ 是闭子群.
3. Krull 维度公式: $\dim G = \dim \ [M] + \dim \mathrm{Stab}_{M}$.
4. $(\overline{[M]} ∖ [M])$ 恰是一切 Krull 维度更小的轨道的并 (观察 ses).

{% endthm %}

对 $𝔸_k^n$, 线性维度就是 Krull 维数.

{% lem %}
(关键公式, [证明](Key_Lemma_Gabriel)). 以下关键公式联系了 Krull 维度与线性空间的维度.

$$
\dim 𝐫𝐞𝐩(𝐯) - \dim \ [M] = \dim \mathrm{Ext}^1(M,M) = \dim \mathrm{End}(M) - q(𝐯).
$$

{% endlem %}

{% prop %}
([证明](Uniqueness_of_Maximal_Orbit))
以下是一些几何的结论.

1. 极大轨道满足以下等价定义:
   1. $\mathrm{Ext}^1(M,M) =0$;
   2. $[M]$ 是开集;
   3. $\overline{[M]} = 𝐫𝐞𝐩(𝐝𝐢𝐦 \ M)$.
2. 固定 $𝐯$, 极大轨道若存在则必唯一.
3. 极大轨道不存在的必要条件: $q(𝐯) ≤ 0$.
4. (不证明此条). 极小轨道就是半单表示; 等价地, $[X]$ 是闭集.
5. 给定 ses $0 →  X →  Y →  Z →  0$, 该 ses 不可裂当且仅当

   $$
   [X ⊕ Z] \quad ⊆ \quad \overline {[Y]} ∖ [Y]\quad (\text{视作} \ 𝐫𝐞𝐩(\dim Y) \ \text{中的轨道}).
   $$

{% endprop %}

### 根系与图分类

{% def %}
(根系的基本记号).
给定二次型 $q : ℤ^n × ℤ^n → ℤ$, 定义

1. (根系) 定义有限型 quiver 的根系为 $q^{-1}(≤ 1)$, 即,

    $$
    \Delta := \{ 𝐯 \mid q(𝐯) ≤ 1, 𝐯 \neq \mathbf 0\};
    $$

2. (虚实) 实根 (虚根) 满足 $q(𝐯)=0$ ($q (𝐯)=1$), 记作 $\Delta ^{\mathrm{Re}}$ ($\Delta ^{\mathrm{Im}}$);
3. (正负) 各项 $\geq 0$ ($\leq 0$) 整数的根称为正根 (负根), 记作 $\Delta _+$ ($\Delta _-$).
{% enddef %}

{% thm %}
(图分类定理, [图](Finite_and_Affine_Root_System)). 对有限, 连通, 无向, 允许重边的图 $Q$, 记 Euler 二次型 $q$.
\\
记 $\overline Q$ 是 $Q$ 的无向化 (去除箭头), $A$ 是其邻接矩阵, 则 $q$ 对应的对称二次型为 $B: = \frac{1}{2}(2I - A)$.
\\
以下著名定理分类了正定或几乎正定的邻接矩阵 $B$.

1. 称 $q$ 是有限型的, 当且仅当 $q$ 正定, 当且仅当 $Δ$ 是有限集, 当且仅当 $\overline Q$ 是 Dynkin 图 $A_n$, $D_n$, 以及 $E_{6,7,8}$, 角标 $n$ 是顶点数.
2. 称 $q$ 是仿射型的, 当且仅当 $q$ 半正定且 $\dim N(B) = 1$, 当且仅当 $Δ$ 是有限集与 $ℤ⋅ 𝐤$ 的直和, 当且仅当 $\overline Q$ 是 $\widehat{A_n}$, $\widehat{D_n}$, $\widehat{E_{6,7,8}}$.

特别地, $Δ  = Δ  _+ ⊔  Δ  _-$. 换言之, 根系中不存在既正又负的向量.

{% endthm %}

### Gabriel 定理的证明

给定有限无自环的 quiver $Q$, 记 $\overline Q$ 是无向化图. 给定特征为 $0$ 的代数闭域 $k$, 记路代数 $kQ$.

{% thm %}
([证明](Gabriel_1)).
给定 $kQ$, 其中 $\overline Q$ 是有限型 Dynkin quiver. 考虑映射

$$
𝐝𝐢𝐦 : 𝐫𝐞𝐩_k (Q) → \mathbf{rep}_k (Q_0),\quad [M] ↦  𝐝𝐢𝐦 \ M.
$$

这一映射建立了不可分解表示与 $Δ ^+$ 的双射对应:

$$
𝐝𝐢𝐦 : 𝐈𝐧𝐝𝐞𝐜𝐨𝐦𝐩 (Q) ⇆ Δ _+(Q) : \text{Maximal Orbit}.
$$

1. 给定不可分解模 $M$, 表示 $[M]$ 对应 $𝐝𝐢𝐦 \ M$;
2. 给定正根 $𝐯$, 则 $𝐫𝐞𝐩(𝐯)$ 存在极大轨道 $[M]$, 对应不可约表示.

{% endthm %}

{% cor %}
(见[证明](Gabriel_1)第一部分).
$kQ$ 中的不可分解对象恰是 brick. 这些 brick 是 $\mathrm{Ext}^1$ 自垂直的.
{% endcor%}

{% thm %}
([证明](Gabriel_2))
一般地, $kQ$ 的不可分解表示有限, 当且仅当 $\overline Q$ 是 Dynkin 图.
{% endthm %}
