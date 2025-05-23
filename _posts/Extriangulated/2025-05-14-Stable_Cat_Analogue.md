---
title: 外三角范畴 (2025-05-15 讲稿)
author: Chencheng Zhang
layout: post
category: 
---

* toc
{: toc}

## 目标

外三角范畴的定义, 重要定义, 引理等.

* 五项长正合列 (重点是 ET4 的使用);
* Kuenth 引理的类似物 (推出拉回).

与正合范畴, 三角范畴的关系

* 正合范畴实现为特殊的外三角范畴,
* 三角范畴实现为特殊的外三角范畴,
* 存在既非正合范畴, 亦非三角范畴的外三角范畴;

主定理: 给定加法全子范畴 $ℐ ⊆ 𝐏𝐫𝐨𝐣 ∩ 𝐈𝐧𝐣$, 外三角范畴关于 $ℐ$ 的稳定范畴仍是外三角范畴.

## 外三角范畴的定义

### ET1: 扩张结构

{% def %}
(带扩张结构的加法范畴) 给定加法范畴 $𝒞$, 扩张结构是指双加法函子
$$\begin{equation}
𝔼 : 𝒞 ^{\mathrm{op}} × 𝒞 → 𝐀𝐛.
\end{equation}$$

{% enddef %}

{% note %}
记 $𝔼(Y, X)$ 中的一个元素为 $(X, δ, Y)$, 或简单地, $δ$. 给定 $f : Y → Y'$ 与 $g: X → X'$, 记群同态

- $𝔼 (f,X) =: f^∗$, 称作拉回;
- $𝔼 (Y,g) =: g_∗$, 称作推出.

由 $𝔼$ 是双函子, 推出与拉回交换.
{% endnote %}

{% ex %}
简单验证 $𝔼$ 中加法结构: 加法定义作 Baer 和
{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMSwwLCJcXG1hdGhiYiBFKFggXFxvcGx1cyBYLFkgXFxvcGx1cyBZKSJdLFswLDAsIlxcZGVsdGFfMSBcXG9wbHVzIFxcZGVsdGEgXzIiXSxbMSwxLCJcXG1hdGhiYiBFKFgsWSBcXG9wbHVzIFkpIl0sWzMsMSwiXFxtYXRoYmIgRShYLFkpIl0sWzMsMCwiXFxtYXRoYmIgRShYICxZIFxcb3BsdXMgWSkiXSxbNCwxLCJcXGRlbHRhIF8xIFxcb3BsdXMgXFxkZWx0YSBfMiJdLFsxLDAsIlxcaW4gIiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMiwiXFxiaW5vbSAxMV5cXGFzdCIsMl0sWzQsMywiXFxiaW5vbSAxMV5cXGFzdCJdLFswLDQsIigxLDEpX1xcYXN0Il0sWzIsMywiKDEsMSlfXFxhc3QiLDJdLFszLDUsIlxcbmkiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
	{\delta_1 \oplus \delta _2} \& {\mathbb E(X \oplus X,Y \oplus Y)} \&\& {\mathbb E(X ,Y \oplus Y)} \\
	\& {\mathbb E(X,Y \oplus Y)} \&\& {\mathbb E(X,Y)} \& {\delta _1 \oplus \delta _2}
	\arrow["{\in }"{marking, allow upside down}, draw=none, from=1-1, to=1-2]
	\arrow["{(1,1)_\ast}", from=1-2, to=1-4]
	\arrow["{\binom 11^\ast}"', from=1-2, to=2-2]
	\arrow["{\binom 11^\ast}", from=1-4, to=2-4]
	\arrow["{(1,1)_\ast}"', from=2-2, to=2-4]
	\arrow["\ni"{marking, allow upside down}, draw=none, from=2-4, to=2-5]
\end{tikzcd}
{% endtikz %}

零元即 $δ ⊕ (-δ)$ 的像, 加法结合律是因为 $\binom{\binom 11}{1} = \binom{1}{\binom 11}$, 交换律检验类似.
\\
\\
为说明 $f_∗$ 是群同态, 即验证交换图
{% tikz %}
% https://q.uiver.app/#q=WzAsNCxbMCwwLCJcXG1hdGhiYiBFKFggXFxvcGx1cyBYLFkgXFxvcGx1cyBZKSJdLFszLDAsIlxcbWF0aGJiIEUoWCxZKSJdLFswLDEsIlxcbWF0aGJiIEUoWCBcXG9wbHVzIFgsWScgXFxvcGx1cyBZJykiXSxbMywxLCJcXG1hdGhiYiBFKFgsWScpIl0sWzAsMSwiKDEsMSlfXFxhc3RcXGJpbm9tIDExXlxcYXN0Il0sWzIsMywiKDEsMSlfXFxhc3RcXGJpbm9tIDExXlxcYXN0Il0sWzEsMywiZl9cXGFzdCJdLFswLDIsIihmIFxcb3BsdXMgZilfXFxhc3QgIiwyXV0=
\begin{tikzcd}[ampersand replacement=\&]
	{\mathbb E(X \oplus X,Y \oplus Y)} \&\&\& {\mathbb E(X,Y)} \\
	{\mathbb E(X \oplus X,Y' \oplus Y')} \&\&\& {\mathbb E(X,Y')}
	\arrow["{(1,1)_\ast\binom 11^\ast}", from=1-1, to=1-4]
	\arrow["{(f \oplus f)_\ast }"', from=1-1, to=2-1]
	\arrow["{f_\ast}", from=1-4, to=2-4]
	\arrow["{(1,1)_\ast\binom 11^\ast}", from=2-1, to=2-4]
\end{tikzcd}
{% endtikz %}
显然
$$\begin{equation}
(1,1)_∗ (f ⊕ f)_∗ = (f,f)_∗ = (1,1)_∗ f_∗
\end{equation}$$

{% endex %}

{% def %}
(扩张的链接). 称态射 $f : X → X'$ 与 $g : Y → Y'$ 建立了扩张 $(X, δ , Y)$ 与 $(X', δ ' , Y ')$ 之间的态射, 若 $f_∗ δ' = δ g^∗$.
{% enddef %}

{% note %}
扩张的态射类似正合列间的态射. 以上并不是 $𝔼$-群同态.

{% endnote %}

### ET2: 扩张的 (加法) 实现

{% def %}
(二项态射的类). 定义如下类的等价类, 并配上二元运算 $⊕$.

1. 对象选取形如 $X \overset f→ Y \overset g→ Z$ 的二项态射序列.
2. 以下上下两行等价
   {% tikz %}
   % https://q.uiver.app/#q=WzAsNixbMCwwLCJYIl0sWzIsMCwiWSJdLFs0LDAsIloiXSxbNCwxLCJaIl0sWzAsMSwiWCJdLFsyLDEsIlknIl0sWzAsMV0sWzEsMl0sWzAsNCwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw1XSxbNSwzXSxbMiwzLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDUsIlxcdGV4dHvlkIzmnoR9Il1d
   \begin{tikzcd}[ampersand replacement=\&]
   	X \&\& Y \&\& Z \\
   	X \&\& {Y'} \&\& Z
   	\arrow[from=1-1, to=1-3]
   	\arrow[equals, from=1-1, to=2-1]
   	\arrow[from=1-3, to=1-5]
   	\arrow["{\text{同构}}", from=1-3, to=2-3]
   	\arrow[equals, from=1-5, to=2-5]
   	\arrow[from=2-1, to=2-3]
   	\arrow[from=2-3, to=2-5]
   \end{tikzcd}
   {% endtikz %}
3. 等价类的直和运算, 定义做等价类的直和 ($[x ⊕ y] =: [x] ⊕ [y]$).

两个对象决定了子类 $[Y, X] := \{X → E → Z\} / ∼$.

{% enddef %}

{% note %}
以上既未给出 $[Y, X]$ 内部的群 (大群) 结构, 也未给出 $[Y,f]$ 或 $[g,X]$ 之类的运算. 形式地, 仍将可裂短正合列所在类记作 $0$.
{% endnote %}

{% def %}
(加法实现, 简称实现). 称 $𝔰$ 是 $(𝒞, 𝔼)$ 的一个实现, 若 $𝔰$ 是类之间的对应:
$$\begin{equation}
⋃_{X,Y}𝔼(Y,X) → ⋃_{X,Y}[Y,X],\quad (X, δ , Y) ↦ 𝔰 (δ)
\end{equation}$$

且满足以下条件.

1. $𝔰 (0) = 0$, 此处 $X, Y$ 任取.
2. $𝔰$ 保持直和结构, 即, $𝔰(δ) ⊕ 𝔰(δ ') = 𝔰(δ ⊕ δ ')$.
3. $f : X → X'$ 与 $g : Y → Y'$ 建立了扩张 $(X,δ , Y)$ 与 $(X', δ ' , Y ')$ 之间的态射, 则存在 $φ$ 使得下图交换
   {% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzIsMCwiXFxtYXRoZnJhayBzKFxcZGVsdGEpIl0sWzIsMywiXFxtYXRoZnJhayBzKFxcZGVsdGEnKSJdLFsxLDEsIlgiXSxbMiwxLCJFIl0sWzMsMSwiWSJdLFsxLDIsIlgnIl0sWzIsMiwiRSciXSxbMywyLCJZJyJdLFswLDEsIihYLFxcZGVsdGEgLFkpIl0sWzAsMiwiKFgnLCDOtCAnICwgWSAnKSJdLFsyLDNdLFszLDRdLFs0LDcsImciXSxbMiw1LCJmIiwyXSxbNSw2XSxbNiw3XSxbMyw2LCJcXHZhcnBoaSAiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCwzLCI6IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsNiwiOiIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs4LDksImYiLDIseyJvZmZzZXQiOjN9XSxbOCw5LCJnIiwwLHsib2Zmc2V0IjotM31dXQ==
\begin{tikzcd}
	&& {\mathfrak s(\delta)} \\
	{(X,\delta ,Y)} & X & E & Y \\
	{(X', δ ' , Y ')} & {X'} & {E'} & {Y'} \\
	&& {\mathfrak s(\delta')}
	\arrow["{:}"{marking, allow upside down}, draw=none, from=1-3, to=2-3]
	\arrow["f"', shift right=3, from=2-1, to=3-1]
	\arrow["g", shift left=3, from=2-1, to=3-1]
	\arrow[from=2-2, to=2-3]
	\arrow["f"', from=2-2, to=3-2]
	\arrow[from=2-3, to=2-4]
	\arrow["{\varphi }"', dashed, from=2-3, to=3-3]
	\arrow["g", from=2-4, to=3-4]
	\arrow[from=3-2, to=3-3]
	\arrow[from=3-3, to=3-4]
	\arrow["{:}"{marking, allow upside down}, draw=none, from=4-3, to=3-3]
\end{tikzcd}
   {% endtikz %}

{% enddef %}

### 外三角范畴的定义 (ET3, ET4)

{% def %}
(实现). 实现 $𝔰$ 将类 $⋃_{X,Y} 𝔼 (Y,X)$ 对应至 $⋃_{Y,X} [Y,X]$.

1. $𝔰 (δ)$ 的结果是一个等价类, 称作 $δ$ 的加法实现.
2. 等价类 $𝔰 (δ)$ 中的代表元称作 $𝔼$-三角.
3. 称 $(f,g)$ 是 $𝔼$-三角 $δ_s ∈ 𝔼(s(g), s(f))$ 与 $δ_t ∈ 𝔼 (t(g), t(f))$ 中的连接, 若 $f_∗ δ_s = g^∗ δ _t$.

{% enddef %}

{% note %}
对等价的 $𝔼$ 三角, 态射合成相等 (在外三角范畴中, 该合成为 $0$).
{% endnote %}

{% def %}
外三角范畴描述作三元组 $(𝒞 , 𝔼 , 𝔰)$, 其中 $𝔼$ 是加法范畴. 满足

1. (ET1). $𝔼$ 是扩张结构, 即双函子 $𝔼 : 𝒞 ^{\mathrm{op}} × 𝒞 → 𝐀𝐛$
2. (ET2). $𝔰$ 是实现, 也就是局部的二推三.
3. (ET3). 假定以下横行是 $𝔼$-三角, 且存在态射 $f$ 与 $φ$ 使得下图交换, 则存在 $g$ 使得下图交换:
   {% tikz %}
   % https://q.uiver.app/#q=WzAsOCxbMCwwLCJcXG1hdGhmcmFrIHMoXFxkZWx0YSkiXSxbMCwxLCJcXG1hdGhmcmFrIHMoXFxkZWx0YScpIl0sWzEsMCwiWCJdLFsyLDAsIkUiXSxbMywwLCJZIl0sWzEsMSwiWCciXSxbMiwxLCJFJyJdLFszLDEsIlknIl0sWzIsM10sWzMsNF0sWzQsNywiZyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDUsImYiLDJdLFs1LDZdLFs2LDddLFszLDYsIlxcdmFycGhpICIsMl0sWzAsMiwiOiIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDUsIjoiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
   \begin{tikzcd}[ampersand replacement=\&]
   	{\mathfrak s(\delta)} \& X \& E \& Y \\
   	{\mathfrak s(\delta')} \& {X'} \& {E'} \& {Y'}
   	\arrow["{:}"{marking, allow upside down}, draw=none, from=1-1, to=1-2]
   	\arrow[from=1-2, to=1-3]
   	\arrow["f"', from=1-2, to=2-2]
   	\arrow[from=1-3, to=1-4]
   	\arrow["{\varphi }"', from=1-3, to=2-3]
   	\arrow["g", dashed, from=1-4, to=2-4]
   	\arrow["{:}"{marking, allow upside down}, draw=none, from=2-1, to=2-2]
   	\arrow[from=2-2, to=2-3]
   	\arrow[from=2-3, to=2-4]
   \end{tikzcd}
   {% endtikz %}
   同时, $(f,g)$ 是一个连接.
4. (ET3'). 假定以下横行是 $𝔼$-三角, 且存在态射 $g$ 与 $φ$ 使得下图交换, 则存在 $f$ 使得下图交换:
   {% tikz %}
   % https://q.uiver.app/#q=WzAsOCxbMCwwLCJcXG1hdGhmcmFrIHMoXFxkZWx0YSkiXSxbMCwxLCJcXG1hdGhmcmFrIHMoXFxkZWx0YScpIl0sWzEsMCwiWCJdLFsyLDAsIkUiXSxbMywwLCJZIl0sWzEsMSwiWCciXSxbMiwxLCJFJyJdLFszLDEsIlknIl0sWzIsM10sWzMsNF0sWzQsNywiZyJdLFsyLDUsImYiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSw2XSxbNiw3XSxbMyw2LCJcXHZhcnBoaSAiLDJdLFswLDIsIjoiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSw1LCI6IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
   \begin{tikzcd}[ampersand replacement=\&]
   {\mathfrak s(\delta)} \& X \& E \& Y \\
   {\mathfrak s(\delta')} \& {X'} \& {E'} \& {Y'}
   \arrow["{:}"{marking, allow upside down}, draw=none, from=1-1, to=1-2]
   \arrow[from=1-2, to=1-3]
   \arrow["f"', dashed, from=1-2, to=2-2]
   \arrow[from=1-3, to=1-4]
   \arrow["{\varphi }"', from=1-3, to=2-3]
   \arrow["g", from=1-4, to=2-4]
   \arrow["{:}"{marking, allow upside down}, draw=none, from=2-1, to=2-2]
   \arrow[from=2-2, to=2-3]
   \arrow[from=2-3, to=2-4]
   \end{tikzcd}
   {% endtikz %}
   同时, $(f,g)$ 是一个连接.
5. (ET4). 假定初始资料是如下 $⊤$-型的 $𝔼$-三角 ($\mathfrak s(\delta_{r1})$, $\mathfrak s(\delta_{c2})$), 则可以补全作如下四个 $𝔼$-三角的交换图:
    {% tikz %}
    % https://q.uiver.app/#q=WzAsMTIsWzEsMSwiQSJdLFsyLDEsIkIiXSxbMywxLCJDIl0sWzIsMiwiRCJdLFsyLDMsIkUiXSxbMSwyLCJBIl0sWzMsMiwiRiJdLFszLDMsIkUiXSxbMCwxLCJcXG1hdGhmcmFrIHMoXFxkZWx0YV97cjF9KSJdLFswLDIsIlxcbWF0aGZyYWsgcyhcXGRlbHRhX3tyMn0pIl0sWzIsMCwiXFxtYXRoZnJhayBzKFxcZGVsdGFfe2MyfSkiXSxbMywwLCJcXG1hdGhmcmFrIHMoXFxkZWx0YV97YzN9KSJdLFswLDEsIngiXSxbMSwyLCJ5Il0sWzEsMywiYSJdLFszLDQsImIiXSxbNSwzLCJwIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNiwicSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDUsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw2LCJyIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsNywicyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}
	&& {\mathfrak s(\delta_{c2})} & {\mathfrak s(\delta_{c3})} \\
	{\mathfrak s(\delta_{r1})} & A & B & C \\
	{\mathfrak s(\delta_{r2})} & A & D & F \\
	&& E & E
	\arrow["x", from=2-2, to=2-3]
	\arrow[equals, from=2-2, to=3-2]
	\arrow["y", from=2-3, to=2-4]
	\arrow["a", from=2-3, to=3-3]
	\arrow["r", dashed, from=2-4, to=3-4]
	\arrow["p", dashed, from=3-2, to=3-3]
	\arrow["q", dashed, from=3-3, to=3-4]
	\arrow["b", from=3-3, to=4-3]
	\arrow["s", dashed, from=3-4, to=4-4]
	\arrow[equals, from=4-3, to=4-4]
\end{tikzcd}
    {% endtikz %}
    同时, 以上好三角对应的扩张满足以下条件:

    1. $y_∗ (\delta_{c2}) = \delta_{c3}$,
    2. $\delta_{r1} = r^∗ \delta_{r2}$,
    3. $s^∗ (\delta_{c2}) = x_∗ (\delta_{r2})$.
1. (ET4'). 假定初始资料是如下 $⊣$-型的 $𝔼$-三角 ($\mathfrak s(\delta_{r2})$, $\mathfrak s(\delta_{c3})$), 则可以补全作如下四个 $𝔼$-三角的交换图:
    {% tikz %}
    % https://q.uiver.app/#q=WzAsMTIsWzEsMSwiQSJdLFsyLDEsIkIiXSxbMywxLCJDIl0sWzIsMiwiRCJdLFsyLDMsIkUiXSxbMSwyLCJBIl0sWzMsMiwiRiJdLFszLDMsIkUiXSxbMCwxLCJcXG1hdGhmcmFrIHMoXFxkZWx0YV97cjF9KSJdLFswLDIsIlxcbWF0aGZyYWsgcyhcXGRlbHRhX3tyMn0pIl0sWzIsMCwiXFxtYXRoZnJhayBzKFxcZGVsdGFfe2MyfSkiXSxbMywwLCJcXG1hdGhmcmFrIHMoXFxkZWx0YV97YzN9KSJdLFswLDEsIngiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSwyLCJ5IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsMywiYSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDQsImIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSwzLCJwIl0sWzMsNiwicSJdLFswLDUsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw2LCJyIl0sWzYsNywicyJdXQ==
\begin{tikzcd}
	&& {\mathfrak s(\delta_{c2})} & {\mathfrak s(\delta_{c3})} \\
	{\mathfrak s(\delta_{r1})} & A & B & C \\
	{\mathfrak s(\delta_{r2})} & A & D & F \\
	&& E & E
	\arrow["x", dashed, from=2-2, to=2-3]
	\arrow[equals, from=2-2, to=3-2]
	\arrow["y", dashed, from=2-3, to=2-4]
	\arrow["a", dashed, from=2-3, to=3-3]
	\arrow["r", from=2-4, to=3-4]
	\arrow["p", from=3-2, to=3-3]
	\arrow["q", from=3-3, to=3-4]
	\arrow["b", dashed, from=3-3, to=4-3]
	\arrow["s", from=3-4, to=4-4]
	\arrow[equals, from=4-3, to=4-4]
\end{tikzcd}
    {% endtikz %}
    同时, 以上好三角对应的扩张满足以下条件 (同 ET4):

    1. $y_∗ (\delta_{c2}) = \delta_{c3}$,
    2. $\delta_{r1} = r^∗ \delta_{r2}$,
    3. $s^∗ (\delta_{c2}) = x_∗ (\delta_{r2})$.

{% enddef %}

{% note %}
请注意 ET2 与 ET3 (ET3') 关于二推三类似性质的表述.

- ET2 先给定连接与外周态射, 再声明中间态射与交换图之存在性.
- ET3 先给定 $𝔼$-三角的的交换图, 再声明该态射可以补全为连接.

一般地, $𝔼$-三角之间的态射不再是连接.

{% endnote %}

{% note %}
ET4 与 ET4' 是不同输入的同一结果, 都是给定一个 T 构造另一个 T. 类比作八面体公理, 以下类似交换方块的 $\boxed 1$, $\boxed{2}$ 与 $\boxed{3}$ 对应 ET4 中三处约束:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTMsWzAsMCwiQSJdLFsxLDAsIkIiXSxbMiwwLCJDIl0sWzEsMSwiRCJdLFsxLDIsIkUiXSxbMCwxLCJBIl0sWzIsMSwiRiJdLFsyLDIsIkUiXSxbMywwLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzIsMywiXFxidWxsZXQiXSxbMSwzLCJcXGJ1bGxldCJdLFszLDIsIlxcYnVsbGV0Il0sWzAsMSwieCJdLFsxLDIsInkiXSxbMSwzLCJhIl0sWzMsNCwiYiJdLFs1LDMsInAiXSxbMyw2LCJxIl0sWzAsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw3LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDYsInIiXSxbNiw3LCJzIl0sWzIsOCwiXFxkZWx0YV97cjF9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsOSwiXFxkZWx0YV97cjJ9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzcsMTAsIlxcZGVsdGFfe2MzfSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs0LDExLCJcXGRlbHRhX3tjMn0iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTEsMTAsInlfXFxhc3QgIiwyXSxbOCw5LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNywxMiwiXFxkZWx0YV97YzJ9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksMTIsInhfXFxhc3QiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwxMCwiXFxib3hlZCAxIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsOSwiXFxib3hlZCAyIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMTIsIlxcYm94ZWQgMyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	A & B & C & \bullet \\
	A & D & F & \bullet \\
	& E & E & \bullet \\
	& \bullet & \bullet
	\arrow["x", from=1-1, to=1-2]
	\arrow[equals, from=1-1, to=2-1]
	\arrow["y", from=1-2, to=1-3]
	\arrow["a", from=1-2, to=2-2]
	\arrow["{\delta_{r1}}", dashed, from=1-3, to=1-4]
	\arrow["r", from=1-3, to=2-3]
	\arrow["{\boxed 2}"{description}, draw=none, from=1-3, to=2-4]
	\arrow[equals, dashed, from=1-4, to=2-4]
	\arrow["p", from=2-1, to=2-2]
	\arrow["q", from=2-2, to=2-3]
	\arrow["b", from=2-2, to=3-2]
	\arrow["{\delta_{r2}}", dashed, from=2-3, to=2-4]
	\arrow["s", from=2-3, to=3-3]
	\arrow["{\boxed 3}"{description}, draw=none, from=2-3, to=3-4]
	\arrow["{x_\ast}", dashed, from=2-4, to=3-4]
	\arrow[equals, from=3-2, to=3-3]
	\arrow["{\delta_{c2}}", dashed, from=3-2, to=4-2]
	\arrow["{\boxed 1}"{description}, draw=none, from=3-2, to=4-3]
	\arrow["{\delta_{c2}}", dashed, from=3-3, to=3-4]
	\arrow["{\delta_{c3}}", dashed, from=3-3, to=4-3]
	\arrow["{y_\ast }"', from=4-2, to=4-3]
\end{tikzcd}
{% endtikz %}
另一种理解方式是正合范畴中的 Noether 同构.
{% endnote %}

{% note %}
对预三角范畴, 八面体公理的等价形式间[同伦的推出拉回](Homotopic_PBPO_Oct)一节. ET4 蕴含同伦推出拉回[此文](Homotopic_PBPO_Extri), 但反之未必 (Gap: 态射未必能嵌入外三角!).
{% endnote %}

{% ex %}
若正合范畴 $(𝒜 ,ℰ)$ 本质小, 或是有足够投射, 则 $\mathrm{Ext}^1$ 总是集合. 此时, $(𝒜, \mathrm{Ext}^1, 𝔰)$ 是外三角范畴, $𝔰$ 由 $\mathrm{Ext}^1$ 的米田群定义给出.
{% endex %}

## 外三角范畴的基本性质

### 上同调函子

先证明一则实用的引理.

{% lem %}
一般而言, $𝔼$-三角间的态射不是连接; 若 $δ$ 可裂, 则任意 $δ$ 至 $δ'$ 的态射是连接, 且任意 $δ'$ 至 $δ$ 的态射也是连接.
{% pf %}
只看 $δ$ 至 $δ '$ 的态射 $(a,b,c)$. 依照 ET3, 存在态射 $(a',b,c)$ 使得 $(a', c)$ 是连接. 因此 $c^∗ δ = a'_∗ δ = 0 = a_∗ δ$.
{% endpf %}
{% endlem %}

{% thm %}
(充实在 $𝐀𝐛$ 范畴上的米田引理). 表述证明略.
{% endthm %}

{% def %}
($δ_!$ 与 $δ^!$). 由米田引理, 扩张 $δ$ 对应自然变换 $δ_!$ (被拉回) 与 $δ^!$ (被突出):
{% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzAsMSwiXFxtYXRoYmIgRShBLFgpIl0sWzAsMCwiXFxtYXRoc2Z7TmF0fVsoWCwgLSksXFxtYXRoYmIgRShBLC0pXSJdLFswLDIsIlxcbWF0aHNme05hdH1bKC0sQSksIChcXG1hdGhiYiBFKC0sWCkpXSJdLFsxLDEsIlxcZGVsdGEiXSxbMSwwLCJcXGRlbHRhXyEiXSxbMSwyLCJcXGRlbHRhXiEiXSxbMiwwLCJbWCBcXHhyaWdodGFycm93IGZNXSJdLFszLDAsImZeXFxhc3QgXFxkZWx0YSJdLFsyLDIsIltOIFxceHJpZ2h0YXJyb3cgZyBBXSJdLFszLDIsImdfXFxhc3QgXFxkZWx0YSAiXSxbMiwxLCIoWCxcXGRlbHRhLEEpIl0sWzEsMCwiXFx0ZXh0ezE6MX0iLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJhcnJvd2hlYWQifX19XSxbMCwyLCJcXHRleHR7MToxfSIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6ImFycm93aGVhZCJ9fX1dLFs2LDcsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbOCw5LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzEsNCwiXFxuaSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDMsIlxcbmkiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw1LCJcXG5pIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNiwiOiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDgsIjoiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywxMCwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
	{\mathsf{Nat}[(X, -),\mathbb E(A,-)]} & {\delta_!} & {[X \xrightarrow fM]} & {f^\ast \delta} \\
	{\mathbb E(A,X)} & \delta & {(X,\delta,A)} \\
	{\mathsf{Nat}[(-,A), (\mathbb E(-,X))]} & {\delta^!} & {[N \xrightarrow g A]} & {g_\ast \delta }
	\arrow["\ni"{description}, draw=none, from=1-1, to=1-2]
	\arrow["{\text{1:1}}"', tail reversed, from=1-1, to=2-1]
	\arrow["{:}"{description}, draw=none, from=1-2, to=1-3]
	\arrow[maps to, from=1-3, to=1-4]
	\arrow["\ni"{description}, draw=none, from=2-1, to=2-2]
	\arrow["{\text{1:1}}"', tail reversed, from=2-1, to=3-1]
	\arrow[equals, from=2-2, to=2-3]
	\arrow["\ni"{description}, draw=none, from=3-1, to=3-2]
	\arrow["{:}"{description}, draw=none, from=3-2, to=3-3]
	\arrow[maps to, from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}

{% enddef %}

{% thm %}
(函子的同调长正合序列, [证明](Long_Exact_Seq_Extriangulated)). 给定 $𝔼$-三角 $𝔰 (δ ) = [A\xrightarrow f B \xrightarrow g C]$, 则有六项反变函子的长正合列
{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwwLCIoLSxBKSJdLFsxLDAsIigtLEIpIl0sWzIsMCwiKC0sQykiXSxbMCwxLCJcXG1hdGhiYiBFKC0sQSkiXSxbMSwxLCJcXG1hdGhiYiBFKC0sQikiXSxbMiwxLCJcXG1hdGhiYiBFKC0sQykiXSxbMCwxLCJmXFxjaXJjIC0iXSxbMSwyLCJnXFxjaXJjIC0iXSxbMyw0LCJmX1xcYXN0IiwyXSxbNCw1LCJnX1xcYXN0IiwyXSxbMiwzLCJcXGRlbHRhXyEiLDFdXQ==
\begin{tikzcd}
	{(-,A)} & {(-,B)} & {(-,C)} \\
	{\mathbb E(-,A)} & {\mathbb E(-,B)} & {\mathbb E(-,C)}
	\arrow["{f\circ -}", from=1-1, to=1-2]
	\arrow["{g\circ -}", from=1-2, to=1-3]
	\arrow["{\delta_!}"{description}, from=1-3, to=2-1]
	\arrow["{f_\ast}"', from=2-1, to=2-2]
	\arrow["{g_\ast}"', from=2-2, to=2-3]
\end{tikzcd}
{% endtikz %}
需要提及, $𝔼(-, B)$ 处的正合性需要 ET4, 前五项长正合列仅通过 ET1, ET2, 与 ET3 推得.

{% endthm %}

{% prop %}

一般地, $𝔼$-三角之间的态射不再是连接; 但对某些特殊情形, $𝔼$-三角间的交换图是连接. 假定以下是 $𝔼$-三角的交换图
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJYIl0sWzIsMCwiWSJdLFs0LDAsIloiXSxbNCwxLCJaJyJdLFswLDEsIlgnIl0sWzIsMSwiWSciXSxbNSwwLCJcXG1hdGhmcmFrIHMoXFxkZWx0YSkiXSxbNSwxLCJcXG1hdGhmcmFrIHMoXFxkZWx0YScpIl0sWzAsMSwiZiJdLFsxLDIsImciXSxbMiwzLCJjIl0sWzAsNCwiYSJdLFs0LDUsImYnIl0sWzEsNSwiYiJdLFs1LDMsImcnIl1d
\begin{tikzcd}[ampersand replacement=\&]
	X \&\& Y \&\& Z \& {\mathfrak s(\delta)} \\
	{X'} \&\& {Y'} \&\& {Z'} \& {\mathfrak s(\delta')}
	\arrow["f", from=1-1, to=1-3]
	\arrow["a", from=1-1, to=2-1]
	\arrow["g", from=1-3, to=1-5]
	\arrow["b", from=1-3, to=2-3]
	\arrow["c", from=1-5, to=2-5]
	\arrow["{f'}", from=2-1, to=2-3]
	\arrow["{g'}", from=2-3, to=2-5]
\end{tikzcd}
{% endtikz %}

若 $(f', X)$ 满或是 $(Z' ,g)$ 满, 则以上是连接.

{% pf %}
只看 $(f', X)$ 满的情形. 使用 ET3 建立 $a' : X → X'$ 使得以下两点成立.

1. 有交换图且 $f' a' = bf$. 等价地, $f' (a-a') = 0$.
2. $(a', c)$ 是连接, 即 $(a')_∗ δ = c^∗ δ'$. 等价地, $(a-a') ∈ \ker δ ^!$.

由 $(a-a') ∈ \ker δ ^! = \mathrm{im}(- ∘ f')$, 只需证明 $(a-a')$ 通过 $f'$ 分解, 这由 $(f', X)$ 满直接得到.

{% endpf %}
{% endprop %}

## 主定理: 特殊的稳定范畴保持外三角结构

### 外三角范畴的引理 (类比正合范畴)

{% def %}
若无歧义, 将使用正合范畴的名词称呼 $𝔼$-三角. 称 $𝔰 (δ)$ 是 conflation, 其第一项态射与第二项态射分别为 inflation 与 deflation.
{% enddef %}

{% ex %}
(EX1 类似物). 由 ET4, inflation 与 deflation 对合成封闭.
{% endex %}

{% ex %}
(EX2 类似物). 这一类比是困难的, 因为外三角范畴通常没有态射嵌入 $𝔼$-三角的结论, 更没有一般的推出拉回.
{% endex %}

{% ex %}
(Noether 同构 ≈ 八面体引理 ≈ ET4). 这是正合范畴, 三角范畴与外三角范畴的共性.
{% endex %}

{% ex %}
(Noether ≈ ET4 的推论). 这是正合范畴与外三角范畴共有的. 在三角范畴中, 好三角灵活的旋转特性埋没了这一推论.
\\
\\
给定来源相同的 inflation 与 deflation, 其拉回就是推出拉回方块, 且有四条 conflation 的交换图:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzIsMSwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMSwwLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzIsMiwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFswLDIsIlxcLCJdLFs0LDIsIlxcLCJdLFswLDEsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsyLDEsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMywyLCIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifSwiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsMCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwzLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDAsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifSwiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsNiwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxLDcsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNiw3LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw1LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywxLCJcXHNxdWFyZSIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	& \bullet & \bullet & \bullet \\
	& \bullet & \bullet & \bullet \\
	{\,} && \bullet & \bullet & {\,}
	\arrow[dashed, tail, from=1-2, to=1-3]
	\arrow[equals, dashed, from=1-2, to=2-2]
	\arrow[dashed, two heads, from=1-3, to=1-4]
	\arrow[dashed, tail, from=1-3, to=2-3]
	\arrow["\square"{marking, allow upside down}, draw=none, from=1-3, to=2-4]
	\arrow[tail, from=1-4, to=2-4]
	\arrow[dashed, tail, from=2-2, to=2-3]
	\arrow[two heads, from=2-3, to=2-4]
	\arrow[dashed, two heads, from=2-3, to=3-3]
	\arrow[dashed, two heads, from=2-4, to=3-4]
	\arrow[equals, dashed, from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}
对外三角范畴, 将某一 inflation 或 deflation 补全作 $𝔼$-三角, 使用八面体公理即可.
{% endex %}

{% ex %}
(双 deflation 拉回, 双 inflation 推出). 对正合范畴,

- 若两个 deflation 具有相同的去向, 则其拉回补全作四条 conflation 的交换图:
    {% tikz %}
    % https://q.uiver.app/#q=WzAsMTAsWzIsMSwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsxLDIsIlxcYnVsbGV0Il0sWzIsMiwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFswLDIsIlxcLCJdLFs0LDIsIlxcLCJdLFswLDEsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMiwxLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzMsMiwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCw2LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifSwiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzEsNywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzYsNywiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsNSwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsNywiXFxzcXVhcmUiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwwLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDYsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XV0=
\begin{tikzcd}
	&& \bullet & \bullet \\
	& \bullet & \bullet & \bullet \\
	{\,} & \bullet & \bullet & \bullet & {\,}
	\arrow[equals, dashed, from=1-3, to=1-4]
	\arrow[dashed, tail, from=1-3, to=2-3]
	\arrow[tail, from=1-4, to=2-4]
	\arrow[dashed, tail, from=2-2, to=2-3]
	\arrow[equals, dashed, from=2-2, to=3-2]
	\arrow[dashed, two heads, from=2-3, to=2-4]
	\arrow[dashed, two heads, from=2-3, to=3-3]
	\arrow["\square"{marking, allow upside down}, draw=none, from=2-3, to=3-4]
	\arrow[two heads, from=2-4, to=3-4]
	\arrow[tail, from=3-2, to=3-3]
	\arrow[two heads, from=3-3, to=3-4]
\end{tikzcd}
    {% endtikz %}
- 若两个 inflation 具有相同的来源, 则其推出补全作四条 conflation 的交换图:
    {% tikz %}
    % https://q.uiver.app/#q=WzAsMTAsWzIsMSwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsxLDIsIlxcYnVsbGV0Il0sWzIsMiwiXFxidWxsZXQiXSxbMCwyLCJcXCwiXSxbNCwyLCJcXCwiXSxbMSwwLCJcXGJ1bGxldCJdLFswLDEsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMiwxLCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywyXSxbMywwLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDYsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNCw1XSxbNCwwLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDYsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDMsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbOSw0LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzksMCwiXFxzcXVhcmUiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
	& \bullet & \bullet & \bullet \\
	& \bullet & \bullet & \bullet \\
	{\,} & \bullet & \bullet && {\,}
	\arrow[tail, from=1-2, to=1-3]
	\arrow[tail, from=1-2, to=2-2]
	\arrow["\square"{marking, allow upside down}, draw=none, from=1-2, to=2-3]
	\arrow[from=1-3, to=1-4]
	\arrow[dashed, tail, from=1-3, to=2-3]
	\arrow[equals, dashed, from=1-4, to=2-4]
	\arrow[dashed, tail, from=2-2, to=2-3]
	\arrow[from=2-2, to=3-2]
	\arrow[dashed, two heads, from=2-3, to=2-4]
	\arrow[dashed, two heads, from=2-3, to=3-3]
	\arrow[equals, dashed, from=3-2, to=3-3]
\end{tikzcd}
    {% endtikz %}

{% endex %}

{% prop %}
(双 deflation 拉回 ≈ Verdier 的 $4 × 4$ 公理, [证明](4_times_4_extri)). 给定外三角范畴中 $δ_{i} ∈ 𝔼 (C, A_i)$ 的实现, 则可补全以下四条 $𝔼$-三角的交换图:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJCXzIiXSxbMiwwLCJBXzIiXSxbMSwwLCJBXzIiXSxbMCwxLCJBXzEiXSxbMCwyLCJBXzEiXSxbMSwyLCJCXzEiXSxbMywyLCJcXG1hdGhmcmFrIHMoXFxkZWx0YV8xKSJdLFsyLDIsIkMiXSxbMiwzLCJcXG1hdGhmcmFrIHMoXFxkZWx0YV8yKSJdLFsxLDMsIlxcbWF0aGZyYWsgcygoeV8xKV9cXGFzdCBcXGRlbHRhXzIpIl0sWzMsMSwiXFxtYXRoZnJhayBzKCh5XzIpX1xcYXN0IFxcZGVsdGFfMSkiXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifSwiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsMSwieF8yIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFszLDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCw2LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifSwiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwwLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDgsInlfMiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs2LDgsInlfMSIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs1LDYsInhfMSIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbOSwxMF0sWzcsMTFdXQ==
\begin{tikzcd}
	& {A_2} & {A_2} \\
	{A_1} & \bullet & {B_2} & {\mathfrak s((y_2)_\ast \delta_1)} \\
	{A_1} & {B_1} & C & {\mathfrak s(\delta_1)} \\
	& {\mathfrak s((y_1)_\ast \delta_2)} & {\mathfrak s(\delta_2)}
	\arrow[equals, from=1-2, to=1-3]
	\arrow[dashed, tail, from=1-2, to=2-2]
	\arrow["{x_2}", tail, from=1-3, to=2-3]
	\arrow[dashed, tail, from=2-1, to=2-2]
	\arrow[equals, from=2-1, to=3-1]
	\arrow[dashed, two heads, from=2-2, to=2-3]
	\arrow[dashed, two heads, from=2-2, to=3-2]
	\arrow["{y_2}", two heads, from=2-3, to=3-3]
	\arrow["{x_1}", tail, from=3-1, to=3-2]
	\arrow["{y_1}", two heads, from=3-2, to=3-3]
	\arrow[from=3-4, to=2-4]
	\arrow[from=4-3, to=4-2]
\end{tikzcd}
{% endtikz %}

中间行列恰是 $(y_i)_∗ δ_j$ 的实现.

{% endprop %}

{% cor %}
将之类比作 $4 × 4$ 公理, 是因为
$$\begin{aligned}
(m_1)_∗ δ _1 &= m_∗ (e_1)_∗ (p_1)_∗\binom 11^∗ (δ _1 ⊕ δ _2);\\
(m_2)_∗ δ _2 &= m_∗ (e_2)_∗ (p_2)_∗\binom 11^∗ (δ _1 ⊕ δ _2).
\end{aligned}$$

相加得

$$\begin{equation}
(m_1)_∗ δ _1 + (m_2)_∗ δ _2 = m_∗ \binom 11^∗ (δ _1 ⊕ δ _2) = 0.
\end{equation}$$
{% tikz %}

% https://q.uiver.app/#q=WzAsMTEsWzIsMCwiQV8yIl0sWzIsMSwiQl8yIl0sWzEsMCwiQV8yIl0sWzAsMSwiQV8xIl0sWzAsMiwiQV8xIl0sWzEsMiwiQl8xIl0sWzIsMiwiQyJdLFsxLDEsIk0iXSxbMywyLCJcXGJ1bGxldCJdLFsyLDMsIlxcYnVsbGV0Il0sWzMsMywiXFxidWxsZXQiXSxbMCwxLCJ4XzIiXSxbMyw3LCJtXzEiLDJdLFsyLDcsIm1fMiIsMl0sWzQsNSwieF8xIiwyXSxbNSw2LCJ5XzEiLDJdLFs3LDUsIlxcbGFtYmRhXzEiLDJdLFs3LDYsImsiLDJdLFszLDQsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsMSwiXFxsYW1iZGFfMiJdLFsxLDYsInlfMiJdLFsyLDAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsOCwiXFxkZWx0YV8xIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsOSwiXFxkZWx0YV8yIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksMTAsIihtXzIpX1xcYXN0IiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzgsMTAsIihtXzEpX1xcYXN0IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsMTAsIlxcdGV4dHvlj419IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}
	& {A_2} & {A_2} \\
	{A_1} & M & {B_2} \\
	{A_1} & {B_1} & C & \bullet \\
	&& \bullet & \bullet
	\arrow[equals, from=1-2, to=1-3]
	\arrow["{m_2}"', from=1-2, to=2-2]
	\arrow["{x_2}", from=1-3, to=2-3]
	\arrow["{m_1}"', from=2-1, to=2-2]
	\arrow[equals, from=2-1, to=3-1]
	\arrow["{\lambda_2}", from=2-2, to=2-3]
	\arrow["{\lambda_1}"', from=2-2, to=3-2]
	\arrow["k"', from=2-2, to=3-3]
	\arrow["{y_2}", from=2-3, to=3-3]
	\arrow["{x_1}"', from=3-1, to=3-2]
	\arrow["{y_1}"', from=3-2, to=3-3]
	\arrow["{\delta_1}", dashed, from=3-3, to=3-4]
	\arrow["{\delta_2}"', dashed, from=3-3, to=4-3]
	\arrow["{\text{反}}"{description}, draw=none, from=3-3, to=4-4]
	\arrow["{(m_1)_\ast}", dashed, from=3-4, to=4-4]
	\arrow["{(m_2)_\ast}"', dashed, from=4-3, to=4-4]
\end{tikzcd}
{% endtikz %}
综上, 两处 deflation 的拉回不但给出两处扩张的拉回, 另给出一个反交换方块.
{% endcor %}

{% ex %}
(EX3). 以下是正合范畴中的若干结论.

- 若 $gf$ 是 inflation, $f$ 有余核, 则 $f$ 是 inflation.
- 当且仅当正合范畴弱幂等完备, 恒有 $[gf ∈ 𝐢𝐧𝐟 ] ⇒ [f ∈ 𝐢𝐧𝐟]$.
- 假定 $gf$ 是 inflation, 且 $g$ 是 deflation. 此时, $f$ 是 inflation, 同时可补全四条 conflation 的交换图:
    {% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzEsMiwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFswLDIsIlxcLCJdLFs0LDIsIlxcLCJdLFswLDEsImYiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsMiwiZyIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFswLDMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMiwiZ2YiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzUsNiwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNSwxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzYsNCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxLDQsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsyLDcsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs0LDcsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dXQ==
\begin{tikzcd}
	&& \bullet & \bullet \\
	& \bullet & \bullet & \bullet \\
	{\,} & \bullet & \bullet & \bullet & {\,}
	\arrow[equals, from=1-3, to=1-4]
	\arrow[tail, from=1-3, to=2-3]
	\arrow[tail, from=1-4, to=2-4]
	\arrow["f", tail, from=2-2, to=2-3]
	\arrow[equals, from=2-2, to=3-2]
	\arrow[two heads, from=2-3, to=2-4]
	\arrow["g", two heads, from=2-3, to=3-3]
	\arrow[two heads, from=2-4, to=3-4]
	\arrow["gf", tail, from=3-2, to=3-3]
	\arrow[two heads, from=3-3, to=3-4]
\end{tikzcd}
    {% endtikz %}
{% endex %}

{% prop %}
(外三角范畴的 EX3 类似物, [证明](Exact_Cat_Short_Note)). 假定 $gf$ 是 inflation, 且 $g$ 是 deflation. 此时, $f$ 是 inflation, 同时可补全四条 conflation 的交换图.
{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzEsMiwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFswLDIsIlxcLCJdLFs0LDIsIlxcLCJdLFswLDEsImYiXSxbMSwyLCJnIl0sWzAsMywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywyLCJnZiJdLFs1LDYsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsMV0sWzYsNF0sWzEsNF0sWzIsN10sWzQsN11d
\begin{tikzcd}
	&& \bullet & \bullet \\
	& \bullet & \bullet & \bullet \\
	{\,} & \bullet & \bullet & \bullet & {\,}
	\arrow[equals, from=1-3, to=1-4]
	\arrow[from=1-3, to=2-3]
	\arrow[from=1-4, to=2-4]
	\arrow["f", from=2-2, to=2-3]
	\arrow[equals, from=2-2, to=3-2]
	\arrow[from=2-3, to=2-4]
	\arrow["g", from=2-3, to=3-3]
	\arrow[from=2-4, to=3-4]
	\arrow["gf", from=3-2, to=3-3]
	\arrow[from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}

{% endprop %}

{% cor %}
给定 ET4 图, 双 deflation 所谓拉回图, 以及双 inflation 的所谓推出图. 若四个态射链中有三个 $𝔼$-三角, 则第四者亦然.
{% endcor %}

{% prop %}
(特殊的 inflation, 添加直和项). 若 $x : A → B$ 是 inflation, 则对任意 $A$ 出发的态射 $f$, $\binom x f$ 也是 inflation. 这在正合范畴中成立, 也在外三角范畴中成立.

{% pf %}
([原证明](Inflation_add_Inflation), 现已无用). 这是 {% tikzinline %} % https://q.uiver.app/#q=WzAsNCxbMCwwLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzEsMCwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFswLDEsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMiwiXFxiaW5vbSBmeCJdLFsyLDMsIigxLDApIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzEsMywiZiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XV0=
\begin{tikzcd}
	\bullet & \bullet \\
	\bullet & \bullet
	\arrow["{\binom fx}", from=1-1, to=1-2]
	\arrow[equals, from=1-1, to=2-1]
	\arrow["{(1,0)}", two heads, from=1-2, to=2-2]
	\arrow["f", tail, from=2-1, to=2-2]
\end{tikzcd} {% endtikzinline %} 的直接使用. 由 $f$ 是 inflation 且 $(1,0)$ 是 deflation, 则 $\binom fx$ 必然是 inflation. 同时存在四条 $𝔼$-三角的交换图.
{% endpf %}
{% endprop %}

### 投射对象, 内射对象

{% def %}
(外三角范畴的投射对象). 称 $P$ 是外三角范畴的投射对象, 若以下论断成立:

1. 对任意 deflation $d : B → C$, 一切 $P → C$ 通过 $d$ 分解;
2. $(P, -)$ 是正合函子;
3. $𝔼 (P, -)$ 消失;
4. 对任意 $δ ∈ 𝔼 (C,A)$, 任意 $f : P → C$, 则 $f^∗ δ = 0$.

{% pf %}
(1 ⟺ 2). 两者等价于左正合函子 $(P, -)$ 将 deflation 对应至满射.
\\
\\
(1 ⟺ 3). 若 $𝔼 (P, -)$ 消失, 由长正合列知 $(P, -)$-将 deflation 对应至满射. 若 $(P, -)$ 将 deflation 对应至满射, 则任意 $δ ∈ 𝔼 (P, A)$ 实现作可裂短正合列, 得 $𝔼 (P, -)$ 消失.
\\
\\
(1 ⟺ 4). 由长正合列, $\ker δ _!$ 是相应的 deflation 的 image.

{% endpf %}

{% enddef %}

{% thm %}
([证明](Ideal_Quotient)). 给定外三角范畴 $(𝒞 , 𝔼 , 𝔰 )$. 若加法子范畴 $𝒳 ⊂ 𝐏𝐫𝐨𝐣 ∩ 𝐈𝐧𝐣$, 则 $𝒞 / 𝒳$ 也是外三角范畴, 且继承了外三角结构.

{% endthm %}

### 三角范畴视作外三角范畴

{% def %}
(自等价诱导的扩张结构). 给定局部小的加法范畴的自等价 $Σ$, 定义扩张为如下加法双函子
$$\begin{equation}
𝔼 : 𝒞 ^{\mathrm{op}} × 𝒞 → 𝐀𝐛 ,\quad (Y, X) ↦ \mathrm{Hom}(Y,ΣX).
\end{equation}$$
{% enddef %}

{% ex %}
对 $δ ∈ 𝔼 (C,A) = (C,ΣA)$. $δ_!$ 与 $δ^!$ 解释如下.

- $δ_! ∈ 𝖭𝖺𝗍 [(- , C), 𝔼 (- , A)] ≃ 𝔼(C, A) ∋ δ$, 
  - 此处, 自然变换 $(- , C) \xrightarrow{(-, δ)} (-, ΣA)$ 对应态射 $C \xrightarrow δ  ΣA$.
- $δ^! ∈ 𝖭𝖺𝗍 [(A, -), 𝔼 (C, -)] ≃ 𝔼 (C,A) ∋ δ$,
  - 此处, 自然变换 $(A, -) ≃ (ΣA, Σ-) \xrightarrow{(δ , -)} (C, Σ-)$ 对应态射 $C \xrightarrow δ  ΣA$.

{% endex %}

{% ex %}
(泛元的实现). 米田引理的泛元:
$$\begin{equation}
1_{ΣA} ∈ \mathrm{End}(ΣA) = 𝔼 (ΣA, A) = 𝖭𝖺𝗍 [(-, ΣA), 𝔼 (-, A)] ∋ u_A.
\end{equation}$$

假定 ET2. 此时存在实现 $𝔰(1_{ΣA}) = [A \xrightarrow f E \xrightarrow g ΣA]$. 长正合列给出
$$\begin{equation}
(-, A) → (-, E) → (-, ΣA) \xrightarrow{u_A} 𝔼 (-, A) → 𝔼 (-, X).
\end{equation}$$
$u_A$ 是自然同构, 因此 $(-, g)$ 与 $𝔼 (-, f)$ 均为 $0$. 由 $𝔼$ 是自等价给出的, 故 $f$ 与 $g$ 是零态射. 由正合性, $E = 0$.
\\
\\
综上, $1_{ΣA} ∈ 𝔼 (ΣA, A)$ 的实现必然是 $[A → 0 → ΣA]$.
{% endex %}

{% thm %}
(三角范畴的外三角结构). 给定三角范畴 $(𝒞 , Σ, \triangle)$.

1. (ET1). $Σ$ 诱导了扩张 $𝔼 (-,⋅) := (-, Σ⋅ )$. 显然这是加法双函子.
2. (ET2). 定义 $δ ∈ 𝔼(Z,X) = (Z, ΣX)$ 的实现为好三角所在的同构类 $[X \xrightarrow f Y \xrightarrow g Z]$. 在对象 $Y$ 相差一个同构的意义下, 态射 $δ$ 可以嵌入唯一好三角 $X \xrightarrow f Y \xrightarrow g Z \xrightarrow δ ΣX$. 下验证这是加法实现:
	- 若实现是零, 也就是可裂短正合列, 则 $δ$ 处必然取零态射;
	- 好三角关于直和封闭;
	- 二推三性质给出局部的二推三性质.
3. (ET3). 这就是通常的二推三.
4. (ET4). ET4 的三个限制条件与八面体公理的三个限制条件完全匹配:
	{% tikz %}
	% https://q.uiver.app/#q=WzAsMTMsWzAsMCwiQSJdLFsxLDAsIkIiXSxbMiwwLCJDIl0sWzEsMSwiRCJdLFsxLDIsIkUiXSxbMCwxLCJBIl0sWzIsMSwiRiJdLFsyLDIsIkUiXSxbMywwLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzIsMywiXFxidWxsZXQiXSxbMSwzLCJcXGJ1bGxldCJdLFszLDIsIlxcYnVsbGV0Il0sWzAsMSwieCJdLFsxLDIsInkiXSxbMSwzLCJhIl0sWzMsNCwiYiJdLFs1LDMsInAiXSxbMyw2LCJxIl0sWzAsNSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw3LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDYsInIiXSxbNiw3LCJzIl0sWzIsOCwiXFxkZWx0YV97cjF9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsOSwiXFxkZWx0YV97cjJ9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzcsMTAsIlxcZGVsdGFfe2MzfSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs0LDExLCJcXGRlbHRhX3tjMn0iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTEsMTAsInlfXFxhc3QgIiwyXSxbOCw5LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNywxMiwiXFxkZWx0YV97YzJ9IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksMTIsInhfXFxhc3QiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCwxMCwiXFxib3hlZCAxIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsOSwiXFxib3hlZCAyIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMTIsIlxcYm94ZWQgMyIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
	A & B & C & \bullet \\
	A & D & F & \bullet \\
	& E & E & \bullet \\
	& \bullet & \bullet
	\arrow["x", from=1-1, to=1-2]
	\arrow[equals, from=1-1, to=2-1]
	\arrow["y", from=1-2, to=1-3]
	\arrow["a", from=1-2, to=2-2]
	\arrow["{\delta_{r1}}", dashed, from=1-3, to=1-4]
	\arrow["r", from=1-3, to=2-3]
	\arrow["{\boxed 2}"{description}, draw=none, from=1-3, to=2-4]
	\arrow[equals, dashed, from=1-4, to=2-4]
	\arrow["p", from=2-1, to=2-2]
	\arrow["q", from=2-2, to=2-3]
	\arrow["b", from=2-2, to=3-2]
	\arrow["{\delta_{r2}}", dashed, from=2-3, to=2-4]
	\arrow["s", from=2-3, to=3-3]
	\arrow["{\boxed 3}"{description}, draw=none, from=2-3, to=3-4]
	\arrow["{x_\ast}", dashed, from=2-4, to=3-4]
	\arrow[equals, from=3-2, to=3-3]
	\arrow["{\delta_{c2}}", dashed, from=3-2, to=4-2]
	\arrow["{\boxed 1}"{description}, draw=none, from=3-2, to=4-3]
	\arrow["{\delta_{c2}}", dashed, from=3-3, to=3-4]
	\arrow["{\delta_{c3}}", dashed, from=3-3, to=4-3]
	\arrow["{y_\ast }"', from=4-2, to=4-3]
\end{tikzcd}
	{% endtikz %}
{% endthm %}

{% thm %}
自等价诱导的外三角范畴 $(𝒞 , 𝔼 , 𝔰)$ 是三角范畴. 此处, 平移取自等价 $Σ$, 称 $X \xrightarrow f Y \xrightarrow g Z \xrightarrow h X[1]$ 是好三角, 若 $𝔰 (δ ) = [X \xrightarrow f Y \xrightarrow g Z]$.

1. (TR1-1). 好三角对同构封闭. 仅看好三角的前三项, 同构的拆分作两处等号 + 一处同构的形式. 对 $(∥, ∥, ∼)$ 或是 $(∼ , ∥, ∥)$, 使用 $φ^∗$ ($φ_∗$) 转化作 $(∥ , ∼ , ∥)$. 对 $(∥ , ∼ , ∥)$, 依照 $[Z,X]$ 的定义即可.
2. (TR1-2). 任意态射可嵌入好三角. 在证明顺时针旋转的情形下, 任意态射形如 $δ$.
3. (TR1-3). 对任意对象 $X$, 存在平凡三角 $X = X → 0 → X[1]$. 在证明顺时针旋转的情形下, 考虑 $u_A$ 即可.
4. (TR2). 若有好三角 $X \xrightarrow u Y \xrightarrow v \xrightarrow w Z$, 下证明顺时针旋转也是好三角. 取双 inflation 的所谓推出方块, 得四个 $𝔼$-三角的交换图:
	{% tikz %}
	% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiWCJdLFsyLDEsIlkiXSxbMywxLCJaIl0sWzAsMSwiXFxtYXRoZnJhayBzKHcpIl0sWzMsMiwiWiJdLFsyLDIsIloiXSxbMSwyLCIwIl0sWzIsMywiWFsxXSJdLFsxLDMsIlhbMV0iXSxbMiwwLCJcXG1hdGhmcmFre3N9KFxcZGVsdGEpIl0sWzEsMCwiXFxtYXRoZnJhayBzKDFfe1hbMV19KSJdLFswLDIsIlxcbWF0aGZyYWsgcygwKSJdLFswLDEsInUiXSxbMSwyLCJ2Il0sWzUsNCwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsNSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsNl0sWzYsNSwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsOF0sWzgsNywiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiw0LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDcsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMCw5LCJ1X1xcYXN0Il0sWzMsMTFdXQ==
\begin{tikzcd}
	& {\mathfrak s(1_{X[1]})} & {\mathfrak{s}(\delta)} \\
	{\mathfrak s(w)} & X & Y & Z \\
	{\mathfrak s(0)} & 0 & Z & Z \\
	& {X[1]} & {X[1]}
	\arrow["{u_\ast}", from=1-2, to=1-3]
	\arrow[from=2-1, to=3-1]
	\arrow["u", from=2-2, to=2-3]
	\arrow[from=2-2, to=3-2]
	\arrow["v", from=2-3, to=2-4]
	\arrow[dashed, from=2-3, to=3-3]
	\arrow[equals, from=2-4, to=3-4]
	\arrow[dashed, from=3-2, to=3-3]
	\arrow[from=3-2, to=4-2]
	\arrow[dashed, from=3-3, to=3-4]
	\arrow[dashed, from=3-3, to=4-3]
	\arrow[equals, from=4-2, to=4-3]
\end{tikzcd}
	{% endtikz %}
	依照 $4 × 4$ 引理类似物, 得
	{% tikz %}
	% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiWCJdLFsxLDAsIlkiXSxbMiwwLCJaIl0sWzIsMSwiWiJdLFsxLDEsIloiXSxbMCwxLCIwIl0sWzEsMiwiWFsxXSJdLFswLDIsIlhbMV0iXSxbMywyLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzIsMywiXFxidWxsZXQiXSxbMywzLCJcXGJ1bGxldCJdLFswLDEsInUiLDJdLFsxLDIsInYiLDJdLFs0LDMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsNCwidiJdLFswLDVdLFs1LDRdLFs1LDddLFs3LDYsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw2LCJ3JyJdLFs5LDgsIih3JyleXFxhc3QiXSxbOSwxMCwiKFxcbWF0aHJte2lkfV9aKV5cXGFzdCIsMl0sWzgsMTEsIjFfe1hbMV19Il0sWzEwLDExLCJ3IiwyXSxbOSwxMSwiXFx0ZXh0e+WPjX0iLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
	X & Y & Z \\
	0 & Z & Z \\
	{X[1]} & {X[1]} & \bullet & \bullet \\
	&& \bullet & \bullet
	\arrow["u"', from=1-1, to=1-2]
	\arrow[from=1-1, to=2-1]
	\arrow["v"', from=1-2, to=1-3]
	\arrow["v", from=1-2, to=2-2]
	\arrow[equals, from=1-3, to=2-3]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-1, to=3-1]
	\arrow[equals, from=2-2, to=2-3]
	\arrow["{w'}", from=2-2, to=3-2]
	\arrow[equals, from=3-1, to=3-2]
	\arrow["{(w')^\ast}", from=3-3, to=3-4]
	\arrow["{(\mathrm{id}_Z)^\ast}"', from=3-3, to=4-3]
	\arrow["{\text{反}}"{description}, draw=none, from=3-3, to=4-4]
	\arrow["{1_{X[1]}}", from=3-4, to=4-4]
	\arrow["w"', from=4-3, to=4-4]
\end{tikzcd}
	{% endtikz %}
	反交换关系表明 $w' = -w$. 因此, $𝔰 (u_∗ (1_{X[1]})) =  [Y\xrightarrow v Z \xrightarrow {-w}X[1]]$. 依照米田引理计算得,
	$$\begin{equation}
	u_∗ 1_{X[1]} = (1_{X[1]})^!(u) ∼ \begin{bmatrix}(X,-) & → & (X[1] , - [1]) & = & (X[1] , - [1])\\ u & ↦ & u[1] & = & u[1] ∘ 1_{X[1]} \end{bmatrix}.
	\end{equation}$$
	因此, $𝔰 (u[1]) = [Y \xrightarrow v Z \xrightarrow {-w} X[1]]$. 依照 TR1-1, 得好三角的顺时针旋转.
5. (TR3). 二推三. 几乎是 ET2, ET3, ET3' 的定义.
6. (TR4). 八面体公理. 几乎是 ET4 的定义.
{% endthm %}
