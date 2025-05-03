---
title: 生成元的性质
author: Chencheng Zhang
layout: post
category: notes
---

* toc
{:toc}

{% note %}
暂时零散地记录一些细节的命题, 有空时补充.
{% endnote %}

## 生成元

以下假定局部小的加法范畴, 必要时假定范畴存在的余积.

{% def %}
(生成元, 等价性的[证明](Equi_Def_Generator)). 称 $U$ 是生成元, 若以下等价命题成立.

1. $(U,-)$ 是全忠实的函子;
2. 对任意 $X \overset f {\underset g ⇉} Y$, 总存在 $φ : U → X$ 使得 $f ∘ φ ≠ g ∘ φ$.
3. (若范畴有余积). 对任意对象 $X$, 均存在指标集 $I$ 使得 $U^{⊕ I} ↠ X$ 满.
4. (若范畴有余积). $(U, -)$ 返回满射, 即, $(U, f)$ 满当且仅当 $f$ 满.
{% enddef %}

### Abel 范畴的生成元

{% lem %}
假定 $U$ 是 Abel 范畴的生成元, 则 $(U, -)$ 保持严格的单射.
{% endlem %}

{% pf %}
给定严格的单射 $i : K ↪ X$. 取 $φ : U→ X$ 使得

$$
U \xrightarrow φ X \overset 0 {\underset{π } ⇉ } X/K
$$

是不同的复合态射, 因此 $φ$ 不通过 $i$ 分解. 这说明 $(U,i)$ 不是满射.
{% endpf %}

{% thm %}
(Abel 范畴良幂的一个充分条件). 若 Abel 范畴局部小且有生成元, 则对任意对象 $X$, 子对象类 $𝐒𝐮𝐛(X)$ 是集合.
{% endthm %}

{% pf %}
考虑偏序集的函子
\begin{equation}
  𝐒𝐮𝐛 (X) → 𝐬𝐮𝐛 (U, X),\quad [ι : S ↪ X] ↦ [(U, ι) : (U, S) ↪ (U, X)].
\end{equation}

以上引理说明 $(U,-)$ 保持严格单射, 从而保持严格的子对象. 这说明 $𝐒𝐮𝐛 (X)$ 是集合.

{% endpf %}

### 投射生成元

{% slo %}
投射生成元的好处: 将 $x ∈ X$ 描述作 $f ∈ (U, X)$.
{% endslo %}

{% ex %}
(投射对象). 投射对象 $P$ 具有与生成元类似的性质.

1. $(P, -)$ 是正合的函子;
2. $(P, -)$ 保持满射.
{% endex %}

{% def %}
(投射生成元). 若生成元是投射对象, 则称之投射生成元.
{% enddef %}

{% ex %}
对投射生成元 $U$,

1. $(U,-)$ 是忠实的正合函子;
2. $(U,-)$ 保持并反射一切满射.
{% endex %}

对 Abel 范畴而言 (尤其是常见的模范畴), 足够大的投射对象似乎总是生成元. 以下是投射对象构成生成元的充要条件.

{% prop %}
假定 $P$ 是 Abel 范畴的投射对象. $P$ 是投射生成元当且仅当 $(P,-)$ 反射非零对象, 即, $X = 0$ 当且仅当 $(P,X) = 0$.
{% endprop %}

{% pf %}
一方面, 生成元反射非零态射, 从而反射非零对象 (取 $\mathrm{id}$). 另一方面, 若 $(P,-)$ 反射非零对象, 则

\begin{equation}
  [(P,f) = 0] ⟺ [\operatorname{im}(P,f) = 0] ⟺ [(P, \operatorname{im} f) = 0] ⟺ [\operatorname{im} f = 0].
\end{equation}

从而 $(P,-)$ 反射非零态射.
{% endpf %}

{% note %}
以上 $P$ 投射的前提条件不能省去; 考虑 $ℤ/4ℤ$-模范畴与反射非零对象的可表函子 $(ℤ/2ℤ, -)$.
{% endnote %}

{% ex %}
(构造投射生成元的常见方式). 给定自由遗忘伴随 $F : 𝒞 ⇆ 𝐒𝐞𝐭𝐬 : U$. 假定 $U$ 是忠实且正合的, 也就是

1. $𝒞$ 中不同的态射是不同的集合间映射, 且
2. $𝒞$ 中满态射必是集合满射.

此时, $FX$ 均是投射生成元.

1. 由右伴随忠实, 得左伴随 $F$ 保持投射对象.
2. $(FX, -) ≃ (X, U(-))$ 是忠实函子.

{% endex %}

{% note %}
具体范畴的投射生成元基本构造如上. 遗忘函子通常要求忠实, 具体见[此文](Forget).
{% endnote %}

### 满态射的拉回满

{% lem %}
若范畴具有投射生成元, 则满态射的拉回仍满.
{% endlem %}

{% pf %}
对以下拉回方块 ⬓, 下证明满态射的拉回 $a$ 是满态射. 任取 $f ≠ g$, 下证明 $f ∘ a ≠ g ∘ a$.
<center>
<!-- https://q.uiver.app/#q=WzAsNixbMiwxLCJNIl0sWzIsMiwiXFxidWxsZXQiXSxbMSwyLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzAsMCwiVSJdLFszLDEsIlxcYnVsbGV0Il0sWzIsMSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzAsMV0sWzMsMCwiYSJdLFszLDJdLFswLDUsImYiLDAseyJvZmZzZXQiOi0yfV0sWzAsNSwiZyIsMix7Im9mZnNldCI6Mn1dLFszLDEsIuKskyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDAsIlxcdmFycGhpICIsMCx7ImxhYmVsX3Bvc2l0aW9uIjo3MCwiY3VydmUiOi0yfV0sWzQsMiwiXFxwc2kgIiwyLHsiY3VydmUiOjJ9XSxbNCwzLCIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNixbMiwxLCJNIl0sWzIsMiwiXFxidWxsZXQiXSxbMSwyLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzAsMCwiVSJdLFszLDEsIlxcYnVsbGV0Il0sWzIsMSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzAsMV0sWzMsMCwiYSJdLFszLDJdLFswLDUsImYiLDAseyJvZmZzZXQiOi0yfV0sWzAsNSwiZyIsMix7Im9mZnNldCI6Mn1dLFszLDEsIuKskyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDAsIlxcdmFycGhpICIsMCx7ImxhYmVsX3Bvc2l0aW9uIjo3MCwiY3VydmUiOi0yfV0sWzQsMiwiXFxwc2kgIiwyLHsiY3VydmUiOjJ9XSxbNCwzLCIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0=&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>
依照生成元的定义, 取 $φ$ 使得 $f ∘ φ ≠ g ∘ φ$. 依照投射模的定义, 取 $ψ$. 依照拉回的泛性质得虚线处态射, 因此 $φ$ 通过 $a$ 分解. 相应地, $f ∘ a ≠ g ∘ a$. 这说明 $a$ 满.

{% endpf %}

### 投射生成元与 ML 条件

{% lem %}
投射生成元保持并反射 Mittag-Leffler 条件.
{% endlem %}

{% pf %}
假定 Abel 范畴有投射生成元 $U$, 则 $M$ 是 Mittag-Leffler 系统当且仅当 $(U,M)$ 亦然.

1. 若 $M$ 是 Mittag-Leffler 系统, 则正合函子 $(U,-)$ 与 $\mathrm{im}$ 交换. 将涉及 $(U,\mathrm{im}(f))$ 的语句改作 $\mathrm{im}(U,f)$ 即可.
2. 考虑单态射 $i:\mathrm{im}(f\circ g)\hookrightarrow \mathrm{im}(f)$. 回忆熟知结论: 若 $(U,i)$ 是同构, 则 $i$ 同构. 后从略.

由于 $(U,-)$ 反射 Mittag-Leffler 系统, 许多证明全然放在模范畴中考虑.
{% endpf %}
