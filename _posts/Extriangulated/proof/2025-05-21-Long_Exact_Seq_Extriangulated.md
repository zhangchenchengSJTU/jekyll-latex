---
title: 八面体公理的等价定义
author: Chencheng Zhang
layout: post
category: proof
---

## 证明

{% thm %}
(函子的同调长正合序列). 给定 $𝔼$-三角 $𝔰 (δ ) = [A\xrightarrow f B \xrightarrow g C]$, 则有六项反变函子的长正合列
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

{% pf %}
先看看 $(-,B)$ 处正合性.

1. 由函子性, $\ker (g ∘ - ) ⊇ \mathrm{im}(f ∘ -)$.
2. 若 $h ∈ \ker (g ∘ - )$, 则有 $𝔼$ 三角间的交换图
    {% tikz %}
    % https://q.uiver.app/#q=WzAsOCxbMiwxLCJCIl0sWzMsMSwiQyJdLFsyLDAsIlxcYnVsbGV0Il0sWzMsMCwiMCJdLFsxLDAsIlxcYnVsbGV0Il0sWzEsMSwiQSJdLFswLDEsIlxcLCJdLFs0LDEsIlxcLCJdLFswLDEsImciLDJdLFsyLDAsImgiLDJdLFsyLDNdLFszLDFdLFs0LDIsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsMCwiZiIsMl0sWzQsNSwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
    & \bullet & \bullet & 0 \\
    {\,} & A & B & C & {\,}
    \arrow[equals, from=1-2, to=1-3]
    \arrow[dashed, from=1-2, to=2-2]
    \arrow[from=1-3, to=1-4]
    \arrow["h"', from=1-3, to=2-3]
    \arrow[from=1-4, to=2-4]
    \arrow["f"', from=2-2, to=2-3]
    \arrow["g"', from=2-3, to=2-4]
\end{tikzcd}
    {% endtikz %}
    因此 $h ∈ \mathrm{im}(f ∘ -)$.

再看 $(-,C)$ 处正合性.
1. 对任意 $h ∈ \mathrm{im}(g ∘ - )$, 不妨记作 $g ∘ l$. 下证明 $δ_!(g ∘ l) = 0$. 由定义, 只需证明 $l^∗g^∗δ = 0$. 下图表明 $g^∗ δ =0_∗ (0)$:
    {% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMiwxLCJCIl0sWzMsMSwiQyJdLFsyLDAsIkIiXSxbMywwLCJCIl0sWzEsMCwiMCJdLFsxLDEsIkEiXSxbMCwxLCJcXCwiXSxbNCwxLCJcXCwiXSxbMCwxLCJnIiwyXSxbMywxLCJnIl0sWzUsMCwiZiIsMl0sWzQsNSwiMCIsMl0sWzQsMl0sWzIsMywiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwwLCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
    & 0 & B & B \\
    {\,} & A & B & C & {\,}
    \arrow[from=1-2, to=1-3]
    \arrow["0"', from=1-2, to=2-2]
    \arrow[equals, from=1-3, to=1-4]
    \arrow[equals, from=1-3, to=2-3]
    \arrow["g", from=1-4, to=2-4]
    \arrow["f"', from=2-2, to=2-3]
    \arrow["g"', from=2-3, to=2-4]
\end{tikzcd}
    {% endtikz %}
2. 若 $δ_!(h) = 0$, 下证明 $h$ 通过 $g$ 分解. 由 $𝔰(δ_!(h))$ 是可裂短正合列, 对于中项加上适当的同构, 得交换图
    {% tikz %}
    % https://q.uiver.app/#q=WzAsOCxbMiwxLCJCIl0sWzMsMSwiQyJdLFsyLDAsIkEgXFxvcGx1cyBcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzEsMCwiQSJdLFsxLDEsIkEiXSxbMCwxLCJcXCwiXSxbNCwxLCJcXCwiXSxbMCwxLCJnIiwyXSxbMywxLCJoIl0sWzUsMCwiZiIsMl0sWzQsMiwiZV8xIl0sWzQsNSwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwwLCJcXGJpbm9tIGZzIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsMywicF8yIl1d
\begin{tikzcd}
    & A & {A \oplus \bullet} & \bullet \\
    {\,} & A & B & C & {\,}
    \arrow["{e_1}", from=1-2, to=1-3]
    \arrow[equals, from=1-2, to=2-2]
    \arrow["{p_2}", from=1-3, to=1-4]
    \arrow["{\binom fs}"', dashed, from=1-3, to=2-3]
    \arrow["h", from=1-4, to=2-4]
    \arrow["f"', from=2-2, to=2-3]
    \arrow["g"', from=2-3, to=2-4]
\end{tikzcd}
    {% endtikz %}
    此处 $s$ 即为所求.

下证明 $𝔼 (- ,A)$ 处的正合性.

1. 对任意 $δ_!$ 的像, 即形如 $h^∗ δ$ 的正合列, 下证明 $f_∗(h^∗ δ) = 0$. 直接地, $f_∗ δ = 0$.
2. 若 $η ∈ 𝔼 (-, A)$ 满足 $f_∗ η = 0$, 下证明 $η$ 形如 $δ$ 的拉回. 仍不妨设 $f_∗ η$ 是直和形式, 则下图给出分解 $f = sa$:
    {% tikz %}
    % https://q.uiver.app/#q=WzAsOCxbMSwwLCJBIl0sWzIsMCwiRSJdLFszLDAsIlxcYnVsbGV0Il0sWzEsMSwiQiJdLFszLDEsIlxcYnVsbGV0Il0sWzIsMSwiQiBcXG9wbHVzIFxcYnVsbGV0Il0sWzAsMSwiXFwsIl0sWzQsMSwiXFwsIl0sWzAsMSwiYSJdLFsxLDIsInQiXSxbMCwzLCJmIiwyXSxbMiw0LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDUsImVfMSIsMl0sWzUsNCwicF8yIiwyXSxbMSw1LCJcXGJpbm9tIHN0IiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d
\begin{tikzcd}
    & A & E & \bullet \\
    {\,} & B & {B \oplus \bullet} & \bullet & {\,}
    \arrow["a", from=1-2, to=1-3]
    \arrow["f"', from=1-2, to=2-2]
    \arrow["t", from=1-3, to=1-4]
    \arrow["{\binom st}", dashed, from=1-3, to=2-3]
    \arrow[equals, from=1-4, to=2-4]
    \arrow["{e_1}"', from=2-2, to=2-3]
    \arrow["{p_2}"', from=2-3, to=2-4]
\end{tikzcd}
    {% endtikz %}
    由 $f$ 通过 $s$ 分解, ET3 给出的虚线处态射即为所求:
    {% tikz %}
    % https://q.uiver.app/#q=WzAsOCxbMSwxLCJBIl0sWzIsMSwiRSJdLFszLDEsIlxcYnVsbGV0Il0sWzAsMSwiXFwsIl0sWzQsMSwiXFwsIl0sWzEsMCwiQSJdLFsyLDAsIkIiXSxbMywwLCJDIl0sWzAsMSwiYSJdLFsxLDIsInQiXSxbNSwwLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDYsImYiXSxbNiw3LCJnIl0sWzIsNywiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsNiwicyJdXQ==
\begin{tikzcd}
    & A & B & C \\
    {\,} & A & E & \bullet & {\,}
    \arrow["f", from=1-2, to=1-3]
    \arrow[equals, from=1-2, to=2-2]
    \arrow["g", from=1-3, to=1-4]
    \arrow["a", from=2-2, to=2-3]
    \arrow["s", from=2-3, to=1-3]
    \arrow["t", from=2-3, to=2-4]
    \arrow[dashed, from=2-4, to=1-4]
\end{tikzcd}
    {% endtikz %}

最后考虑 $𝔼(-, B)$ 处的正合性.
1. 一方面, 函子性表明 $\mathrm{ker} (g_∗ )⊇ \mathrm{im}(f_∗)$.
2. 另一方面, 若 $g_∗ (η) = 0$, 则有交换图
    {% tikz %}
    % https://q.uiver.app/#q=WzAsMTAsWzEsMSwiQiJdLFsyLDEsIk0iXSxbMywxLCJcXGJ1bGxldCJdLFsxLDIsIkMiXSxbMiwyLCJDIFxcb3BsdXMgXFxidWxsZXQiXSxbMSwwLCJBIl0sWzMsMiwiXFxidWxsZXQiXSxbNCwyLCJcXCwiXSxbMCwyLCJcXCwiXSxbMCwxLCJcXGV0YSJdLFswLDEsInMiXSxbMSwyLCJyIl0sWzAsMywiZyIsMl0sWzUsMCwiZiIsMl0sWzEsNCwiXFxiaW5vbSBxciIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDQsImVfMSJdLFs0LDYsInBfMSJdLFsyLDYsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzksMCwiOiIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}
    & A \\
    \eta & B & M & \bullet \\
    {\,} & C & {C \oplus \bullet} & \bullet & {\,}
    \arrow["f"', from=1-2, to=2-2]
    \arrow["{:}"{marking, allow upside down}, draw=none, from=2-1, to=2-2]
    \arrow["s", from=2-2, to=2-3]
    \arrow["g"', from=2-2, to=3-2]
    \arrow["r", from=2-3, to=2-4]
    \arrow["{\binom qr}"', dashed, from=2-3, to=3-3]
    \arrow[equals, from=2-4, to=3-4]
    \arrow["{e_1}", from=3-2, to=3-3]
    \arrow["{p_1}", from=3-3, to=3-4]
\end{tikzcd}
    {% endtikz %}
    此时, 依照 ET4 补全四个 $𝔼$-三角的交换图
    {% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzEsMSwiQiJdLFsyLDEsIk0iXSxbMywxLCJcXGJ1bGxldCJdLFsxLDIsIkMiXSxbMiwyLCJDIl0sWzEsMCwiQSJdLFs0LDIsIlxcLCJdLFswLDIsIlxcLCJdLFswLDEsIlxcZXRhIl0sWzMsMCwiXFxidWxsZXQiXSxbMiwwLCJOIl0sWzAsMCwiXFxrYXBwYSJdLFswLDEsInMiXSxbMSwyLCJyIl0sWzAsMywiZyIsMl0sWzUsMCwiZiIsMl0sWzEsNCwicSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs4LDAsIjoiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMyw0LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDIsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsMTAsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMCw5LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTAsMSwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzExLDUsIjoiLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
    \kappa & A & N & \bullet \\
    \eta & B & M & \bullet \\
    {\,} & C & C && {\,}
    \arrow["{:}"{marking, allow upside down}, draw=none, from=1-1, to=1-2]
    \arrow[dashed, from=1-2, to=1-3]
    \arrow["f"', from=1-2, to=2-2]
    \arrow[dashed, from=1-3, to=1-4]
    \arrow[dashed, from=1-3, to=2-3]
    \arrow[equals, from=1-4, to=2-4]
    \arrow["{:}"{marking, allow upside down}, draw=none, from=2-1, to=2-2]
    \arrow["s", from=2-2, to=2-3]
    \arrow["g"', from=2-2, to=3-2]
    \arrow["r", from=2-3, to=2-4]
    \arrow["q"', dashed, from=2-3, to=3-3]
    \arrow[equals, from=3-2, to=3-3]
\end{tikzcd}
    {% endtikz %}
    此处 $f_∗ κ = η$.

{% endpf %}

{% endthm %}