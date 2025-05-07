---
title: Canonical Resolution of Quiver algebra
author: Chencheng Zhang
layout: post
category: proof
---

* toc
{:toc}

## 有限维代数的极小投射分解

### $kQ$ 的标准分解

给定任意不带关系的路代数 $kQ$, 有限生成模 $M ∈ 𝐦𝐨𝐝_{kQ}$ 的[极小投射分解](Ringel_Resolution)是

$$
0 → ⨁\limits_{α∈ Q_1}P(t(α))^{\dim  M_{s(α)}} → ⨁\limits_{i∈ Q_0}P(i)^{\dim M_i} → M → 0.
$$

此处 $P(i)^{\dim M_i} ↠ Me_i$ 是投射盖, 将 $e_i ∈ P(i)$ 对应至 $e_iM$ 的生成元.

* 关于 $e_iM$ 的生成元, 可先取半单对象 ($X ↠ \mathrm{Top}(X)$)

  $$
  π : e_iM ↠ e_i M e_i.
  $$

  对 $(\dim M_i)$-维线性空间 $e_iMe_i$ 的基任取一组 $π$ 下的原像即可.

由于 $X^𝒮$ 之类的式子并不能很好地反应生成元, 以下将极小投射分解改写作

$$
0 → ⨁\limits_{α∈ Q_1}P(t(α)) ⊗_k e_{s(α)} M \xrightarrow ι ⨁ \limits_{i∈ Q_0}P(i) ⊗_k e_i M \xrightarrow π M → 0.
$$

第一处态射蕴含了生成关系:

$$
i : p ⊗ m ↦ p ⊗ (a ⋅ m) - pa ⊗ m.
$$

以上是[杠消解](https://ncatlab.org/nlab/show/bar+construction).

### 定义: quiver with relation

{% def %}
称 $I$ 是 $kQ$ 的容许理想, 若存在 $N$ 使得

$$
\mathrm{Rad}^2(kQ) ⊇ I ⊇ \mathrm{Rad}^N(kQ).
$$

这即是说, $I$ 中 relation 的长度至少是 $2$.

{% enddef %}

{% def %}
(Bound quiver). 称 $kQ / I$ 是 bound quiver, 若 $kQ$ 是有限维的, 且 $I$ 是容许理想.
{% enddef %}

### 单对象与 $\mathrm{Ext}$-群

往后记 $J:= \mathrm{Rad}(A)$ 是代数的 Radical, 也就是 $k ⋅ Q_1$ 生成的理想.

{% ex %}
($\mathrm{Ext}^1(S(i), S(j))$). 对 $S(i)$ 作投射盖

$$
0 → P(i) ⋅ J → P(i) → S(i) → 0.
$$

作用 $(-, S(j))$, 得四项正合列

$$
0 → (S(i), S(j)) → (P(i), S(j)) → (P(i) ⋅ J, S(j)) → \mathrm{Ext}^1(S(i), S(j)) → 0.
$$

由 $\mathrm{Top}$ 的性质, 前两项是满的. 此时后两项是同构. 计算得

$$
\mathrm{Ext}^1(S(i), S(j)) ≃ (P(i) ⋅ J, S(j)) ≃ k^{|Q_1 (i → j)|}.
$$

此处 $|Q_1 (i → j)|$ 是 $i → j$ 连边数量.

{% endex %}

{% cor %}
$\mathrm{Ext}^1(kQ_0, kQ_0) ≃ D(J / J^2)$.
{% endcor %}

{% note %}
特例: 对 $kQ = [1 → 2]$, 有典范短正合列

$$
θ : 0 → S(2) → P(1) → S(1) → 0.
$$

此处 $\mathrm{Ext}^1(S(1), S(2)) = k ⋅ θ$.

{% endnote %}

{% lem %}
对 bound quiver $(Q, I)$, 考虑一列滤过的右理想

$$
\cdots ⊆ I^{n + 1}  ⊆ JI^n ⊆ \cdots ⊆ I ⊆ J ⊆ kQ.
$$

此时得 $A$ 的投射分解

$$
\begin{bmatrix}
 &  & \Omega _{3} &  &  &  & \Omega _{2} &  &  &  & \Omega _{1} &  &  &  & \Omega _{0}\\[6pt]\hline
\frac{JI}{JI^{2}} &  & \rightarrow  &  & \frac{I}{I^{2}} &  & \rightarrow  &  & \frac{J}{JI} &  & \rightarrow  &  & \frac{kQ}{I} & \twoheadrightarrow  & \frac{kQ}{J}\\
 & \searrow  &  & \nearrow  &  & \searrow  &  & \nearrow  &  & \searrow  &  & \nearrow  &  & \searrow  & \parallel \\
 &  & \frac{JI}{I^{2}} &  &  &  & \frac{I}{JI} &  &  &  & \frac{J}{I} &  &  &  & K
\end{bmatrix}.
$$

{% endlem %}

{% pf %}
依次验证上述是投射分解. 记 $J^0 = kQ$.

1. 关于短正合列, 往复使用同构定理 $\frac{A / C}{B / C} ≃ \frac{A}{B}$ 即可.
2. 关于投射对象, 由 $kQ$ 遗传, 从而 $L ⊆ kQ$ 都是投射的, 因此是自由模的直和项. 由商保持直和项, 得 $\frac{L}{LI}$ 是投射 $\frac{kQ}{I}$-模.

{% endpf %}

{% cor %}
特别地, $\mathrm{Ext}^1(K, K) ≃ D(J / J^2)$.
{% endcor %}

{% pf %}
本质上, $K$ 无论作为 $kQ / I$ 模或是 $kQ$ 模, 其本质上都是 $kQ_0$-模. 因此, 前文结论仍适用.
{% endpf %}

{% cor %}
$\mathrm{Ext}^2(K,K) ≃ D(\frac{I}{IJ+JI})$.
{% endcor %}

{% pf %}
记 $A := kQ / I$. 由维数移位, 得

$$
\textstyle \mathrm{Ext}_A^2(K,K) ≃ (\frac I {JI}, (DK, k)_k)_A ≃ D(\frac I {JI} ⊗_A DK).
$$

作为左 $A$-模, 半单模 $DK$ 即 $K$. 此时有正合列的交换图

$$
\begin{bmatrix}
 &  & \frac{I}{JI} \otimes _{A}\frac{J}{I} & \rightarrow  & \frac{I}{JI} \otimes _{A} A & \rightarrow  & \frac{I}{JI} \otimes _{A} K & \rightarrow  & 0\\
 &  & ↡  &  & \parallel  &  & ⇣ &  & \\
0 & \rightarrow  & \frac{IJ+JI}{JI} & \rightarrow  & \frac{I}{JI} & \rightarrow  & \frac{I}{IJ+JI} & \rightarrow  & 0
\end{bmatrix}.
$$

此处, 左侧的 $↡$ 是直接的乘法运算. 由同调代数, 诱导的余核处的态射 $⇣$ 是同构.

{% endpf %}

{% qs %}
清晰地, $\dim \mathrm{Ext}^2(S(i), S(j)) = \dim e_j⋅ D(\frac{I}{IJ+JI})⋅ e_i$. 如何用自然语言刻画之?
{% endqs %}
