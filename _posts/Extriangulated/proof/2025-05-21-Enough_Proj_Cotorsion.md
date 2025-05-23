---
title: 完备 cotorsion pair 的单边定义
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% def %}
(Cotorison pair). 称对象类 $(𝒰 , 𝒱)$ 是外三角范畴的 cotorsion pair, 若

1. $𝒰$ 与 $𝒱$ 是同构闭且直和项闭的加法全子范畴;
2. $𝔼 (𝒰 , 𝒱 ) = 0$;
3. 任意对象 $X$ 可以嵌入 $𝔼$-三角 $X → V_C → U_C$;
4. 任意对象 $Y$ 可以嵌入 $𝔼$-三角 $V^C → U^C → Y$.

此处定义的 cotorsion pair 自动是完备的, 对应正合范畴的特殊右 $𝒱$ 逼近与特殊左 $𝒰$ 逼近.

{% enddef %}

{% lem %}
若范畴有足够投射对象, 则以上定义的 3. 蕴含 4.; 若范畴有足够内射对象, 则以上定义的 4. 蕴含 3..

{% pf %}

假定任意对象 $C$ 嵌入 $𝔼$-三角 $C → V_C → U_C$, 同时范畴有足够投射对象. 今任取 $X$, 考虑如下双 inflation 的所谓推出

{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzEsMCwiSyJdLFsyLDAsIlAiXSxbMywwLCJYIl0sWzEsMSwiVl9LIl0sWzEsMiwiVV9LIl0sWzIsMSwiRSJdLFszLDEsIlgiXSxbMiwyLCJVX0siXSxbMCwyLCJcXCwiXSxbNCwyLCJcXCwiXSxbMCwxXSxbMSwyXSxbMCwzXSxbMyw0XSxbMyw1XSxbNSw2XSxbMSw1XSxbNSw3XSxbNCw3LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDYsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
	\& K \& P \& X \\
	\& {V_K} \& E \& X \\
	{\,} \& {U_K} \& {U_K} \&\& {\,}
	\arrow[from=1-2, to=1-3]
	\arrow[from=1-2, to=2-2]
	\arrow[from=1-3, to=1-4]
	\arrow[from=1-3, to=2-3]
	\arrow[equals, from=1-4, to=2-4]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-2, to=3-2]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-3]
	\arrow[equals, from=3-2, to=3-3]
\end{tikzcd}
{% endtikz %}

由 $P, U_k ∈ 𝒰$, 得 $E ∈ 𝒰$. 这给出了

V_k → E → X.
\\
\\
对偶命题证明略.
{% endpf %}

{% endlem %}
