---
title: 生成元的等价定义
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

以下假定局部小的加法范畴, 必要时假定范畴存在的余积.

{% def %}
(生成元的等价定义). 称 $U$ 是生成元, 若以下等价命题成立.

1. $(U,-)$ 是忠实的函子;
2. 对任意 $X \overset f {\underset g ⇉} Y$, 总存在 $φ : U → X$ 使得 $f ∘ φ ≠ g ∘ φ$.
3. (若范畴有余积). 对任意对象 $X$, 均存在指标集 $I$ 使得 $U^{⊕ I} ↠ X$ 满.
4. (若范畴有余积). $(U, -)$ 返回满射, 即, $(U, f)$ 满蕴含 $f$ 满.
{% enddef %}

{% pf %}
前两条的等价性来自定义.
\\
(1 ⇒ 3). 若 $(U, -)$ 忠实, 则考虑态射

$$
\operatorname{id}_{(U,X)} ∈ ((U,X), (U,X))_{𝐒𝐞𝐭𝐬} ≃ ∏_{(U,X)} (U,X) ≃ (∐_{(U,X)}U, X) ∋ θ_X.
$$
下证明 $θ_X$ 是满态射, 也就是 $a ≠ b$ 蕴含 $θ_X ∘ a ≠ θ_X ∘ b$. 由生成元的定义, 存在 $U \xrightarrow φ X$ 使得 $a ∘ φ ≠ b ∘ φ$.
\\
从余极限泛性质的视角出发, 复合

$$
U \overset {e_f} ↪ ∐_{(U,X)}U \xrightarrow {θ_X} X
$$

就是 $f$. 由 $a ≠ b$, 则考虑
\begin{equation}
  U \xrightarrow {φ}∐_{(U,X)}U \xrightarrow {θ_X} X \overset a {\underset b ⇉} Y
\end{equation}

由 $a ∘ φ = a ∘ θ_X ∘ φ ≠ b ∘ θ _X ∘ φ = b ∘ φ$, 得证.
\\
(3 ⇒ 1). 若存在 $f ≠ g ∈ (X,Y)$, 则复合满态射 $π : ∐_I U ↠ X$ 后 $f ∘ π ≠ g ∘ π$. 依照余积的泛性质, 总存在 $U$ 与 $φ : U → X$ 使得 $f ∘ φ ≠ g ∘ φ$. 因此 $(U,f) ≠ (U,g)$.
\\
(1 ⇒ 4). 取 $f : X → Y$ 使得 $(U,f)$ 满, 则任意 $U → Y$ 通过 $f$ 分解. 下证明 $f$ 满, 也就是 $a ≠ b$ 蕴含 $a ∘ f ≠ b ∘ f$. 依照生成元的定义, 任取 $p : U → Y$ 使得 $a ∘ p ≠ b ∘ p$. 由 $p$ 通过 $f$ 分解, 则必有 $a ∘ f ≠ b ∘ f$.
\\
(4 ⇒ 1). 取特殊的 Hom-满射 $(U,θ_X)$, 因此 $θ_X$ 满, 从而得 3., 故得 1..
{% endpf %}
