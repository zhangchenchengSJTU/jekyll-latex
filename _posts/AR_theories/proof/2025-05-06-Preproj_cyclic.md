---
title: 投射模所在的分支有环
author: Chencheng Zhang
layout: post
category: example
---

{% def %}
(图, bound 路代数). 定义 $Q := [1 \overset a→ 2 \overset b {\underset c⇉} 3]$, $I = (ba)$. 此时 $kQ / I$ 是 bound 路代数. 使用 $a [b ∣ c]$ 表示维数向量.
{% enddef %}

{% ex %}
以下单态射是不可约的:

$$
\begin{bmatrix}
k & →  & k & \overset{0}{\underset{1}{⇉ }} & k\\
↑  &  & ↑  &  & ↑ \\
0 & →  & k & \overset{0}{\underset{1}{⇉ }} & k
\end{bmatrix}.
$$

这一态射右极小几乎可裂态射 $\mathrm{Rad}(P_1) → P_1$ (的直和项), 从而不可约.

{% endex %}

{% ex %}
计算非投射模 $0 → k \overset{0}{\underset{1}{⇉ }} k$ 的 AR 平移如下:
<center>
<!-- https://q.uiver.app/#q=WzAsMjQsWzEsMCwiayJdLFsyLDAsImsiXSxbMCwwLCIwIl0sWzEsMSwiayJdLFsyLDEsImteMiJdLFswLDEsIjAiXSxbMiwyLCJrIl0sWzEsMiwiMCJdLFswLDIsIjAiXSxbMywwLCJNIl0sWzMsMSwiUF8yIl0sWzMsMiwiUF8zIl0sWzQsMSwiSV8yIl0sWzQsMiwiSV8zIl0sWzUsMSwiayJdLFs2LDEsImsiXSxbNywxLCIwIl0sWzcsMiwiayJdLFs2LDIsImteMiJdLFs1LDIsImsiXSxbNywzLCJrIl0sWzYsMywiayJdLFs1LDMsImsiXSxbNCwzLCJcXHRhdSBNIl0sWzAsMSwiMSIsMix7Im9mZnNldCI6Mn1dLFswLDEsIjAiLDAseyJvZmZzZXQiOi0yfV0sWzIsMF0sWzUsM10sWzMsNCwiMSIsMix7Im9mZnNldCI6Mn1dLFszLDQsIjEiLDAseyJvZmZzZXQiOi0yfV0sWzUsMl0sWzQsMSwicF8yIiwyXSxbNiw0LCJlXzEiLDJdLFs3LDYsIiIsMix7Im9mZnNldCI6Mn1dLFs3LDYsIiIsMix7Im9mZnNldCI6LTJ9XSxbNywzXSxbOCw1XSxbOCw3XSxbMTEsMTBdLFsxMCw5XSxbMTMsMTJdLFsxMSwxMywiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEwLDEyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTUsMTYsIiIsMSx7Im9mZnNldCI6Mn1dLFsxNSwxNiwiIiwxLHsib2Zmc2V0IjotMn1dLFsxNCwxNV0sWzMsMF0sWzE4LDE3LCIxIiwyLHsib2Zmc2V0IjoyfV0sWzE4LDE3LCIxIiwwLHsib2Zmc2V0IjotMn1dLFsxOSwxOCwiZV8yIiwyXSxbMTksMTQsIjAiXSxbMTgsMTUsInBfMSJdLFsxNywxNl0sWzIwLDE3XSxbMjEsMTgsImVfMiJdLFsyMiwxOV0sWzIyLDIxXSxbMjEsMjAsIjEiLDIseyJvZmZzZXQiOjJ9XSxbMjMsMTNdLFsyMSwyMCwiMCIsMCx7Im9mZnNldCI6LTJ9XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMjQsWzEsMCwiayJdLFsyLDAsImsiXSxbMCwwLCIwIl0sWzEsMSwiayJdLFsyLDEsImteMiJdLFswLDEsIjAiXSxbMiwyLCJrIl0sWzEsMiwiMCJdLFswLDIsIjAiXSxbMywwLCJNIl0sWzMsMSwiUF8yIl0sWzMsMiwiUF8zIl0sWzQsMSwiSV8yIl0sWzQsMiwiSV8zIl0sWzUsMSwiayJdLFs2LDEsImsiXSxbNywxLCIwIl0sWzcsMiwiayJdLFs2LDIsImteMiJdLFs1LDIsImsiXSxbNywzLCJrIl0sWzYsMywiayJdLFs1LDMsImsiXSxbNCwzLCJcXHRhdSBNIl0sWzAsMSwiMSIsMix7Im9mZnNldCI6Mn1dLFswLDEsIjAiLDAseyJvZmZzZXQiOi0yfV0sWzIsMF0sWzUsM10sWzMsNCwiMSIsMix7Im9mZnNldCI6Mn1dLFszLDQsIjEiLDAseyJvZmZzZXQiOi0yfV0sWzUsMl0sWzQsMSwicF8yIiwyXSxbNiw0LCJlXzEiLDJdLFs3LDYsIiIsMix7Im9mZnNldCI6Mn1dLFs3LDYsIiIsMix7Im9mZnNldCI6LTJ9XSxbNywzXSxbOCw1XSxbOCw3XSxbMTEsMTBdLFsxMCw5XSxbMTMsMTJdLFsxMSwxMywiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEwLDEyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTUsMTYsIiIsMSx7Im9mZnNldCI6Mn1dLFsxNSwxNiwiIiwxLHsib2Zmc2V0IjotMn1dLFsxNCwxNV0sWzMsMF0sWzE4LDE3LCIxIiwyLHsib2Zmc2V0IjoyfV0sWzE4LDE3LCIxIiwwLHsib2Zmc2V0IjotMn1dLFsxOSwxOCwiZV8yIiwyXSxbMTksMTQsIjAiXSxbMTgsMTUsInBfMSJdLFsxNywxNl0sWzIwLDE3XSxbMjEsMTgsImVfMiJdLFsyMiwxOV0sWzIyLDIxXSxbMjEsMjAsIjEiLDIseyJvZmZzZXQiOjJ9XSxbMjMsMTNdLFsyMSwyMCwiMCIsMCx7Im9mZnNldCI6LTJ9XV0=&embed" width="600" height="400" style="border-radius: 8px; border: dashed;"></iframe>
</center>
从而 $Γ(A)$ 存在环路 $M → P_1 ⇉ I_3, S_3 ⇉ M$.
{% endex %}
