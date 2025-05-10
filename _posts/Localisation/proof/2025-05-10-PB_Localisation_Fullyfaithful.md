---
title: 局部化函子的拉回是全忠实的
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% lem %}
(局部化的拉回全忠实). 给定局部化函子 $Q : 𝒜 → 𝒜[S^{-1}]$, 对任意范畴 $ℬ$, 以下是全忠实的函子
$$\begin{equation}
Q^∗:𝐅𝐮𝐧𝐜𝐭(𝒜[S^{-1}] , ℬ) ↣ 𝐅𝐮𝐧𝐜𝐭(𝒜,ℬ),\quad F ↦ F ∘ Q.
\end{equation}$$
{% endlem %}

{% pf %}
考虑自然变换 $(F,G) ⇒ (FQ,GQ)$ 的对应.

1. ($Q^∗$ 忠实) 任给定自然变换 $η ∈ (F,G)$, 也就是类 $\{\eta_{QX}:FQX → GQX\}_{X ∈ 𝒞}$. 由于 $Q$ 保持对象, 自然变换 $\{η_Y\}_{Y∈ S^{-1}𝒞}=\{\eta_{QX}\}_{QX∈ S^{-1}𝒞}$ 是 $η$ 唯一的原像.
2. ($Q^∗$ 全). 任意自然变换 $θ ∈ (FQ,GQ)$ 由全体态射类 $\{a\cdots s^{-1}:X→ Y\}=\mathsf{Mor}(𝒞 [S^{-1}])$ 刻画:
   <center>
   <!-- https://q.uiver.app/#q=WzAsMTAsWzAsMCwiRlFYIl0sWzYsMCwiRlFZIl0sWzAsMSwiR1FYIl0sWzYsMSwiR1FZIl0sWzIsMCwiRlFaIl0sWzIsMSwiR1FaIl0sWzMsMCwiXFxjZG90cyJdLFszLDEsIlxcY2RvdHMiXSxbNCwwLCJGUVciXSxbNCwxLCJHUVciXSxbMCwyLCJcXHRoZXRhX1giXSxbMSwzLCJcXHRoZXRhX1kiXSxbMCw0LCJGKGEpIl0sWzIsNSwiRyhhKSJdLFs0LDUsIlxcdGhldGFfWiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs5LDMsIkcocyleey0xfSJdLFs4LDEsIkYocyleey0xfSJdLFs0LDZdLFs2LDhdLFs1LDddLFs3LDldLFs4LDksIlxcdGhldGFfVyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ== -->
   <iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTAsWzAsMCwiRlFYIl0sWzYsMCwiRlFZIl0sWzAsMSwiR1FYIl0sWzYsMSwiR1FZIl0sWzIsMCwiRlFaIl0sWzIsMSwiR1FaIl0sWzMsMCwiXFxjZG90cyJdLFszLDEsIlxcY2RvdHMiXSxbNCwwLCJGUVciXSxbNCwxLCJHUVciXSxbMCwyLCJcXHRoZXRhX1giXSxbMSwzLCJcXHRoZXRhX1kiXSxbMCw0LCJGKGEpIl0sWzIsNSwiRyhhKSJdLFs0LDUsIlxcdGhldGFfWiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs5LDMsIkcocyleey0xfSJdLFs4LDEsIkYocyleey0xfSJdLFs0LDZdLFs2LDhdLFs1LDddLFs3LDldLFs4LDksIlxcdGhldGFfVyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==&embed" width="600" height="200" style="border-radius: 8px; border: dashed;"></iframe>
   </center>

   将以上 $θ_X$ 改写作 $η _{QX}$, 得 $θ$ 的原像 $η$. 记类 $𝒮$ 是自然变换给出的 $G(f) ∘ ψ_{s(f)} = ψ_{t(f)} ∘ F(f)$-类型的交换图. 检验 $η$ 是自然变换所需的交换图含于 $𝒮$, 因此 $η$ 是自动是自然变换.

{% endpf %}
