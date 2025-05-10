---
title: 加法范畴的局部化
author: Chencheng Zhang
layout: post
category: notes
---

{% abs %}
在何种条件下, 加法范畴的局部化仍是加法范畴?
{% endabs %}

## 局部化

{% def %}
对范畴 $𝒜$, 约定三类常见的局部化方式:

1. ([Gabriel-Zisman 局部化](Gabriel_Zisman)). 对包含同构的态射类 $S$, 记局部化范畴为 $𝒜[S^{-1}]$;
2. ([稳定加法范畴](Stable_Add_Cat)). 若 $𝒜$ 是加法范畴, 记 $𝒞 ↣ 𝒜$ 是直和闭的对象类 (或视作全子范畴), 记商范畴 $𝒜 / 𝒞$;
3. (分式范畴). 若 $S$ 是乘法系, 记 $S^{-1}𝒜$ 是局部化.

{% enddef %}

## 积范畴的局部化

{% note %}
以上从 $1$ 至 $3$ 是逐渐苛刻的局部化条件. 特别注意, 商范畴 (对象类不变, 态射类改作 $\mathrm{Hom}$-的商对象) 未必是局部化范畴.
{% endnote %}

以下选用 [NBGC](NBGC) 公理体系. 此体系下虽无法进行取真类的类, 真类的幂集等操作; 但真类的交, 并, Cartesian 积等均是合法的. 例如

{% ex %}
(真类的 Catersian 积). 依照分离公理模式, 给定类 $A = \{x ∣ x ∈ A(x)\}$ 与 $B = \{y ∣ y ∈ B(y)\}$, 定义类 $C$ 如下:
$$\begin{equation}
(z ∈ C) ⟺ (z ∈ \{\{x,\{y\}\}∣ x∈ A(x)∧ y∈ B(y)\}).
\end{equation}$$
积此处 $C$ 即是 $A$ 与 $B$ 的 Cartesian 积.
{% endex %}

{% def %}
(两个范畴的乘积). 给定范畴 $𝒜$ 与 $ℬ$, 定义积范畴 $𝒞$ 如下

1. (对象类). $𝖮𝖻(𝒞) = 𝖮𝖻 (𝒜) × 𝖮𝖻 (ℬ)$ 是真类的 Cartersian 积.
2. (态射类). $𝖬𝗈𝗋(𝒞) = 𝖬𝗈𝗋(𝒜) × 𝖬𝗈𝗋(ℬ)$ 是真类的 Cartersian 积.
3. (恒等态射). 略.
4. (复合态射). $(a,b) ∘ (a', b') =: (a ∘ a', b ∘ b')$.

记上述 $𝒞 =: 𝒜 × ℬ$.
{% enddef %}

{% prop %}
(函子范畴的 Curry 化, [证明](Currying_Functor_Cat)). 对范畴 $𝒜$, $ℬ$ 与 $ℰ$, 以下两个函子范畴同构:

1. $𝐅𝐮𝐧𝐜𝐭 (𝒜 × ℬ, ℰ)$, 即, 积范畴出发的函子范畴;
2. $𝐅𝐮𝐧𝐜𝐭 (𝒜, 𝐅𝐮𝐧𝐜𝐭 (ℬ, ℰ))$, 即, 指向函子范畴的函子范畴.

{% endprop %}

{% prop %}
(局部化与乘积交换, [证明](Prod_Localisation)). 给定有限个范畴 $𝒞_i$ 以及包含同构的态射类 $S_i ⊆ 𝖬𝗈𝗋(𝒞_i)$, 以下由局部化诱导的态射是同构:
$$\begin{equation}
(×_{i=1}^n 𝒞_i) [(×_{i=1}^n S_i)^{-1}]→ (×_{i=1}^n 𝒞_i[S_i^{-1}]).
\end{equation}$$
{% endprop %}

{% note %}
以上结论对范畴的无限积一般不成立: 对于 G-Z 局部化, 其中的 zig-zag 态射是有限长度的; 但 $(×_1^∞ 𝒞) [(×_1^∞ S_i)^{-1}]$ 中存在无限长的 zig-zag 态射.
{% endnote %}

## 局部化与伴随函子

{% def %}
(函子的前项复合). 给定函子 $F : 𝒜 → ℬ$. 对任意 $𝒞$, 统一记
$$\begin{equation}
F^∗ : 𝐅𝐮𝐧𝐜𝐭 (ℬ , 𝒞 ) → 𝐅𝐮𝐧𝐜𝐭 (𝒜 , 𝒞 ) ,\quad  L ↦ L ∘ M.
\end{equation}$$
{% enddef %}

{% lem %}
(局部化的拉回全忠实, [证明](PB_Localisation_Fullyfaithful)). 给定局部化函子 $Q : 𝒜 → 𝒜[S^{-1}]$, 对任意范畴 $ℬ$, 以下是全忠实的函子
$$\begin{equation}
Q^∗:𝐅𝐮𝐧𝐜𝐭(𝒜[S^{-1}] , ℬ) ↣ 𝐅𝐮𝐧𝐜𝐭(𝒜,ℬ),\quad F ↦ F ∘ Q.
\end{equation}$$
{% endlem %}

{% prop %}
(直接检验, 证明略). 给定伴随函子
$$\begin{equation}
(𝒟 \xrightarrow F𝒞)  ⊣ (𝒞  \xrightarrow G 𝒟) ;\quad ( 1_{𝒟} \xrightarrow η GF, FG \xrightarrow ε 1_{𝒞}).
\end{equation}$$
对任意范畴 $ℰ$, 记

1. $F^∗ := \mathrm{Funct}(𝒞, ℰ)$;
2. $G^∗ := \mathrm{Funct}(𝒟, ℰ)$.

此时 $G^∗ ⊣ F^∗$ 是伴随函子, 单位是 $ε ^∗$, 余单位是 $η^∗$.
{% endprop %}

{% note %}
由检验, 假若以上范畴是 $k$-充实的, 则充实函子范畴的伴随也是 $k$-充实的.
{% endnote %}

{% prop %}
(局部化的伴随. 检验三角恒等式即可). 给定两组资料:

1. 伴随函子的资料 $(𝒞, 𝒟, F, G, η, ε)$, 其中 $F: 𝒟 → 𝒞$ 是左伴随;
2. 局部化的资料 $(𝒞, S; 𝒟, T)$, 其中 $S ⊆ 𝖬𝗈𝗋 (𝒞 )$ 与 $T ⊆ 𝖬𝗈𝗋 (𝒟 )$ 是包含同构的态射类.

若 $F(S) ⊆ T$ 且 $G(T) ⊆ S$, 则存在局部化函子 $Q : 𝒞 → 𝒞[S^{-1}]$ 与 $P : 𝒟 → 𝒟[T^{-1}]$. 特别地, 得局部化范畴间的伴随函子:

- 伴随函子的资料 $(𝒞[S^{-1}], 𝒟[S^{-1}], \overline F, \overline G, \overline η, \overline ε)$, 其中 $\overline F: 𝒟[T^{-1}] → 𝒞[S^{-1}]$ 是左伴随.

其中 $\overline{(-)}$ 通过局部化函子分解所得.

<center>
<!-- https://q.uiver.app/#q=WzAsNCxbMiwwLCJcXG1hdGhzY3IgRFtUXnstMX1dIl0sWzIsMSwiXFxtYXRoc2NyIENbU157LTF9XSJdLFswLDAsIlxcbWF0aHNjciBEIl0sWzAsMSwiXFxtYXRoc2NyIEMiXSxbMCwxLCJcXG92ZXJsaW5lIEYiLDIseyJjdXJ2ZSI6Mn1dLFsxLDAsIlxcb3ZlcmxpbmUgRyIsMix7ImN1cnZlIjoyfV0sWzIsMywiRiIsMix7ImN1cnZlIjoyfV0sWzMsMiwiRyIsMix7ImN1cnZlIjoyfV0sWzIsMCwiUCJdLFszLDEsIlEiLDJdLFs0LDUsIlxcZGFzaHYiLDEseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiw3LCJcXGRhc2h2IiwxLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNCxbMiwwLCJcXG1hdGhzY3IgRFtUXnstMX1dIl0sWzIsMSwiXFxtYXRoc2NyIENbU157LTF9XSJdLFswLDAsIlxcbWF0aHNjciBEIl0sWzAsMSwiXFxtYXRoc2NyIEMiXSxbMCwxLCJcXG92ZXJsaW5lIEYiLDIseyJjdXJ2ZSI6Mn1dLFsxLDAsIlxcb3ZlcmxpbmUgRyIsMix7ImN1cnZlIjoyfV0sWzIsMywiRiIsMix7ImN1cnZlIjoyfV0sWzMsMiwiRyIsMix7ImN1cnZlIjoyfV0sWzIsMCwiUCJdLFszLDEsIlEiLDJdLFs0LDUsIlxcZGFzaHYiLDEseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9LCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiw3LCJcXGRhc2h2IiwxLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
</center>

{% endprop %}

{% ex %}
若复形间的伴随函子保持可缩复形 (无环复形), 则伴随函子下降至同伦范畴 (导出范畴).
{% endex %}

{% lem %}
给定 $𝒞$ 的态射类 $S$ 与 $T$. 若局部化 $𝒞[S^{-1}]$ 与 $𝒞[T^{-1}]$ 彼此分解, 则 $𝒞 [S^{-1}] ≃ 𝒞[T^{-1}]$ 是范畴同构.
{% endlem %}

## 加法范畴的局部化

{% thm %}
([证明](Additive_Oplus_Closed_Implies)). 给定加法范畴 $ℬ$ 与态射类 $S$. 假定 $S$ 对直和封闭, 即,
$$\begin{equation}
[f,g ∈ S] ⇒ [f ⊕ g := \begin{pmatrix}f&0 \\ 0&g\end{pmatrix} ∈ S].
\end{equation}$$

此时, 局部化函子是加法函子.
{% endthm %}

{% cor %}
(稳定加法范畴是局部化范畴, [证明](Stable_Add_Cat)). 给定 (通常默认局部小) 加法范畴 $𝒜$ 与直和闭的全子范畴 $𝒞$, 定义 $𝒜 / 𝒞$ 是如下范畴:

1. 对象选取 $𝖮𝖻 (𝒜 / 𝒞) = 𝖮𝖻 (𝒜)$;
2. 态射选作商群

   $$\begin{equation}
   (X,Y)_{𝒜 / 𝒞} := \frac{(X,Y)_𝒜}{\{\text{通过 $𝒞$ 中对象分解的态射}\}}
   \end{equation}$$

以上的稳定加法范畴是局部化.
{% endcor %}

{% ex %}
(加法范畴的局部化未必是加法范畴). 记 $𝒜$ 是 $k$ 上有限维线性空间范畴, $S = \mathrm{Iso}∪ \{0 → k\}$. 依照 G-Z 局部化, $𝒜[S^{-1}]$ 的零态射恰是通过一维线性空间 $k$ 分解的态射. 计算得 $\mathrm{End}(k^2) ≠ 0 = \mathrm{End}(k)^4$, 从而 $𝒜 [S^{-1}]$ 不是加法范畴.
{% endex %}
