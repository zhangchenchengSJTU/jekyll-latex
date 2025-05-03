---
title: Kunneth 谱序列
author: Chencheng Zhang
layout: post
category: proof
---

## Kunneth 谱序列的证明

称上链复形 $X$

1. 是正 (负) 的, 若其支撑在 $ℕ_+$ ($ℕ _-$) 上;
2. 是 $𝒳$-的, 若 $X$ 在对象类 $𝒳$ 中取值.

{% thm %}
(Kunneth 谱序列定理, [证明](Kunneth_Spectral_Seq)).
记 $A$ 与 $C$ 均是负复形, 一者平坦, 则有

$$
E^{p,q}_2 = ∐\limits_{s + t = q} \mathrm{Tor}_p (H^s(A), H^t(C)) ⇒ H^{p+q} (\mathrm{Tot}(A⊗C)).
$$

{% endthm %}

{% pf %}
假定 $C$ 平坦, $F → A$ 是平坦分解, 考虑双复形

$$
M^{p,q} := ∐\limits_{i +j = p}(F^{q,i}⊗ C^j)
$$

1. $q$-向微分由 $F → A$ 直接给出, 形如 $∐\limits_{i +j = p}(d_F^{q,i} ⊗ C^j)$.
2. $p$-向微分描述如下: 取定 $A^∙$ 的高度为 $q$ 的分解 $F^{q, ∙}$, 计算双复形 $F^{q, ∙} ⊗ C^∙$ 的全复形.

(计算 $q$-向谱序列). $q$-向微分与正合函子 $- ⊗ C^j$, $∐\limits$ 交换. 从而

1. $E_1^{∙,0} = \mathrm{Tot}(A ⊗ C)$, 剩余横行 $E_1^{∙ , ≠ 0} = 0$;
2. $E_2 = E_∞$, $E_2^{∙,0} = H^∙ (A ⊗ C)$, 剩余横行 $E_2^{∙ , ≠ 0} = 0$.

<center>
<!-- https://q.uiver.app/#q=WzAsMTUsWzIsMSwiXFxjb3Byb2QgX3tpK2ogPSBwfShBXmkgXFxvdGltZXMgQ15qICkiXSxbMywxLCJcXGNvcHJvZCBfe2kraiA9IHArMX0oQV5pIFxcb3RpbWVzIENeaiApIl0sWzEsMSwiXFxjb3Byb2QgX3tpK2ogPSBwLTF9KEFeaSBcXG90aW1lcyBDXmogKSJdLFswLDEsIlxcYm94ZWR7RV8xfSJdLFswLDAsIlxcYm94ZWR7RV8yfSJdLFsxLDAsIkhee3AtMX0oQSBcXG90aW1lcyBDKSJdLFsyLDAsIkhee3B9KEEgXFxvdGltZXMgQykiXSxbMywwLCJIXntwKzF9KEEgXFxvdGltZXMgQykiXSxbMSwyLCJcXGNvcHJvZCBfe2kraiA9IHAtMX0oRl57MCxpfSBcXG90aW1lcyBDXmogKSJdLFsyLDIsIlxcY29wcm9kIF97aStqID0gcH0oRl57MCxpfSBcXG90aW1lcyBDXmogKSJdLFszLDIsIlxcY29wcm9kIF97aStqID0gcCsxfShGXnswLGl9IFxcb3RpbWVzIENeaiApIl0sWzEsMywiXFxjb3Byb2QgX3tpK2ogPSBwLTF9KEZeey0xLGl9IFxcb3RpbWVzIENeaiApIl0sWzIsMywiXFxjb3Byb2QgX3tpK2ogPSBwfShGXnstMSxpfSBcXG90aW1lcyBDXmogKSJdLFszLDMsIlxcY29wcm9kIF97aStqID0gcCsxfShGXnstMSxpfSBcXG90aW1lcyBDXmogKSJdLFswLDIsIlxcYm94ZWR7RV8wIH0iXSxbMiwwXSxbMCwxXSxbMTIsOV0sWzExLDhdLFsxMywxMF0sWzE0LDMsIiIsMix7ImxldmVsIjoyfV0sWzMsNCwiIiwyLHsibGV2ZWwiOjJ9XV0= -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMTUsWzIsMSwiXFxjb3Byb2QgX3tpK2ogPSBwfShBXmkgXFxvdGltZXMgQ15qICkiXSxbMywxLCJcXGNvcHJvZCBfe2kraiA9IHArMX0oQV5pIFxcb3RpbWVzIENeaiApIl0sWzEsMSwiXFxjb3Byb2QgX3tpK2ogPSBwLTF9KEFeaSBcXG90aW1lcyBDXmogKSJdLFswLDEsIlxcYm94ZWR7RV8xfSJdLFswLDAsIlxcYm94ZWR7RV8yfSJdLFsxLDAsIkhee3AtMX0oQSBcXG90aW1lcyBDKSJdLFsyLDAsIkhee3B9KEEgXFxvdGltZXMgQykiXSxbMywwLCJIXntwKzF9KEEgXFxvdGltZXMgQykiXSxbMSwyLCJcXGNvcHJvZCBfe2kraiA9IHAtMX0oRl57MCxpfSBcXG90aW1lcyBDXmogKSJdLFsyLDIsIlxcY29wcm9kIF97aStqID0gcH0oRl57MCxpfSBcXG90aW1lcyBDXmogKSJdLFszLDIsIlxcY29wcm9kIF97aStqID0gcCsxfShGXnswLGl9IFxcb3RpbWVzIENeaiApIl0sWzEsMywiXFxjb3Byb2QgX3tpK2ogPSBwLTF9KEZeey0xLGl9IFxcb3RpbWVzIENeaiApIl0sWzIsMywiXFxjb3Byb2QgX3tpK2ogPSBwfShGXnstMSxpfSBcXG90aW1lcyBDXmogKSJdLFszLDMsIlxcY29wcm9kIF97aStqID0gcCsxfShGXnstMSxpfSBcXG90aW1lcyBDXmogKSJdLFswLDIsIlxcYm94ZWR7RV8wIH0iXSxbMiwwXSxbMCwxXSxbMTIsOV0sWzExLDhdLFsxMywxMF0sWzE0LDMsIiIsMix7ImxldmVsIjoyfV0sWzMsNCwiIiwyLHsibGV2ZWwiOjJ9XV0=&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
</center>

(计算 $p$-向谱序列).

1. ($E_0$). 直接地,
   <center>
   <!-- https://q.uiver.app/#q=WzAsNyxbMSwxLCJcXGNvcHJvZCBfe2kraiA9IHB9KEZeey0xLGl9IFxcb3RpbWVzIENeaiApIl0sWzIsMSwiXFxjb3Byb2QgX3tpK2ogPSBwKzF9KEZeey0xLGl9IFxcb3RpbWVzIENeaiApIl0sWzAsMSwiXFxib3hlZHtFXzAgfSJdLFsyLDAsIlxcY29wcm9kIF97aStqID0gcCsxfShGXnswLGl9IFxcb3RpbWVzIENeaiApIl0sWzEsMCwiXFxjb3Byb2QgX3tpK2ogPSBwfShGXnswLGl9IFxcb3RpbWVzIENeaiApIl0sWzIsMiwiXFxjb3Byb2QgX3tpK2ogPSBwKzF9KEZeey0yLGl9IFxcb3RpbWVzIENeaiApIl0sWzEsMiwiXFxjb3Byb2QgX3tpK2ogPSBwfShGXnstMixpfSBcXG90aW1lcyBDXmogKSJdLFswLDFdLFs0LDNdLFs2LDVdXQ== -->
   <iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNyxbMSwxLCJcXGNvcHJvZCBfe2kraiA9IHB9KEZeey0xLGl9IFxcb3RpbWVzIENeaiApIl0sWzIsMSwiXFxjb3Byb2QgX3tpK2ogPSBwKzF9KEZeey0xLGl9IFxcb3RpbWVzIENeaiApIl0sWzAsMSwiXFxib3hlZHtFXzAgfSJdLFsyLDAsIlxcY29wcm9kIF97aStqID0gcCsxfShGXnswLGl9IFxcb3RpbWVzIENeaiApIl0sWzEsMCwiXFxjb3Byb2QgX3tpK2ogPSBwfShGXnswLGl9IFxcb3RpbWVzIENeaiApIl0sWzIsMiwiXFxjb3Byb2QgX3tpK2ogPSBwKzF9KEZeey0yLGl9IFxcb3RpbWVzIENeaiApIl0sWzEsMiwiXFxjb3Byb2QgX3tpK2ogPSBwfShGXnstMixpfSBcXG90aW1lcyBDXmogKSJdLFswLDFdLFs0LDNdLFs2LDVdXQ==&embed" width="600" height="300" style="border-radius: 8px; border: dashed;"></iframe>
   </center>
2. ($E_1$). 为计算 $E_1$, 今假定 $F → A$ 是 [EC 分解](Spectral_sequence_filtered#技巧-eilenburg-cartan-消解), 从而 $F^{k, ∙}$ 是可裂复形. 特别地, 以下全复形同调群相同:

   $$
   (F^{k, ∙} ⊗ C^∙, \ d^C_→ , \ d^F_↑) ⇒ (H_↑(F^∙) ⊗ C^∙, \ d^C_→ ,\  d_↑  = 0).
   $$

   这说明 $E_1^{p,q} = ∐\limits _{i+j = p} (H_↑{q,i}(F)⊗H^j(C))$:
   <center>
   <!-- https://q.uiver.app/#q=WzAsNyxbMSwxLCJcXGNvcHJvZCBfe2kraiA9IHB9KEhfXFx1cGFycm93IF57LTEsIGl9KEYpXFxvdGltZXMgSF5qIChDKSkiXSxbMiwxLCJcXGNvcHJvZCBfe2kraiA9IHArMX0oSF9cXHVwYXJyb3cgXnstMSwgaX0oRilcXG90aW1lcyBIXmogKEMpKSJdLFswLDEsIlxcYm94ZWR7RV8xfSJdLFsyLDAsIlxcY29wcm9kIF97aStqID0gcCsxfShIX1xcdXBhcnJvdyBeezAsIGl9KEYpXFxvdGltZXMgSF5qIChDKSkiXSxbMSwwLCJcXGNvcHJvZCBfe2kraiA9IHB9KEhfXFx1cGFycm93IF57MCwgaX0oRilcXG90aW1lcyBIXmogKEMpKSJdLFsyLDIsIlxcY29wcm9kIF97aStqID0gcCsxfShIX1xcdXBhcnJvdyBeey0yLCBpfShGKVxcb3RpbWVzIEheaiAoQykpIl0sWzEsMiwiXFxjb3Byb2QgX3tpK2ogPSBwfShIX1xcdXBhcnJvdyBeey0yLCBpfShGKVxcb3RpbWVzIEheaiAoQykpIl0sWzEsM10sWzAsNF0sWzYsMF0sWzUsMV1d -->
   <iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNyxbMSwxLCJcXGNvcHJvZCBfe2kraiA9IHB9KEhfXFx1cGFycm93IF57LTEsIGl9KEYpXFxvdGltZXMgSF5qIChDKSkiXSxbMiwxLCJcXGNvcHJvZCBfe2kraiA9IHArMX0oSF9cXHVwYXJyb3cgXnstMSwgaX0oRilcXG90aW1lcyBIXmogKEMpKSJdLFswLDEsIlxcYm94ZWR7RV8xfSJdLFsyLDAsIlxcY29wcm9kIF97aStqID0gcCsxfShIX1xcdXBhcnJvdyBeezAsIGl9KEYpXFxvdGltZXMgSF5qIChDKSkiXSxbMSwwLCJcXGNvcHJvZCBfe2kraiA9IHB9KEhfXFx1cGFycm93IF57MCwgaX0oRilcXG90aW1lcyBIXmogKEMpKSJdLFsyLDIsIlxcY29wcm9kIF97aStqID0gcCsxfShIX1xcdXBhcnJvdyBeey0yLCBpfShGKVxcb3RpbWVzIEheaiAoQykpIl0sWzEsMiwiXFxjb3Byb2QgX3tpK2ogPSBwfShIX1xcdXBhcnJvdyBeey0yLCBpfShGKVxcb3RpbWVzIEheaiAoQykpIl0sWzEsM10sWzAsNF0sWzYsMF0sWzUsMV1d&embed" width="600" height="250" style="border-radius: 8px; border: dashed;"></iframe>
   </center>
3. ($E_2$). 依照 [EC](Spectral_sequence_filtered#技巧-eilenburg-cartan-消解) 的构造, $H_↑(F^{q, ∙})$ 是 $H^q(A)$ 的平坦分解:
   <center>
   <!-- https://q.uiver.app/#q=WzAsNyxbMCwxLCJcXGJveGVke0VfMn0iXSxbMiwyLCJcXGNvcHJvZCBfe2kraiA9IHArMX1cXG1hdGhybXtUb3J9XzIoSF5pKEEpLCBIXmogKEMpKSJdLFsxLDIsIlxcY29wcm9kIF97aStqID0gcH1cXG1hdGhybXtUb3J9XzIoSF5pKEEpLCBIXmogKEMpKSJdLFsyLDEsIlxcY29wcm9kIF97aStqID0gcCsxfVxcbWF0aHJte1Rvcn1fMShIXmkoQSksIEheaiAoQykpIl0sWzEsMSwiXFxjb3Byb2QgX3tpK2ogPSBwfVxcbWF0aHJte1Rvcn1fMShIXmkoQSksIEheaiAoQykpIl0sWzEsMCwiXFxjb3Byb2QgX3tpK2ogPSBwfShIXmkoQSkgXFxvdGltZXMgSF5qIChDKSkiXSxbMiwwLCJcXGNvcHJvZCBfe2kraiA9IHArMX0oSF5pKEEpIFxcb3RpbWVzIEheaiAoQykpIl0sWzEsNV1d -->
   <iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNyxbMCwxLCJcXGJveGVke0VfMn0iXSxbMiwyLCJcXGNvcHJvZCBfe2kraiA9IHArMX1cXG1hdGhybXtUb3J9XzIoSF5pKEEpLCBIXmogKEMpKSJdLFsxLDIsIlxcY29wcm9kIF97aStqID0gcH1cXG1hdGhybXtUb3J9XzIoSF5pKEEpLCBIXmogKEMpKSJdLFsyLDEsIlxcY29wcm9kIF97aStqID0gcCsxfVxcbWF0aHJte1Rvcn1fMShIXmkoQSksIEheaiAoQykpIl0sWzEsMSwiXFxjb3Byb2QgX3tpK2ogPSBwfVxcbWF0aHJte1Rvcn1fMShIXmkoQSksIEheaiAoQykpIl0sWzEsMCwiXFxjb3Byb2QgX3tpK2ogPSBwfShIXmkoQSkgXFxvdGltZXMgSF5qIChDKSkiXSxbMiwwLCJcXGNvcHJvZCBfe2kraiA9IHArMX0oSF5pKEEpIFxcb3RpbWVzIEheaiAoQykpIl0sWzEsNV1d&embed" width="600" height="250" style="border-radius: 8px; border: dashed;"></iframe>
   </center>
{% endpf %}

{% thm %}
记 $A$ 是负复形, $C$ 是正复形, 假定 $A$ 投射或 $C$ 内射, 则存在第一象限谱序列

$$
E_2 ^{p,q} = ∐\limits_{s + t = q} \mathrm{Ext}^p (H^{-s}(A), H^{t}(C)) ⇒ H^{p+q} (ℋ(A,C)).
$$

{% endthm %}

{% pf %}
对偶命题证明略.
{% endpf %}

## Kunneth 谱序列的推论

{% lem %}
(前五项). 仍选用 $\mathrm{Tor}$ 版本的 Kunneth 谱序列, 则有五项右正合列:

$$
\begin{aligned}
   H^{-2}(A ⊗ C) & →  \mathrm{Tor}_2(H^0(A), H^0 (C)) → \\[6pt]
   & → H^{0}(A) ⊗ H^{-1} (C) ⊕ H^{-1}(A) ⊗ H^{0} (C) → \\[6pt]
   & → H^{-1}(A ⊗ C) → \mathrm{Tor}_1(H^0(A), H^0 (C)) → 0.
\end{aligned}
$$

{% endlem %}

{% pf %}
$E_2$ 的前五项将满足 $E_3 = E_∞$, 将同调群插入微分得五项长正合列
<center>
<!-- https://q.uiver.app/#q=WzAsOCxbMCwyLCJcXGJveGVke0VfMn0iXSxbMiwzLCJcXGNvbG9ye2JsdWV9XFxjb3Byb2QgX3tpK2ogPSBwKzF9XFxtYXRocm17VG9yfV8yKEheaShBKSwgSF5qIChDKSkiXSxbMSwzLCJcXGNvcHJvZCBfe2kraiA9IHB9XFxtYXRocm17VG9yfV8yKEheaShBKSwgSF5qIChDKSkiXSxbMiwyLCJcXGNvbG9ye2JsdWV9XFxjb3Byb2QgX3tpK2ogPSBwKzF9XFxtYXRocm17VG9yfV8xKEheaShBKSwgSF5qIChDKSkiXSxbMSwyLCJcXGNvcHJvZCBfe2kraiA9IHB9XFxtYXRocm17VG9yfV8xKEheaShBKSwgSF5qIChDKSkiXSxbMSwxLCJcXGNvbG9ye2JsdWV9XFxjb3Byb2QgX3tpK2ogPSBwfShIXmkoQSkgXFxvdGltZXMgSF5qIChDKSkiXSxbMiwxLCJcXGNvcHJvZCBfe2kraiA9IHArMX0oSF5pKEEpIFxcb3RpbWVzIEheaiAoQykpIl0sWzEsMCwiMCJdLFsxLDVdLFszLDddLFs3LDYsIkheMCIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs1LDMsIlxcY29sb3J7Ymx1ZX1IXnstMX0iLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNCwxLCJcXGNvbG9ye2JsdWV9SF57LTJ9IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsOCxbMCwyLCJcXGJveGVke0VfMn0iXSxbMiwzLCJcXGNvbG9ye2JsdWV9XFxjb3Byb2QgX3tpK2ogPSBwKzF9XFxtYXRocm17VG9yfV8yKEheaShBKSwgSF5qIChDKSkiXSxbMSwzLCJcXGNvcHJvZCBfe2kraiA9IHB9XFxtYXRocm17VG9yfV8yKEheaShBKSwgSF5qIChDKSkiXSxbMiwyLCJcXGNvbG9ye2JsdWV9XFxjb3Byb2QgX3tpK2ogPSBwKzF9XFxtYXRocm17VG9yfV8xKEheaShBKSwgSF5qIChDKSkiXSxbMSwyLCJcXGNvcHJvZCBfe2kraiA9IHB9XFxtYXRocm17VG9yfV8xKEheaShBKSwgSF5qIChDKSkiXSxbMSwxLCJcXGNvbG9ye2JsdWV9XFxjb3Byb2QgX3tpK2ogPSBwfShIXmkoQSkgXFxvdGltZXMgSF5qIChDKSkiXSxbMiwxLCJcXGNvcHJvZCBfe2kraiA9IHArMX0oSF5pKEEpIFxcb3RpbWVzIEheaiAoQykpIl0sWzEsMCwiMCJdLFsxLDVdLFszLDddLFs3LDYsIkheMCIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs1LDMsIlxcY29sb3J7Ymx1ZX1IXnstMX0iLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNCwxLCJcXGNvbG9ye2JsdWV9SF57LTJ9IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d&embed" width="600" height="350" style="border-radius: 8px; border: dashed;"></iframe>
</center>
{% endpf %}

{% ex %}
($\mathrm{Tor}_{≥ 2}$ 消失, Kunneth 公式). 若 $\mathrm{Tor}_{≥ 2}$ 消失, 则 $E_2$ 是 $∞ × 2$ 规格的. 此时有一串 ses

$$
∐\limits _{i+j = p-1}(H^i(A) ⊗ H^j (C)) → H^{p}(A ⊗ C) → ∐\limits _{i+j = p}\mathrm{Tor}_p(H^i(A), H^j (C)).
$$

此处 $p ≤ -1$. 这就是 Kunneth 公式.

{% endex %}

{% lem %}
($H$ 在二次导出函子中消失的充分条件). 若 $A$ 与 $\mathrm{im}(d_A)$ 各项满足

1. $\mathrm{Tor}_{≥ 1}(A,-), \mathrm{Tor}_{≥ 2}(\mathrm{im}(d_A),-)$ 消失, 则 $\mathrm{Tor}_{≥ 2}(H,-)$ 消失;
2. $\mathrm{Ext}_{≥ 1}(A,-), \mathrm{Ext}_{≥ 2}(\mathrm{im}(d_A),-)$ 消失, 则 $\mathrm{Ext}_{≥ 2}(H,-)$ 消失;
3. $\mathrm{Ext}_{≥ 1}(-,A), \mathrm{Ext}_{≥ 2}(-,\mathrm{im}(d_A))$ 消失, 则 $\mathrm{Ext}_{≥ 2}(-,H)$ 消失.

{% endlem %}

{% pf %}
仅证明第一个命题, 后两个命题的证明类似. 考虑 $0 → \mathrm{im} → A → \mathrm{cok} → 0$ 关于 $\mathrm{Tor}$ 的导出长正合列, 得 $\mathrm{coker}$ 平坦. 继而考虑 $0 → H → \mathrm{cok} → \mathrm{im} → 0$ 的导出长正合列, 得 $\mathrm{Tor}_{≥ 2}(H, - )$ 消失.
{% endpf %}
