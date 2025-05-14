---
title: 正合范畴的重要结论 (精简版)
author: Chencheng Zhang
layout: post
category: notes
---

## 定义

{% def %}
(Quillen 定义). 正合范畴记作 $(𝒜 , ℰ)$. $𝒜$ 是加法范畴, $ℰ$ 是满足如下性质对同构封闭的的 kernel-coker 对 $(i,d)$.

> 以上 $\ker d = i$, 且 $\mathrm{cok} i = d$.

- (EX 0). 任意 $\mathrm{0}_X ∈ 𝐢𝐧𝐟$;
- (EX 0'). 任意 $\mathrm{0}_X ∈ 𝐝𝐞𝐟$;
- (EX 1). 全体 $𝐢𝐧𝐟$ 对合成封闭;
- (EX 1'). 全体 $𝐝𝐞𝐟$ 对合成封闭;
- (EX 2). 任意 $𝐢𝐧𝐟$ 关于任意态射的推出总是 $𝐢𝐧𝐟$;
- (EX 2'). 任意 $𝐝𝐞𝐟$ 关于任意态射的拉回总是 $𝐝𝐞𝐟$.

{% enddef %}

{% note %}
EX0, EX1, EX2, EX2' 推导出其余条件.
{% endnote %}

{% def %}

通用名称:

|对象 (描述) | 名称 1 | 名称 2 | 记号 |
|---|---|---|---|
|ker-cok 对|conflation|admissible ses|$(i,d)$|
|好的 ker 态射|inflation|admissible monic|$↣$|
|好的 cok 态射|deflation|admissible epic|$↠$|
|好的满-单合成|regular morphism|admissible morphism|$⇒$|

{% enddef %}

## 例子

{% prop %}
简单结论.

- $0 → X ≃ Y$ 与 $X ≃ Y → 0$ 属于 $ℰ$;
- 可裂 ses 含于 $ℰ$;
- $ℰ ⊕ ℰ ⊆ ℰ$;
- $𝐢𝐧𝐟$ 未必单, 但满的 $𝐢𝐧𝐟$ 等价于同构;
- $𝐝𝐞𝐟$ 未必满, 但单的 $𝐝𝐞𝐟$ 等价于同构;

{% endprop %}

{% ex %}
Heller 构造.

- (Heller). $(ℰ , ℱ)$ 是正合范畴, $ℱ$ 选 $3 × 3$ 态射 (六条 conflation).
- 此构造未必保持 Abel 范畴.
- (Hulher). 以上结论推广至小 diagram.

{% endex %}

{% prop %}
以下是原始的正合范畴的 EX3 (EX3') 公理, 可证明由其他推出.

- 若 $f$ 有 $\mathrm{cok}$, 则 $[gf ∈ 𝐢𝐧𝐟] ⟹ [f ∈ 𝐢𝐧𝐟]$;
- 若 $g$ 有 $\mathrm{ker}$, 则 $[gf ∈ 𝐝𝐞𝐟] ⟹ [g ∈ 𝐝𝐞𝐟]$.

{% endprop %}

## 交换方块

{% prop %}
(交换方块). 给定 EX 2 中 $𝐢𝐧𝐟$ 对应的推出 {% tikzinline %} % https://q.uiver.app/#q=WzAsNCxbMCwwLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbMCwxLCJcXGJ1bGxldCJdLFswLDEsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMSwyXSxbMCwzXSxbMywyLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzAsMiwiXFx0ZXh0e1BCfSIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==
\begin{tikzcd}[ampersand replacement=\&]
	\bullet \& \bullet \\
	\bullet \& \bullet
	\arrow[tail, from=1-1, to=1-2]
	\arrow[from=1-1, to=2-1]
	\arrow["{\text{PB}}"{marking, allow upside down}, draw=none, from=1-1, to=2-2]
	\arrow[from=1-2, to=2-2]
	\arrow[tail, from=2-1, to=2-2]
\end{tikzcd} {% endtikzinline %}, 以下等价.

1. 这是拉回;
2. 这是推出拉回;
3. 存在 ses (下图上)
   {% tikz %}
% https://q.uiver.app/#q=WzAsMTEsWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzEsMiwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFszLDIsIlxcYnVsbGV0Il0sWzEsMCwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldFxcb3BsdXMgXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFswLDIsIlxcLCJdLFs0LDIsIlxcLCJdLFswLDEsImkiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsMiwiZiciXSxbMCwzLCJmIl0sWzMsMiwiaSciLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzIsNSwiZCciLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNCw1LCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDQsImQiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNiw3LCJcXGJpbm9tIGlmIl0sWzcsOCwiKGYnLC1pKSJdXQ==
\begin{tikzcd}
	& \bullet & {\bullet\oplus \bullet} & \bullet \\
	& \bullet & \bullet & \bullet \\
	{\,} & \bullet & \bullet & \bullet & {\,}
	\arrow["{\binom if}", from=1-2, to=1-3]
	\arrow["{(f',-i)}", from=1-3, to=1-4]
	\arrow["i", tail, from=2-2, to=2-3]
	\arrow["f", from=2-2, to=3-2]
	\arrow["d", two heads, from=2-3, to=2-4]
	\arrow["{f'}", from=2-3, to=3-3]
	\arrow[equals, from=2-4, to=3-4]
	\arrow["{i'}", tail, from=3-2, to=3-3]
	\arrow["{d'}", two heads, from=3-3, to=3-4]
\end{tikzcd}
   {% endtikz %}
4. 可向右补全作 $𝐜𝐨𝐧$ 的交换图 (上图下).
{% endprop %}

{% note %}
称以上为 $𝐜𝐨𝐧$ 的推出 (固定尾, 推出首). 对偶地, 给出两种推出拉回
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiXFxidWxsZXQiXSxbMCwxLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzEsMCwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzUsMSwiXFxidWxsZXQiXSxbNCwwLCJcXGJ1bGxldCJdLFs1LDAsIlxcYnVsbGV0Il0sWzAsMV0sWzEsMiwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFswLDMsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMywyXSxbMyw0LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNCw1LCIiLDIseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDUsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs2LDcsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsOCwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFs4LDksIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs2LDEwLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEwLDExLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMTEsOV0sWzEwLDhdLFswLDIsIlxcdGV4dHtQQlBPfSIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMCw5LCJcXHRleHR7UEJQT30iLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
	\bullet & \bullet & \bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet & \bullet
	\arrow[tail, from=1-1, to=1-2]
	\arrow[from=1-1, to=2-1]
	\arrow["{\text{PBPO}}"{marking, allow upside down}, draw=none, from=1-1, to=2-2]
	\arrow[two heads, from=1-2, to=1-3]
	\arrow[from=1-2, to=2-2]
	\arrow[equals, from=1-3, to=2-3]
	\arrow[tail, from=1-4, to=1-5]
	\arrow[equals, from=1-4, to=2-4]
	\arrow[two heads, from=1-5, to=1-6]
	\arrow[from=1-5, to=2-5]
	\arrow["{\text{PBPO}}"{marking, allow upside down}, draw=none, from=1-5, to=2-6]
	\arrow[from=1-6, to=2-6]
	\arrow[tail, from=2-1, to=2-2]
	\arrow[two heads, from=2-2, to=2-3]
	\arrow[tail, from=2-4, to=2-5]
	\arrow[two heads, from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}
{% endnote %}

{% thm %}
($𝐜𝐨𝐧$ 的态射分解). 给定 conflation 间的态射,
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMSwwLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMiwwLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbMCwxLCJcXCwiXSxbNCwxLCJcXCwiXSxbMCwxLCJcXGFscGhhIl0sWzEsMiwiaSciLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzAsMywiaSIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMywyLCJcXGJldGEiXSxbMyw0LCJkIl0sWzQsNSwiXFxnYW1tYSJdLFsyLDUsImQnIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV1d
\begin{tikzcd}[ampersand replacement=\&]
	\& \bullet \& \bullet \& \bullet \\
	{\,} \& \bullet \& \bullet \& \bullet \& {\,}
	\arrow["i", tail, from=1-2, to=1-3]
	\arrow["\alpha", from=1-2, to=2-2]
	\arrow["d", from=1-3, to=1-4]
	\arrow["\beta", from=1-3, to=2-3]
	\arrow["\gamma", from=1-4, to=2-4]
	\arrow["{i'}", tail, from=2-2, to=2-3]
	\arrow["{d'}", two heads, from=2-3, to=2-4]
\end{tikzcd}
{% endtikz %}

有以下结论

1. $γ$ 由 $α$ 与 $β$ 唯一决定;
2. $α$ 由 $β$ 与 $γ$ 唯一决定;
3. 任意 $𝐜𝐨𝐧$ 间的态射通过 $𝐜𝐨𝐧$ 分解, 使得以下两处是推出拉回方块:
   {% tikz %}
   % https://q.uiver.app/#q=WzAsMTEsWzEsMCwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFszLDIsIlxcYnVsbGV0Il0sWzAsMSwiXFwsIl0sWzQsMSwiXFwsIl0sWzMsMSwiXFxidWxsZXQiXSxbMSwyLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzAsMSwiXFxhbHBoYSJdLFswLDMsImkiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzMsNCwiZCJdLFsyLDUsImQnIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzgsNSwiXFxnYW1tYSJdLFs0LDgsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsOSwiIiwwLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOSwyLCJpJyIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMSwxMCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxMCw4LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMywxMF0sWzEwLDJdLFswLDEwLCJcXHRleHR7UEJQT30iLDMseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJub25lIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTAsNSwiXFx0ZXh0e1BCUE99IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
   \begin{tikzcd}
   	& \bullet & \bullet & \bullet \\
   	{\,} & \bullet & \bullet & \bullet & {\,} \\
   	& \bullet & \bullet & \bullet
   	\arrow["i", tail, from=1-2, to=1-3]
   	\arrow["\alpha", from=1-2, to=2-2]
   	\arrow["{\text{PBPO}}"{marking, allow upside down}, draw=none, from=1-2, to=2-3]
   	\arrow["d", from=1-3, to=1-4]
   	\arrow[from=1-3, to=2-3]
   	\arrow[equals, from=1-4, to=2-4]
   	\arrow[tail, from=2-2, to=2-3]
   	\arrow[equals, from=2-2, to=3-2]
   	\arrow[two heads, from=2-3, to=2-4]
   	\arrow[from=2-3, to=3-3]
   	\arrow["{\text{PBPO}}"{marking, allow upside down}, draw=none, from=2-3, to=3-4]
   	\arrow["\gamma", from=2-4, to=3-4]
   	\arrow["{i'}", tail, from=3-2, to=3-3]
   	\arrow["{d'}", two heads, from=3-3, to=3-4]
   \end{tikzcd}
   {% endtikz %}
4. 若 $α$ 与 $γ$ 是同构, 则 $β$ 必然是同构;
5. 若 $α$ 与 $γ$ 决定 $β$, 则 $β$ 在前后复合同构的意义下是唯一的.
{% endthm %}

{% thm %}
(双). 两个 $𝐝𝐞𝐟$ 的拉回是推出拉回, 同时也是四个 $𝐜𝐨𝐧$ 的交换图; 对称地, 两个 $𝐢𝐧𝐟$ 的拉回是推出拉回, 同时也是四个 $𝐜𝐨𝐧$ 的交换图.

{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzIsMCwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzAsMiwiXFxidWxsZXQiXSxbMSwyLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbMSwwLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFs0LDAsIlxcYnVsbGV0Il0sWzUsMCwiXFxidWxsZXQiXSxbNSwxLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzQsMiwiXFxidWxsZXQiXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsMiwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsNCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFs0LDIsIiIsMSx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs1LDMsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsNiwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFs2LDEsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs2LDQsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs3LDYsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbNywwLCIiLDAseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs4LDksIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbOSwxMCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzgsMTEsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMTEsMTIsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxMiwxMywiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOSwxNCwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxNCwxMywiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzExLDE0LCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzE0LDE1LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMTAsMTUsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMiwiXFx0ZXh0e1BCfSIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs4LDE0LCJcXHRleHR7UE99IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}
	& \bullet & \bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet
	\arrow[equals, from=1-2, to=1-3]
	\arrow[tail, from=1-2, to=2-2]
	\arrow[tail, from=1-3, to=2-3]
	\arrow[tail, from=1-4, to=1-5]
	\arrow[tail, from=1-4, to=2-4]
	\arrow["{\text{PO}}"{marking, allow upside down}, draw=none, from=1-4, to=2-5]
	\arrow[two heads, from=1-5, to=1-6]
	\arrow[tail, from=1-5, to=2-5]
	\arrow[equals, from=1-6, to=2-6]
	\arrow[tail, from=2-1, to=2-2]
	\arrow[equals, from=2-1, to=3-1]
	\arrow[two heads, from=2-2, to=2-3]
	\arrow[two heads, from=2-2, to=3-2]
	\arrow["{\text{PB}}"{marking, allow upside down}, draw=none, from=2-2, to=3-3]
	\arrow[two heads, from=2-3, to=3-3]
	\arrow[tail, from=2-4, to=2-5]
	\arrow[two heads, from=2-4, to=3-4]
	\arrow[two heads, from=2-5, to=2-6]
	\arrow[two heads, from=2-5, to=3-5]
	\arrow[tail, from=3-1, to=3-2]
	\arrow[two heads, from=3-2, to=3-3]
	\arrow[equals, from=3-4, to=3-5]
\end{tikzcd}
{% endtikz %}
{% endthm %}

{% prop %}
(Kunzer, EX 3 的特殊形式). 若有左侧交换图, 或是右侧的满态射方块 (上一定理), 则能补全作以下四条 $𝐜𝐨𝐧$ 的交换图:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTUsWzAsMSwiXFxidWxsZXQiXSxbMCwyLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzEsMiwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFsyLDIsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzQsMiwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFs0LDAsIlxcYnVsbGV0Il0sWzUsMiwiXFxidWxsZXQiXSxbNiwyLCJcXGJ1bGxldCJdLFs2LDEsIlxcYnVsbGV0Il0sWzAsMSwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwyLCJcXHRleHR76YCa5bi45oCB5bCEfSJdLFsxLDMsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMiwzLCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNCw1LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDYsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbNiw3LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNSw3LCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzYsOCwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzcsOSwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzgsOSwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzEwLDYsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMTAsMTEsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzExLDgsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMTIsMTMsIiIsMSx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxNCwxMywiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV1d
\begin{tikzcd}
	&&& \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet && \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet
	\arrow[equals, from=1-4, to=1-5]
	\arrow[tail, from=1-4, to=2-4]
	\arrow[tail, from=1-5, to=2-5]
	\arrow["{\text{通常态射}}", from=2-1, to=2-2]
	\arrow[equals, from=2-1, to=3-1]
	\arrow[two heads, from=2-2, to=3-2]
	\arrow[tail, from=2-3, to=2-4]
	\arrow[equals, from=2-3, to=3-3]
	\arrow[two heads, from=2-4, to=2-5]
	\arrow[two heads, from=2-4, to=3-4]
	\arrow[two heads, from=2-5, to=3-5]
	\arrow[two heads, from=2-7, to=3-7]
	\arrow[tail, from=3-1, to=3-2]
	\arrow[tail, from=3-3, to=3-4]
	\arrow[two heads, from=3-4, to=3-5]
	\arrow[two heads, from=3-6, to=3-7]
\end{tikzcd}
{% endtikz %}
{% endprop %}

{% thm %}
($𝐢𝐧𝐟 + 𝐝𝐞𝐟 = PBPO$). 任意左侧类型推出与右侧类型的拉回, 均能补全作中间类型的推出拉回方块.
{% tikz %}
% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiXFxidWxsZXQiXSxbMSwwLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbNSwwLCJcXGJ1bGxldCJdLFs1LDEsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFs0LDAsIlxcYnVsbGV0Il0sWzAsMSwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzAsMiwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFszLDQsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbNCw1LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMyw2LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNiw1LCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzcsOCwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFs5LDgsIiIsMSx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxLDEwLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMiwxMCwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzExLDcsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxMSw5LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMCwxMCwiXFx0ZXh0e1BPfSIsMyx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6Im5vbmUifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxMSw4LCJcXHRleHR7UEJ9IiwzLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}
	\bullet & \bullet & \bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet & \bullet
	\arrow[two heads, from=1-1, to=1-2]
	\arrow[tail, from=1-1, to=2-1]
	\arrow["{\text{PO}}"{marking, allow upside down}, draw=none, from=1-1, to=2-2]
	\arrow[dotted, from=1-2, to=2-2]
	\arrow[two heads, from=1-3, to=1-4]
	\arrow[tail, from=1-3, to=2-3]
	\arrow[tail, from=1-4, to=2-4]
	\arrow[dotted, from=1-5, to=1-6]
	\arrow[dotted, from=1-5, to=2-5]
	\arrow["{\text{PB}}"{marking, allow upside down}, draw=none, from=1-5, to=2-6]
	\arrow[tail, from=1-6, to=2-6]
	\arrow[dotted, from=2-1, to=2-2]
	\arrow[two heads, from=2-3, to=2-4]
	\arrow[two heads, from=2-5, to=2-6]
\end{tikzcd}
{% endtikz %}
特别地, 这也给出了以下类型的四条正合列的交换图
{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzIsMCwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbNCwxLCJcXCwiXSxbMSwxLCJcXGJ1bGxldCJdLFswLDEsIlxcLCJdLFsxLDAsIlxcYnVsbGV0Il0sWzIsMiwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFswLDEsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMSwyLCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMCwzLCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMywyLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzUsMSwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFs3LDAsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMSw4LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMiw5LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbOCw5LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs3LDUsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
\begin{tikzcd}
	& \bullet & \bullet & \bullet \\
	{\,} & \bullet & \bullet & \bullet & {\,} \\
	&& \bullet & \bullet
	\arrow[tail, from=1-2, to=1-3]
	\arrow[equals, from=1-2, to=2-2]
	\arrow[two heads, from=1-3, to=1-4]
	\arrow[tail, from=1-3, to=2-3]
	\arrow[tail, from=1-4, to=2-4]
	\arrow[tail, from=2-2, to=2-3]
	\arrow[two heads, from=2-3, to=2-4]
	\arrow[two heads, from=2-3, to=3-3]
	\arrow[two heads, from=2-4, to=3-4]
	\arrow[equals, from=3-3, to=3-4]
\end{tikzcd}
{% endtikz %}

{% endthm %}

{% thm %}
(Noether 同构). 给定 $𝐢𝐧𝐟$ 的初始资料 (下图左) 与 $𝐝𝐞𝐟$ 的初始资料 (下图右), 则有四处 $𝐜𝐨𝐧$ 的交换图:

{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzMsMCwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzQsMCwiXFxidWxsZXQiXSxbNiwxLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFs0LDIsIlxcYnVsbGV0Il0sWzAsMCwiXFxidWxsZXQiXSxbMSwwLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbNSwxLCJcXGJ1bGxldCJdLFs1LDIsIlxcYnVsbGV0Il0sWzYsMiwiXFxidWxsZXQiXSxbMCwxLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsMiwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzAsMywiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsMiwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFs1LDEsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbNiwwLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsNywiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzIsOCwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzcsOCwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiw1LCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs5LDEwLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEwLDEyLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzExLDEyLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzksMTEsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEzLDE0LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMTMsNCwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsMTUsIiIsMSx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxNSwxNCwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
\begin{tikzcd}
	\bullet & \bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet \\
	&&& \bullet & \bullet & \bullet & \bullet
	\arrow[tail, from=1-1, to=1-2]
	\arrow[equals, from=1-1, to=2-1]
	\arrow[tail, from=1-2, to=2-2]
	\arrow[tail, from=1-3, to=1-4]
	\arrow[equals, from=1-3, to=2-3]
	\arrow[two heads, from=1-4, to=1-5]
	\arrow[tail, from=1-4, to=2-4]
	\arrow[tail, from=1-5, to=2-5]
	\arrow[tail, from=2-1, to=2-2]
	\arrow[tail, from=2-3, to=2-4]
	\arrow[two heads, from=2-4, to=2-5]
	\arrow[two heads, from=2-4, to=3-4]
	\arrow[two heads, from=2-5, to=3-5]
	\arrow[two heads, from=2-6, to=2-7]
	\arrow[two heads, from=2-6, to=3-6]
	\arrow[two heads, from=2-7, to=3-7]
	\arrow[equals, from=3-4, to=3-5]
	\arrow[equals, from=3-7, to=3-6]
\end{tikzcd}
{% endtikz %}
{% endthm %}

{% thm %}
以上均是特殊的 $3 × 3$ 引理的使用. 一般地, 假定以下各行 ($r_∙$) 是 $𝐜𝐨𝐧$

{% tikz %}
% https://q.uiver.app/#q=WzAsMTUsWzEsMSwiQV8xIl0sWzIsMSwiQl8xIl0sWzEsMiwiQV8yIl0sWzIsMiwiQl8yIl0sWzMsMSwiQ18xIl0sWzMsMiwiQ18yIl0sWzAsMSwiY18xIl0sWzAsMiwiY18yIl0sWzAsMywiY18zIl0sWzEsMywiQV8zIl0sWzIsMywiQl8zIl0sWzMsMywiQ18zIl0sWzEsMCwicl8xIl0sWzIsMCwicl8yIl0sWzMsMCwicl8zIl0sWzIsMywiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFswLDEsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMSw0LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMyw1LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbOSwxMCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxMCwxMSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzAsMiwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsOSwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsMywiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzQsNSwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzUsMTEsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDEwLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
\begin{tikzcd}[ampersand replacement=\&]
	\& {r_1} \& {r_2} \& {r_3} \\
	{c_1} \& {A_1} \& {B_1} \& {C_1} \\
	{c_2} \& {A_2} \& {B_2} \& {C_2} \\
	{c_3} \& {A_3} \& {B_3} \& {C_3}
	\arrow[tail, from=2-2, to=2-3]
	\arrow[dashed, from=2-2, to=3-2]
	\arrow[two heads, from=2-3, to=2-4]
	\arrow[dashed, from=2-3, to=3-3]
	\arrow[dashed, from=2-4, to=3-4]
	\arrow[tail, from=3-2, to=3-3]
	\arrow[dashed, from=3-2, to=4-2]
	\arrow[two heads, from=3-3, to=3-4]
	\arrow[dashed, from=3-3, to=4-3]
	\arrow[dashed, from=3-4, to=4-4]
	\arrow[tail, from=4-2, to=4-3]
	\arrow[two heads, from=4-3, to=4-4]
\end{tikzcd}
{% endtikz %}

则有如下结论:

- 若存在 $𝐜𝐨𝐧$ $c_1$ 与 $c_2$ 使得相应方块交换, 则存在唯一的 $𝐜𝐨𝐧$ $c_3$ 使得相应方块交换.
- 若存在 $𝐜𝐨𝐧$ $c_3$ 与 $c_2$ 使得相应方块交换, 则存在唯一的 $𝐜𝐨𝐧$ $c_1$ 使得相应方块交换.
- 若存在 $𝐜𝐨𝐧$ $c_1$ 与 $c_3$ 使得相应方块交换, 且 $c_2$ 复合为零, 则 $c_2$ 是 $𝐜𝐨𝐧$.
{% endthm %}

## 幂等完备, 弱幂等完备

{% def %}
称加法范畴 $𝒜$ 是

- 幂等完备的, 若以下等价条件成立:
  - 任意幂等自同态 $e^2 = e$ 有核,
  - 任意幂等自同态 $e^2 = e$ 有余核,
  - 任意幂等自同态 $e^2 = e$ 可写作矩阵形式 $\binom{I \ \ O}{O \ \ O}$.
- 弱幂等完备的, 若以下等价条件成立:
  - 若 $f$ 有左逆元, 则 $f$ 是可裂单,
  - 若 $f$ 有右逆元, 则 $f$ 是可裂满,
  - (正合范畴特有). 可裂单是 $𝐢𝐧𝐟$,
  - (正合范畴特有). 可裂满是 $𝐝𝐞𝐟$,
  - (正合范畴特有). 若 $gf ∈ 𝐝𝐞𝐟$, 则 $g ∈ 𝐝𝐞𝐟$,
  - (正合范畴特有). 若 $gf ∈ 𝐢𝐧𝐟$, 则 $g ∈ 𝐢𝐧𝐟$,

{% enddef %}

{% note %}
弱幂等完备严格弱于幂等完备, 例如偶数维有限线性空间范畴是弱幂等完备的, 但非幂等完备.

- 通俗地说, 弱幂等完备类似模的直和分解, 幂等完备类似环的直和分解.

{% endnote %}

## 同调引理

{% def %}
称 $f$ 是 admissible 态射, 若 $f ∈ 𝐢𝐧𝐟 ∘ 𝐜𝐨𝐟$, 记作 $⇒$. 类似满-单分解.
{% enddef %}

{% lem %}
(所谓满-单分解唯一). 将 $⇒$ 的拆解在同构意义下唯一. 换言之, 以下交换图中总能引入虚线的同构态射, 使得两个三角交换.
{% tikz %}
% https://q.uiver.app/#q=WzAsNixbMSwwLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFswLDEsIlxcLCJdLFszLDEsIlxcLCJdLFswLDEsIiIsMSx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxLDIsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMCwzLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzMsMiwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsMSwiXFxzaW1lcSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
\begin{tikzcd}
	& \bullet & \bullet \\
	{\,} & \bullet & \bullet & {\,}
	\arrow[two heads, from=1-2, to=1-3]
	\arrow[tail, from=1-2, to=2-2]
	\arrow[tail, from=1-3, to=2-3]
	\arrow["\simeq"{description}, dashed, from=2-2, to=1-3]
	\arrow[two heads, from=2-2, to=2-3]
\end{tikzcd}
{% endtikz %}
{% endlem %}

{% lem %}
Admissible 映射关于单态射的拉回以及满态射的推出封闭.
{% endlem %}

{% lem %}
若所有态射均 admissible, 则该正合范畴是 Abel 范畴.
{% endlem %}

{% def %}
类似地, 称 $A ⇒ B ⇒ C$ 是正合列, 若分解 $A ↠ X ↣ B ↠ Y ↣ C$ 给出 $[X ↣ B ↠ Y] ∈ ℰ$.
{% enddef %}

{% thm %}
(五引理). 若下图横行正合, 竖向 (除中间列) 是同构, 则竖向态射是同构.
{% tikz %}
% https://q.uiver.app/#q=WzAsMTAsWzAsMCwiXFxidWxsZXQiXSxbMSwwLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbNCwwLCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbMCwxLCIiLDAseyJsZXZlbCI6Mn1dLFsxLDIsIiIsMCx7ImxldmVsIjoyfV0sWzIsMywiIiwwLHsibGV2ZWwiOjJ9XSxbMyw0LCIiLDAseyJsZXZlbCI6Mn1dLFs0LDUsIlxcc2ltZXEiXSxbMCw2LCJcXHNpbWVxIl0sWzYsNywiIiwwLHsibGV2ZWwiOjJ9XSxbNyw4LCIiLDAseyJsZXZlbCI6Mn1dLFs4LDksIiIsMCx7ImxldmVsIjoyfV0sWzksNSwiIiwwLHsibGV2ZWwiOjJ9XSxbMSw3LCJcXHNpbWVxIl0sWzIsOF0sWzMsOSwiXFxzaW1lcSJdXQ==
\begin{tikzcd}
	\bullet & \bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet
	\arrow[Rightarrow, from=1-1, to=1-2]
	\arrow["\simeq", from=1-1, to=2-1]
	\arrow[Rightarrow, from=1-2, to=1-3]
	\arrow["\simeq", from=1-2, to=2-2]
	\arrow[Rightarrow, from=1-3, to=1-4]
	\arrow[from=1-3, to=2-3]
	\arrow[Rightarrow, from=1-4, to=1-5]
	\arrow["\simeq", from=1-4, to=2-4]
	\arrow["\simeq", from=1-5, to=2-5]
	\arrow[Rightarrow, from=2-1, to=2-2]
	\arrow[Rightarrow, from=2-2, to=2-3]
	\arrow[Rightarrow, from=2-3, to=2-4]
	\arrow[Rightarrow, from=2-4, to=2-5]
\end{tikzcd}
{% endtikz %}
{% endthm %}

以上定理不需要幂等完备条件.
\\
\\
以下定理需要幂等完备条件.

{% thm %}

若有以下交换图, 则 $? ∈ 𝐢𝐧𝐟$:
{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFswLDEsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFszLDEsIlxcYnVsbGV0Il0sWzAsMSwiIiwwLHsibGV2ZWwiOjJ9XSxbMSwyLCIiLDAseyJsZXZlbCI6Mn1dLFsyLDMsIiIsMCx7ImxldmVsIjoyfV0sWzAsNCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsNSwiIiwwLHsibGV2ZWwiOjJ9XSxbNSw2LCIiLDAseyJsZXZlbCI6Mn1dLFs2LDcsIiIsMCx7ImxldmVsIjoyfV0sWzEsNSwiXFxzaW1lcSJdLFsyLDYsIj8iLDFdLFszLDcsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XV0=
\begin{tikzcd}
	\bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet
	\arrow[Rightarrow, from=1-1, to=1-2]
	\arrow[two heads, from=1-1, to=2-1]
	\arrow[Rightarrow, from=1-2, to=1-3]
	\arrow["\simeq", from=1-2, to=2-2]
	\arrow[Rightarrow, from=1-3, to=1-4]
	\arrow["{?}"{description}, from=1-3, to=2-3]
	\arrow[tail, from=1-4, to=2-4]
	\arrow[Rightarrow, from=2-1, to=2-2]
	\arrow[Rightarrow, from=2-2, to=2-3]
	\arrow[Rightarrow, from=2-3, to=2-4]
\end{tikzcd}
{% endtikz %}

若有以下交换图, 则 $? ∈ 𝐝𝐞𝐟$:

{% tikz %}
% https://q.uiver.app/#q=WzAsOCxbMCwwLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMCwxLCJcXGJ1bGxldCJdLFsxLDEsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMywxLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzAsMSwiIiwwLHsibGV2ZWwiOjJ9XSxbMSwyLCIiLDAseyJsZXZlbCI6Mn1dLFszLDQsIiIsMCx7ImxldmVsIjoyfV0sWzQsNSwiIiwwLHsibGV2ZWwiOjJ9XSxbMCwzLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMSw0LCI/IiwxXSxbMiw1LCJcXHNpbWVxIl0sWzUsNiwiIiwwLHsibGV2ZWwiOjJ9XSxbMiw3LCIiLDAseyJsZXZlbCI6Mn1dLFs3LDYsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XV0=
\begin{tikzcd}
	\bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet
	\arrow[Rightarrow, from=1-1, to=1-2]
	\arrow[two heads, from=1-1, to=2-1]
	\arrow[Rightarrow, from=1-2, to=1-3]
	\arrow["{?}"{description}, from=1-2, to=2-2]
	\arrow[Rightarrow, from=1-3, to=1-4]
	\arrow["\simeq", from=1-3, to=2-3]
	\arrow[tail, from=1-4, to=2-4]
	\arrow[Rightarrow, from=2-1, to=2-2]
	\arrow[Rightarrow, from=2-2, to=2-3]
	\arrow[Rightarrow, from=2-3, to=2-4]
\end{tikzcd}
{% endtikz %}

{% endthm %}

{% thm %}
(六引理). 若中间三角是 admissible 态射的合成, 则有外周的六项正合列:
{% tikz %}
% https://q.uiver.app/#q=WzAsOSxbMSwyLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzMsMiwiXFxidWxsZXQiXSxbMCwzLCJcXGJ1bGxldCJdLFszLDAsIlxcYnVsbGV0Il0sWzEsMCwiXFxidWxsZXQiXSxbNCwzLCJcXGJ1bGxldCJdLFswLDIsIlxcYnVsbGV0Il0sWzQsMiwiXFxidWxsZXQiXSxbMCwxLCIiLDAseyJsZXZlbCI6Mn1dLFsxLDIsIiIsMCx7ImxldmVsIjoyfV0sWzAsMiwiIiwyLHsibGV2ZWwiOjJ9XSxbMywwLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsNCwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzUsMSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsyLDYsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs3LDAsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbMiw4LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMyw3LCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzcsNSwiIiwxLHsibGV2ZWwiOjJ9XSxbNSw0LCIiLDEseyJsZXZlbCI6Mn1dLFs0LDgsIiIsMSx7ImxldmVsIjoyfV0sWzgsNiwiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV1d
\begin{tikzcd}
	& \bullet && \bullet \\
	&& \bullet \\
	\bullet & \bullet && \bullet & \bullet \\
	\bullet &&&& \bullet
	\arrow[Rightarrow, from=1-2, to=1-4]
	\arrow[tail, from=1-2, to=2-3]
	\arrow[Rightarrow, from=1-4, to=3-5]
	\arrow[two heads, from=2-3, to=1-4]
	\arrow[Rightarrow, from=2-3, to=3-4]
	\arrow[Rightarrow, from=3-1, to=1-2]
	\arrow[tail, from=3-1, to=3-2]
	\arrow[Rightarrow, from=3-2, to=2-3]
	\arrow[Rightarrow, from=3-2, to=3-4]
	\arrow[two heads, from=3-4, to=3-5]
	\arrow[two heads, from=3-4, to=4-5]
	\arrow[two heads, from=3-5, to=4-5]
	\arrow[tail, from=4-1, to=3-1]
	\arrow[tail, from=4-1, to=3-2]
\end{tikzcd}
{% endtikz %}
{% endthm %}

{% thm %}
(正合范畴中的强形式蛇引理). 若有中间, 则有六项正合列:
{% tikz %}
% https://q.uiver.app/#q=WzAsMTYsWzAsMSwiXFxidWxsZXQiXSxbMSwxLCJcXGJ1bGxldCJdLFsyLDEsIlxcYnVsbGV0Il0sWzMsMSwiXFxidWxsZXQiXSxbMywyLCJcXGJ1bGxldCJdLFswLDIsIlxcYnVsbGV0Il0sWzEsMiwiXFxidWxsZXQiXSxbMiwyLCJcXGJ1bGxldCJdLFs0LDIsIlxcYnVsbGV0Il0sWzQsMSwiXFxidWxsZXQiXSxbMSwwLCJcXGJ1bGxldCJdLFsyLDAsIlxcYnVsbGV0Il0sWzMsMCwiXFxidWxsZXQiXSxbMSwzLCJcXGJ1bGxldCJdLFsyLDMsIlxcYnVsbGV0Il0sWzMsMywiXFxidWxsZXQiXSxbMCwxLCIiLDEseyJsZXZlbCI6Mn1dLFsxLDIsIiIsMSx7ImxldmVsIjoyfV0sWzIsMywiIiwxLHsibGV2ZWwiOjJ9XSxbMyw0LCIiLDEseyJsZXZlbCI6Mn1dLFswLDUsIiIsMSx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs1LDYsIiIsMSx7ImxldmVsIjoyfV0sWzYsNywiIiwxLHsibGV2ZWwiOjJ9XSxbNyw0LCIiLDEseyJsZXZlbCI6Mn1dLFs0LDgsIiIsMSx7ImxldmVsIjoyfV0sWzMsOSwiIiwxLHsibGV2ZWwiOjJ9XSxbOSw4LCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEsNiwiIiwxLHsibGV2ZWwiOjJ9XSxbMTAsMSwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9fX1dLFsxMSwyLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtb25vIn19fV0sWzEyLDMsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1vbm8ifX19XSxbNiwxMywiIiwxLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzcsMTQsIiIsMSx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFs0LDE1LCIiLDEseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMTAsMTEsIiIsMSx7ImxldmVsIjoyLCJjb2xvdXIiOlszNTMsMTAwLDYwXX1dLFsxMSwxMiwiIiwxLHsibGV2ZWwiOjIsImNvbG91ciI6WzM1MywxMDAsNjBdfV0sWzEzLDE0LCIiLDEseyJsZXZlbCI6MiwiY29sb3VyIjpbMzUzLDEwMCw2MF19XSxbMTQsMTUsIiIsMSx7ImxldmVsIjoyLCJjb2xvdXIiOlszNTMsMTAwLDYwXX1dLFsxMiwxMywiIiwxLHsibGV2ZWwiOjIsImNvbG91ciI6WzM1MywxMDAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiw3LCIiLDEseyJsZXZlbCI6Mn1dXQ==
\begin{tikzcd}
	& \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet \\
	\bullet & \bullet & \bullet & \bullet & \bullet \\
	& \bullet & \bullet & \bullet
	\arrow[color={rgb,255:red,255;green,51;blue,75}, Rightarrow, from=1-2, to=1-3]
	\arrow[tail, from=1-2, to=2-2]
	\arrow[color={rgb,255:red,255;green,51;blue,75}, Rightarrow, from=1-3, to=1-4]
	\arrow[tail, from=1-3, to=2-3]
	\arrow[tail, from=1-4, to=2-4]
	\arrow[color={rgb,255:red,255;green,51;blue,75}, Rightarrow, dashed, from=1-4, to=4-2]
	\arrow[Rightarrow, from=2-1, to=2-2]
	\arrow[two heads, from=2-1, to=3-1]
	\arrow[Rightarrow, from=2-2, to=2-3]
	\arrow[Rightarrow, from=2-2, to=3-2]
	\arrow[Rightarrow, from=2-3, to=2-4]
	\arrow[Rightarrow, from=2-3, to=3-3]
	\arrow[Rightarrow, from=2-4, to=2-5]
	\arrow[Rightarrow, from=2-4, to=3-4]
	\arrow[tail, from=2-5, to=3-5]
	\arrow[Rightarrow, from=3-1, to=3-2]
	\arrow[Rightarrow, from=3-2, to=3-3]
	\arrow[two heads, from=3-2, to=4-2]
	\arrow[Rightarrow, from=3-3, to=3-4]
	\arrow[two heads, from=3-3, to=4-3]
	\arrow[Rightarrow, from=3-4, to=3-5]
	\arrow[two heads, from=3-4, to=4-4]
	\arrow[color={rgb,255:red,255;green,51;blue,75}, Rightarrow, from=4-2, to=4-3]
	\arrow[color={rgb,255:red,255;green,51;blue,75}, Rightarrow, from=4-3, to=4-4]
\end{tikzcd}
{% endtikz %}
{% endthm %}
