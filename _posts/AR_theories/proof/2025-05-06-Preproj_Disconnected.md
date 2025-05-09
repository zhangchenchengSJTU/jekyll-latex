---
title: 预投射分支可能不唯一
author: Chencheng Zhang
layout: post
category: example
---

## 例子

{% def %}
(粘合的 Kronecker 代数). 粘合两个 Kronecker quiver, 得 $Q := [1 ⇇ 2 ← 3 → 4 ⇉ 5]$. 记路代数 $A = kQ / I$, 其中 $I$ 是所有长为 $2$ 的道路. 由 $kQ_1^2 = I$, 这一路代数是 bound 路代数. 下使用 $[a ∣ b] c [d ∣ e]$ 表示维数向量.
{% enddef %}

{% ex %}
($P_1$ 所在的预投射部分). 从投射模 $P_1 = [1 ∣ 0] 0 [0 ∣ 0]$ 开始, 下计算 $τ ⁻¹ P_1$:

$$
\begin{bmatrix}
P_{1} &  & I_{1} &  & I_{2}^{2} &  & \\
[ 1\mid 0]0[ 0\mid 0] & \hookrightarrow  & [ 1\mid 2]0[ 0\mid 0] & \rightarrow  & ([ 0\mid 1]1[ 0\mid 0])^{2} &  & \\
 &  & ⇣  &  & ⇣  &  & \\
 &  & [ 1\mid 0]0[ 0\mid 0] & \hookrightarrow  & ([ 2\mid 1]0[ 0\mid 0])^{2} & \rightarrow  & [ 3\mid 2]0[ 0\mid 0]\\
 &  & P_{1} &  & P_{2}^{2} &  & \tau ^{-1} P_{1}
\end{bmatrix}
$$

以上过程同 [Kronecker quiver 的预投射部分](Kronecker_Rep)的计算, 因为一切极小内射分解仅与 $I_{1,2}$ 相关, 而 $P_{1,2}$ 在 $3,4,5$ 处维数为 $0$. 特别地, $P_{1,2}$ 在 $Γ(A)$ 中的连通分支是

<center>
<!-- https://q.uiver.app/#q=WzAsNixbMCwxLCJbMVxcbWlkIDBdMFswXFxtaWQgMF0iXSxbMSwwLCJbMlxcbWlkIDFdMFswXFxtaWQgMF0iXSxbMiwxLCJbM1xcbWlkIDJdMFswXFxtaWQgMF0iXSxbMywwLCJbNFxcbWlkIDNdMFswXFxtaWQgMF0iXSxbNCwxLCJcXGNkb3RzICJdLFs1LDAsIlxcY2RvdHMgIl0sWzAsMSwiIiwyLHsib2Zmc2V0IjoyfV0sWzAsMSwiIiwwLHsib2Zmc2V0IjotMn1dLFsxLDIsIiIsMCx7Im9mZnNldCI6Mn1dLFsxLDIsIiIsMCx7Im9mZnNldCI6LTJ9XSxbMiwwLCJcXHRhdV57LTF9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzIsMywiIiwwLHsib2Zmc2V0IjoyfV0sWzIsMywiIiwwLHsib2Zmc2V0IjotMn1dLFszLDEsIlxcdGF1IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsNCwiIiwwLHsib2Zmc2V0IjoyfV0sWzQsNSwiIiwwLHsib2Zmc2V0IjoyfV0sWzMsNCwiIiwwLHsib2Zmc2V0IjotMn1dLFs0LDUsIiIsMCx7Im9mZnNldCI6LTJ9XSxbNCwyLCJcXHRhdSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs1LDMsIlxcdGF1IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNixbMCwxLCJbMVxcbWlkIDBdMFswXFxtaWQgMF0iXSxbMSwwLCJbMlxcbWlkIDFdMFswXFxtaWQgMF0iXSxbMiwxLCJbM1xcbWlkIDJdMFswXFxtaWQgMF0iXSxbMywwLCJbNFxcbWlkIDNdMFswXFxtaWQgMF0iXSxbNCwxLCJcXGNkb3RzICJdLFs1LDAsIlxcY2RvdHMgIl0sWzAsMSwiIiwyLHsib2Zmc2V0IjoyfV0sWzAsMSwiIiwwLHsib2Zmc2V0IjotMn1dLFsxLDIsIiIsMCx7Im9mZnNldCI6Mn1dLFsxLDIsIiIsMCx7Im9mZnNldCI6LTJ9XSxbMiwwLCJcXHRhdV57LTF9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzIsMywiIiwwLHsib2Zmc2V0IjoyfV0sWzIsMywiIiwwLHsib2Zmc2V0IjotMn1dLFszLDEsIlxcdGF1IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsNCwiIiwwLHsib2Zmc2V0IjoyfV0sWzQsNSwiIiwwLHsib2Zmc2V0IjoyfV0sWzMsNCwiIiwwLHsib2Zmc2V0IjotMn1dLFs0LDUsIiIsMCx7Im9mZnNldCI6LTJ9XSxbNCwyLCJcXHRhdSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs1LDMsIlxcdGF1IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d&embed" width="600" height="180" style="border-radius: 8px; border: dashed;"></iframe>
</center>

这的确是预投射部分.

{% endex %}

{% ex %}
($P_3$ 不属于预投射分支). 以上给出 $P_{1,2,4,5}$ 所在的预投射部分. 计算得 $τ⁻¹ P_3 ≃ I_3$:

$$
\begin{bmatrix}
P_{3} &  & I_{2} \oplus I_{4} &  & I_{3} &  & \\
[ 0\mid 1] 1[ 1\mid 0] & \hookrightarrow  & [ 0\mid 1] 2[ 1\mid 0] & \rightarrow  & [ 0\mid 0] 1[ 0\mid 0] &  & \\
 &  & ⇣  &  & ⇣  &  & \\
 &  & [ 2\mid 1] 0[ 1\mid 2] & \hookrightarrow  & [ 0\mid 1] 1[ 1\mid 0] & \rightarrow  & [ 0\mid 0] 1[ 0\mid 0]\\
 &  & P_{2} \oplus P_{4} &  & I_{3} &  & \tau ^{-1} P_{3}
\end{bmatrix}.
$$

计算 $I_5$ 所在的连通分支, 得
<center>
<!-- https://q.uiver.app/#q=WzAsMTYsWzgsMiwiWzBcXG1pZCAwXTFbMCBcXG1pZCAwXSJdLFs3LDEsIlswXFxtaWQgMF0xWzEgXFxtaWQgMF0iXSxbNywzLCJbMFxcbWlkIDFdMVswIFxcbWlkIDBdIl0sWzYsMiwiWzBcXG1pZCAxXTFbMSBcXG1pZCAwXSJdLFs1LDEsIlswXFxtaWQgMV0wWzAgXFxtaWQgMF0iXSxbNSwzLCJbMFxcbWlkIDBdMFsxIFxcbWlkIDBdIl0sWzQsMCwiWzFcXG1pZCAyXTBbMCBcXG1pZCAwXSJdLFs0LDQsIlswXFxtaWQgMF0wWzIgXFxtaWQgMV0iXSxbMywzLCJbMFxcbWlkIDBdMFszIFxcbWlkIDJdIl0sWzMsMSwiWzJcXG1pZCAzXTBbMCBcXG1pZCAwXSJdLFsyLDAsIlszXFxtaWQgNF0wWzAgXFxtaWQgMF0iXSxbMiw0LCJbMFxcbWlkIDBdMFs0XFxtaWQgM10iXSxbMSwxLCJcXGNkb3RzICJdLFsxLDMsIlxcY2RvdHMgIl0sWzAsMCwiXFxjZG90cyAiXSxbMCw0LCJcXGNkb3RzICJdLFszLDFdLFsxLDBdLFszLDJdLFsyLDBdLFs0LDNdLFs1LDNdLFswLDMsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEsNCwiXFx0YXUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMiw1LCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs2LDQsIiIsMSx7Im9mZnNldCI6LTJ9XSxbNiw0LCIiLDEseyJvZmZzZXQiOjJ9XSxbNyw1LCIiLDEseyJvZmZzZXQiOjJ9XSxbNyw1LCIiLDEseyJvZmZzZXQiOi0yfV0sWzgsNywiIiwxLHsib2Zmc2V0IjotMn1dLFs4LDcsIiIsMSx7Im9mZnNldCI6Mn1dLFs5LDYsIiIsMSx7Im9mZnNldCI6LTJ9XSxbOSw2LCIiLDEseyJvZmZzZXQiOjJ9XSxbNCw5LCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs1LDgsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzExLDgsIiIsMSx7Im9mZnNldCI6LTJ9XSxbMTAsOSwiIiwxLHsib2Zmc2V0IjotMn1dLFsxMSw4LCIiLDEseyJvZmZzZXQiOjJ9XSxbMTAsOSwiIiwxLHsib2Zmc2V0IjoyfV0sWzYsMTAsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzcsMTEsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzgsMTMsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzksMTIsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzE0LDEyLCIiLDEseyJvZmZzZXQiOi0yfV0sWzE1LDEzLCIiLDEseyJvZmZzZXQiOi0yfV0sWzE0LDEyLCIiLDEseyJvZmZzZXQiOjJ9XSxbMTUsMTMsIiIsMSx7Im9mZnNldCI6Mn1dLFsxMCwxNCwiXFx0YXUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMTEsMTUsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTYsWzgsMiwiWzBcXG1pZCAwXTFbMCBcXG1pZCAwXSJdLFs3LDEsIlswXFxtaWQgMF0xWzEgXFxtaWQgMF0iXSxbNywzLCJbMFxcbWlkIDFdMVswIFxcbWlkIDBdIl0sWzYsMiwiWzBcXG1pZCAxXTFbMSBcXG1pZCAwXSJdLFs1LDEsIlswXFxtaWQgMV0wWzAgXFxtaWQgMF0iXSxbNSwzLCJbMFxcbWlkIDBdMFsxIFxcbWlkIDBdIl0sWzQsMCwiWzFcXG1pZCAyXTBbMCBcXG1pZCAwXSJdLFs0LDQsIlswXFxtaWQgMF0wWzIgXFxtaWQgMV0iXSxbMywzLCJbMFxcbWlkIDBdMFszIFxcbWlkIDJdIl0sWzMsMSwiWzJcXG1pZCAzXTBbMCBcXG1pZCAwXSJdLFsyLDAsIlszXFxtaWQgNF0wWzAgXFxtaWQgMF0iXSxbMiw0LCJbMFxcbWlkIDBdMFs0XFxtaWQgM10iXSxbMSwxLCJcXGNkb3RzICJdLFsxLDMsIlxcY2RvdHMgIl0sWzAsMCwiXFxjZG90cyAiXSxbMCw0LCJcXGNkb3RzICJdLFszLDFdLFsxLDBdLFszLDJdLFsyLDBdLFs0LDNdLFs1LDNdLFswLDMsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzEsNCwiXFx0YXUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMiw1LCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs2LDQsIiIsMSx7Im9mZnNldCI6LTJ9XSxbNiw0LCIiLDEseyJvZmZzZXQiOjJ9XSxbNyw1LCIiLDEseyJvZmZzZXQiOjJ9XSxbNyw1LCIiLDEseyJvZmZzZXQiOi0yfV0sWzgsNywiIiwxLHsib2Zmc2V0IjotMn1dLFs4LDcsIiIsMSx7Im9mZnNldCI6Mn1dLFs5LDYsIiIsMSx7Im9mZnNldCI6LTJ9XSxbOSw2LCIiLDEseyJvZmZzZXQiOjJ9XSxbNCw5LCJcXHRhdSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs1LDgsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzExLDgsIiIsMSx7Im9mZnNldCI6LTJ9XSxbMTAsOSwiIiwxLHsib2Zmc2V0IjotMn1dLFsxMSw4LCIiLDEseyJvZmZzZXQiOjJ9XSxbMTAsOSwiIiwxLHsib2Zmc2V0IjoyfV0sWzYsMTAsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzcsMTEsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzgsMTMsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzksMTIsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzE0LDEyLCIiLDEseyJvZmZzZXQiOi0yfV0sWzE1LDEzLCIiLDEseyJvZmZzZXQiOi0yfV0sWzE0LDEyLCIiLDEseyJvZmZzZXQiOjJ9XSxbMTUsMTMsIiIsMSx7Im9mZnNldCI6Mn1dLFsxMCwxNCwiXFx0YXUiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMTEsMTUsIlxcdGF1IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d&embed" width="600" height="250" style="border-radius: 8px; border: dashed;"></iframe>
</center>
总之, 这不是预投射分支.

{% endex %}

综上, 对 $Γ (kQ / I)$

1. 存在两个预投射分支, 每个预投射分支包含两个不可分解投射模;
2. 存在一个预内射分支, 包含所有不可分解内射模与一个投射模.
