---
title: BB 谱序列
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% def %}
(Tilting 函子). 给定 tilting 模的要件 $(T_A,A^∙ → T,A → T^∙)$, 定义函子

1. (右正合, 左伴随, 左导出) $G(-) := - ⊗_B T : 𝐦𝐨𝐝 _B → 𝐦𝐨𝐝 _A$;
2. (左正合, 右伴随, 右导出) $F(-) := (T, -)_A : 𝐦𝐨𝐝 _A → 𝐦𝐨𝐝 _B$.

由维数结论, $G_{< -n} := L_{< -n}G$ 与 $F^{> n} := R^{> n}F$ 消失.
{% enddef %}

{% thm %}
(BB 谱序列). 存在函子的谱序列使得对任意 $M ∈ 𝐦𝐨𝐝 _A$,

$$
E_2 = (L_{-p}G ∘ R^q)F(M) ⇒ H^{-p+q}(M).
$$

此处 $H^{0}(M) = M$, 且 $H^{≠ 0}(M) = 0$.

{% endthm %}

{% pf %}
对 $M$ 取内射分解 $M → I^∙$, 取 $A$ 的极小 $𝐚𝐝𝐝 (T)$-内射分解 $A → T^∙$. 此时, 同构

$$
GFM = (_BT_A,M_A) ⊗ _BT_A ≃ (T, M) ⊗_B (A, T)
$$

给出了双复形
\begin{equation}
  (T, I^{∙ (q)}) ⊗ (T^{∙ (-p)} , T) ≃ (T^{-p}, I^{q})\quad (p ≤ 0, q ≥ 0).
\end{equation}

这一双复形有两种表达, 分别使用了两种正合函子: $- ⊗_B (T′ , T)$ 与 $(-, I)_A$. 以上预备工作给出了 $GF M$ 的双复形表达:

{% tikz %}
% https://q.uiver.app/#q=WzAsMjYsWzAsMCwiR0ZNIixbMzAsNjAsNjAsMV1dLFsxLDAsIkdGSV4wICIsWzE4MCw2MCw2MCwxXV0sWzIsMCwiR0ZJXjEiLFsxODAsNjAsNjAsMV1dLFszLDAsIkdGSV4yIixbMTgwLDYwLDYwLDFdXSxbMCwxLCJGTVxcb3RpbWVzIChUXjAsIFQpIixbMTgwLDYwLDYwLDFdXSxbMCwyLCJGTVxcb3RpbWVzIChUXjEsIFQpIixbMTgwLDYwLDYwLDFdXSxbMCwzLCJGTVxcb3RpbWVzIChUXjIsIFQpIixbMTgwLDYwLDYwLDFdXSxbMSwxLCJGSV4wXFxvdGltZXMgKFReMCwgVCkiXSxbMSwyLCJGSV4wXFxvdGltZXMgKFReMSwgVCkiXSxbMSwzLCJGSV4wXFxvdGltZXMgKFReMiwgVCkiXSxbMiwxLCJGSV4xXFxvdGltZXMgKFReMCwgVCkiXSxbMiwyLCJGSV4xXFxvdGltZXMgKFReMSwgVCkiXSxbMiwzLCJGSV4xXFxvdGltZXMgKFReMiwgVCkiXSxbMywxLCJGSV4yXFxvdGltZXMgKFReMCwgVCkiXSxbMywyLCJGSV4yXFxvdGltZXMgKFReMSwgVCkiXSxbMywzLCJGSV4yXFxvdGltZXMgKFReMiwgVCkiXSxbMSw0LCIoVF4wLEleMCkiXSxbMSw1LCIoVF4xLEleMCkiXSxbMiw0LCIoVF4wLEleMSkiXSxbMyw0LCIoVF4wLEleMikiXSxbMiw1LCIoVF4xLEleMSkiXSxbMyw1LCIoVF4xLEleMikiXSxbMSw2LCIoVF4yLEleMCkiXSxbMiw2LCIoVF4yLEleMSkiXSxbMyw2LCIoVF4yLEleMikiXSxbMCw1LCJcXGJveGVke1xcdGV4dHvlhah9fSJdLFswLDEsIiIsMix7ImNvbG91ciI6WzE4MCw2MCw2MF19XSxbMSwyLCIiLDIseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzIsMywiIiwyLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dLFs1LDQsIiIsMix7ImNvbG91ciI6WzE4MCw2MCw2MF19XSxbNCwwLCIiLDIseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzcsMSwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzgsN10sWzksOF0sWzEwLDIsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxMSwxMF0sWzEyLDExXSxbMTMsMywiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzE0LDEzXSxbMTUsMTRdLFs0LDcsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs3LDEwXSxbMTAsMTNdLFs1LDgsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs4LDExXSxbMTEsMTRdLFs2LDksIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs5LDEyXSxbMTIsMTVdLFsxNiwxOF0sWzE4LDE5XSxbMjEsMTldLFsyNCwyMV0sWzE3LDE2XSxbMjIsMTddLFsyMiwyM10sWzIzLDI0XSxbMTcsMjBdLFsyMCwyMV0sWzIwLDE4XSxbMjMsMjBdLFs2LDUsIiIsMix7ImNvbG91ciI6WzE4MCw2MCw2MF19XV0=
\begin{tikzcd}
	\color{rgb,255:red,214;green,153;blue,92}{GFM} & \color{rgb,255:red,92;green,214;blue,214}{ {GFI^0 } } & \color{rgb,255:red,92;green,214;blue,214}{ {GFI^1} } & \color{rgb,255:red,92;green,214;blue,214}{ {GFI^2} } \\
	\color{rgb,255:red,92;green,214;blue,214}{ {FM\otimes (T^0, T)} } & {FI^0\otimes (T^0, T)} & {FI^1\otimes (T^0, T)} & {FI^2\otimes (T^0, T)} \\
	\color{rgb,255:red,92;green,214;blue,214}{ {FM\otimes (T^1, T)} } & {FI^0\otimes (T^1, T)} & {FI^1\otimes (T^1, T)} & {FI^2\otimes (T^1, T)} \\
	\color{rgb,255:red,92;green,214;blue,214}{ {FM\otimes (T^2, T)} } & {FI^0\otimes (T^2, T)} & {FI^1\otimes (T^2, T)} & {FI^2\otimes (T^2, T)} \\
	& {(T^0,I^0)} & {(T^0,I^1)} & {(T^0,I^2)} \\
	{\boxed{\text{全} } } & {(T^1,I^0)} & {(T^1,I^1)} & {(T^1,I^2)} \\
	& {(T^2,I^0)} & {(T^2,I^1)} & {(T^2,I^2)}
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=1-1, to=1-2]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=1-2, to=1-3]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=1-3, to=1-4]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=2-1, to=1-1]
	\arrow[dotted, from=2-1, to=2-2]
	\arrow[dotted, from=2-2, to=1-2]
	\arrow[from=2-2, to=2-3]
	\arrow[dotted, from=2-3, to=1-3]
	\arrow[from=2-3, to=2-4]
	\arrow[dotted, from=2-4, to=1-4]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=3-1, to=2-1]
	\arrow[dotted, from=3-1, to=3-2]
	\arrow[from=3-2, to=2-2]
	\arrow[from=3-2, to=3-3]
	\arrow[from=3-3, to=2-3]
	\arrow[from=3-3, to=3-4]
	\arrow[from=3-4, to=2-4]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=4-1, to=3-1]
	\arrow[dotted, from=4-1, to=4-2]
	\arrow[from=4-2, to=3-2]
	\arrow[from=4-2, to=4-3]
	\arrow[from=4-3, to=3-3]
	\arrow[from=4-3, to=4-4]
	\arrow[from=4-4, to=3-4]
	\arrow[from=5-2, to=5-3]
	\arrow[from=5-3, to=5-4]
	\arrow[from=6-2, to=5-2]
	\arrow[from=6-2, to=6-3]
	\arrow[from=6-3, to=5-3]
	\arrow[from=6-3, to=6-4]
	\arrow[from=6-4, to=5-4]
	\arrow[from=7-2, to=6-2]
	\arrow[from=7-2, to=7-3]
	\arrow[from=7-3, to=6-3]
	\arrow[from=7-3, to=7-4]
	\arrow[from=7-4, to=6-4]
\end{tikzcd}
{% endtikz %}

($↑$ 向谱序列). 由 $(-, I^p)$ 是正合函子, 得 $E_{0,1,2}$ 如下:

{% tikz %}
% https://q.uiver.app/#q=WzAsMjksWzAsMCwiR0ZNIixbMzAsNjAsNjAsMV1dLFsxLDAsIkdGSV4wICIsWzE4MCw2MCw2MCwxXV0sWzIsMCwiR0ZJXjEiLFsxODAsNjAsNjAsMV1dLFszLDAsIkdGSV4yIixbMTgwLDYwLDYwLDFdXSxbMCwxLCJGTVxcb3RpbWVzIChUXjAsIFQpIixbMTgwLDYwLDYwLDFdXSxbMCwyLCJGTVxcb3RpbWVzIChUXjEsIFQpIixbMTgwLDYwLDYwLDFdXSxbMCwzLCJGTVxcb3RpbWVzIChUXjIsIFQpIixbMTgwLDYwLDYwLDFdXSxbMSwxLCIoVF4wLEleMCkiXSxbMSwyLCIoVF4xLEleMCkiXSxbMiwxLCIoVF4wLEleMSkiXSxbMywxLCIoVF4wLEleMikiXSxbMiwyLCIoVF4xLEleMSkiXSxbMywyLCIoVF4xLEleMikiXSxbMSwzLCIoVF4yLEleMCkiXSxbMiwzLCIoVF4yLEleMSkiXSxbMywzLCIoVF4yLEleMikiXSxbNCwzLCJcXGJveGVke0VfMH0iXSxbMSw0LCIoQSwgSV4wICkiXSxbMSw1LCIoSF4xKFQpLCBJXjApIixbMCwwLDc1LDFdXSxbMiw0LCIoQSwgSV4xKSJdLFszLDQsIihBLCBJXjIpIl0sWzIsNSwiKEheMShUKSwgSV4xKSIsWzAsMCw3NSwxXV0sWzMsNSwiKEheMShUKSwgSV4yKSIsWzAsMCw3NSwxXV0sWzQsNSwiXFxib3hlZHtFXzF9Il0sWzAsNSwiXFx0ZXh0e+a2iOWksSF9IixbMCwwLDc1LDFdXSxbMSw2LCIoQSxNKSJdLFsyLDYsIjAiLFswLDAsNzUsMV1dLFszLDYsIjAiLFswLDAsNzUsMV1dLFs0LDYsIlxcYm94ZWR7RV8yfSJdLFswLDEsIiIsMix7ImNvbG91ciI6WzE4MCw2MCw2MF19XSxbMSwyLCIiLDIseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzIsMywiIiwyLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dLFs1LDQsIiIsMix7ImNvbG91ciI6WzE4MCw2MCw2MF19XSxbNCwwLCIiLDIseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzEyLDEwXSxbMTUsMTJdLFs4LDddLFsxMyw4XSxbMTEsOV0sWzYsNSwiIiwyLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dLFsxNCwxMV0sWzE3LDE5XSxbMTksMjBdLFsxOCwyMSwiIiwyLHsiY29sb3VyIjpbMCwwLDc1XX1dLFsyMSwyMiwiIiwyLHsiY29sb3VyIjpbMCwwLDc1XX1dXQ==
\begin{tikzcd}
	\color{rgb,255:red,214;green,153;blue,92}{GFM} & \color{rgb,255:red,92;green,214;blue,214}{ {GFI^0 } } & \color{rgb,255:red,92;green,214;blue,214}{ {GFI^1} } & \color{rgb,255:red,92;green,214;blue,214}{ {GFI^2} } \\
	\color{rgb,255:red,92;green,214;blue,214}{ {FM\otimes (T^0, T)} } & {(T^0,I^0)} & {(T^0,I^1)} & {(T^0,I^2)} \\
	\color{rgb,255:red,92;green,214;blue,214}{ {FM\otimes (T^1, T)} } & {(T^1,I^0)} & {(T^1,I^1)} & {(T^1,I^2)} \\
	\color{rgb,255:red,92;green,214;blue,214}{ {FM\otimes (T^2, T)} } & {(T^2,I^0)} & {(T^2,I^1)} & {(T^2,I^2)} & {\boxed{E_0} } \\
	& {(A, I^0 )} & {(A, I^1)} & {(A, I^2)} \\
	\color{rgb,255:red,191;green,191;blue,191}{ {\text{消失!} } } & \color{rgb,255:red,191;green,191;blue,191}{ {(H^1(T), I^0)} } & \color{rgb,255:red,191;green,191;blue,191}{ {(H^1(T), I^1)} } & \color{rgb,255:red,191;green,191;blue,191}{ {(H^1(T), I^2)} } & {\boxed{E_1} } \\
	& {(A,M)} & \color{rgb,255:red,191;green,191;blue,191}{0} & \color{rgb,255:red,191;green,191;blue,191}{0} & {\boxed{E_2} }
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=1-1, to=1-2]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=1-2, to=1-3]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=1-3, to=1-4]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=2-1, to=1-1]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=3-1, to=2-1]
	\arrow[from=3-2, to=2-2]
	\arrow[from=3-3, to=2-3]
	\arrow[from=3-4, to=2-4]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=4-1, to=3-1]
	\arrow[from=4-2, to=3-2]
	\arrow[from=4-3, to=3-3]
	\arrow[from=4-4, to=3-4]
	\arrow[from=5-2, to=5-3]
	\arrow[from=5-3, to=5-4]
	\arrow[draw={rgb,255:red,191;green,191;blue,191}, from=6-2, to=6-3]
	\arrow[draw={rgb,255:red,191;green,191;blue,191}, from=6-3, to=6-4]
\end{tikzcd}
{% endtikz %}

($↑$ 谱序列, $E_0$).

{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzAsMCwiR0ZNIixbMzAsNjAsNjAsMV1dLFsxLDAsIkdGSV4wICIsWzE4MCw2MCw2MCwxXV0sWzIsMCwiR0ZJXjEiLFsxODAsNjAsNjAsMV1dLFszLDAsIkdGSV4yIixbMTgwLDYwLDYwLDFdXSxbMCwxLCJGTVxcb3RpbWVzIChUXjAsIFQpIixbMTgwLDYwLDYwLDFdXSxbMCwyLCJGTVxcb3RpbWVzIChUXjEsIFQpIixbMTgwLDYwLDYwLDFdXSxbMCwzLCJGTVxcb3RpbWVzIChUXjIsIFQpIixbMTgwLDYwLDYwLDFdXSxbMSwxLCJGSV4wXFxvdGltZXMgKFReMCwgVCkiXSxbMSwyLCJGSV4wXFxvdGltZXMgKFReMSwgVCkiXSxbMSwzLCJGSV4wXFxvdGltZXMgKFReMiwgVCkiXSxbMiwxLCJGSV4xXFxvdGltZXMgKFReMCwgVCkiXSxbMiwyLCJGSV4xXFxvdGltZXMgKFReMSwgVCkiXSxbMiwzLCJGSV4xXFxvdGltZXMgKFReMiwgVCkiXSxbMywxLCJGSV4yXFxvdGltZXMgKFReMCwgVCkiXSxbMywyLCJGSV4yXFxvdGltZXMgKFReMSwgVCkiXSxbMywzLCJGSV4yXFxvdGltZXMgKFReMiwgVCkiXSxbMCwxLCIiLDIseyJjb2xvdXIiOlsxODAsNjAsNjBdfV0sWzEsMiwiIiwyLHsiY29sb3VyIjpbMTgwLDYwLDYwXX1dLFsyLDMsIiIsMix7ImNvbG91ciI6WzE4MCw2MCw2MF19XSxbNCw3LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNywxMF0sWzEwLDEzXSxbNSw4LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOCwxMV0sWzExLDE0XSxbNiw5LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOSwxMl0sWzEyLDE1XV0=
\begin{tikzcd}
	\color{rgb,255:red,214;green,153;blue,92}{GFM} & \color{rgb,255:red,92;green,214;blue,214}{ {GFI^0 } } & \color{rgb,255:red,92;green,214;blue,214}{ {GFI^1} } & \color{rgb,255:red,92;green,214;blue,214}{ {GFI^2} } \\
	\color{rgb,255:red,92;green,214;blue,214}{ {FM\otimes (T^0, T)} } & {FI^0\otimes (T^0, T)} & {FI^1\otimes (T^0, T)} & {FI^2\otimes (T^0, T)} \\
	\color{rgb,255:red,92;green,214;blue,214}{ {FM\otimes (T^1, T)} } & {FI^0\otimes (T^1, T)} & {FI^1\otimes (T^1, T)} & {FI^2\otimes (T^1, T)} \\
	\color{rgb,255:red,92;green,214;blue,214}{ {FM\otimes (T^2, T)} } & {FI^0\otimes (T^2, T)} & {FI^1\otimes (T^2, T)} & {FI^2\otimes (T^2, T)}
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=1-1, to=1-2]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=1-2, to=1-3]
	\arrow[draw={rgb,255:red,92;green,214;blue,214}, from=1-3, to=1-4]
	\arrow[dotted, from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
	\arrow[dotted, from=3-1, to=3-2]
	\arrow[from=3-2, to=3-3]
	\arrow[from=3-3, to=3-4]
	\arrow[dotted, from=4-1, to=4-2]
	\arrow[from=4-2, to=4-3]
	\arrow[from=4-3, to=4-4]
\end{tikzcd}
{% endtikz %}

($↑$ 向谱序列, $E_1$).

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzIsMywiKEZeMk0pIFxcb3RpbWVzIChUXjIsIFQpIl0sWzEsMywiKEZeMU0pIFxcb3RpbWVzIChUXjIsIFQpIl0sWzAsMywiRk1cXG90aW1lcyAoVF4yLCBUKSJdLFsyLDIsIihGXjJNKSBcXG90aW1lcyAoVF4xLCBUKSJdLFsxLDIsIihGXjFNKSBcXG90aW1lcyAoVF4xLCBUKSJdLFswLDIsIkZNXFxvdGltZXMgKFReMSwgVCkiXSxbMiwxLCIoRl4yTSkgXFxvdGltZXMgKFReMCwgVCkiXSxbMSwxLCIoRl4xTSkgXFxvdGltZXMgKFReMCwgVCkiXSxbMCwxLCJGTVxcb3RpbWVzIChUXjAsIFQpIl0sWzIsMCwiRl4yTSBcXG90aW1lcyBUIixbMTgwLDYwLDYwLDFdXSxbMSwwLCJGXjJNIFxcb3RpbWVzIFQiLFsxODAsNjAsNjAsMV1dLFswLDAsIkZNIFxcb3RpbWVzIFQiLFsxODAsNjAsNjAsMV1dLFswLDNdLFsxLDRdLFsyLDVdLFszLDZdLFs0LDddLFs1LDhdXQ==
\begin{tikzcd}
	\color{rgb,255:red,92;green,214;blue,214}{ {FM \otimes T} } & \color{rgb,255:red,92;green,214;blue,214}{ {F^2M \otimes T} } & \color{rgb,255:red,92;green,214;blue,214}{ {F^2M \otimes T} } \\
	{FM\otimes (T^0, T)} & {(F^1M) \otimes (T^0, T)} & {(F^2M) \otimes (T^0, T)} \\
	{FM\otimes (T^1, T)} & {(F^1M) \otimes (T^1, T)} & {(F^2M) \otimes (T^1, T)} \\
	{FM\otimes (T^2, T)} & {(F^1M) \otimes (T^2, T)} & {(F^2M) \otimes (T^2, T)}
	\arrow[from=3-1, to=2-1]
	\arrow[from=3-2, to=2-2]
	\arrow[from=3-3, to=2-3]
	\arrow[from=4-1, to=3-1]
	\arrow[from=4-2, to=3-2]
	\arrow[from=4-3, to=3-3]
\end{tikzcd}
{% endtikz %}

($↑$ 向谱序列, $E_2$).

{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzMsMiwiR197LTJ9Rl4yTSJdLFsyLDIsIkdfey0yfUZeMU0iXSxbMSwyLCJHX3stMn1GTSJdLFsxLDEsIkdfey0xfUZNIl0sWzIsMSwiR197LTF9Rl4xTSJdLFszLDEsIkdfey0xfUZeMk0iXSxbMywwLCJHRl4yTSJdLFsyLDAsIkdGXjFNIl0sWzEsMCwiR0ZNIl0sWzAsMiwiXFwsIl0sWzQsMiwiXFwsIl0sWzAsN10sWzEsOF1d
\begin{tikzcd}
	& GFM & {GF^1M} & {GF^2M} \\
	& {G_{-1}FM} & {G_{-1}F^1M} & {G_{-1}F^2M} \\
	{\,} & {G_{-2}FM} & {G_{-2}F^1M} & {G_{-2}F^2M} & {\,}
	\arrow[from=3-3, to=1-2]
	\arrow[from=3-4, to=1-3]
\end{tikzcd}
{% endtikz %}

由上述谱序列有限, 这一结果收敛至全复形的滤过同调群, 也就是轴复形 $M$ 的同调群. 因此, 存在谱序列

\begin{equation}
    \mathrm{Tor}^B_{-q}(T, \mathrm{Ext}^p_A(T, -)) ⇒ δ_{-p+q, 0}⋅ \mathrm{id}
\end{equation}

{% endpf %}
