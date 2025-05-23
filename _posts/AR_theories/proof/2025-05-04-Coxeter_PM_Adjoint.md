---
title: $C^-_i ⊣ C^+_i$
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% prop %}
若 $i$ 是 $Q_1$ 的 sink, 则 $C_i^+ : Q_1 ⇄ Q_2 : C_i ^-$ 是互逆的图运算. 此时存在伴随函子:
\begin{equation}
  C_i ^- : \mathbf{rep}_k(Q_2) ⇄ \mathbf{rep}_k(Q_1) : C_i ^+.
\end{equation}
{% endprop %}

{% pf %}
下证明 $(C_i^-(N), M)_{kQ_2} ≃ (N, C_i ^+ (M))_{kQ_1}$. 表示的同态即若干交换图, 记 $𝒮 ⊆ Q_0$ 是 $i$ 及其邻点, 则无需考虑 $(C_i^-(N), M)_{kQ_2}$ 与 $(N, C_i ^+ (M))_{kQ_1}$ 在 $Q_0 ∖ 𝒮$ 中的交换性. 下考虑不妨假定 $𝒮 = Q_0$.
\\
考虑下图:

$$
\begin{bmatrix}
K & ↪  & ⨁ N_{∙ → i} & →  & N_{i}\\
⇣ & ▨  & ↓  & ⬔  & ⇣ \\
M_{i} & →  & ⨁ M_{i→ ∙ } & ↠  & C
\end{bmatrix}.
$$

1. 给定实竖箭头 $↓$, 则左虚箭头与右虚箭头唯一地决定彼此 (ker 与 coker 的泛性质);
2. 给定实竖箭头, 所有可行的交换方块 $▨$ 构成 $(C_i^-(N), M)_{kQ_2}$;
3. 给定实竖箭头, 所有可行的交换方块 $⬔$ 构成 $(N, C_i^+(M))_{kQ_1}$.

从而 $(C_i^-(N), M) ≃ (N, C_i^+(M))_{kQ_1}$, 这一同构是由 ker 与 coker 的泛性质诱导的.

{% endpf %}
