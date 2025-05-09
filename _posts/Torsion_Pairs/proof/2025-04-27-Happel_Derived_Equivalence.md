---
title: Happel 的导出等价定理
author: Chencheng Zhang
layout: post
category: [notes, pending]
---

* TOC
{:toc}

{% abs %}
关于 BB 定理的若干证明.

1. (BB 定理的原始证明). 函子 $(T,-)$ 建立了 $𝐚𝐝𝐝 (T)$ 与 $𝐩𝐫𝐨𝐣 (\mathrm{End}(T_A))$ 之间的范畴等价. 若 $T$ 是 tilting 模, 则这一范畴等价可以扩大至商对象上, 即 $𝒯 ≃ (T, 𝒯)$. 类似的检验对 $\mathrm{Ext}^1(T,-)$ 奏效. 注意: $p.\dim T ≤ 1$ 时, $(T, - )$ 与 $\mathrm{Ext}^1(T,-)$ 分别是左正合与右正合函子.
2. (Happel 的导出等价定理) 这将结论推广至投射维度有限的 tilting 对象.
3. (谱序列方法). 这是对 Happel 导出等价定理的完善, 其更精细地给出导出等价中轴复形的对应关系.
{% endabs %}

{% note %}
第一部分证明待补全.
{% endnote %}

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
见[此处](Happel_Fully_Faithful).
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

经典的 BB 理论见[此章节](Notes_on_Tilting#brenner-butler-理论). 以下谈论的 tilting 模是投射维度有限的, 见[宫下洋一](https://ousar.lib.okayama-u.ac.jp/files/public/3/33144/20160528031413376310/fulltext.pdf)开创性的工作.

### BB 谱序列

{% def %}
(投射维数有限的 Tilting 对象). 给定有限维代数 $A$ 与 $T ∈ 𝐦𝐨𝐝_A$. 称 $T$ 是有限维度的 tilting 模, 若

1. $p. \dim T < ∞$;
2. $T$ 的相对 $𝐚𝐝𝐝(T)$-内射维度有限;
3. $\mathrm{Ext}^{≥ 1}(T,T) = 0$.
{% enddef %}

简单地看, tilting 模描述作以下资料 $(T, A, A^∙ → T, A → T^∙)$. 其中

1. 相对投射分解 $A^∙ → T$ 长度有限, $A^∙ ∈ C(𝐚𝐝𝐝 (A))$;
2. 相对内射分解 $A → T^∙$ 长度有限, $T^∙ ∈ C(𝐚𝐝𝐝(T))$.

默认右模. 记 $B = \mathrm{End}(T)$, 则 $T ∈ 𝐦𝐨𝐝_{B^{\mathrm{op}}}$. 特别地, ${}_BT_A$ 是双模.

{% def %}
($T$-对偶). 今定义反变函子
\begin{equation}
  (-, T) : 𝐦𝐨𝐝_A → 𝐦𝐨𝐝_{B^{\mathrm{op}}},\quad M ↦ (M,T).
\end{equation}
{% enddef %}

{% ex %}
以下是范畴等价 (记 $A' := \mathrm{End}(_BT)$, 显然这是 $A$-代数):

1. $(-, {}_BT_A)_A : 𝐚𝐝𝐝(A_A) ≃ 𝐚𝐝𝐝 (_BT),\quad 𝐚𝐝𝐝(_AA_A) ≃ 𝐚𝐝𝐝 (_BT_A)$;
2. $(-, {}_BT_A)_A : 𝐚𝐝𝐝(T_A) ≃ 𝐚𝐝𝐝 (_BB),\quad 𝐚𝐝𝐝(_BT_A) ≃ 𝐚𝐝𝐝 (_BB_B)$;
3. $(-, {}_BT_A)_{B^{\mathrm{op}}} : 𝐚𝐝𝐝(_BB) ≃ 𝐚𝐝𝐝 (T_A),\quad 𝐚𝐝𝐝(_BB_B) ≃ 𝐚𝐝𝐝 (_BT_A)$;
4. $(-, {}_BT_A)_{B^{\mathrm{op}}} : 𝐚𝐝𝐝(_BT) ≃ 𝐚𝐝𝐝 (A'_A),\quad 𝐚𝐝𝐝(_BT_A) ≃ 𝐚𝐝𝐝 (_AA'_A)$.

将以上左右函子统一记作 $(-)^T$.
{% endex %}

{% note %}
实际上, 上述 $A' ≃ A$, 见下一定理.
{% endnote %}

{% thm %}
(对偶的投射分解, [证明](Dual_Tilting)). ${_B}T$ 是 tilting 模. 相应地,

1. $A^∙ → T$ 给出 $B$ 的 $𝐚𝐝𝐝 (T)$-相对内射分解 $B → (A^∙)^T$;
2. $A → T^∙$ 给出 $T$ 的 $𝐚𝐝𝐝 (B)$-相对投射分解 $(T^∙ )^T → T$.

{% endthm %}

{% thm %}
(四链等长, [证明](Four_Dim_Equal)). 以下四者相同: $T_A$ 的投射维数, $_BT$ 的投射维数, $A$ 相对 $𝐚𝐝𝐝 (T)$ 的内射维数, $B$ 相对 $𝐚𝐝𝐝 (T)$ 的内射维数.
{% endthm %}

{% def %}
(Tilting 函子). 给定 tilting 模的要件 $(T_A,A^∙ → T,A → T^∙)$, 定义函子

1. (右正合, 左伴随, 左导出) $G(-) := - ⊗_B T : 𝐦𝐨𝐝 _B → 𝐦𝐨𝐝 _A$;
2. (左正合, 右伴随, 右导出) $F(-) := (T, -)_A : 𝐦𝐨𝐝 _A → 𝐦𝐨𝐝 _B$.

由维数结论, $G_{< -n} := L_{< -n}G$ 与 $F^{> n} := R^{> n}F$ 消失.
{% enddef %}

{% note %}
关于谱序列, 见[此文](Spectral_sequence_filtered).
{% endnote %}

{% thm %}
(BB 谱序列, [证明](BB_Spectral_Sequence)). 存在函子的谱序列使得对任意 $M ∈ 𝐦𝐨𝐝 _A$,

$$
E_2 = (L_{-p}G ∘ R^q)F(M) ⇒ H^{-p+q}(M).
$$

此处 $H^{0}(M) = M$, 且 $H^{≠ 0}(M) = 0$.

{% endthm %}

{% thm %}
对偶地, 有

$$
\mathrm{Ext}^{q} (T, \mathrm{Tor}_{p}(N,T)) ⇒ H^{-p+q}(N).
$$

{% endthm %}

{% note %}
以上谱序列是有界的第二(四)象限谱序列, 并非传统意义下的 Grothendieck 谱序列.
{% endnote %}

{% cor %}
(边界映射). 考虑 $n ≥ 3$, 则有
<center>
<!-- https://q.uiver.app/#q=WzAsOSxbMCwxLCJHRl57bi0xfUZNIixbMzAsNjAsNjAsMV1dLFsyLDEsIkdGXm5GTSIsWzE4MCw2MCw2MCwxXV0sWzAsMiwiR197LTF9Rl57bi0xfUZNIixbMCw2MCw2MCwxXV0sWzIsMiwiR197LTF9Rl5uRk0iLFsxODAsNjAsNjAsMV1dLFswLDMsIkdfey0yfUZee24tMX1GTSJdLFsyLDMsIkdfey0yfUZebkZNIixbMzAsNjAsNjAsMV1dLFsyLDQsIkdfey0zfUZebkZNIixbMCw2MCw2MCwxXV0sWzAsMCwiMCJdLFswLDQsIm4gXFxnZXEgMyJdLFs1LDAsIlxcc2ltZXEiLDEseyJjb2xvdXIiOlszMCw2MCw2MF19LFszMCw2MCw2MCwxXV0sWzYsMiwiXFx2YXJlcHNpbG9uICIsMSx7ImNvbG91ciI6WzAsNjAsNjBdfSxbMCw2MCw2MCwxXV0sWzAsMywiMCIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsyLDUsIjAiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMyw3LCIiLDEseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzcsMSwiMCIsMSx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX0sWzE4MCw2MCw2MCwxXV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsOSxbMCwxLCJHRl57bi0xfUZNIixbMzAsNjAsNjAsMV1dLFsyLDEsIkdGXm5GTSIsWzE4MCw2MCw2MCwxXV0sWzAsMiwiR197LTF9Rl57bi0xfUZNIixbMCw2MCw2MCwxXV0sWzIsMiwiR197LTF9Rl5uRk0iLFsxODAsNjAsNjAsMV1dLFswLDMsIkdfey0yfUZee24tMX1GTSJdLFsyLDMsIkdfey0yfUZebkZNIixbMzAsNjAsNjAsMV1dLFsyLDQsIkdfey0zfUZebkZNIixbMCw2MCw2MCwxXV0sWzAsMCwiMCJdLFswLDQsIm4gXFxnZXEgMyJdLFs1LDAsIlxcc2ltZXEiLDEseyJjb2xvdXIiOlszMCw2MCw2MF19LFszMCw2MCw2MCwxXV0sWzYsMiwiXFx2YXJlcHNpbG9uICIsMSx7ImNvbG91ciI6WzAsNjAsNjBdfSxbMCw2MCw2MCwxXV0sWzAsMywiMCIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsyLDUsIjAiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMyw3LCIiLDEseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzcsMSwiMCIsMSx7ImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX0sWzE4MCw2MCw2MCwxXV1d&embed" width="600" height="400" style="border-radius: 8px; border: dashed;"></iframe>
</center>

对 $\mathrm{Ext} ∘ \mathrm{Tor}$ 进行类似的讨论, 得八处 $0$ 与四处同构:

1. $\mathrm{Tor}_{0, -1}^B(\mathrm{Ext}_A^n(T, M), T) = 0$,
2. $\mathrm{Tor}_{-n, -n+1}^B(\mathrm{Ext}_A^0(T, M), T) = 0$,
3. $\mathrm{Ext}^{0,1}_A(T, \mathrm{Tor}^B_{-n}(T, N)) = 0$,
4. $\mathrm{Ext}^{n}_A(T, \mathrm{Tor}^B_{0, -1}(T, N)) = 0$,
5. $\mathrm{Tor}_{-2}^B(\mathrm{Ext}_A^n(T, M), T) ≃ \mathrm{Tor}_{0}^B(\mathrm{Ext}_A^{n-1}(T, M), T)$,
6. $\mathrm{Tor}_{-n}^B(\mathrm{Ext}_A^{1}(T, M), T) ≃ \mathrm{Tor}_{-n +2}^B(\mathrm{Ext}_A^{0}(T, M), T)$,
7. $\mathrm{Ext}^{2}_A(T, \mathrm{Tor}^B_{-n}(N, T)) ≃ \mathrm{Ext}^{0}_A(T, \mathrm{Tor}^B_{-n+1}(N, T))$,
8. $\mathrm{Ext}^{n}_A(T, \mathrm{Tor}^B_{-1}(N, T)) ≃ \mathrm{Ext}^{n - 2}_A(T, \mathrm{Tor}^B_{0}(N, T))$.

{% endcor %}

{% cor %}
(通常的 BB-定理). 取 $n = 1$, 即 $\mathrm{Tor}^B_2(-,T)$ 与 $\mathrm{Ext}_A^2(T,-)$ 消失. 此时有
<center>
<!-- https://q.uiver.app/#q=WzAsMTIsWzAsMSwiKFQsIE4gXFxvdGltZXMgVCkiXSxbMSwxLCJcXG1hdGhybXtFeHR9XjEoVCwgTiBcXG90aW1lcyBUKSIsWzE4MCw2MCw2MCwxXV0sWzAsMiwiKFQgLCBcXG1hdGhybXtUb3J9X3stMX0oTixUKSkiLFsxODAsNjAsNjAsMV1dLFsxLDIsIlxcbWF0aHJte0V4dH1eMShUICwgXFxtYXRocm17VG9yfV97LTF9KE4sVCkpIl0sWzIsMSwiKFQsIE0pIFxcb3RpbWVzIFQiXSxbMywxLCJcXG1hdGhybXtFeHR9XjEoVCwgTSkgXFxvdGltZXMgVCIsWzE4MCw2MCw2MCwxXV0sWzIsMiwiXFxtYXRocm17VG9yfV97LTF9KChULE0pLCBUKSIsWzE4MCw2MCw2MCwxXV0sWzMsMiwiXFxtYXRocm17VG9yfV97LTF9KFxcbWF0aHJte0V4dH1eMShULE0pLCBUKSJdLFswLDAsIjAiXSxbMSwzLCIwIl0sWzIsMCwiMCJdLFszLDMsIjAiXSxbMywwLCJOIiwxXSxbNCw3LCJNIiwxXSxbMSw4LCIwIiwxXSxbOSwyLCIwIiwxXSxbMTAsNSwiMCIsMV0sWzYsMTEsIjAiLDFdXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTIsWzAsMSwiKFQsIE4gXFxvdGltZXMgVCkiXSxbMSwxLCJcXG1hdGhybXtFeHR9XjEoVCwgTiBcXG90aW1lcyBUKSIsWzE4MCw2MCw2MCwxXV0sWzAsMiwiKFQgLCBcXG1hdGhybXtUb3J9X3stMX0oTixUKSkiLFsxODAsNjAsNjAsMV1dLFsxLDIsIlxcbWF0aHJte0V4dH1eMShUICwgXFxtYXRocm17VG9yfV97LTF9KE4sVCkpIl0sWzIsMSwiKFQsIE0pIFxcb3RpbWVzIFQiXSxbMywxLCJcXG1hdGhybXtFeHR9XjEoVCwgTSkgXFxvdGltZXMgVCIsWzE4MCw2MCw2MCwxXV0sWzIsMiwiXFxtYXRocm17VG9yfV97LTF9KChULE0pLCBUKSIsWzE4MCw2MCw2MCwxXV0sWzMsMiwiXFxtYXRocm17VG9yfV97LTF9KFxcbWF0aHJte0V4dH1eMShULE0pLCBUKSJdLFswLDAsIjAiXSxbMSwzLCIwIl0sWzIsMCwiMCJdLFszLDMsIjAiXSxbMywwLCJOIiwxXSxbNCw3LCJNIiwxXSxbMSw4LCIwIiwxXSxbOSwyLCIwIiwxXSxbMTAsNSwiMCIsMV0sWzYsMTEsIjAiLDFdXQ==&embed" width="600" height="280" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endcor %}

### 导出等价的细化

{% def %}
(支撑). 回顾原始版本的 Brenner-Butler 定理, $\{ℱ,𝒯,𝒳,𝒴\}$ 作为导出范畴的全子范畴, 可通过函子的 $\ker$ 等价地定义. 对一般的 tilting 模, 定义推广

1. $S^p := ⋂_{0 ≤ k ≤ n}^{k ≠ p}\ker \mathrm{Ext}_A^k(T, -)$;
2. $S_{-p} := ⋂_{0 ≤ k ≤ n}^{k ≠ p}\ker \mathrm{Tor}^B_k(-, T)$.

{% enddef %}

{% thm %}
(Brenner-Bulter 定理的导出等价部分). 存在全子范畴间的等价
\begin{equation}
   F^t : S^t ≃ S_{-t} : G_{-t}.
\end{equation}
对经典的 tilting 理论 ($t ∈ \{0,1\}$), 上述即

1. $(T,-) : 𝒯 ≃ 𝒴 : - ⊗ T$;
2. $\mathrm{Ext}^1(T,-) :ℱ ≃ 𝒳 : \mathrm{Tor}_1(-, T)$.
{% endthm %}

{% pf %}
对 $M ∈ S^t$, $E_2 = E_∞$ 仅剩下 $G_∙ F^{t}M$ 一列. 该列是 $M$ 同调群的滤过, 从而

1. $G_{-t}F^t M = M$, 以及
2. $G_{-(≠ t)}F^t M = 0$.

另一侧对称.
{% endpf %}

{% ex %}
([王憲鍾序列](https://en.wikipedia.org/wiki/Spectral_sequence#Wang_sequence)). 若谱序列 $E_2$ 仅两列 (或仅两行) 非零, 则称之王序列. 对一切 $0 ≤ i < j ≤ n$ 定义

1. $S^{i,j} := ⋂_{0 ≤ k ≤ n}^{k ≠ i,j}\ker \mathrm{Ext}_A^k(T, -)$, 与
2. $S_{-i,-j} := ⋂_{0 ≤ k ≤ n}^{k ≠ i,j}\ker \mathrm{Tor}^B_k(-, T)$.

今取 $M ∈ S^{i,j}$, 由谱序列的计算得

1. 存在五项正合列
   \begin{equation}
      G_{-j+1}F^jM ↪ G_{-i}F^iM → M → G_{-j}F^jM ↠ G_{-i-1}F^iM
   \end{equation}
2. $G_{p-j+1}F^j M ≃ G_{p-i}F^i M$ 对 $p ≠ 0, -1$ 成立.
3. $G_{-([0,n-(j-i)])}F^iM$ 与 $G_{-([(j-i),n])}F^jM$ 可能非零;
4. 其余 $G_{-p}F^q M$ 必为 $0$.
{% endex %}

## BB 定理的原始证明

待补充.