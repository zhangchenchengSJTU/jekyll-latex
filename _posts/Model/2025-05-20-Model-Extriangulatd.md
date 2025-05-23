---
title: Model Structures on Extriangulated Cateogory
author: ZCC
layout: post
category: caprice
---

## Preliminaries

See [here (en chinois)](Stable_Cat_Analogue) for an preliminary introduction to extriangulated categories, including

- the basic definition (ET's), and terminologies:
  - the additive realisation of an extension element $δ ∈ 𝔼 (Z,X)$ is a class $𝔰 (δ) ⊆ [Z,X]$;
  - an $𝔼$-triangle, or a conflation for a certain $X → Y → Z$ belongs to some $𝔰 (δ)$ for some $δ ∈ 𝔼 (Z,X)$.
- the homological long exact sequence:
  - the exactness at the second $𝔼$-term is shown by ET4,
  - for category with enough projectives, one can define syzygies and so-called derived $𝔼^i$'s ($i ≥ 2$), see [Link1](https://link.springer.com/article/10.1007/s11464-021-0953-2) and [Link2](https://arxiv.org/abs/1702.00244) for grneray theory.
- the diagram theorems, including
  - trivial conflation (the split case, the term $\binom f x  ∈ 𝐢𝐧𝐟$ for $f ∈ 𝐢𝐧𝐟$);
  - the completion of $2 × 2$ diagrams;
  - the $3 × 3$ lemma.

### Cotorsion Theory

{% def %}
定义一些对象类的运算 (不要求是加法子范畴).

1. $\mathrm{Cone}(𝒳 , 𝒴 ) = \{Z ∣ \text{存在三角} \ X → Y → Z\}$;
2. $\mathrm{coCone}(𝒳 , 𝒴 ) = \{Z ∣ \text{存在三角} \ Z → X → Y\}$;
3. $𝒳 ∗ 𝒴 = \{E ∣ \text{存在三角} \ X → E → Y\}$.

{% enddef %}

{% def %}
(Cotorison pair). 称对象类 $(𝒰 , 𝒱)$ 是外三角范畴的 cotorsion pair, 若

1. $𝒰$ 与 $𝒱$ 是同构闭且直和项闭的加法全子范畴;
2. $𝔼 (𝒰 , 𝒱 ) = 0$;
3. 任意对象 $X$ 可以嵌入 $𝔼$-三角 $X → V_C → U_C$;
4. 任意对象 $Y$ 可以嵌入 $𝔼$-三角 $V^C → U^C → Y$.

此处定义的 cotorsion pair 自动是完备的, 对应正合范畴的特殊右 $𝒱$ 逼近与特殊左 $𝒰$ 逼近.

{% enddef %}

{% lem %}
([证明](Enough_Proj_Cotorsion)). 若范畴有足够投射对象, 则以上定义的 3. 蕴含 4.; 若范畴有足够内对象, 则以上定义的 4. 蕴含 3..
{% endlem %}

{% lem %}
([证明](cp_complete_oth)). 以上定义的 $𝒰$ 与 $𝒱$ 满足如下基本性质:

1. 若使用 $⟂$ 表示 $𝔼$-垂直关系, 则 $𝒰 ^⟂ = 𝒱$, 且 $𝒰 = {}^⟂ 𝒱$.
2. $𝒰$ 与 $𝒱$ 关于形变收缩核封闭.
3. $𝒰$ 与 $𝒱$ 关于扩张 (运算 $∗$) 封闭.

{% endlem %}

{% lem %}
([证明](Stable_Adjoint)). 上述 $X → V_C$ 与 $U^C → X$ 在稳定范畴中具有函子性. 具体地, 记 $𝒥 := 𝒰 ∩ 𝒱$, 稳定范畴 $𝒞 / 𝒥$ 未必是外三角范畴, 但有如下结论.

1. 对任意 $U ∈ 𝒰$ 与 $V ∈ 𝒱$, 稳定范畴中总有 $\underline {(U,V)} = 0$. 换言之, 任意 $f : U → V$ 通过某一 $M ∈ 𝒥$ 分解.
2. 对任意 $C \xrightarrow {l_C} V_C → U_C$ 与 $V ∈ 𝒱$, 作用函子 $\underline {(-, V)}$ 后得到稳定范畴中的映射链:
   $$\begin{equation}
   0 = \underline {(U_C, V)} → \underline {(V_C, V)} ≃ \underline {(C, V)}.
   \end{equation}$$
   中间的同构式诱导了左右伴随函子
   $$\begin{equation}
   V_∙ : 𝒞 / 𝒥  ⇆ 𝒱 / 𝒥 : \text{inclu}.
   \end{equation}$$
   其单位是 $l_C : C → V_C$, 余单位是 $\mathrm{id}_{𝒱 / 𝒥}$.
3. 对任意 $V^C → U^C \xrightarrow {r^C} C$ 与 $U ∈ 𝒰$, 作用函子 $\underline{(U, -)}$ 后得到稳定范畴中的映射链
   $$\begin{equation}
   0 = \underline{(U, V^C)} → \underline{(U, U^C)} ≃ \underline{(U, C)}.
   \end{equation}$$
   中间的同构式诱导了左右伴随函子
   $$\begin{equation}
    \text{inclu} : 𝒰 / 𝒥  ⇆ 𝒞 / 𝒥 : U^∙ .
   \end{equation}$$
   其单位是 $\mathrm{id}_{𝒰 / 𝒥}$, 余单位是 $r^C: U^C → C$.

{% endlem %}

{% def %}
(Twin cotorsion pairs). 给定两个 cotorsion pair $(𝒮 , 𝒮 ^⟂ )$ 与 $(^⟂ 𝒱 , 𝒱)$. 考虑以下三个性质:

1. $𝔼 (𝒮 , 𝒱 ) = 0$;
2. $𝒮 ∩ 𝒮 ^⟂ = {}^⟂ 𝒱 ∩ 𝒱$;
3. $\mathrm{Cone}(𝒱 , 𝒮) = \mathrm{coCone}(𝒱 , 𝒮)$.

称之

- twin cotorsion pairs, 若满足 1.;
- concentric twin cotorsion pairs, 若满足 1. 与 2.;
- Hovey twin cotorsion pairs, 若满足 1., 2., 与 3..

{% enddef %}

{% note %}
条件 $\mathrm{Cone}(𝒱 , 𝒮) = \mathrm{coCone}(𝒱 , 𝒮)$ 指向模型结构中的对象类 $𝒲$.
{% endnote %}

{% lem %}
([证明](Equi_Def_Hovey_CP)). 实际上, Hovey twin cotorsion pairs 的条件只需要 1. 与 3., 即 2. 是多余的.
{% endlem %}

{% def %}
(Hovey twin cotorsion pairs 的标准记号). 使用 $(𝒮 , 𝒮 ^⟂ ; ^⟂ 𝒱 , 𝒱 )$ 表示 Hovey twin cotorsion pairs. 其中,

- $(𝒮 , 𝒮 ^ ⟂ )$ 与 $(^⟂ 𝒱 , 𝒱 )$ 是两对 cotorsion pair, 满足 $𝔼 (𝒮 , 𝒱 ) = 0$;
- $𝒥 := 𝒮 ∩  𝒮 ^ ⟂ = ^⟂ 𝒱 ∩  𝒱$;
- $𝒩 := \mathrm{Cone}(𝒱 , 𝒮) = \mathrm{coCone}(𝒱 , 𝒮)$.

{% enddef %}

{% lem %}
以下等式由 ET4 (ET4') 证明:

1. $\mathrm{Cone}(𝒳 , \mathrm{Cone}(𝒴 , 𝒵 )) = \mathrm{Cone}(𝒴 ∗ 𝒳 , 𝒵 )$;
   * 特别地, $\mathrm{Cone}(𝒱 , 𝒩) = 𝒩$.
2. $\mathrm{coCone}(\mathrm{coCone}(𝒳 ,𝒴 ), 𝒵 ) = \mathrm{coCone}(𝒳 , 𝒵 ∗ 𝒴 )$;
   * 特别地, $\mathrm{coCone}(𝒩 , 𝒮 ) = 𝒩$.
3. $\mathrm{Cone}(𝒳 , \mathrm{coCone}(𝒴, 𝒵 )) = \mathrm{coCone}(\mathrm{Cone}(𝒳 , 𝒴 ), 𝒵 )$;
4. $𝒳 ∗ (𝒴 ∗ 𝒵 ) = (𝒳 ∗ 𝒴 )∗ 𝒵$;

以下不等式由双 inflation 推出 (双 deflation 拉回) 证明:

1. $\mathrm{coCone}(𝒳 ,𝒵 )∗ 𝒴 ⊆ \mathrm{coCone}(𝒳 ∗ 𝒴 , 𝒵 )⊇ \mathrm{coCone}(𝒴 ,\mathrm{Cone}(𝒳 ,𝒵 ))$;
   * 特别地, $𝒩 ⊆ 𝒩 ∗ 𝒮 ⊆ \mathrm{coCone}(𝒱 ⊕ 𝒮 , 𝒮 ) ⊆ 𝒩$ 取等.
   * 特别地, $𝒩 ∗ 𝒱 = 𝒩$.
2. $𝒴 ∗ \mathrm{Cone}(𝒳 , 𝒵 ) ⊆ \mathrm{Cone}(𝒳 , 𝒴 ∗ 𝒵 ) ⊇ \mathrm{Cone}(\mathrm{coCone}(𝒳 ,𝒵 ),𝒴 )$.
   * 特别地, $𝒩 ⊆ 𝒱 ∗ 𝒩 ⊆ \mathrm{Cone}(𝒱 , 𝒱 ⊕ 𝒮) ⊆ 𝒩$ 取等.
   * 特别地, $𝒮 ∗ 𝒩 = 𝒩$.

以上, $𝔼 (𝒮 , 𝒱) = 0$, 故 $𝒱 ∗ 𝒮 = 𝒱 ⊕ 𝒮$.
{% endlem %}

{% cor %}
特别地, $𝒮 , 𝒱 ⊆ 𝒩$, 因此 $𝒩$ 关于 $𝔼$-三角的二推三封闭. 因此是全子外三角范畴.
\\
\\
计算示例:
$$\begin{aligned}
𝒩 ∗ 𝒩 & = 𝒩 ∗ \mathrm{Cone}(𝒱 , 𝒮 ) ⊆ \mathrm{Cone}(𝒱 , 𝒩 ∗ 𝒮)\\
& = \mathrm{Cone}(𝒱 ,𝒩) = 𝒩.
\end{aligned}$$

{% endcor %}
