---
title: $D_4$ 与交换图方块代数.
author: Chencheng Zhang
layout: post
category: example
---

* toc
{:toc}

## 计算示例: $B = \mathrm{End}(A)$

### $A$ 的 AR quiver

{% def %}
记遗传代数 $A = kQ$, $Q$ 是下列 Dynkin 图:

$$
\begin{bmatrix}
 &  & 2 &  & \\
 &  & \downarrow  &  & \\
1 & \rightarrow  & 4 & \leftarrow  & 3
\end{bmatrix}
$$

{% enddef %}

{% ex %}
计算 AR quiver:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMiwiXFxzdWJzdGFja3sxXFxcXDAgXFwgMSBcXCAwfSJdLFsxLDEsIlxcc3Vic3RhY2t7MFxcXFwxIFxcIDEgXFwgMH0iXSxbMSwwLCJcXHN1YnN0YWNrezBcXFxcMCBcXCAxIFxcIDF9Il0sWzIsMSwiXFxzdWJzdGFja3sxXFxcXDEgXFwgMiBcXCAxfSJdLFszLDAsIlxcc3Vic3RhY2t7MVxcXFwxIFxcIDEgXFwgMH0iXSxbMywyLCJcXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDF9Il0sWzMsMSwiXFxzdWJzdGFja3sxXFxcXDAgXFwgMSBcXCAxfSJdLFswLDEsIlxcc3Vic3RhY2t7MFxcXFwwIFxcIDEgXFwgMH0iXSxbNCwxLCJcXHN1YnN0YWNrezFcXFxcMSBcXCAxIFxcIDF9Il0sWzUsMSwiXFxzdWJzdGFja3swXFxcXDEgXFwgMCBcXCAwfSJdLFs1LDIsIlxcc3Vic3RhY2t7MVxcXFwwIFxcIDAgXFwgMH0iXSxbNSwwLCJcXHN1YnN0YWNrezBcXFxcMCBcXCAwIFxcIDF9Il0sWzIsM10sWzEsM10sWzAsM10sWzMsNV0sWzMsNl0sWzcsMl0sWzcsMV0sWzcsMF0sWzQsOF0sWzUsOF0sWzYsOF0sWzgsOV0sWzgsMTBdLFs4LDExXSxbMyw0XSxbMTEsNCwiIiwxLHsiY3VydmUiOjMsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs0LDIsIiIsMSx7ImN1cnZlIjozLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbOSw2LCIiLDEseyJjdXJ2ZSI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzYsMSwiIiwxLHsiY3VydmUiOjMsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxMCw1LCIiLDEseyJjdXJ2ZSI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzUsMCwiIiwxLHsiY3VydmUiOjMsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs4LDMsIiIsMSx7ImN1cnZlIjozLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMyw3LCIiLDEseyJjdXJ2ZSI6Mywic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d
\begin{tikzcd}
	& \begin{array}{c} \substack{0\\0 \ 1 \ 1} \end{array} && \begin{array}{c} \substack{1\\1 \ 1 \ 0} \end{array} && \begin{array}{c} \substack{0\\0 \ 0 \ 1} \end{array} \\
	\begin{array}{c} \substack{0\\0 \ 1 \ 0} \end{array} & \begin{array}{c} \substack{0\\1 \ 1 \ 0} \end{array} & \begin{array}{c} \substack{1\\1 \ 2 \ 1} \end{array} & \begin{array}{c} \substack{1\\0 \ 1 \ 1} \end{array} & \begin{array}{c} \substack{1\\1 \ 1 \ 1} \end{array} & \begin{array}{c} \substack{0\\1 \ 0 \ 0} \end{array} \\
	& \begin{array}{c} \substack{1\\0 \ 1 \ 0} \end{array} && \begin{array}{c} \substack{0\\1 \ 1 \ 1} \end{array} && \begin{array}{c} \substack{1\\0 \ 0 \ 0} \end{array}
	\arrow[from=1-2, to=2-3]
	\arrow[curve={height=18pt}, dotted, from=1-4, to=1-2]
	\arrow[from=1-4, to=2-5]
	\arrow[curve={height=18pt}, dotted, from=1-6, to=1-4]
	\arrow[from=2-1, to=1-2]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-1, to=3-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=1-4]
	\arrow[curve={height=18pt}, dotted, from=2-3, to=2-1]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-4]
	\arrow[curve={height=18pt}, dotted, from=2-4, to=2-2]
	\arrow[from=2-4, to=2-5]
	\arrow[from=2-5, to=1-6]
	\arrow[curve={height=18pt}, dotted, from=2-5, to=2-3]
	\arrow[from=2-5, to=2-6]
	\arrow[from=2-5, to=3-6]
	\arrow[curve={height=18pt}, dotted, from=2-6, to=2-4]
	\arrow[from=3-2, to=2-3]
	\arrow[from=3-4, to=2-5]
	\arrow[curve={height=18pt}, dotted, from=3-4, to=3-2]
	\arrow[curve={height=18pt}, dotted, from=3-6, to=3-4]
\end{tikzcd}
{% endtikz %}
{% endex %}

### $A$ 的 APR tilting 模

{% ex %}
对非内射的投射对象 $P(4)$, 此时的 [APR tilting 模](APR_tilting_def)是

$$
τ⁻¹ S(4) ⊕ ⨁_{i ≠ 4} P(i).
$$

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiXFxib3hlZHtcXHN1YnN0YWNrezFcXFxcMCBcXCAxIFxcIDB9fSJdLFsxLDIsIlxcYm94ZWR7XFxzdWJzdGFja3swXFxcXDEgXFwgMSBcXCAwfX0iXSxbMSwwLCJcXGJveGVke1xcc3Vic3RhY2t7MFxcXFwwIFxcIDEgXFwgMX19Il0sWzIsMSwiXFxib3hlZHtcXHN1YnN0YWNrezFcXFxcMSBcXCAyIFxcIDF9fSJdLFszLDAsIlxcc3Vic3RhY2t7MVxcXFwxIFxcIDEgXFwgMH0iXSxbMywyLCJcXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDF9Il0sWzMsMSwiXFxzdWJzdGFja3sxXFxcXDAgXFwgMSBcXCAxfSJdLFswLDEsIlxcY29sb3J7Z3JlZW59XFxzdWJzdGFja3swXFxcXDAgXFwgMSBcXCAwfSJdLFs0LDEsIlxcc3Vic3RhY2t7MVxcXFwxIFxcIDEgXFwgMX0iXSxbNSwxLCJcXHN1YnN0YWNrezBcXFxcMSBcXCAwIFxcIDB9Il0sWzUsMiwiXFxzdWJzdGFja3sxXFxcXDAgXFwgMCBcXCAwfSJdLFs1LDAsIlxcc3Vic3RhY2t7MFxcXFwwIFxcIDAgXFwgMX0iXSxbMiwzXSxbMSwzXSxbMCwzXSxbMyw0XSxbMyw1XSxbMyw2XSxbNywyXSxbNywxXSxbNywwXSxbNCw4XSxbNSw4XSxbNiw4XSxbOCw5XSxbOCwxMF0sWzgsMTFdXQ==
\begin{tikzcd}
	& \begin{array}{c} \boxed{\substack{0\\0 \ 1 \ 1} } \end{array} && \begin{array}{c} \substack{1\\1 \ 1 \ 0} \end{array} && \begin{array}{c} \substack{0\\0 \ 0 \ 1} \end{array} \\
	\begin{array}{c} \color{green}\substack{0\\0 \ 1 \ 0} \end{array} & \begin{array}{c} \boxed{\substack{1\\0 \ 1 \ 0} } \end{array} & \begin{array}{c} \boxed{\substack{1\\1 \ 2 \ 1} } \end{array} & \begin{array}{c} \substack{1\\0 \ 1 \ 1} \end{array} & \begin{array}{c} \substack{1\\1 \ 1 \ 1} \end{array} & \begin{array}{c} \substack{0\\1 \ 0 \ 0} \end{array} \\
	& \begin{array}{c} \boxed{\substack{0\\1 \ 1 \ 0} } \end{array} && \begin{array}{c} \substack{0\\1 \ 1 \ 1} \end{array} && \begin{array}{c} \substack{1\\0 \ 0 \ 0} \end{array}
	\arrow[from=1-2, to=2-3]
	\arrow[from=1-4, to=2-5]
	\arrow[from=2-1, to=1-2]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-1, to=3-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=1-4]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-4]
	\arrow[from=2-4, to=2-5]
	\arrow[from=2-5, to=1-6]
	\arrow[from=2-5, to=2-6]
	\arrow[from=2-5, to=3-6]
	\arrow[from=3-2, to=2-3]
	\arrow[from=3-4, to=2-5]
\end{tikzcd}
{% endtikz %}

{% endex %}

{% ex %}
这一 tilting 模给出的 torsion pair $({\color{blue}𝒯}, {\color{green}ℱ})$是

{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiXFxjb2xvcntibHVlfVxcYm94ZWR7XFxzdWJzdGFja3sxXFxcXDAgXFwgMSBcXCAwfX0iXSxbMSwyLCJcXGNvbG9ye2JsdWV9XFxib3hlZHtcXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDB9fSJdLFsxLDAsIlxcY29sb3J7Ymx1ZX1cXGJveGVke1xcc3Vic3RhY2t7MFxcXFwwIFxcIDEgXFwgMX19Il0sWzIsMSwiXFxjb2xvcntibHVlfVxcYm94ZWR7XFxzdWJzdGFja3sxXFxcXDEgXFwgMiBcXCAxfX0iXSxbMywwLCJcXGNvbG9ye2JsdWV9XFxzdWJzdGFja3sxXFxcXDEgXFwgMSBcXCAwfSJdLFszLDIsIlxcY29sb3J7Ymx1ZX1cXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDF9Il0sWzMsMSwiXFxjb2xvcntibHVlfVxcc3Vic3RhY2t7MVxcXFwwIFxcIDEgXFwgMX0iXSxbMCwxLCJcXGNvbG9ye2dyZWVufVxcc3Vic3RhY2t7MFxcXFwwIFxcIDEgXFwgMH0iXSxbNCwxLCJcXGNvbG9ye2JsdWV9XFxzdWJzdGFja3sxXFxcXDEgXFwgMSBcXCAxfSJdLFs1LDEsIlxcY29sb3J7Ymx1ZX1cXHN1YnN0YWNrezBcXFxcMSBcXCAwIFxcIDB9Il0sWzUsMiwiXFxjb2xvcntibHVlfVxcc3Vic3RhY2t7MVxcXFwwIFxcIDAgXFwgMH0iXSxbNSwwLCJcXGNvbG9ye2JsdWV9XFxzdWJzdGFja3swXFxcXDAgXFwgMCBcXCAxfSJdLFsyLDNdLFsxLDNdLFswLDNdLFszLDRdLFszLDVdLFszLDZdLFs3LDJdLFs3LDFdLFs3LDBdLFs0LDhdLFs1LDhdLFs2LDhdLFs4LDldLFs4LDEwXSxbOCwxMV1d
\begin{tikzcd}
	& \begin{array}{c} \color{blue}\boxed{\substack{0\\0 \ 1 \ 1} } \end{array} && \begin{array}{c} \color{blue}\substack{1\\1 \ 1 \ 0} \end{array} && \begin{array}{c} \color{blue}\substack{0\\0 \ 0 \ 1} \end{array} \\
	\begin{array}{c} \color{green}\substack{0\\0 \ 1 \ 0} \end{array} & \begin{array}{c} \color{blue}\boxed{\substack{1\\0 \ 1 \ 0} } \end{array} & \begin{array}{c} \color{blue}\boxed{\substack{1\\1 \ 2 \ 1} } \end{array} & \begin{array}{c} \color{blue}\substack{1\\0 \ 1 \ 1} \end{array} & \begin{array}{c} \color{blue}\substack{1\\1 \ 1 \ 1} \end{array} & \begin{array}{c} \color{blue}\substack{0\\1 \ 0 \ 0} \end{array} \\
	& \begin{array}{c} \color{blue}\boxed{\substack{0\\1 \ 1 \ 0} } \end{array} && \begin{array}{c} \color{blue}\substack{0\\1 \ 1 \ 1} \end{array} && \begin{array}{c} \color{blue}\substack{1\\0 \ 0 \ 0} \end{array}
	\arrow[from=1-2, to=2-3]
	\arrow[from=1-4, to=2-5]
	\arrow[from=2-1, to=1-2]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-1, to=3-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=1-4]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-4]
	\arrow[from=2-4, to=2-5]
	\arrow[from=2-5, to=1-6]
	\arrow[from=2-5, to=2-6]
	\arrow[from=2-5, to=3-6]
	\arrow[from=3-2, to=2-3]
	\arrow[from=3-4, to=2-5]
\end{tikzcd}
{% endtikz %}

{% endex %}

{% ex %}
(Tilted 代数). 容易计算

$$
\mathrm{End}(P_1 ⊕ P_2 ⊕ P_3 ⊕ τ ⁻¹ P_4) ≃ \begin{bmatrix}
k & 0 & 0 & 0 \\
0 & k & 0 & 0 \\
0 & 0 & k & 0 \\
k & k & k & k
\end{bmatrix}.
$$

对应的 quiver 是

$$
\mathrm{End}(T_A) = k ⋅
\begin{bmatrix}
 &  & P_2 &  & \\
 &  & \uparrow  &  & \\
P_1 & \leftarrow  & τ⁻¹P_4 & \rightarrow  & P_3
\end{bmatrix}.
$$

{% endex %}

{% ex %}
(BB 定理如何工作)?
{% tikz %}
% https://q.uiver.app/#q=WzAsMjQsWzEsMSwiXFxjb2xvcntibHVlfVxcYm94ZWR7XFxzdWJzdGFja3sxXFxcXDAgXFwgMSBcXCAwfX0iXSxbMSwyLCJcXGNvbG9ye2JsdWV9XFxib3hlZHtcXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDB9fSJdLFsxLDAsIlxcY29sb3J7Ymx1ZX1cXGJveGVke1xcc3Vic3RhY2t7MFxcXFwwIFxcIDEgXFwgMX19Il0sWzIsMSwiXFxjb2xvcntibHVlfVxcYm94ZWR7XFxzdWJzdGFja3sxXFxcXDEgXFwgMiBcXCAxfX0iXSxbMywwLCJcXGNvbG9ye2JsdWV9XFxzdWJzdGFja3sxXFxcXDEgXFwgMSBcXCAwfSJdLFszLDIsIlxcY29sb3J7Ymx1ZX1cXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDF9Il0sWzMsMSwiXFxjb2xvcntibHVlfVxcc3Vic3RhY2t7MVxcXFwwIFxcIDEgXFwgMX0iXSxbMCwxLCJcXGNvbG9ye2dyZWVufVxcc3Vic3RhY2t7MFxcXFwwIFxcIDEgXFwgMH0iXSxbNCwxLCJcXGNvbG9ye2JsdWV9XFxzdWJzdGFja3sxXFxcXDEgXFwgMSBcXCAxfSJdLFs1LDEsIlxcY29sb3J7Ymx1ZX1cXHN1YnN0YWNrezBcXFxcMSBcXCAwIFxcIDB9Il0sWzUsMiwiXFxjb2xvcntibHVlfVxcc3Vic3RhY2t7MVxcXFwwIFxcIDAgXFwgMH0iXSxbNSwwLCJcXGNvbG9ye2JsdWV9XFxzdWJzdGFja3swXFxcXDAgXFwgMCBcXCAxfSJdLFsxLDMsIlxcY29sb3J7Y3lhbn1cXGJveGVke1xcc3Vic3RhY2t7MFxcXFwwIFxcIDAgXFwgMX19Il0sWzEsNCwiXFxjb2xvcntjeWFufVxcYm94ZWR7XFxzdWJzdGFja3sxXFxcXDAgXFwgMCBcXCAwfX0iXSxbMSw1LCJcXGNvbG9ye2N5YW59XFxib3hlZHtcXHN1YnN0YWNrezBcXFxcMSBcXCAwIFxcIDB9fSJdLFsyLDQsIlxcY29sb3J7Y3lhbn1cXGJveGVke1xcc3Vic3RhY2t7MVxcXFwxIFxcIDEgXFwgMX19Il0sWzMsMywiXFxjb2xvcntjeWFufVxcc3Vic3RhY2t7MVxcXFwxIFxcIDEgXFwgMH0iXSxbMyw0LCJcXGNvbG9ye2N5YW59XFxzdWJzdGFja3sxXFxcXDAgXFwgMSBcXCAxfSJdLFszLDUsIlxcY29sb3J7Y3lhbn1cXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDF9Il0sWzQsNCwiXFxjb2xvcntjeWFufXtcXHN1YnN0YWNrezFcXFxcMSBcXCAyIFxcIDF9fSJdLFs1LDMsIlxcY29sb3J7Y3lhbn17XFxzdWJzdGFja3swXFxcXDAgXFwgMSBcXCAxfX0iXSxbNSw0LCJcXGNvbG9ye2N5YW59e1xcc3Vic3RhY2t7MVxcXFwwIFxcIDEgXFwgMH19Il0sWzUsNSwiXFxjb2xvcntjeWFufXtcXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDB9fSJdLFs2LDQsIlxcY29sb3J7b2xpdmV9XFxzdWJzdGFja3swXFxcXDAgXFwgMSBcXCAwfSJdLFsyLDNdLFsxLDNdLFswLDNdLFszLDRdLFszLDVdLFszLDZdLFs3LDJdLFs3LDFdLFs3LDBdLFs0LDhdLFs1LDhdLFs2LDhdLFs4LDldLFs4LDEwXSxbOCwxMV0sWzEyLDE1XSxbMTUsMTZdLFsxNiwxOV0sWzE5LDIwXSxbMTQsMTVdLFsxNSwxOF0sWzE4LDE5XSxbMTksMjJdLFsxMywxNV0sWzE1LDE3XSxbMTcsMTldLFsxOSwyMV0sWzIwLDIzXSxbMjEsMjNdLFsyMiwyM11d
\begin{tikzcd}
	& \begin{array}{c} \color{blue}\boxed{\substack{0\\0 \ 1 \ 1} } \end{array} && \begin{array}{c} \color{blue}\substack{1\\1 \ 1 \ 0} \end{array} && \begin{array}{c} \color{blue}\substack{0\\0 \ 0 \ 1} \end{array} \\
	\begin{array}{c} \color{green}\substack{0\\0 \ 1 \ 0} \end{array} & \begin{array}{c} \color{blue}\boxed{\substack{1\\0 \ 1 \ 0} } \end{array} & \begin{array}{c} \color{blue}\boxed{\substack{1\\1 \ 2 \ 1} } \end{array} & \begin{array}{c} \color{blue}\substack{1\\0 \ 1 \ 1} \end{array} & \begin{array}{c} \color{blue}\substack{1\\1 \ 1 \ 1} \end{array} & \begin{array}{c} \color{blue}\substack{0\\1 \ 0 \ 0} \end{array} \\
	& \begin{array}{c} \color{blue}\boxed{\substack{0\\1 \ 1 \ 0} } \end{array} && \begin{array}{c} \color{blue}\substack{0\\1 \ 1 \ 1} \end{array} && \begin{array}{c} \color{blue}\substack{1\\0 \ 0 \ 0} \end{array} \\
	& \begin{array}{c} \color{cyan}\boxed{\substack{0\\0 \ 0 \ 1} } \end{array} && \begin{array}{c} \color{cyan}\substack{1\\1 \ 1 \ 0} \end{array} && \begin{array}{c} \color{cyan}{\substack{0\\0 \ 1 \ 1} } \end{array} \\
	& \begin{array}{c} \color{cyan}\boxed{\substack{1\\0 \ 0 \ 0} } \end{array} & \begin{array}{c} \color{cyan}\boxed{\substack{1\\1 \ 1 \ 1} } \end{array} & \begin{array}{c} \color{cyan}\substack{1\\0 \ 1 \ 1} \end{array} & \begin{array}{c} \color{cyan}{\substack{1\\1 \ 2 \ 1} } \end{array} & \begin{array}{c} \color{cyan}{\substack{1\\0 \ 1 \ 0} } \end{array} & \begin{array}{c} \color{olive}\substack{0\\0 \ 1 \ 0} \end{array} \\
	& \begin{array}{c} \color{cyan}\boxed{\substack{0\\1 \ 0 \ 0} } \end{array} && \begin{array}{c} \color{cyan}\substack{0\\1 \ 1 \ 1} \end{array} && \begin{array}{c} \color{cyan}{\substack{0\\1 \ 1 \ 0} } \end{array}
	\arrow[from=1-2, to=2-3]
	\arrow[from=1-4, to=2-5]
	\arrow[from=2-1, to=1-2]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-1, to=3-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=1-4]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-4]
	\arrow[from=2-4, to=2-5]
	\arrow[from=2-5, to=1-6]
	\arrow[from=2-5, to=2-6]
	\arrow[from=2-5, to=3-6]
	\arrow[from=3-2, to=2-3]
	\arrow[from=3-4, to=2-5]
	\arrow[from=4-2, to=5-3]
	\arrow[from=4-4, to=5-5]
	\arrow[from=4-6, to=5-7]
	\arrow[from=5-2, to=5-3]
	\arrow[from=5-3, to=4-4]
	\arrow[from=5-3, to=5-4]
	\arrow[from=5-3, to=6-4]
	\arrow[from=5-4, to=5-5]
	\arrow[from=5-5, to=4-6]
	\arrow[from=5-5, to=5-6]
	\arrow[from=5-5, to=6-6]
	\arrow[from=5-6, to=5-7]
	\arrow[from=6-2, to=5-3]
	\arrow[from=6-4, to=5-5]
	\arrow[from=6-6, to=5-7]
\end{tikzcd}
{% endtikz %}
以上,

1. $(T, -) : {\color{blue}𝒯} → {\color{cyan}𝒴}$ 是范畴等价, 从 torsion 映至 torsion-free;
2. $\mathrm{Ext}^1(T, -) : {\color{green}ℱ} → {\color{olive}𝒳}$ 是范畴等价, 从 torsion-free 映至 torsion.

从效果上看, 确实只是相差 $i=4$ 处的 Coxeter 反射.
{% endex %}

{% note %}
此案例中, $A$ 与 $B$ 都是遗传代数, torsion pair 都是可裂的.
{% endnote %}

### 非 APR tilting 模

{% ex %}
以下 $T := ⨁ \boxed {\substack{a \\b \ c \ d} }$ 不是 APR tilting 模:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMiwiXFxjb2xvcntibHVlfVxcYm94ZWR7XFxzdWJzdGFja3swXFxcXDEgXFwgMSBcXCAwfX0iXSxbMSwxLCJcXGNvbG9ye0dyZWVufVxcc3Vic3RhY2t7MVxcXFwwIFxcIDEgXFwgMH0iXSxbMSwwLCJcXGNvbG9ye0dyZWVufVxcc3Vic3RhY2t7MFxcXFwwIFxcIDEgXFwgMX0iXSxbMiwxLCJcXHN1YnN0YWNrezFcXFxcMSBcXCAyIFxcIDF9Il0sWzMsMCwiXFxjb2xvcntibHVlfVxcYm94ZWR7XFxzdWJzdGFja3sxXFxcXDEgXFwgMSBcXCAwfX0iXSxbMywxLCJcXGNvbG9ye2JsdWV9XFxib3hlZHtcXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDF9fSJdLFszLDIsIlxcY29sb3J7R3JlZW59XFxzdWJzdGFja3sxXFxcXDAgXFwgMSBcXCAxfSJdLFswLDEsIlxcY29sb3J7R3JlZW59XFxzdWJzdGFja3swXFxcXDAgXFwgMSBcXCAwfSJdLFs0LDEsIlxcY29sb3J7Ymx1ZX1cXHN1YnN0YWNrezFcXFxcMSBcXCAxIFxcIDF9Il0sWzUsMiwiXFxjb2xvcntibHVlfVxcYm94ZWR7XFxzdWJzdGFja3swXFxcXDEgXFwgMCBcXCAwfX0iXSxbNSwxLCJcXGNvbG9ye2JsdWV9XFxzdWJzdGFja3sxXFxcXDAgXFwgMCBcXCAwfSJdLFs1LDAsIlxcY29sb3J7Ymx1ZX1cXHN1YnN0YWNrezBcXFxcMCBcXCAwIFxcIDF9Il0sWzIsM10sWzAsM10sWzMsNF0sWzMsNl0sWzcsMl0sWzcsMV0sWzcsMF0sWzQsOF0sWzUsOF0sWzYsOF0sWzgsOV0sWzgsMTBdLFs4LDExXSxbMSwzXSxbMyw1XV0=
\begin{tikzcd}
	& \begin{array}{c} \color{green}\substack{0\\0 \ 1 \ 1} \end{array} && \begin{array}{c} \color{blue}\boxed{\substack{1\\1 \ 1 \ 0} } \end{array} && \begin{array}{c} \color{blue}\substack{0\\0 \ 0 \ 1} \end{array} \\
	\begin{array}{c} \color{green}\substack{0\\0 \ 1 \ 0} \end{array} & \begin{array}{c} \color{green}\substack{1\\0 \ 1 \ 0} \end{array} & \begin{array}{c} \substack{1\\1 \ 2 \ 1} \end{array} & \begin{array}{c} \color{blue}\boxed{\substack{0\\1 \ 1 \ 1} } \end{array} & \begin{array}{c} \color{blue}\substack{1\\1 \ 1 \ 1} \end{array} & \begin{array}{c} \color{blue}\substack{1\\0 \ 0 \ 0} \end{array} \\
	& \begin{array}{c} \color{blue}\boxed{\substack{0\\1 \ 1 \ 0} } \end{array} && \begin{array}{c} \color{green}\substack{1\\0 \ 1 \ 1} \end{array} && \begin{array}{c} \color{blue}\boxed{\substack{0\\1 \ 0 \ 0} } \end{array}
	\arrow[from=1-2, to=2-3]
	\arrow[from=1-4, to=2-5]
	\arrow[from=2-1, to=1-2]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-1, to=3-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=1-4]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-4]
	\arrow[from=2-4, to=2-5]
	\arrow[from=2-5, to=1-6]
	\arrow[from=2-5, to=2-6]
	\arrow[from=2-5, to=3-6]
	\arrow[from=3-2, to=2-3]
	\arrow[from=3-4, to=2-5]
\end{tikzcd}
{% endtikz %}
{% endex %}

{% ex %}
以上是 $T$ tilting 模.

1. (投射维度). 由遗传代数, $p.\dim T ≤ 1$.
2. (相对内射维度). 只需证明不可分解投射模的 $𝐚𝐝𝐝(T)$-相对内射维度 $≤1$. 计算得
   1. $0 → {\color{green}\substack{0\\0 \ 1 \ 0} } → {\color{blue}\boxed{\substack{0\\1 \ 1 \ 0} } } → {\color{blue}\boxed{\substack{0\\1 \ 0 \ 0} } } → 0$;
   2. $0 → {\color{green}\substack{1\\0 \ 1 \ 0} } → {\color{blue}\boxed{\substack{1\\1 \ 1 \ 0} } }→ {\color{blue}\boxed{\substack{0\\1 \ 0 \ 0} } } → 0$;
   3. $0 → {\color{green}\substack{0\\0 \ 1 \ 1} } → {\color{blue}\boxed{\substack{0\\1 \ 1 \ 1} } } → {\color{blue}\boxed{\substack{0\\1 \ 0 \ 0} } } → 0$;
   4. $0 → {\color{blue}\boxed{\substack{0\\1 \ 1 \ 0} } } → {\color{blue}\boxed{\substack{0\\1 \ 1 \ 0} } } → 0$.

3. (自垂直). 由 $p.\dim T ≤ 1$, 此时 $D\mathrm{Ext}^1(T,T) ≃ \mathrm{Hom}(T, τ T)$, 即,

    $$
    \mathrm{Hom}\left({\color{blue}\boxed{\substack{0\\1 \ 1 \ 0} }_A}⊕ {\color{blue}\boxed{\substack{1\\1 \ 1 \ 0} }_B}⊕{ \color{blue}\boxed{\substack{0\\1 \ 1 \ 1} } _C}⊕{ \color{blue}\boxed{\substack{0\\1 \ 0 \ 0} }_D}, {\color{green}\substack{0\\0 \ 1 \ 1} } ⊕ {\color{green}\substack{1\\0 \ 1 \ 0} } ⊕ {\color{green}\substack{1\\0 \ 1 \ 1}\color{black} }\right).
    $$
  
    对任意分量间的态射 $φ$, 必有 $φ_1 =0$, 此时 $φ_4=0$. 简单验证知 $φ_2$ 与 $φ_3$ 恒零.

{% endex %}

{% ex %}
上述 torsion pair 是不裂的. 特别地, 有典范分解

$$
0 → {\color{blue}\boxed{\substack{0\\1 \ 1 \ 0} } } → \substack{1\\1 \ 2 \ 1} → {\color{green}\substack{1\\0 \ 1 \ 1} } → 0.
$$

{% endex %}

{% ex %}
($\mathrm{End}_A(T_A)$). 下求 Tilting 代数 $B := \mathrm{End}(T_A)$. 依定义将 $B$ 写作矩阵代数 $(B_{i,j})_{1 ≤ i,j ≤ 4}$. 直接计算得

$$
B ≃ \begin{pmatrix}
k\operatorname{id}_A & 0 & 0 & 0 \\
kf_{BA} & k\operatorname{id}_B & 0 & 0 \\
kf_{CA} & 0 & k\operatorname{id}_C & 0 \\
kf_{DA} & kf_{DB} & kf_{DC} & k\operatorname{id}_D. 
\end{pmatrix}
$$

以上 $f_{j,i}$ 是 $i → j$ 类型的态射, 对应 quiver with relation:

$$
\begin{bmatrix}
    A & → & B \\ 
    ↓ & ↻ & ↓\\
    C & → & D
\end{bmatrix}.
$$

{% endex %}

{% ex %}
($B$ 的 AR quiver). $B$ 的 AR quiver 如下 $\boxed{\substack {b \\ a \quad c \\ d} }$:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzMsMiwiXFxzdWJzdGFja3swIFxcXFwgMCBcXHF1YWQgMCBcXFxcIDF9Il0sWzMsMCwiXFxzdWJzdGFja3sxIFxcXFwgMCBcXHF1YWQgMCBcXFxcIDB9Il0sWzEsMiwiXFxjb2xvcntjeWFufVxcc3Vic3RhY2t7MSBcXFxcIDAgXFxxdWFkIDEgXFxcXCAwfSJdLFsyLDEsIlxcc3Vic3RhY2t7MSBcXFxcIDAgXFxxdWFkIDEgXFxcXCAxfSJdLFswLDEsIlxcY29sb3J7Y3lhbn1cXHN1YnN0YWNrezAgXFxcXCAwIFxccXVhZCAxIFxcXFwgMH0iXSxbMSwwLCJcXGNvbG9ye2N5YW59XFxzdWJzdGFja3swIFxcXFwgMCBcXHF1YWQgMSBcXFxcIDF9Il0sWzMsMSwiXFxjb2xvcntjeWFufVxcc3Vic3RhY2t7MSBcXFxcIDEgXFxxdWFkIDEgXFxcXCAxfSJdLFs0LDEsIlxcc3Vic3RhY2t7MSBcXFxcIDEgXFxxdWFkIDAgXFxcXCAxfSJdLFs1LDIsIlxcc3Vic3RhY2t7MSBcXFxcIDEgXFxxdWFkIDAgXFxcXCAwfSJdLFs1LDAsIlxcc3Vic3RhY2t7MCBcXFxcIDEgXFxxdWFkIDAgXFxcXCAxfSJdLFs2LDEsIlxcc3Vic3RhY2t7MCBcXFxcIDEgXFxxdWFkIDAgXFxcXCAwfSJdLFs0LDVdLFs1LDNdLFs0LDJdLFsyLDNdLFszLDBdLFszLDFdLFsxLDddLFswLDddLFs3LDldLFs3LDhdLFszLDZdLFs2LDddLFs5LDEwXSxbOCwxMF1d
\begin{tikzcd}
	& \begin{array}{c} \color{cyan}\substack{0 \\ 0 \quad 1 \\ 1} \end{array} && \begin{array}{c} \substack{1 \\ 0 \quad 0 \\ 0} \end{array} && \begin{array}{c} \substack{0 \\ 1 \quad 0 \\ 1} \end{array} \\
	\begin{array}{c} \color{cyan}\substack{0 \\ 0 \quad 1 \\ 0} \end{array} && \begin{array}{c} \substack{1 \\ 0 \quad 1 \\ 1} \end{array} & \begin{array}{c} \color{cyan}\substack{1 \\ 1 \quad 1 \\ 1} \end{array} & \begin{array}{c} \substack{1 \\ 1 \quad 0 \\ 1} \end{array} && \begin{array}{c} \substack{0 \\ 1 \quad 0 \\ 0} \end{array} \\
	& \begin{array}{c} \color{cyan}\substack{1 \\ 0 \quad 1 \\ 0} \end{array} && \begin{array}{c} \substack{0 \\ 0 \quad 0 \\ 1} \end{array} && \begin{array}{c} \substack{1 \\ 1 \quad 0 \\ 0} \end{array}
	\arrow[from=1-2, to=2-3]
	\arrow[from=1-4, to=2-5]
	\arrow[from=1-6, to=2-7]
	\arrow[from=2-1, to=1-2]
	\arrow[from=2-1, to=3-2]
	\arrow[from=2-3, to=1-4]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-4]
	\arrow[from=2-4, to=2-5]
	\arrow[from=2-5, to=1-6]
	\arrow[from=2-5, to=3-6]
	\arrow[from=3-2, to=2-3]
	\arrow[from=3-4, to=2-5]
	\arrow[from=3-6, to=2-7]
\end{tikzcd}
{% endtikz %}
以上 $\color{cyan} {_B(T,\{A,B,C,D\})}$ 是投射对象.

{% endex %}

{% ex %}
(BB 定理如何工作?). 此处解释 tilting 的含义

{% tikz %}
% https://q.uiver.app/#q=WzAsMzMsWzYsNCwiXFxjb2xvcntjeWFufVxcc3Vic3RhY2t7MCBcXFxcIDAgXFxxdWFkIDAgXFxcXCAxfSJdLFs2LDYsIlxcY29sb3J7Y3lhbn1cXHN1YnN0YWNrezEgXFxcXCAwIFxccXVhZCAwIFxcXFwgMH0iXSxbNCw0LCJcXGNvbG9ye2N5YW59XFxib3hlZHtcXHN1YnN0YWNrezEgXFxcXCAwIFxccXVhZCAxIFxcXFwgMH19Il0sWzUsNSwiXFxjb2xvcntjeWFufVxcc3Vic3RhY2t7MSBcXFxcIDAgXFxxdWFkIDEgXFxcXCAxfSJdLFsyLDUsIlxcY29sb3J7Y3lhbn1cXGJveGVke1xcc3Vic3RhY2t7MCBcXFxcIDAgXFxxdWFkIDEgXFxcXCAwfX0iXSxbNCw2LCJcXGNvbG9ye2N5YW59XFxib3hlZHtcXHN1YnN0YWNrezAgXFxcXCAwIFxccXVhZCAxIFxcXFwgMX19Il0sWzYsNSwiXFxjb2xvcntjeWFufVxcYm94ZWR7XFxzdWJzdGFja3sxIFxcXFwgMSBcXHF1YWQgMSBcXFxcIDF9fSJdLFs3LDUsIlxcY29sb3J7b2xpdmV9XFxzdWJzdGFja3sxIFxcXFwgMSBcXHF1YWQgMCBcXFxcIDF9Il0sWzgsNCwiXFxjb2xvcntvbGl2ZX1cXHN1YnN0YWNrezEgXFxcXCAxIFxccXVhZCAwIFxcXFwgMH0iXSxbOCw2LCJcXGNvbG9ye29saXZlfVxcc3Vic3RhY2t7MCBcXFxcIDEgXFxxdWFkIDAgXFxcXCAxfSJdLFsxMCw1LCJcXGNvbG9ye29saXZlfVxcc3Vic3RhY2t7MCBcXFxcIDEgXFxxdWFkIDAgXFxcXCAwfSJdLFs1LDAsIlxcY29sb3J7Ymx1ZX1cXHN1YnN0YWNrezBcXFxcMCBcXCAwIFxcIDF9Il0sWzUsMiwiXFxjb2xvcntibHVlfVxcc3Vic3RhY2t7MVxcXFwwIFxcIDAgXFwgMH0iXSxbNSwxLCJcXGNvbG9ye2JsdWV9XFxib3hlZHtcXHN1YnN0YWNrezBcXFxcMSBcXCAwIFxcIDB9fSJdLFs0LDEsIlxcY29sb3J7Ymx1ZX1cXHN1YnN0YWNrezFcXFxcMSBcXCAxIFxcIDF9Il0sWzMsMCwiXFxjb2xvcntibHVlfVxcYm94ZWR7XFxzdWJzdGFja3sxXFxcXDEgXFwgMSBcXCAwfX0iXSxbMywyLCJcXGNvbG9ye2JsdWV9XFxib3hlZHtcXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDF9fSJdLFszLDEsIlxcY29sb3J7R3JlZW59XFxzdWJzdGFja3sxXFxcXDAgXFwgMSBcXCAxfSJdLFsyLDEsIlxcc3Vic3RhY2t7MVxcXFwxIFxcIDIgXFwgMX0iXSxbMSwwLCJcXGNvbG9ye0dyZWVufVxcc3Vic3RhY2t7MFxcXFwwIFxcIDEgXFwgMX0iXSxbMSwyLCJcXGNvbG9ye0dyZWVufVxcc3Vic3RhY2t7MVxcXFwwIFxcIDEgXFwgMH0iXSxbMSwxLCJcXGNvbG9ye2JsdWV9XFxib3hlZHtcXHN1YnN0YWNrezBcXFxcMSBcXCAxIFxcIDB9fSJdLFswLDEsIlxcY29sb3J7R3JlZW59XFxzdWJzdGFja3swXFxcXDAgXFwgMSBcXCAwfSJdLFs2LDEsIlxcY29sb3J7U3ByaW5nR3JlZW59XFxzdWJzdGFja3swXFxcXDAgXFwgMSBcXCAwfSJdLFs3LDIsIlxcY29sb3J7U3ByaW5nR3JlZW59XFxzdWJzdGFja3sxXFxcXDAgXFwgMSBcXCAwfSJdLFs3LDAsIlxcY29sb3J7U3ByaW5nR3JlZW59XFxzdWJzdGFja3swXFxcXDAgXFwgMSBcXCAxfSJdLFs3LDEsIlxcY29sb3J7WWVsbG93fVxcYm94ZWR7XFxzdWJzdGFja3swXFxcXDEgXFwgMSBcXCAwfX0iXSxbOCwxLCJcXGNvbG9ye0dyYXl9XFxzdWJzdGFja3sxXFxcXDEgXFwgMiBcXCAxfSJdLFs5LDEsIlxcY29sb3J7U3ByaW5nR3JlZW59XFxzdWJzdGFja3sxXFxcXDAgXFwgMSBcXCAxfSJdLFs0LDUsIjAiXSxbMiw0LCIwIl0sWzIsNiwiMCJdLFsxLDUsIjAiXSxbNCw1XSxbNSwzXSxbNCwyXSxbMiwzXSxbMywwXSxbMywxXSxbMSw3XSxbMCw3XSxbNyw5XSxbNyw4XSxbMyw2XSxbNiw3XSxbOSwxMF0sWzgsMTBdLFsyMiwxOV0sWzE5LDE4XSxbMTgsMTddLFsxNywxNF0sWzE0LDExXSxbMjIsMjFdLFsyMSwxOF0sWzE4LDE1XSxbMTUsMTRdLFsyMiwyMF0sWzE4LDE2XSxbMTYsMTRdLFsxNCwxMl0sWzE0LDEzXSxbMTUsMiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzE2LDUsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxNCwzLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMTIsMSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzIxLDQsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxMyw2LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMjAsMThdLFsyMywyNSwiIiwxLHsiY29sb3VyIjpbMCwwLDc1XSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzI1LDI3LCIiLDEseyJjb2xvdXIiOlswLDAsNzVdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMjMsMjQsIiIsMSx7ImNvbG91ciI6WzAsMCw3NV0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyNCwyNywiIiwxLHsiY29sb3VyIjpbMCwwLDc1XSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIzLDI2LCIiLDEseyJjb2xvdXIiOlswLDAsNzVdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMjYsMjcsIiIsMSx7ImNvbG91ciI6WzAsMCw3NV0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyNywyOCwiIiwxLHsiY29sb3VyIjpbMCwwLDc1XSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIzLDcsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsyNSw4LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMjQsOSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzE3LDI5LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMjIsMzIsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxOSwzMCwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzIwLDMxLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMjgsMTAsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxMSwwLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0=
\begin{tikzcd}
	& \begin{array}{c} \color{green}\substack{0\\0 \ 1 \ 1} \end{array} && \begin{array}{c} \color{blue}\boxed{\substack{1\\1 \ 1 \ 0} } \end{array} && \begin{array}{c} \color{blue}\substack{0\\0 \ 0 \ 1} \end{array} && \begin{array}{c} \color{SpringGreen}\substack{0\\0 \ 1 \ 1} \end{array} \\
	\begin{array}{c} \color{green}\substack{0\\0 \ 1 \ 0} \end{array} & \begin{array}{c} \color{blue}\boxed{\substack{0\\1 \ 1 \ 0} } \end{array} & \begin{array}{c} \substack{1\\1 \ 2 \ 1} \end{array} & \begin{array}{c} \color{green}\substack{1\\0 \ 1 \ 1} \end{array} & \begin{array}{c} \color{blue}\substack{1\\1 \ 1 \ 1} \end{array} & \begin{array}{c} \color{blue}\boxed{\substack{0\\1 \ 0 \ 0} } \end{array} & \begin{array}{c} \color{SpringGreen}\substack{0\\0 \ 1 \ 0} \end{array} & \begin{array}{c} \color{Yellow}\boxed{\substack{0\\1 \ 1 \ 0} } \end{array} & \begin{array}{c} \color{Gray}\substack{1\\1 \ 2 \ 1} \end{array} & \begin{array}{c} \color{SpringGreen}\substack{1\\0 \ 1 \ 1} \end{array} \\
	& \begin{array}{c} \color{green}\substack{1\\0 \ 1 \ 0} \end{array} && \begin{array}{c} \color{blue}\boxed{\substack{0\\1 \ 1 \ 1} } \end{array} && \begin{array}{c} \color{blue}\substack{1\\0 \ 0 \ 0} \end{array} && \begin{array}{c} \color{SpringGreen}\substack{1\\0 \ 1 \ 0} \end{array} \\
	\\
	&& 0 && \begin{array}{c} \color{cyan}\boxed{\substack{1 \\ 0 \quad 1 \\ 0} } \end{array} && \begin{array}{c} \color{cyan}\substack{0 \\ 0 \quad 0 \\ 1} \end{array} && \begin{array}{c} \color{olive}\substack{1 \\ 1 \quad 0 \\ 0} \end{array} \\
	& 0 & \begin{array}{c} \color{cyan}\boxed{\substack{0 \\ 0 \quad 1 \\ 0} } \end{array} && 0 & \begin{array}{c} \color{cyan}\substack{1 \\ 0 \quad 1 \\ 1} \end{array} & \begin{array}{c} \color{cyan}\boxed{\substack{1 \\ 1 \quad 1 \\ 1} } \end{array} & \begin{array}{c} \color{olive}\substack{1 \\ 1 \quad 0 \\ 1} \end{array} &&& \begin{array}{c} \color{olive}\substack{0 \\ 1 \quad 0 \\ 0} \end{array} \\
	&& 0 && \begin{array}{c} \color{cyan}\boxed{\substack{0 \\ 0 \quad 1 \\ 1} } \end{array} && \begin{array}{c} \color{cyan}\substack{1 \\ 0 \quad 0 \\ 0} \end{array} && \begin{array}{c} \color{olive}\substack{0 \\ 1 \quad 0 \\ 1} \end{array}
	\arrow[from=1-2, to=2-3]
	\arrow[dotted, from=1-2, to=5-3]
	\arrow[from=1-4, to=2-5]
	\arrow[dotted, from=1-4, to=5-5]
	\arrow[dotted, from=1-6, to=5-7]
	\arrow[draw={rgb,255:red,191;green,191;blue,191}, dashed, from=1-8, to=2-9]
	\arrow[dotted, from=1-8, to=5-9]
	\arrow[from=2-1, to=1-2]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-1, to=3-2]
	\arrow[dotted, from=2-1, to=6-2]
	\arrow[from=2-2, to=2-3]
	\arrow[dotted, from=2-2, to=6-3]
	\arrow[from=2-3, to=1-4]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-3, to=3-4]
	\arrow[from=2-4, to=2-5]
	\arrow[dotted, from=2-4, to=6-5]
	\arrow[from=2-5, to=1-6]
	\arrow[from=2-5, to=2-6]
	\arrow[from=2-5, to=3-6]
	\arrow[dotted, from=2-5, to=6-6]
	\arrow[dotted, from=2-6, to=6-7]
	\arrow[draw={rgb,255:red,191;green,191;blue,191}, dashed, from=2-7, to=1-8]
	\arrow[draw={rgb,255:red,191;green,191;blue,191}, dashed, from=2-7, to=2-8]
	\arrow[draw={rgb,255:red,191;green,191;blue,191}, dashed, from=2-7, to=3-8]
	\arrow[dotted, from=2-7, to=6-8]
	\arrow[draw={rgb,255:red,191;green,191;blue,191}, dashed, from=2-8, to=2-9]
	\arrow[draw={rgb,255:red,191;green,191;blue,191}, dashed, from=2-9, to=2-10]
	\arrow[dotted, from=2-10, to=6-11]
	\arrow[from=3-2, to=2-3]
	\arrow[dotted, from=3-2, to=7-3]
	\arrow[from=3-4, to=2-5]
	\arrow[dotted, from=3-4, to=7-5]
	\arrow[dotted, from=3-6, to=7-7]
	\arrow[draw={rgb,255:red,191;green,191;blue,191}, dashed, from=3-8, to=2-9]
	\arrow[dotted, from=3-8, to=7-9]
	\arrow[from=5-5, to=6-6]
	\arrow[from=5-7, to=6-8]
	\arrow[from=5-9, to=6-11]
	\arrow[from=6-3, to=5-5]
	\arrow[from=6-3, to=7-5]
	\arrow[from=6-6, to=5-7]
	\arrow[from=6-6, to=6-7]
	\arrow[from=6-6, to=7-7]
	\arrow[from=6-7, to=6-8]
	\arrow[from=6-8, to=5-9]
	\arrow[from=6-8, to=7-9]
	\arrow[from=7-5, to=6-6]
	\arrow[from=7-7, to=6-8]
	\arrow[from=7-9, to=6-11]
\end{tikzcd}
{% endtikz %}
以下是几点发现.

1. Tilted 代数 $B = \mathrm{End}(T_A)$ 整体维数是 $2$. 满足 $|gl.\dim A - gl. \dim B| ≤ 1$ 的[结论](Hom_D_Hereditary).
2. [由](Hereditary_TP_Split) $A$ 遗传, ${_B}T ∈ 𝐦𝐨𝐝_B$ 诱导的 torsion pair 是可裂的.
3. 从 $Γ(A)$ 至 $Γ(B)$, 不可分解对象的个数减少了.

{% endex %}
