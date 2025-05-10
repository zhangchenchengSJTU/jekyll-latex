---
title: 稳定加法范畴
author: Chencheng Zhang
layout: post
category: proof
---

## 稳定加法范畴是局部化范畴

{% def %}
(稳定加法范畴). 给定 (通常默认局部小) 加法范畴 $𝒜$ 与直和闭的全子范畴 $𝒞$, 定义 $𝒜 / 𝒞$ 是如下范畴:

1. 对象选取 $𝖮𝖻 (𝒜 / 𝒞) = 𝖮𝖻 (𝒜)$;
2. 态射选作商群

   $$\begin{equation}
   (X,Y)_{𝒜 / 𝒞} := \frac{(X,Y)_𝒜}{\{\text{通过 $𝒞$ 中对象分解的态射}\}}
   \end{equation}$$

{% enddef %}

{% thm %}
以上的稳定加法范畴是局部化.
{% endthm %}

{% pf %}
定义子群 $(X,Y)_0 ≤ (X,Y)$. 称 $f ∈ (X,Y)$ 当且仅当 $f$ 通过 $𝒞$ 中对象分解. 特别地, $(X,Y)_{𝒜 / 𝒞} =\frac{(X,Y)}{(X,Y)_0}$.
\\
\\
定义态射类 $S$. 称 $f ∈ S$ 当且仅当存在 $g ∈ (t(f), s(f))$ 使得 $\mathrm{id}_{s(f)} - gf$ 与 $\mathrm{id}_{t(f)} - fg$ 是 $\mathrm{End}_0$-类型的态射.

- 简而言之, $S$ 中态射几乎为同构.

由 $S$ [对直和封闭](Additive_Oplus_Closed_Implies), 故局部化函子 $Q : 𝒜 → 𝒜 [S^{-1}]$ 是加法函子. 比较泛性质:

1. 加法函子 $F: 𝒜 → ℬ$ 经稳定化函子 $R: 𝒜 → 𝒜 / 𝒞$ 分解, 当且仅当 $F$ 将 $𝒞$ 映至零对象;
2. 加法函子 $F: 𝒜 → ℬ$ 经局部化函子 $Q : 𝒜 → 𝒜 [S^{-1}]$ 分解, 当且仅当 $F$ 将 $S$ 中态射映至同构.

一方面, 1. 可以通过 2. 分解. 任取 $f ∈ S$, 依定义取 $g$ 使得 $1-fg$ 与 $1-gf$ 通过 $𝒞$ 中对象封闭. 因此 $R(f)$ 是同构.
\\
\\
另一方面, 2. 可以通过 1. 分解. 任取 $X ∈ 𝒞$, 则 $0 → X$ 属于 $S$. 这表明 $Q(X)$ 是零对象.

{% endpf %}

{% slo %}
不同的泛性质给出同一范畴!
{% endslo %}

## 复形的同伦范畴

{% thm %}
给定加法范畴 $ℬ$, 复形范畴 $C(ℬ)$ 至同伦范畴 $K(ℬ) := C(ℬ) / 𝒞$ 是局部化. 此处, $𝒞$ 是全体可缩 (可裂无环) 复形构成的对象类.
{% endthm %}

{% pf %}
$𝒞$ 是加法范畴, 从而稳定范畴是局部化.
{% endpf %}

以下构造性的证明避免了对[此定理](Additive_Oplus_Closed_Implies)的使用. 记态射类 $S$ 是全体同伦等价.

{% pf %}
一方面, 同伦等价在 $C(ℬ) → K(ℬ) := C(ℬ) / 𝒞$ 中是同构, 遂有分解
$$\begin{equation}
C(ℬ) → C(ℬ) [S^{-1}] → K(ℬ)
\end{equation}$$
另一方面, 只需证明局部化函子关于 $\mathrm{Hom}_0$ 类型的态射映至 $0$. 由拓扑学定义或是简单的代数验证, 以下是一一对应:
$$\begin{equation}
\{(s,f,g)\mid f\overset s\sim g:X\to Y\}\overset {\text{1:1}} ⟷ \mathrm{Hom}_{C(𝒜)}(\mathrm{Cyl}(\mathrm{id}_X),Y).
\end{equation}$$
将 $f$ 与 $g$ 写作复合态射的形式:

- $f=\left[X\xrightarrow{e_2}\mathrm{Cyl}(\mathrm{id}_X)\xrightarrow{(s,f,g)} Y\right]$,
- $g=\left[X\xrightarrow{e_3}\mathrm{Cyl}(\mathrm{id}_X)\xrightarrow{(s,f,g)} Y\right]$.

由于 $e_2$ 与 $e_3$ 是同伦等价, 从而 $e_2, e_3 ∈ S$. 因此 $f$ 与 $g$ 是局部化范畴中相同的态射. 这给出分解 $\mathrm{Hom} → \underline{\mathrm{Hom}} → \mathrm{Hom}_{[S^{-1}]}$.
{% endpf %}
