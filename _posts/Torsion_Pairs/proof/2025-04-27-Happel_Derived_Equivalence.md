---
title: Happel 的导出等价定理
author: Chencheng Zhang
layout: post
category: notes
---

* TOC
{:toc}

{% abs %}
关于 BB 定理的若干证明.

1. (BB 定理的原始证明). 函子 $(T,-)$ 建立了 $𝐚𝐝𝐝 (T)$ 与 $𝐩𝐫𝐨𝐣 (\mathrm{End}(T_A))$ 之间的范畴等价. 若 $T$ 是 tilting 模, 则这一范畴等价可以扩大至商对象上, 即 $𝒯 ≃ (T, 𝒯)$. 类似的检验对 $\mathrm{Ext}^1(T,-)$ 奏效. 注意: $p.\dim T ≤ 1$ 时, $(T, - )$ 与 $\mathrm{Ext}^1(T,-)$ 分别是左正合与右正合函子.
2. (Happel 的导出等价定理) 这将结论推广至投射维度有限的 tilting 对象.
3. (谱序列方法). 这是对 Happel 导出等价定理的完善, 其更精细地给出导出等价中轴复形的对应关系.
{% endabs %}

## Happel 导出等价定理

以下 $𝒜$ 是有足够投射的 Abel 范畴.

{% lem %}
若 $T ∈ 𝒜$ 满足 $\mathrm{Ext}^{≥ 1}(T) = 0$, 则局部化 $C^b(𝐚𝐝𝐝 T) ↣ C^b𝒜 → D^b𝒜$ 诱导的态射

$$
K^b(𝐚𝐝𝐝 (T)) → D^b 𝒜
$$

是全忠实的嵌入.

{% endlem %}

{% pf %}
以下使用数学归纳法证明. 记 $P(m,n)$ 是:

* 对一切长度不超过 $m$ 与 $n$ 的复形 $P$ 与 $Q$, 以下是同构

  $$
  (P,Q)_{K^b(𝐚𝐝𝐝 (T))} → (P,Q)_{K^b𝒜} → (P,Q)_{D^b 𝒜}.
  $$

显然 $P(0,0)$ 成立, 因为对轴复形 $X,Y ∈ C^b (𝐚𝐝𝐝(T))$ 总有 $\mathrm{Ext}^{≥ 1}(X,Y) = 0$.
\\
下进行归纳, 假定 $P(≤ m, ≤ n)$ 成立. 对任意长度为 $m+1$ 的 $X$, 考虑强制截断, 则有同伦范畴以及导出范畴的好三角 $LX → X → RX → LX[1]$. 对 $(-,Y)_{K^b(𝐚𝐝𝐝 (T))}$ 与 $(-,Y)_{D^b 𝒜}$ 使用同调代数基本定理, 得交换图

$$
\scriptsize\begin{bmatrix}
( LX[ 1] ,Y)_{K^{b}(\mathbf{add}( T))} & \rightarrow  & ( RX,Y)_{K^{b}(\mathbf{add}( T))} & \rightarrow  & ( X,Y)_{K^{b}(\mathbf{add}( T))} & \rightarrow  & ( LX,Y)_{K^{b}(\mathbf{add}( T))} & \rightarrow  & ( RX[ -1] ,Y)_{K^{b}(\mathbf{add}( T))}\\
\parallel  &  & \parallel  &  & \downarrow  &  & \parallel  &  & \parallel \\
( LX[ 1] ,Y)_{D^{b} 𝒜 } & \rightarrow  & ( RX,Y)_{D^{b} 𝒜 } & \rightarrow  & ( X,Y)_{D^{b} 𝒜 } & \rightarrow  & ( LX,Y)_{D^{b} 𝒜 } & \rightarrow  & ( RX[ -1] ,Y)_{D^{b} 𝒜 }
\end{bmatrix}
$$

此时, 中间箭头是同构. 这完成了归纳 $P(≤ m, ≤ n) ⇒ P(≤ m+1, ≤ n)$. 另一方向同理. 综上, 以上 $K^b(𝐚𝐝𝐝 (T)) → D^b 𝒜$ 是全忠实的.

{% endpf %}

{% lem %}
$𝒜$ 的整体维度有限, 当且仅当局部化函子诱导的 $K^b(𝐩𝐫𝐨𝐣(𝒜)) ≃ D^b(𝒜)$ 是范畴等价.
{% endlem %}

{% pf %}
略.
{% endpf %}

{% thm %}
记 Abel 范畴 $𝒜$ 有足够投射且整体维数有限. 若存在 $T ∈ 𝒜$ 满足 $\mathrm{Ext}^{≥ 1}(T,T) = 0$, 记 $B = \mathrm{End}(T_A)$. 此时, 以下 tilting 函子给出范畴等价:

$$
(T,-)_A : 𝐚𝐝𝐝 (T) ⇆ 𝐩𝐫𝐨𝐣 : (- ⊗ _BT).
$$

特别地, 以下是三角等价 (右侧是导出等价):

$$
\begin{bmatrix}
\mathbf{add}( T) &  & K^{b}(\mathbf{add}( T)) & \xrightarrow[\sim ]{\text{lem.}} & D^{b} 𝒜 \\
{\small( T,-)} ⇅ {\small -⊗ _{B} T} & ⇒  & ⇅  &  & ⇅ \\
\mathbf{proj} &  & K^{b}(\mathbf{proj}) & \xrightarrow[∼ ]{} & D^{b}( B)
\end{bmatrix}.
$$

{% endthm %}

{% pf %}
使用上述引理即可.
{% endpf %}

## 谱序列方法

待补充.

## BB 定理的原始证明

待补充.
