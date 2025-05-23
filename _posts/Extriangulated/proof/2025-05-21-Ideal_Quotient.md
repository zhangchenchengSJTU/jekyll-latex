---
title: 外三角范畴的商
author: Chencheng Zhang
layout: post
category: note
---

## 证明


{% thm %}
([证明](Ideal_Quotient)). 给定外三角范畴 $(𝒞 , 𝔼 , 𝔰 )$. 若加法子范畴 $𝒳 ⊂ 𝐏𝐫𝐨𝐣 ∩ 𝐈𝐧𝐣$, 则 $𝒞 / 𝒳$ 也是外三角范畴, 且继承了外三角结构.

{% pf %}
依次验证 ET1 至 ET4. 统一用上划线表示商 Hom 与商群中的的态射.
1. (ET1). 对象层面, $\overline 𝔼 (Z,X) := 𝔼 (Z,X)$. 态射层面, $\overline{f_∗} := \overline f _∗$, 以及 $\overline {g^∗} := \overline g^∗$.
   - 由 $𝔼 (𝐏𝐫𝐨𝐣 , -)$ 与 $𝔼 (-, 𝐈𝐧𝐣 )$ 消失, 故 $𝔼$ 将 $\ker [\mathrm{Hom} → \underline{\mathrm{Hom}}]$ 映至 $0$, 进而可定义在 $(𝒞 / 𝒳)^{\mathrm{op}} × (𝒞 / 𝒳)$ 上. 由加法商, 以上定义的 $\overline 𝔼$ 确实是加法双函子.
2. (ET2). 定义对应 $\overline 𝔰 : \overline 𝔼 (Y,X) = 𝔼 (Y,X) → [Y,X] / ∼$. 其中, $[Y,X] / ∼$ 中对象形如 $[X \xrightarrow{\overline f} Y \xrightarrow{\overline g} Z]$. 这一对应仅是对象间的 (自始至终未要求 $𝔰$ 函子). 下验证 $\overline 𝔰$ 是 $(𝒞 / 𝒳 , \overline 𝔼 )$ 的加法实现.
   - 对应 $[Y, X] → [Y, X] / ∼$ 保持直和结构, 从而 $\overline 𝔰$ 保持零 (可裂短正合列) 以及映射链的直和.
   - 继而证明 $\overline 𝔰$ 是 $𝒞 / 𝒳$ 是加法实现, 关键是局部二推三. 给定商范畴的交换图
     {% tikz %}
     % https://q.uiver.app/#q=WzAsNixbMCwwLCJYIl0sWzIsMCwiWSJdLFs0LDAsIloiXSxbNCwxLCJaJyJdLFswLDEsIlgnIl0sWzIsMSwiWSciXSxbMCwxLCJcXG92ZXJsaW5lIHgiXSxbMSwyLCJcXG92ZXJsaW5lIHkiXSxbMiwzLCJcXG92ZXJsaW5lIGMiXSxbMCw0LCJcXG92ZXJsaW5lIGEiLDJdLFs0LDUsIlxcb3ZlcmxpbmUge3gnfSIsMl0sWzUsMywiXFxvdmVybGluZSB7eSd9IiwyXV0=
     \begin{tikzcd}[ampersand replacement=\&]
     X \&\& Y \&\& Z \\
     {X'} \&\& {Y'} \&\& {Z'}
     \arrow["{\overline x}", from=1-1, to=1-3]
     \arrow["{\overline a}"', from=1-1, to=2-1]
     \arrow["{\overline y}", from=1-3, to=1-5]
     \arrow["{\overline c}", from=1-5, to=2-5]
     \arrow["{\overline {x'}}"', from=2-1, to=2-3]
     \arrow["{\overline {y'}}"', from=2-3, to=2-5]
     \end{tikzcd}
     {% endtikz %}
     其上下横行是 $𝔼$ 中对象所在的等价类, 也就是某两个 $𝔼$-三角的像, 选定这两个 $𝔼$-三角. 由长正合列, 上下复合为 $0$, 因此任取 $a$ 与 $c$ 均能得到 $𝒞$ 中交换图. 由 $𝔰$ 是实现, 添加合适的 $Y → Y'$ 使得以上是 $𝒞$ 中交换图, 再放至 $𝒞 / 𝒳$ 中看即可.
3. (ET3). ET3' 的证明是对偶的 (使用投射对象的性质). 对 ET3, 任取商范畴的交换图
    {% tikz %}
    % https://q.uiver.app/#q=WzAsNixbMCwwLCJBIl0sWzIsMCwiQiJdLFs0LDAsIkMiXSxbNCwxLCJDJyJdLFswLDEsIkEnIl0sWzIsMSwiQiciXSxbMCwxLCJcXG92ZXJsaW5lIHgiXSxbMSwyLCJcXG92ZXJsaW5lIHkgIl0sWzAsNCwiXFxvdmVybGluZSBhIiwyXSxbNCw1LCJcXG92ZXJsaW5lIHt4J30iLDJdLFs1LDMsIlxcb3ZlcmxpbmUge3knfSIsMl0sWzEsNSwiXFxvdmVybGluZSBiIiwyXV0=
\begin{tikzcd}[ampersand replacement=\&]
    A \&\& B \&\& C \\
    {A'} \&\& {B'} \&\& {C'}
    \arrow["{\overline x}", from=1-1, to=1-3]
    \arrow["{\overline a}"', from=1-1, to=2-1]
    \arrow["{\overline y }", from=1-3, to=1-5]
    \arrow["{\overline b}"', from=1-3, to=2-3]
    \arrow["{\overline {x'}}"', from=2-1, to=2-3]
    \arrow["{\overline {y'}}"', from=2-3, to=2-5]
\end{tikzcd}
    {% endtikz %}
    原范畴中, 态射 $(x'a - bx)$ 通过内射对象 $I$ 分解. 原范畴中有 $𝔼$-三角的交换图
    {% tikz %}
    % https://q.uiver.app/#q=WzAsNixbMCwwLCJBIl0sWzIsMCwiQiBcXG9wbHVzIEkiXSxbMCwxLCJBJyJdLFsyLDEsIkInIl0sWzQsMCwiPyJdLFs0LDEsIkMnIl0sWzAsMiwiYSIsMl0sWzAsMSwiXFxiaW5vbSB4aSJdLFsyLDMsIngnIiwyXSxbMSwzLCIoYixqKSIsMl0sWzEsNF0sWzMsNSwieSciLDJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
    A \&\& {B \oplus I} \&\& {?} \\
    {A'} \&\& {B'} \&\& {C'}
    \arrow["{\binom xi}", from=1-1, to=1-3]
    \arrow["a"', from=1-1, to=2-1]
    \arrow[from=1-3, to=1-5]
    \arrow["{(b,j)}"', from=1-3, to=2-3]
    \arrow["{x'}"', from=2-1, to=2-3]
    \arrow["{y'}"', from=2-3, to=2-5]
\end{tikzcd}
    {% endtikz %}
    我们仅知道 $\binom xi$ 是 inflation, 我们需要将问好处的对象以及 deflation 取得好一些. 依照 EX3 类似物, 构造四个 $𝔼$-三角的交换图:
    {% tikz %}
    % https://q.uiver.app/#q=WzAsOCxbMCwxLCJBIl0sWzIsMSwiQiBcXG9wbHVzIEkiXSxbNCwxLCJNIl0sWzAsMiwiQSJdLFsyLDIsIkIiXSxbNCwyLCJDIl0sWzQsMCwiSSJdLFsyLDAsIkkiXSxbMCwxLCJcXGJpbm9tIHhpIl0sWzEsMiwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNCwieCJdLFs0LDUsInkiXSxbMCwzLCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDUsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs3LDYsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsMSwiZV8yIiwyXSxbMSw0LCJwXzEiLDJdLFs2LDIsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
    \&\& I \&\& I \\
    A \&\& {B \oplus I} \&\& M \\
    A \&\& B \&\& C
    \arrow[equals, from=1-3, to=1-5]
    \arrow["{e_2}"', from=1-3, to=2-3]
    \arrow[dashed, from=1-5, to=2-5]
    \arrow["{\binom xi}", from=2-1, to=2-3]
    \arrow[equals, from=2-1, to=3-1]
    \arrow[dashed, from=2-3, to=2-5]
    \arrow["{p_1}"', from=2-3, to=3-3]
    \arrow[dashed, from=2-5, to=3-5]
    \arrow["x", from=3-1, to=3-3]
    \arrow["y", from=3-3, to=3-5]
\end{tikzcd}
    {% endtikz %}
    由 $I$ 是内射对象, 右侧正合列可裂, 不妨取作直和项 (仅需调整 $B ⊕ I → C ⊕ I$ 处态射). 简单计算得
    {% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwxLCJBIl0sWzIsMSwiQiBcXG9wbHVzIEkiXSxbNCwxLCJDIFxcb3BsdXMgSSJdLFswLDIsIkEiXSxbMiwyLCJCIl0sWzQsMiwiQyJdLFs0LDAsIkkiXSxbMiwwLCJJIl0sWzAsMSwiXFxiaW5vbSB4aSJdLFsxLDIsIlxcYmlub20ge3kgXFwgXFwgXFwgXFwgeWogXFwgXFwgXFwgfXtyIFxcIFxcIDErcmp9Il0sWzMsNCwieCJdLFs0LDUsInkiXSxbMCwzLCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDUsInBfMSJdLFs3LDYsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsMSwiXFxiaW5vbSB7LWp9ezF9IiwyXSxbMSw0LCIoMSxqKSIsMl0sWzYsMiwiZV8yIl1d
\begin{tikzcd}[ampersand replacement=\&]
    \&\& I \&\& I \\
    A \&\& {B \oplus I} \&\& {C \oplus I} \\
    A \&\& B \&\& C
    \arrow[equals, from=1-3, to=1-5]
    \arrow["{\binom {-j}{1}}"', from=1-3, to=2-3]
    \arrow["{e_2}", from=1-5, to=2-5]
    \arrow["{\binom xi}", from=2-1, to=2-3]
    \arrow[equals, from=2-1, to=3-1]
    \arrow["{\binom {y \ \ \ yj \ \ }{r \ \ 1+rj}}", from=2-3, to=2-5]
    \arrow["{(1,j)}"', from=2-3, to=3-3]
    \arrow["{p_1}", from=2-5, to=3-5]
    \arrow["x", from=3-1, to=3-3]
    \arrow["y", from=3-3, to=3-5]
\end{tikzcd}
    {% endtikz %}
    其中, $r$ 是待定的系数. 回归原态射图:
    {% tikz %}
% https://q.uiver.app/#q=WzAsNixbMCwwLCJBIl0sWzIsMCwiQiBcXG9wbHVzIEkiXSxbNCwwLCJDIFxcb3BsdXMgSSJdLFswLDEsIkEnIl0sWzIsMSwiQiciXSxbNCwxLCJDJyJdLFswLDEsIlxcYmlub20geGkiXSxbMSwyLCJcXGJpbm9tIHt5IFxcIFxcIHlqIFxcIFxcIFxcIH17ciBcXCBcXCAxK3JqfSJdLFszLDQsIngnIl0sWzQsNSwieSciXSxbMiw1LCJjcF8xIl0sWzEsNCwiKGIsaikiLDJdLFswLDMsImEiLDJdXQ==
\begin{tikzcd}[ampersand replacement=\&]
    A \&\& {B \oplus I} \&\& {C \oplus I} \\
    {A'} \&\& {B'} \&\& {C'}
    \arrow["{\binom xi}", from=1-1, to=1-3]
    \arrow["a"', from=1-1, to=2-1]
    \arrow["{\binom {y \ \ yj \ \ \ }{r \ \ 1+rj}}", from=1-3, to=1-5]
    \arrow["{(b,j)}"', from=1-3, to=2-3]
    \arrow["{cp_1}", from=1-5, to=2-5]
    \arrow["{x'}", from=2-1, to=2-3]
    \arrow["{y'}", from=2-3, to=2-5]
\end{tikzcd}
    {% endtikz %}
    左侧交换, 右侧方块与相差一个态射
    $$\begin{equation}
    (y'b-cy, cyj-y'j): B ⊕ I → C.
    \end{equation}$$
    这一态射左侧经 $I$ 分解, 右侧亦然.
4. (ET4). 这是直接的. 取 $⊤$-型的两个 $\overline 𝔼$-三角, 找对应的 $𝔼$-三角. 在原范畴中使用 ET4, 得商范畴的 ET4.

{% endpf %}
{% endthm %}