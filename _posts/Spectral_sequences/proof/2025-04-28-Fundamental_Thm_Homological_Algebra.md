---
title: 同调代数基本定理
author: Chencheng Zhang
layout: post
category: proof
---

## 同调代数基本定理

{% thm %}
(同调代数基本定理). 以下是三种常见形式.

1. (通常形式). 给定上链复形 (dg-模) 的正合列 $0 → K → X → Q → 0$, 此时有长正合列
   \begin{equation}
     \cdots → H^{p-1} (Q) → H^p (K) → H^p (X) → H^p (Q) → H^{p+1} (K) → \cdots.
   \end{equation}
2. (同伦形式). 给定复形态射 $f : X → Y$, 取全复形 $E : = \mathrm{Cone}(f)$, 此时有长正合列
   \begin{equation}
       \cdots → H^{p-1} (Y) → H^p (X) → H^p (E) → H^p (Y) → H^{p+1} (X) → \cdots.
   \end{equation}
3. (正合复形的态射). 给定正合复形间的态射 $f : X → Y$, 则 $H^{p+1}(\ker) ≃ H^{p-1}(\mathrm{cok})$, 即蛇引理.  
{% endthm %}

{% ex %}
(通常的同调代数基本定理). 给定上链复形 (dg-模) 的正合列 $0 → K → X → Q → 0$, 取滤过 $X ⊃ K$, 记 $Q = \frac{X}{K}$. 此时
{% tikz %}
% https://q.uiver.app/#q=WzAsMjcsWzEsMiwiS15wICJdLFswLDEsIlhecCJdLFswLDAsIlhee3ArMX0iXSxbMCwyLCJYXntwLTF9Il0sWzEsMSwiS157cCsxfSJdLFsxLDMsIktee3AtMX0iXSxbMSwwLCJLXntwKzJ9Il0sWzAsMywiWF57cC0yfSJdLFswLDQsIlxcYm94ZWR7XFx0ZXh0e+WInX19Il0sWzIsNCwiXFxib3hlZHtFXzB9Il0sWzIsMywiUV57cC0yfSJdLFsyLDIsIlFee3AtMX0iXSxbMiwxLCJRXntwfSJdLFsyLDAsIlFee3ArMX0iXSxbMywzLCJLXntwLTF9Il0sWzMsMiwiS15wICJdLFszLDEsIktee3ArMX0iXSxbMywwLCJLXntwKzJ9Il0sWzQsNCwiXFxib3hlZHtFXzF9Il0sWzQsMywiSF57cC0yfShRKSJdLFs0LDIsIkhee3AtMX0oUSkiXSxbNCwxLCJIXntwfShRKSJdLFs0LDAsIkhee3ArMX0oUSkiXSxbNSwzLCJIXntwLTF9KEspIl0sWzUsMiwiSF57cH0oSykiXSxbNSwxLCJIXntwKzF9KEspIl0sWzUsMCwiSF57cCsyfShLKSJdLFsxMCwxMV0sWzExLDEyXSxbMTIsMTNdLFsxNCwxNV0sWzE1LDE2XSxbMTYsMTddLFsyLDQsIlxcc3Vwc2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSwwLCJcXHN1cHNldCIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsNSwiXFxzdXBzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyMiwyNiwiXFxkZWx0YSBee3ArMX0iXSxbMjEsMjUsIlxcZGVsdGEgXntwfSJdLFsyMCwyNCwiXFxkZWx0YSBee3AtMX0iXSxbMTksMjMsIlxcZGVsdGEgXntwLTJ9Il1d
\begin{tikzcd}
	{X^{p+1}} & {K^{p+2}} & {Q^{p+1}} & {K^{p+2}} & {H^{p+1}(Q)} & {H^{p+2}(K)} \\
	{X^p} & {K^{p+1}} & {Q^{p}} & {K^{p+1}} & {H^{p}(Q)} & {H^{p+1}(K)} \\
	{X^{p-1}} & {K^p } & {Q^{p-1}} & {K^p } & {H^{p-1}(Q)} & {H^{p}(K)} \\
	{X^{p-2}} & {K^{p-1}} & {Q^{p-2}} & {K^{p-1}} & {H^{p-2}(Q)} & {H^{p-1}(K)} \\
	{\boxed{\text{初}}} && {\boxed{E_0}} && {\boxed{E_1}}
	\arrow["\supset"{marking, allow upside down}, dotted, no head, from=1-1, to=2-2]
	\arrow["{\delta ^{p+1}}", from=1-5, to=1-6]
	\arrow["\supset"{marking, allow upside down}, dotted, no head, from=2-1, to=3-2]
	\arrow[from=2-3, to=1-3]
	\arrow[from=2-4, to=1-4]
	\arrow["{\delta ^{p}}", from=2-5, to=2-6]
	\arrow["\supset"{marking, allow upside down}, dotted, no head, from=3-1, to=4-2]
	\arrow[from=3-3, to=2-3]
	\arrow[from=3-4, to=2-4]
	\arrow["{\delta ^{p-1}}", from=3-5, to=3-6]
	\arrow[from=4-3, to=3-3]
	\arrow[from=4-4, to=3-4]
	\arrow["{\delta ^{p-2}}", from=4-5, to=4-6]
\end{tikzcd}
{% endtikz %}
可以注意到, $E_2 = E_∞$. 拼凑短正合列 (右) 即得长正合列 (左):
{% tikz %}
% https://q.uiver.app/#q=WzAsMTksWzEsNCwiXFxib3hlZHtFXzF9Il0sWzAsMywiSF57cC0yfShRKSJdLFswLDIsIkhee3AtMX0oUSkiXSxbMCwxLCJIXntwfShRKSJdLFswLDAsIkhee3ArMX0oUSkiXSxbMiwzLCJIXntwLTF9KEspIl0sWzIsMiwiSF57cH0oSykiXSxbMiwxLCJIXntwKzF9KEspIl0sWzIsMCwiSF57cCsyfShLKSJdLFs1LDQsIlxcYm94ZWR7RV9cXGluZnR5fSJdLFszLDQsIlxcYm94ZWR7RV8yIH0iXSxbNSwzLCJcXG1hdGhybXtjb2t9IFxcIFxcZGVsdGEgXntwLTJ9Il0sWzMsMywiXFxrZXIgXFxkZWx0YSBee3AtMn0iXSxbNSwyLCJcXG1hdGhybXtjb2t9IFxcIFxcZGVsdGEgXntwLTF9Il0sWzMsMiwiXFxrZXIgXFxkZWx0YSBee3AtMX0iXSxbNSwxLCJcXG1hdGhybXtjb2t9IFxcIFxcZGVsdGEgXntwfSJdLFszLDEsIlxca2VyIFxcZGVsdGEgXntwfSJdLFs1LDAsIlxcbWF0aHJte2Nva30gXFwgXFxkZWx0YSBee3ArMX0iXSxbMywwLCJcXGtlciBcXGRlbHRhIF57cCsxfSJdLFs0LDgsIlxcZGVsdGEgXntwKzF9IiwxXSxbMyw3LCJcXGRlbHRhIF57cH0iLDFdLFsyLDYsIlxcZGVsdGEgXntwLTF9IiwxXSxbMSw1LCJcXGRlbHRhIF57cC0yfSIsMV0sWzEwLDksIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzE4LDE1LCJIXntwKzF9KFgpIiwzLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiYXJyb3doZWFkIn0sImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzE2LDEzLCJIXntwfShYKSIsMyx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6ImFycm93aGVhZCJ9LCJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxNCwxMSwiSF57cC0xfShYKSIsMyx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6ImFycm93aGVhZCJ9LCJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDcsIkhee3ArMX0oWCkiLDMseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJhcnJvd2hlYWQifSwiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMyw2LCJIXntwfShYKSIsMyx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6ImFycm93aGVhZCJ9LCJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDUsIkhee3AtMX0oWCkiLDMseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJhcnJvd2hlYWQifSwiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
	{H^{p+1}(Q)} && {H^{p+2}(K)} & {\ker \delta ^{p+1}} && {\mathrm{cok} \ \delta ^{p+1}} \\
	{H^{p}(Q)} && {H^{p+1}(K)} & {\ker \delta ^{p}} && {\mathrm{cok} \ \delta ^{p}} \\
	{H^{p-1}(Q)} && {H^{p}(K)} & {\ker \delta ^{p-1}} && {\mathrm{cok} \ \delta ^{p-1}} \\
	{H^{p-2}(Q)} && {H^{p-1}(K)} & {\ker \delta ^{p-2}} && {\mathrm{cok} \ \delta ^{p-2}} \\
	& {\boxed{E_1}} && {\boxed{E_2 }} && {\boxed{E_\infty}}
	\arrow["{\delta ^{p+1}}"{description}, from=1-1, to=1-3]
	\arrow["{H^{p+1}(X)}"{marking, allow upside down}, dotted, tail reversed, no head, from=1-1, to=2-3]
	\arrow["{H^{p+1}(X)}"{marking, allow upside down}, dotted, tail reversed, no head, from=1-4, to=2-6]
	\arrow["{\delta ^{p}}"{description}, from=2-1, to=2-3]
	\arrow["{H^{p}(X)}"{marking, allow upside down}, dotted, tail reversed, no head, from=2-1, to=3-3]
	\arrow["{H^{p}(X)}"{marking, allow upside down}, dotted, tail reversed, no head, from=2-4, to=3-6]
	\arrow["{\delta ^{p-1}}"{description}, from=3-1, to=3-3]
	\arrow["{H^{p-1}(X)}"{marking, allow upside down}, dotted, tail reversed, no head, from=3-1, to=4-3]
	\arrow["{H^{p-1}(X)}"{marking, allow upside down}, dotted, tail reversed, no head, from=3-4, to=4-6]
	\arrow["{\delta ^{p-2}}"{description}, from=4-1, to=4-3]
	\arrow[equals, from=5-4, to=5-6]
\end{tikzcd}
{% endtikz %}
{% endex %}

{% ex %}
(同伦版本的同调代数基本定理). 给定复形态射 $f : X → Y$, 选定二项滤过 $E:= \mathrm{Cone}(f) ⊃ Y$, 得谱序列
{% tikz %}
% https://q.uiver.app/#q=WzAsMjIsWzMsNCwiXFxib3hlZHtFXzB9Il0sWzEsNCwiXFxib3hlZHtcXHRleHR75YidfX0iXSxbMSwzLCJFXntwLTJ9Il0sWzIsMywiWV57cC0xfSJdLFszLDMsIlhee3AtMX0iXSxbNCwyLCJZXnAgIl0sWzMsMiwiWF57cH0iXSxbMiwyLCJZXnAgIl0sWzEsMiwiRV57cC0xfSJdLFsxLDEsIkVecCJdLFsyLDEsIllee3ArMX0iXSxbMywxLCJYXntwKzF9Il0sWzQsMSwiWV57cCsxfSJdLFs0LDAsIllee3ArMn0iXSxbMywwLCJYXntwKzJ9Il0sWzIsMCwiWV57cCsyfSJdLFsxLDAsIkVee3ArMX0iXSxbNCwzLCJZXntwLTF9Il0sWzAsMCwiWF57cCsyfVxcb3BsdXMgWV57cCsxfSJdLFswLDEsIlhee3ArMX1cXG9wbHVzIFlee3B9Il0sWzAsMiwiWF57cH1cXG9wbHVzIFlee3AtMX0iXSxbMCwzLCJYXntwLTF9XFxvcGx1cyBZXntwLTJ9Il0sWzQsNl0sWzgsMywiXFxzdXBzZXQiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDcsIlxcc3Vwc2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiwxMV0sWzUsMTJdLFsxMiwxM10sWzExLDE0XSxbMTYsMTAsIlxcc3Vwc2V0IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTcsNV0sWzIxLDIwLCJcXGJpbm9tey1kX1ggXFwgMH17XFwgXFwgXFwgZlxcIFxcIFxcIGRfWX0iXSxbMjAsMTksIlxcYmlub217LWRfWCBcXCAwfXtcXCBcXCBcXCBmXFwgXFwgXFwgZF9ZfSJdLFsxOSwxOCwiXFxiaW5vbXstZF9YIFxcIDB9e1xcIFxcIFxcIGZcXCBcXCBcXCBkX1l9Il0sWzE4LDE2LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxOSw5LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyMCw4LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyMSwyLCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	{X^{p+2}\oplus Y^{p+1}} & {E^{p+1}} & {Y^{p+2}} & {X^{p+2}} & {Y^{p+2}} \\
	{X^{p+1}\oplus Y^{p}} & {E^p} & {Y^{p+1}} & {X^{p+1}} & {Y^{p+1}} \\
	{X^{p}\oplus Y^{p-1}} & {E^{p-1}} & {Y^p } & {X^{p}} & {Y^p } \\
	{X^{p-1}\oplus Y^{p-2}} & {E^{p-2}} & {Y^{p-1}} & {X^{p-1}} & {Y^{p-1}} \\
	& {\boxed{\text{初}}} && {\boxed{E_0}}
	\arrow[equals, from=1-1, to=1-2]
	\arrow["\supset"{marking, allow upside down}, dotted, no head, from=1-2, to=2-3]
	\arrow["{\binom{-d_X \ 0}{\ \ \ f\ \ \ d_Y}}", from=2-1, to=1-1]
	\arrow[equals, from=2-1, to=2-2]
	\arrow["\supset"{marking, allow upside down}, dotted, no head, from=2-2, to=3-3]
	\arrow[from=2-4, to=1-4]
	\arrow[from=2-5, to=1-5]
	\arrow["{\binom{-d_X \ 0}{\ \ \ f\ \ \ d_Y}}", from=3-1, to=2-1]
	\arrow[equals, from=3-1, to=3-2]
	\arrow["\supset"{marking, allow upside down}, dotted, no head, from=3-2, to=4-3]
	\arrow[from=3-4, to=2-4]
	\arrow[from=3-5, to=2-5]
	\arrow["{\binom{-d_X \ 0}{\ \ \ f\ \ \ d_Y}}", from=4-1, to=3-1]
	\arrow[equals, from=4-1, to=4-2]
	\arrow[from=4-4, to=3-4]
	\arrow[from=4-5, to=3-5]
\end{tikzcd}
{% endtikz %}
此时, $E_1$ 页的微分是
\begin{equation}
  H^∙(f): H^∙ (X) ↠ \frac{Z_X^∙}{f^{-1}(B_Y^∙)} ≃ \frac{f(Z^∙_X)}{B^∙_Y} ↪ H^∙(Y).  
\end{equation}
将 $E_2$ 中全复形的滤过并入 $E_1$, 得长正合列
{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbMCwzLCJcXGJveGVke0VfMX0iXSxbMSwzLCJIXntwLTF9KFgpIl0sWzMsMywiSF57cC0xfShZKSJdLFszLDIsIkhee3B9KFkpIl0sWzEsMiwiSF57cH0oWCkiXSxbMSwxLCJIXntwKzF9KFgpIl0sWzMsMSwiSF57cCsxfShZKSJdLFszLDAsIkhee3ArMn0oWSkiXSxbMSwwLCJIXntwKzJ9KFgpIl0sWzEsMiwiSF57cC0xfShmKSIsMV0sWzQsMywiSF57cH0oZikiLDFdLFs1LDYsIkhee3ArMX0oZikiLDFdLFs4LDcsIkhee3ArMn0oZikiLDFdLFs0LDIsIkhee3B9KEUpIiwzLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiYXJyb3doZWFkIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsMywiSF57cH0oRSkiLDMseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJhcnJvd2hlYWQifSwiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw2LCJIXntwfShFKSIsMyx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6ImFycm93aGVhZCJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	& {H^{p+2}(X)} && {H^{p+2}(Y)} \\
	& {H^{p+1}(X)} && {H^{p+1}(Y)} \\
	& {H^{p}(X)} && {H^{p}(Y)} \\
	{\boxed{E_1}} & {H^{p-1}(X)} && {H^{p-1}(Y)}
	\arrow["{H^{p+2}(f)}"{description}, from=1-2, to=1-4]
	\arrow["{H^{p}(E)}"{marking, allow upside down}, dashed, tail reversed, no head, from=1-2, to=2-4]
	\arrow["{H^{p+1}(f)}"{description}, from=2-2, to=2-4]
	\arrow["{H^{p}(E)}"{marking, allow upside down}, dashed, tail reversed, no head, from=2-2, to=3-4]
	\arrow["{H^{p}(f)}"{description}, from=3-2, to=3-4]
	\arrow["{H^{p}(E)}"{marking, allow upside down}, dashed, tail reversed, no head, from=3-2, to=4-4]
	\arrow["{H^{p-1}(f)}"{description}, from=4-2, to=4-4]
\end{tikzcd}
{% endtikz %}
{% endex %}

{% prop %}
(复形态射基本定理). 给定复形态射 $f : X → Y$, 取全复形 $E : = \mathrm{Cone}(f)$, 以下分别计算两个朝向的谱序列.

1. ($d_0 = f$). 此时 $E_∞ = E_3$, 故 $E_2$ 给出长正合列
   {% tikz %}
   % https://q.uiver.app/#q=WzAsOCxbMSwwLCJcXGtlcl5wIl0sWzEsMiwiXFxtYXRocm17Y29rfV5wIl0sWzIsMCwiXFxrZXJee3ArMX0iXSxbMiwyLCJcXG1hdGhybXtjb2t9XntwKzF9Il0sWzAsMiwiXFxtYXRocm17Y29rfV57cC0xfSJdLFszLDAsIlxca2VyXntwKzJ9Il0sWzMsMiwiXFxtYXRocm17Y29rfV57cCsyfSJdLFswLDAsIlxca2VyXntwLTF9Il0sWzQsMl0sWzEsNV0sWzAsNCwiSF57cC0xfShFKSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsyLDEsIkhee3B9KEUpIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzUsMywiSF57cCsxfShFKSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dXQ==
\begin{tikzcd}
	{\ker^{p-1}} & {\ker^p} & {\ker^{p+1}} & {\ker^{p+2}} \\
	\\
	{\mathrm{cok}^{p-1}} & {\mathrm{cok}^p} & {\mathrm{cok}^{p+1}} & {\mathrm{cok}^{p+2}}
	\arrow["{H^{p-1}(E)}"{description}, dotted, from=1-2, to=3-1]
	\arrow["{H^{p}(E)}"{description}, dotted, from=1-3, to=3-2]
	\arrow["{H^{p+1}(E)}"{description}, dotted, from=1-4, to=3-3]
	\arrow[from=3-1, to=1-3]
	\arrow[from=3-2, to=1-4]
\end{tikzcd}
   {% endtikz %}
   此处, 定义 $0 → \ker^∙ → X^∙ → Y^∙ → \mathrm{cok}^∙ → 0$.
2. ($d_0 = d_X, d_Y$). 此时 $E_2$ 给出同伦范畴的同调代数基本定理.
   \begin{equation}
      \cdots → H^{p-1}(E) → H^{p}(X) → H^{p}(Y) → H^p(E) → \cdots.
   \end{equation}
    整合得两条长正合列
   {% tikz %}
   % https://q.uiver.app/#q=WzAsMTIsWzEsMCwiSF57cC0xfShFKSJdLFsyLDAsIkhee3B9KFgpIl0sWzMsMCwiSF57cH0oWSkiXSxbNCwwLCJIXnAoRSkiXSxbMSwxLCJIXntwLTF9KEUpIl0sWzQsMSwiSF5wKEUpIl0sWzIsMSwiXFxtYXRocm17Y29rfV57cC0xfSJdLFszLDEsIlxca2VyXntwKzF9Il0sWzAsMCwiXFxjZG90cyAiXSxbMCwxLCJcXGNkb3RzICJdLFs1LDAsIlxcY2RvdHMgIl0sWzUsMSwiXFxjZG90cyAiXSxbMCwxXSxbMSwyXSxbMiwzXSxbNiw3XSxbNyw1XSxbNCw2XSxbOCwwXSxbOSw0XSxbMCw0LCIiLDMseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDUsIiIsMyx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsMTFdLFszLDEwXV0=
\begin{tikzcd}
	{\cdots } & {H^{p-1}(E)} & {H^{p}(X)} & {H^{p}(Y)} & {H^p(E)} & {\cdots } \\
	{\cdots } & {H^{p-1}(E)} & {\mathrm{cok}^{p-1}} & {\ker^{p+1}} & {H^p(E)} & {\cdots }
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-2, to=1-3]
	\arrow[equals, from=1-2, to=2-2]
	\arrow[from=1-3, to=1-4]
	\arrow[from=1-4, to=1-5]
	\arrow[from=1-5, to=1-6]
	\arrow[equals, from=1-5, to=2-5]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-4, to=2-5]
	\arrow[from=2-5, to=2-6]
\end{tikzcd}
   {% endtikz %}
   特别地,

    1. 若 $f$ 是单的或满的, 则第二行退化, 得同调代数基本定理;
    2. 若 $X$ 或 $Y$ 一者是正合复形, 则第一行退化, 得无名定理;
    3. 若 $X$ 或 $Y$ 均正合, 则 $H^{p+1}(\ker) ≃ H^{p-1}(\mathrm{cok})$, 得蛇引理.  

{% endprop %}
