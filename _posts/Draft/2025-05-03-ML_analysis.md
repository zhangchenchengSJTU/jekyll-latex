---
title: 分析学中的 Mittag-Leffler 定理
author: Chencheng Zhang
layout: post
category: caprice
---

## 分析学中的 Mittag-Leffler 定理

对完备度量空间间的连续映射 $φ : (X, d_X) → (Y, d_Y)$, 记 $φ^∗ d_X$ 是度量的直像, 定义作
\begin{equation}
  (φ ^∗ d_Y) : X × X → ℝ ,\quad (a,b) ↦ d_Y(φ(a), φ (b)).
\end{equation}

{% ex %}
(完备度量空间的 Mittag-Leffler 系统, 满态射情形). 给定 $\mathbb N$ 在 (非空) 完备度量空间上的预层 $((X,d),f)$, 使得一切 $f_∙$ 是满态射, 即塔
\begin{equation}
  ↠ \cdots \overset {f_1} ↠ X_1 \overset {f_0} ↠X_0,
\end{equation}
则逆向极限对象仍是稠密的, 即,
\begin{equation}
    X_0=\overline{\bigcap_{n\geq 1}\mathrm{im}(f_0\circ f_1\circ\cdots \circ f_n)}.
\end{equation}
{% endex %}

{% pf %}
不妨假定一切连续映射 $f_k$ 是可缩的, 依据是

1. $f_0:(X_1,d_1)\to (X_0,d_0)$ 在新度量 $(X_1,d_1+(f_0^\ast d_0))\to (X_0,d_0)$ 下是可缩的映射;
2. $\mathrm{id}_X:(X_1,d_1+(f_0^\ast d_0))\simeq (X_1,d_1)$ 是同胚.

此时, 自任意 $x_0\in X_0$ 的开邻域 $U_0$ 归纳地构造开球链 $U_{k+1}\subset \overline {f_k^{-1}(U_k)}$. 依照 Baire 纲集定理知 $x_0$ 在题设的闭包内.
{% endpf %}

可以将满态射条件放宽至 [Mittag-Leffler 条件](Projlim_1_Vanish#mittag-leffler-条件), 即, 对任意 $k$, $(\overline{\mathrm{im}(f_{n,k})})_{k\geq n}$ 驻定.

{% thm %}
(Mittag-Leffler 定理). 任给定连通开区域 $\Omega\subset \mathbb C$, 离散集 $S=\{\alpha_i\}_{i\in \mathbb N}\subset \Omega$, 全纯函数 $\{g_i:\alpha_i\to 0\}_{i\in \mathbb N}$, 则存在 $f$ 使得

1. $f$ 是开集 $\Omega$ 上的亚纯函数, 其在 $\Omega \setminus S$ 全纯, 且对任意 $i$, $f(z)-g_i(\frac 1{z-\alpha_i})$ 在 $\alpha_i$ 处全纯;
2. 存在多项式 $\{p_i\}$ 与整函数 $h$, 使得 $f=h(z)+\sum_{i\in \mathbb N}\left(g_i(1/(z-\alpha_i))-p_i(z)\right).$

这一定理表明: 任意亚纯函数可依照极点性质唯一地分解成有理函数与整函数.
{% endthm %}

{% pf %}
以下是一个证明梗概, 主要目的是说明其与 Mittag-Leffler 系统的联系.

1. 采用可数个紧集从内覆盖 $\Omega$, 不妨记作 $K_1\subset K_2\subset \cdots$.
2. 记 $d_n$ 是 $C^0(K_n, \mathbb C)$ 上度量 (如 $\mathscr L^2$-范数), 定义 $C^0(\Omega, \mathbb C)$ 上连续函数度量 $d:=\sum _{n\geq 1}\frac{1}{2^n}\cdot \frac{d_n}{1+d_n}$.
3. 观察柯西列, 以上 $(C^0(\Omega, \mathbb C),d)$ 是完备的. 依照 Morera 定理, $(\mathrm{Hol}(\Omega),d)$ 是 $C^0(\Omega, \mathbb C)$ 的闭子空间, 亦完备.
4. 将 $K_n$ 上的度量 $d_n$ 迁移至 $X_n=\left\{f+\sum_{\alpha_i\in K_n}g_i\left(\frac 1{z-\alpha_i}\right)\mid f\in \mathrm{Hol}(K_n)\right\}\subset M(K_n)$. $X_n$ 无非全纯函数的平移.
5. 限制函数 $f_{n-1}:X_n\to X_{n-1}$ 连续且有稠密像 (Runge 定理). 依照 Mittag-Leffler 条件即可断言 $f$ 存在.
{% endpf %}
