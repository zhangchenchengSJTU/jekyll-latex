---
title: Cotorsion Pair 的特殊逼近是稳定伴随
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% lem %}
上述 $X → V_C$ 与 $U^C → X$ 在稳定范畴中具有函子性. 具体地, 记 $𝒥 := 𝒰 ∩ 𝒱$, 稳定范畴 $𝒞 / 𝒥$ 未必是外三角范畴, 但对任意 $U ∈ 𝒰$ 与 $V ∈ 𝒱$, 稳定范畴中总有 $\underline {(U,V)} = 0$. 换言之, 任意 $f : U → V$ 通过某一 $M ∈ 𝒥$ 分解.

{% pf %}
任取 $f : U → V$. 考虑推出

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJVIl0sWzIsMCwiVl9VIl0sWzQsMCwiVV9VIl0sWzAsMSwiViJdLFsyLDEsIlYgXFxvcGx1cyBVX1UiXSxbNCwxLCJVX1UiXSxbNSwwLCJcXCwiXSxbNSwxLCJcXCwiXSxbMCwzLCJmIiwyXSxbMCwxXSxbMSwyXSxbMiw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDYsIlxcZGVsdGEgIl0sWzUsNywiZl9cXGFzdCBcXGRlbHRhICJdLFszLDRdLFsxLDRdLFs0LDVdXQ==
\begin{tikzcd}[ampersand replacement=\&]
	U \&\& {V_U} \&\& {U_U} \& {\,} \\
	V \&\& {V \oplus U_U} \&\& {U_U} \& {\,}
	\arrow[from=1-1, to=1-3]
	\arrow["f"', from=1-1, to=2-1]
	\arrow[from=1-3, to=1-5]
	\arrow[from=1-3, to=2-3]
	\arrow["{\delta }", from=1-5, to=1-6]
	\arrow[equals, from=1-5, to=2-5]
	\arrow[from=2-1, to=2-3]
	\arrow[from=2-3, to=2-5]
	\arrow["{f_\ast \delta }", from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}

第二行可裂, 因为 $𝔼 (U_U, V) = 0$. 此时, $f$ 通过 $V_U$ 分解. 由扩张闭, $V_U ∈ 𝒰$.

{% endpf %}

{% endlem %}

{% lem %}
上述 $X → V_C$ 与 $U^C → X$ 在稳定范畴中具有函子性. 具体地, 记 $𝒥 := 𝒰 ∩ 𝒱$, 稳定范畴 $𝒞 / 𝒥$ 未必是外三角范畴, 但有如下结论.

1. 对任意 $C \xrightarrow {l_C} V_C → U_C$ 与 $V ∈ 𝒱$, 作用函子 $\underline {(-, V)}$ 后得到稳定范畴中的映射链:
   $$\begin{equation}
   0 = \underline {(U_C, V)} → \underline {(V_C, V)} ≃ \underline {(C, V)}.
   \end{equation}$$
   中间的同构式诱导了左右伴随函子
   $$\begin{equation}
   V_∙ : 𝒞 / 𝒥  ⇆ 𝒱 / 𝒥 : \text{inclu}.
   \end{equation}$$
   其单位是 $l_C : C → V_C$, 余单位是 $\mathrm{id}_{𝒱 / 𝒥}$.
2. 对任意 $V^C → U^C \xrightarrow {r^C} C$ 与 $U ∈ 𝒰$, 作用函子 $\underline{(U, -)}$ 后得到稳定范畴中的映射链
   $$\begin{equation}
   0 = \underline{(U, V^C)} → \underline{(U, U^C)} ≃ \underline{(U, C)}.
   \end{equation}$$
   中间的同构式诱导了左右伴随函子
   $$\begin{equation}
    \text{inclu} : 𝒰 / 𝒥  ⇆ 𝒞 / 𝒥 : U^∙ .
   \end{equation}$$
   其单位是 $\mathrm{id}_{𝒰 / 𝒥}$, 余单位是 $r^C: U^C → C$.

{% pf %}
只看第一部分. 由原范畴的长正合列, $(V_C, V) \xrightarrow {(- ∘ l_C)} (C,V)$ 是满射, 因此 Hom-商群的同态也是满的. 下证明这一映射是单的, 即, 若 $φ ∘ l_C$ 通过 $𝒥$ 中对象分解, 则 $φ$ 亦然. 假定 $φ ∘ l_C$ 通过 $J ∈ 𝒥$ 分解, 此时有交换图:
{% tikz %}
% https://q.uiver.app/#q=WzAsNixbNCwwLCJVX0MiXSxbMCwwLCJDIl0sWzIsMCwiVl9DIl0sWzIsMSwiViJdLFswLDEsIkoiXSxbNSwwLCJcXCwgIl0sWzEsMiwibF9DIl0sWzIsMCwiXFx0aGV0YV9DIl0sWzIsMywiXFx2YXJwaGkgIl0sWzEsNCwiYiIsMl0sWzQsMywiYSIsMl0sWzAsNSwiXFxkZWx0YSBfQyJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
	C \&\& {V_C} \&\& {U_C} \& {\, } \\
	J \&\& V
	\arrow["{l_C}", from=1-1, to=1-3]
	\arrow["b"', from=1-1, to=2-1]
	\arrow["{\theta_C}", from=1-3, to=1-5]
	\arrow["{\varphi }", from=1-3, to=2-3]
	\arrow["{\delta _C}", from=1-5, to=1-6]
	\arrow["a"', from=2-1, to=2-3]
\end{tikzcd}
{% endtikz %}

由 $𝔼 (U_C, J) = 0$, 得 $b ∈ \ker (δ_C)^! = \operatorname{im}(- ∘ l_C)$. 因此存在分解 $b = s ∘ l_C$.
{% tikz %}
% https://q.uiver.app/#q=WzAsNixbNCwwLCJVX0MiXSxbMCwwLCJDIl0sWzIsMCwiVl9DIl0sWzIsMSwiViJdLFswLDEsIkoiXSxbNSwwLCJcXCwgIl0sWzEsMiwibF9DIl0sWzIsMCwiXFx0aGV0YV9DIl0sWzIsMywiXFx2YXJwaGkgIl0sWzEsNCwiYiIsMl0sWzQsMywiYSIsMl0sWzAsNSwiXFxkZWx0YSBfQyJdLFsyLDQsInMiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
	C \&\& {V_C} \&\& {U_C} \& {\, } \\
	J \&\& V
	\arrow["{l_C}", from=1-1, to=1-3]
	\arrow["b"', from=1-1, to=2-1]
	\arrow["{\theta_C}", from=1-3, to=1-5]
	\arrow["s"{description}, dashed, from=1-3, to=2-1]
	\arrow["{\varphi }", from=1-3, to=2-3]
	\arrow["{\delta _C}", from=1-5, to=1-6]
	\arrow["a"', from=2-1, to=2-3]
\end{tikzcd}
{% endtikz %}

继而说明 $φ = a ∘ s$ 是稳定范畴中的等式. 直接地, $(φ - as) ∈ \ker (- ∘ l_C) = \operatorname{im}(- ∘ θ _C)$. 此时, $V$ 收尾的态射 $(φ - as)$ 通过 $U_C$ 分解, 依照 $\underline{(U_C, V)} = 0$, 这一态射通过 $𝒥$ 中元素分解. 因此, 稳定范畴中
$$\begin{equation}
φ = (φ - as) + as = 0 + 0 = 0.
\end{equation}$$
在说明 $l_C$ 在稳定范畴中的自然性. 若存在两种所谓特殊左逼近, 即有下图:
{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbMCwwLCJYIl0sWzAsMSwiWCJdLFswLDIsIlgiXSxbMiwwLCJWX1giXSxbNCwwLCJVX1giXSxbNCwyLCJVX1giXSxbMiwyLCJWX1giXSxbNCwxLCJVX1gnIl0sWzIsMSwiVl9YJyJdLFswLDEsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsMiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwzLCJsX0MiXSxbMyw0XSxbMSw4LCJsX0MnIl0sWzgsN10sWzYsNV0sWzMsOCwiXFxleGlzdHMgXyEgXFx2YXJwaGkiXSxbOCw2LCJcXGV4aXN0cyBfISBcXHBzaSAiXSxbMiw2LCJsX0MiXV0=
\begin{tikzcd}[ampersand replacement=\&]
	X \&\& {V_X} \&\& {U_X} \\
	X \&\& {V_X'} \&\& {U_X'} \\
	X \&\& {V_X} \&\& {U_X}
	\arrow["{l_C}", from=1-1, to=1-3]
	\arrow[equals, from=1-1, to=2-1]
	\arrow[from=1-3, to=1-5]
	\arrow["{\exists _! \varphi}", from=1-3, to=2-3]
	\arrow["{l_C'}", from=2-1, to=2-3]
	\arrow[equals, from=2-1, to=3-1]
	\arrow[from=2-3, to=2-5]
	\arrow["{\exists _! \psi }", from=2-3, to=3-3]
	\arrow["{l_C}", from=3-1, to=3-3]
	\arrow[from=3-3, to=3-5]
\end{tikzcd}
{% endtikz %}

在稳定范畴中, 存在唯一的 $φ$ 与 $ψ$ 使得上图交换. 由 $V_X → V_X$ 的态射也需唯一, 故只能有 $ψ ∘ φ = \mathrm{id}_{V_X}$. 类似地检验另一侧, 以上 $ψ$ 与 $φ$ 是同构. 在稳定范畴中, 依照类的选择公理取定所有 $l_C: X → V_X$, 则 $V_∙$ 成了左伴随函子.
\\
\\
另一命题对偶, 证明从略.
{% endpf %}

{% endlem %}
