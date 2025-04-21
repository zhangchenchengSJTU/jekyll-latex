---
title: Notes for Reflexive Subcategories
author: Chencheng Zhang
layout: post
---

### $𝐦𝐨𝐝_{𝒞}$

全文使用  

1. $𝐌𝐨𝐝_k$ 表示 $k$-右模范畴.
2. $𝐦𝐨𝐝_k$ 有限表现 $k$-右模范畴.

对局部小的 $k$-范畴 $𝒞$, 记

$$
𝐌𝐨𝐝_𝒞 := 𝐅𝐮𝐧𝐜𝐭_k(𝒞^{\mathrm{op}}, 𝐌𝐨𝐝_k)
$$

为 $k$-函子范畴. 若无特别强调, 默认 $k$-范畴的函子是 $k$-函子.

{% thm %}
($k$-范畴的米田嵌入). 对交换环 $k$, 与 $k$-范畴 $𝒞$, 以下是全忠实的嵌入:

$$
𝒞 ↣ 𝐅𝐮𝐧𝐜𝐭_k (𝒞^{\mathrm{op}}, 𝐌𝐨𝐝_k) ,\quad X ↦ h_X\quad (:=(-,X)_{𝒞}).  
$$

特别地, 以下米田引理的同构是 $k$-模的同构:  

$$
𝖭𝖺𝗍[h_X, F] ≃ F(X),\quad Φ ↦ Φ(\mathrm{id}_X).
$$

{% endthm%}

以上是 $k$-充实版本的的米田引理. 特别地, $k = ℤ$ 对应预加范畴.

{% def %}

(有限表现范畴). 对给定局部小的 $k$-范畴 $𝒞$, 定义有限表现范畴 $𝐦𝐨𝐝_𝒞$ 为 $𝐅𝐮𝐧𝐜𝐭(𝒞^{\mathrm{op}}, 𝐀𝐛)$ 的全子范畴. 其对象形如 $\mathrm{cok} (h_φ)$, 即,

$$
(-,X) \xrightarrow{(-,φ )} (-,Y) ↠ \mathrm{cok} (h_φ).
$$

{% enddef %}

{% thm %}

对加法范畴 $𝒞$ 与具有 $\mathrm{cok}$ 的 $k$-范畴 $𝒜$, 以下是函子范畴的等价

$$
𝐅𝐮𝐧𝐜𝐭(𝒞 , 𝒜 ) → 𝐅𝐮𝐧𝐜𝐭_{Rex}(𝐦𝐨𝐝_𝒞, 𝒜); 
$$

<ol>
<li> 
$𝐅𝐮𝐧𝐜𝐭_{Rex}$ 表示右正合函子 (保持余核的函子) 构成的全子范畴;
</li>
<li>
对左侧的 $f$, 右侧的函子定义作 $\mathrm{cok}(h_φ) ↦ \mathrm{cok}(F(φ))$.
</li>
<li>
对右侧的 $F$, 左侧函子定义作 $X ↦ F(h_X)$.
</li>
</ol>

{% endthm %}

{% def %}
(弱核). 称 $X\xrightarrow f Y$ 是 $Y \xrightarrow g Z$ 的弱核, 若以下 $𝐦𝐨𝐝_{𝒞}$ 中的态射链

$$
h_X \xrightarrow{h_f} h_Y \xrightarrow{h_g}h_Z
$$

在 $h_Y$ 处正合.
{% enddef %}

{% thm %}
记 $𝒞$ 局部小的有弱核的 $k$-范畴, $𝒜$ 是 Abel $k$-范畴, 以下是函子范畴的等价

$$
\begin{bmatrix}
𝐅𝐮𝐧𝐜𝐭_w(𝒞 , 𝒜 ) & ↣ & 𝐅𝐮𝐧𝐜𝐭(𝒞 , 𝒜 ) \\
∼↑  & & ↑ ∼ \\
𝐅𝐮𝐧𝐜𝐭_{Ex}(𝐦𝐨𝐝 _𝒞 , 𝒜 ) & ↣ & 𝐅𝐮𝐧𝐜𝐭_{Rex}(𝐦𝐨𝐝 _𝒞 , 𝒜 ) \\
\end{bmatrix}
$$

<ol>
<li>
当且仅当 $𝒞$ 存在弱核, $𝐦𝐨𝐝_𝒞$ 是 Abel 范畴; 
</li>
<li>
$F ∈ 𝐅𝐮𝐧𝐜𝐭_w(𝒞 , 𝒜 )$, 当且仅当 $F$ 将一切弱核所在的态射链 $X \xrightarrow f Y \xrightarrow g Z$ 映作 $F(Y)$ 处正合的态射链 $F(X)\xrightarrow {F(f)} F(Y) \xrightarrow {F(g)} F(Z)$;
</li>
<li>
$𝐅𝐮𝐧𝐜𝐭_{Ex}$ 表示正合函子 (保持核与余核的函子). 
</li>
</ol>
{% endthm %}

以下说明全子范畴的嵌入 $𝒞 ↣ 𝐦𝐨𝐝_𝒞$ 决定了某些普适问题的解. 给定局部小的 $k$-范畴 $𝒞$. 依照定理,

1. 一切从 $𝐦𝐨𝐝_𝒞$ 到 Abel $k$-范畴 $𝒜$ 的右正合函子通过全忠实嵌入 $𝒞 ↣ 𝐦𝐨𝐝_𝒞$ 唯一分解 (至多相差一个范畴等价);
2. 若 $𝒞$ 有弱核, 一切从 $𝐦𝐨𝐝_𝒞$ 到 Abel $k$-范畴 $𝒜$ 的正合函子通过全忠实嵌入 $𝒞 ↣ 𝐦𝐨𝐝_𝒞$ 唯一分解 (至多相差一个范畴等价).

{% ex %}
假定 $𝒜$ 是有足够投射对象的 Abel 范畴, $i : 𝒫 ↣ 𝒜$ 是投射对象组成的全子范畴, 则

$$
(i(-),∙)_{𝒫}: 𝒜 → 𝐦𝐨𝐝_𝒫,\quad X ↦ (i(-),X)_𝒫
$$

是范畴等价.
{% endex %}

### 张量积, $𝐦𝐨𝐝_{𝒞}$ 的等价刻画

定义 $k$-范畴的函子范畴 $𝐌𝐨𝐝_𝒞 := 𝐅𝐮𝐧𝐜𝐭 (𝒞^{\mathrm{op}} , 𝐦𝐨𝐝_k)$. 任意 $F ∈ 𝐌𝐨𝐝_k$ 通过顿范畴 $𝒞⇒F$ 中的滤过余极限表出, 且这一构造是函子性的.

今考虑本质小的 $k$-范畴 $𝒞$, 此时 $𝐦𝐨𝐝_𝒞$ 也是本质小的 $k$-范畴. 定义 $k$-双线性的配对

$$
𝒞 ⊗ 𝐌𝐨𝐝_{𝒞^{\mathrm{op}}} → 𝐌𝐨𝐝_k,\quad X ⊗ F ↦ FX.
$$

由于 $F ∈ 𝐌𝐨𝐝_𝒞$ 是可表函子的余极限 (考虑 $∐\limits_{X ∈ 𝖮𝖻(𝒞)}(h_X)^{∐F(X)} ↠ F$), 且这一构造是函子性的.

{% def %}
(张量积) 将张量积的定义延拓至

$$
𝐌𝐨𝐝_𝒞 ⊗ 𝐌𝐨𝐝_{𝒞^{\mathrm{op}}} → 𝐌𝐨𝐝_k,\quad (\varinjlim(-, X)) ⊗ F ↦ \varinjlim FX.
$$

{% enddef %}

{% thm %}
(有限表现函子的等价定义, <a href = "Finitely_Presented_Functor">证明</a>)

选定 $F ∈ 𝐌𝐨𝐝_𝒞$, 以下等价:
<ol>
<li>
(有限表现函子) $F ∈ 𝐦𝐨𝐝_𝒞$;
</li>
<li>
(紧对象) 对 $𝐌𝐨𝐝_k$ 中的滤过系统 $G_∙$, 典范态射

$$
\varinjlim (F, G_∙)_{𝒞^{\mathrm{op}}} ≃  (F, \varinjlim G_∙)_{𝒞^{\mathrm{op}}}
$$

是同构;
</li>
<li>
$F ⊗ -: 𝐌𝐨𝐝_{𝒞 ^{\mathrm{op}}} → 𝐌𝐨𝐝_k$ 保持任意积.
</li>
</ol>
{% endthm %}

{% note %}
参考上述命题中 (2 ⇒ 1) 一步的证明, 任意函子是有限表现函子的滤过余极限. 以上也蕴含了模范畴中的类似结论, 例如, $M$ 是有限表现模, 当且仅当 $(M ⊗ -)$ 与 $∏$ 交换.
{% endnote %}

{% ex %}
有限生成投射对象必然是可表函子的直和项. 特别地, 若 $𝒞$  Karoubi  (所有幂等态射都有核与余核), 则有限生成投射对象恰好是可表函子.
{% endex %}

{% def %}
(平坦对象). 称 $F ∈ 𝐌𝐨𝐝_𝒞$ 是平坦对象, 当且仅当 $F ⊗ -$ 保持 $𝐌𝐨𝐝_{𝒞^{\mathrm{op}}}$ 中的单自然变换.
{% enddef %}

依照 $𝐌𝐨𝐝_k$ 范畴的 AB5 条件, 模的滤过余极限与有限极限交换. 因此, 平坦对象只需保持 $𝐦𝐨𝐝_{𝒞^{\mathrm{op}}}$ 中的单自然变换.

例如, $M$ 是平坦模, 当且仅当 $M ⊗ -$ 保持有限表现模之间的单射.

{% prop %}
(有限表现 → 投射 通过平坦对象分解, <a href = "Fp_Proj_Plat">证明</a>).

假定 $𝒞^{\mathrm{op}}$ 有弱核. 若 $P ∈ 𝐌𝐨𝐝_𝒞$ 是平坦对象, 则一切有限表现函子 $F$ 向 $P$ 的态射通过某一可表函子分解.
{% endprop %}

{% thm %}
(平坦对象是投射对象的滤过余极限, <a href = "Lazard_thm">证明</a>).
给定小的加法范畴 $𝒞$, 假定以下提及的滤过余极限存在.
<ol>
<li>
假定 $𝒞^{\mathrm{op}}$ 有弱核, 则 $P ∈ 𝐌𝐨𝐝_𝒞$ 是平坦对象, 当且仅当 $P$ 是有限表现函子 $\{h_X\}$ 的滤过余极限; 
</li>
<li>
假定 $𝒞$ 有弱核, 则 $P ∈ 𝐌𝐨𝐝_{𝒞^{\mathrm{op}}}$ 是平坦对象, 当且仅当 $P$ 是有限表现函子 $\{h^X\}$ 的滤过余极限. 
</li>
</ol>
{% endthm %}

{% def %}
(karoubi 范畴). 称加法范畴 Karoubi, 若幂等态射存在核与余核.
{% enddef %}

{% def %}
(内射余生成元). 对局部小的范畴 $𝒞$. 称 $X ∈ 𝒞$ 是内射余生成元, 若以下两点满足
<ol>
<li>
$f ↦ (f, X)_𝒞$ 将满射对应至单射, 换言之, $(-,X)$ 是正合函子; 
</li>
<li>
$(f,X)_{𝒞} ↦ f$ 良定义, 从而将单射返回至满射, 换言之, $(-,X)$ 是忠实函子. 
</li>
</ol>
{% enddef %}

例如, $𝐌𝐨𝐝_k$ 存在内射余生成元, 通常选作 $(k, C)_{ℤ}$. 其中 $C$ 是 $𝐀𝐛$ 的内射余生成元, 例如 $ℚ/ℤ$ 或 $ℝ/ℤ$.  

{% thm %}
(有限表现 + 平坦 = 投射, <a href = "Fp_et_Plat_est_Proj">证明</a>).
给定 Karoubi 的, 本质小的加法范畴 $𝒞$. 若 $F ∈ 𝐦𝐨𝐝_𝒞$ 平坦, 则 $F$ 投射.
{% endthm %}

{% ex %}
(关于 Abel 化: 模范畴的非对称性).
对加法范畴 $𝒞$, 以下两者均是 $𝒞$ 是在 $𝐌𝐨𝐝_{𝒞}$ 中的 Abel 闭包:

$$
𝐦𝐨𝐝_{𝐦𝐨𝐝_{𝒞^{\mathrm{op}}}^{\mathrm{op}}} = 𝐟𝐩 (𝐦𝐨𝐝_{𝒞^{\mathrm{op}}}, 𝐌𝐨𝐝_k);\quad 𝐦𝐨𝐝^{\mathrm{op}}_{𝐦𝐨𝐝_{𝒞}^{\mathrm{op}}} = 𝐟𝐩 (𝐦𝐨𝐝_{𝒞}, 𝐌𝐨𝐝_k)^{\mathrm{op}}.
$$

取 $𝒞$ 为 $k$-代数 $R$ 的有限生成自由模范畴, 则两处 Abel 闭包的典范同构由自由模所在的可表函子诱导, 即,

$$
\begin{bmatrix}
    𝐟𝐩 (𝐦𝐨𝐝_{𝒞}, 𝐌𝐨𝐝_k)^{\mathrm{op}} &→& 𝐟𝐩 (𝐦𝐨𝐝_{𝒞^{\mathrm{op}}}, 𝐌𝐨𝐝_k) \\ 
    (R_R^n, - )_{𝐦𝐨𝐝_R} & ↦ & ({_R}R^n, -)_{𝐦𝐨𝐝_{R^{\mathrm{}op}}}
\end{bmatrix}.
$$

对 $M_R = \mathrm{cok}(R^m \xrightarrow f R^n)$, 上述对应延拓至

$$
\begin{bmatrix}
𝐟𝐩(𝐦𝐨𝐝_{R^{\mathrm{op}}} ,𝐌𝐨𝐝_{k}) & M_R ⊗ - & ←  & R_{R}^{n} ⊗ - & ←  & R_{R}^{m} \otimes -\\
 &   &  & ∥  &  & ∥ \\
𝐟𝐩(𝐦𝐨𝐝_{R^{\mathrm{op}}}^{\mathrm{op}} ,𝐌𝐨𝐝_{k}) & ( M_{R} ,-) & →  & \left( R_{R}^{n} ,-\right) & →  & \left( R_{R}^{m} ,-\right)
\end{bmatrix}
$$

同理, 上方的 $(_RX, - )_{𝐦𝐨𝐝_{𝒞^{\mathrm{op}}}}$ 对应下方的 $- ⊗_RX ∈ 𝐟𝐩(𝐦𝐨𝐝_R^{\mathrm{op}}, 𝐌𝐨𝐝_k)^{\mathrm{op}}$. 这一紧对象间的对应通过滤过余极限给出 Abel 闭包的范畴等价.
{% endex %}

{% note %}
注意: 这一非对称性在三角范畴中将不复存在, $𝐦𝐨𝐝_𝒯^{\mathrm{op}}$ 等价于 $𝐦𝐨𝐝_{𝒯^{\mathrm{op}}}$. 本质上, 同调函子与上同调函子是对称的.
{% endnote %}

### 三角范畴, 上同调函子

采用记号 $(𝒯, [1], \triangle)$ 表示三角范畴, 平移, 以及好三角类. 使用上链复形 $X^∙$ 表示一个好三角. 对 Abel 范畴 $𝒜$, 称函子 $F:𝒯^{\mathrm{op}} → 𝒜$ 是上同调的, 当且仅当 $F$ 将 $\triangle$ 映作长正合列.

{% lem %}
反变的米田嵌入 $𝒯^{\mathrm{op}} → 𝐅𝐮𝐧𝐜𝐭(𝒞, 𝐌𝐨𝐝_k)$ 是上同调函子. 
{% endlem %}

*Proof* 只需证明一切 $(-,W)_{𝒯}$ 是上同调函子. 任意给定三角 $X^∙ ∈ \triangle$, 上链复形 $(X^∙ , W)_{𝒯} ∈ C(k)$ 在 $n$ 处的正合性描述作以下命题:

* 对 $f^n : X^n → W$, 复合态射 $[X^{n-1} → X^n → W] = 0$, 当且仅当 $f^n$ 通过 $[X^n → X^{n+1}]$ 分解. 

对 $\{f^{n-1},f^n,f^{n+1}\}$ 使用二推三原则, 研究以下三角射即可: 

$$
\begin{bmatrix}
X^{\bullet } &:& \cdots  & \rightarrow  & X^{n-1} & \rightarrow  & X^{n} & \rightarrow  & X^{n} +1 & \rightarrow  & \cdots \\
\downarrow & &  &  & \downarrow  &  & \downarrow  &  & \downarrow  &  & \\
W^{\bullet }&: & 0 & \rightarrow  & W & = & W & \rightarrow  & 0 & \rightarrow  & \cdots 
\end{bmatrix}. 
$$

$\square$ 

**Prop** 给定三角范畴. 对任意 $X^∙ ∈ \triangle$, $X^n → X^{n+1}$ 的三角核 $X^{n-1} → X^n$ 是弱核. 

**Prop** (上) 同调函子保持弱核. 

*Proof* 只看共变情形. 给定同调函子 $f: 𝒯 → 𝒜$, 则有唯一的 (差一个范畴等价) 右正合函子
$$
F: 𝐦𝐨𝐝_𝒯 → 𝒜 ,\quad \mathrm{cok}(h_φ) ↦ \mathrm{cok}(F(φ)).  
$$
对好三角 $W \xrightarrow u X \xrightarrow v Y$ 与 $X$ 处弱正合的态射列 $K \xrightarrow i X \xrightarrow v Y$, 以上两处复合态射都是 $0$. 依照弱核的泛性质, 存在 $α : W ⇆ K : β$ 使得 $i ∘ α = u$ 与 $u ∘ β = i$. 因此 $\mathrm{im}(Fi) = \mathrm{im}(Fu) = \ker(Fv)$. 这说明同调函子 $F$ 保持弱核. 

$\square$ 

**Rmk** 在 $X$ 处弱正合的态射序列 $K \xrightarrow i X \xrightarrow v Y$ 未必是好三角的相邻三项. 例如 $X → 0 → 0$. 

**Rmk** 对三角范畴至 Abel 范畴的函子, 上同调函子恰好是保持弱核的函子. 对三角范畴, 上同调函子通过 $𝒯^{\mathrm{op}} ↣ 𝐦𝐨𝐝_{𝒯^{\mathrm{op}}}$ 唯一分解. 

**Prop** $𝐦𝐨𝐝_𝒯$ 是 Frobenius 范畴. 

*Proof*. 上同调函子通过米田嵌入分解, 从而 $𝐦𝐨𝐝_{𝒯^{\mathrm{op}}}^{\mathrm{op}} ≃ 𝐦𝐨𝐝_𝒯$. 从而可表函子既是投射对象, 又是内射对象 (反范畴的投射对象). 由于 $𝐦𝐨𝐝_𝒯$ 存在足够投射对象, 故投射对象就是内射对象. 

$\square$ 

**Rmk** 比较自由模范畴的两类 Abel 闭包, 三角范畴的 Abel 闭包显得更对称: 这主要得益于上同调函子的泛性质. 

**Prop** 对本质小的三角范畴 $𝒯$, 考虑函子范畴 $𝐅𝐮𝐧𝐜𝐭(𝒯^{\mathrm{op}}, 𝐌𝐨𝐝_k)$, 则上同调函子, 正合函子, 可表函子的滤过余极限, 以及平坦函子四者相同. 



### 反变有限

**Def** (逼近, 预盖, 反变有限). 给定任意范畴 $𝒞$ 与同构闭的对象类 $𝒳$. 
1. 一个 $𝒳$-预覆盖是一个态射 $X_{∈ 𝒳} \xrightarrow f M_{∈ 𝒞}$, 使得 $(𝒳, f)$ 均为满射. 
2. 此时, 称 $f$ 是 $M$ 的一个右 $𝒳$-逼近. 等价地, 任意 $X' → M$ 通过 $f$ 分解. 
3. 称 $𝒳$ 是反变有限的对象类, 若所有 $M$ 都存在右 $𝒳$-逼近. 

**Rmk** 若 $𝒞$ 中有足够投射对象, 取 $𝒳 = 𝐏𝐫𝐨𝐣$, 右逼近取作投射对象出发的满射. 

**Def** (投射盖). 假定 Abel 范畴. 称 $π : P → X$ 是 $X$ 的一个投射盖, 若 $π$ 是满的, 且 $\mathrm{ker}(π)$ 是盈余的. 换言之, 任意形如 
$$
\begin{bmatrix}
∗ & ↪ & ∗ \\ 
\overset∨ ↓ & & \overset ∨ ↓ \\ 
\mathrm{ker}(π) & ↪ & P \\ 
\end{bmatrix}
$$
的推出拉回方块一定同构于
$$
\begin{bmatrix}
\mathrm{ker}(π) & ↪ & P \\ 
∥ & \ & ∥ \\ 
\mathrm{ker}(π) & ↪ & P \\ 
\end{bmatrix}. 
$$

**Rmk** 有些地方将投射盖定义作满足 $[(p ∘ α = p) ⟹ (α \ \text{同构})]$ 的满态射 (这一假定似乎更弱一些). 以上定义按照 superfluous 等价转化. 

**Prop** 若平坦对象具有投射盖, 则其必然是投射对象. 

*Proof* 记 $P \overset π ↠ F$ 是平坦对象的投射盖, 其中 $F = \varinjlim P_i$ 是有限生成投射对象的滤过余极限. 取定所有拉回
$$
\begin{bmatrix}
&P_i ⊕ Q_i & \xrightarrow{(1 \ 0)}& P_i \\ 
\substack{g_i}&↓ &  & ↓ &\substack {f_i}\\ 
&P & \overset π ↠ & F \\ 
\end{bmatrix}. 
$$
依照拉回的泛性质, $g_i$ 自动构成滤过系统. 依照 $∐ (P_i ⊕ Q_i) ↠ ∐ P_i$, 得推出拉回方块 
$$
\begin{bmatrix}
 &  & \amalg (P_{i} \oplus Q_{i}) & \twoheadrightarrow  & \amalg P_{i}\\
 &  & \downarrow  &  & \downarrow \\
\ast  & \hookrightarrow  & \Sigma \operatorname{im} g_{i} & \twoheadrightarrow  & \Sigma \operatorname{im} f_{i}\\
\downarrow  & \text{PBPO} & \downarrow  &  & \parallel \\
\ker \pi  & \hookrightarrow  & P & \twoheadrightarrow  & F
\end{bmatrix}. 
$$
依照投射盖的定义, $Σ \operatorname{im}g_i ↪ P$ 是同构, $∗ → \ker π$ 亦是同构. 因此滤过系统 $\{g_i\}$ 的滤过余极限即 $P$. 

以上得到滤过系统的态射 $\{f_i\} ↪ \{g_i\} ↠ \{f_i\}$ 这甚至是链可裂的. 依照余极限的泛性质, 存在形变收缩 $F → P → F$, 因此 $F$ 是投射对象. 

$\square$ 

**Def** 取定同构封闭的全子范畴 $i : 𝒞 ↣ 𝒜$. 

1. 称 $𝒞$ 是反射的, 若 $i$ 是右伴随. 
2. 称 $𝒞$ 是余反射的, 若 $i$ 是左伴随. 

**Eg** 给定挠对 $(𝒯 , ℱ)$, 全子范畴 $ℱ$ 是反射的, $𝒯$ 是余反射的. 

**Prop** 取加法范畴 $𝒯$ 与本质小的同构闭全子范畴 $ℬ$. 假定 $ℬ$  Karoubi , $ℬ^{\mathrm{op}}$ 存在弱核, 且 $𝐦𝐨𝐝_{ℬ}$ 存在投射盖 (例如 Krull-Schmidt 三角范畴). 此时 $ℬ$ 余反射, 当且仅当其反变有限. 

*Proof* 若 $ℬ$ 余反射, 记嵌入的右伴随 $t$, 即 
$$
(X, t(A))_{ℬ} ≃ (i(X), A)_{𝒯}. 
$$
任意 $X ∈ 𝒯$ 都有预盖 $ε_X: t(X) → X$, 因为
$$
(i(A), ε_X)_{𝒜} ≃ \mathrm{id}_{(A, t(X))}. 
$$
反之, 若 $ℬ$ 反变有限, 以下求解 $A ∈ 𝒯$ 在 $ℬ$ 中的右伴随像. 记 
$$
(i(-), A)_{𝒯} ∈ ℬ ^{\mathrm{op}} → 𝐌𝐨𝐝_k.  
$$
这一函子是上同调函子, 从而是平坦对象. 再由 $ℬ$ 反变有限, 存在恒满的态射族 $(ℬ, X\xrightarrow φ A)_{𝒯}$. 因此
$$
h_X ↠ (i(-), A)_{𝒯} \quad ∈ 𝐦𝐨𝐝_ℬ
$$
由于平坦对象 $(i(-), A)_{𝒯}$ 存在投射盖, 且 $𝒯^{\mathrm{op}}$ 存在弱余核, 从而只能是投射对象. 这一对象也是有限生成的. 再由 Karoubi 性, 该函子可表, 因此 $i$ 存在右伴随. 

$\square$ 

**Prop** 取加法范畴 $𝒯$ 与本质小的同构闭全子范畴 $ℬ$. 假定 $ℬ$ Karoubi, 存在弱核. 此时 $ℬ$ 余反射, 当且仅当其反变有限. 

*Proof* 若 $ℬ$ 余反射, 则反变有限 (见前一命题). 

若 $ℬ$ 反变有限, 对任意 $A ∈ 𝒯$ 构造
$$
X_K \xrightarrow c K \xrightarrow b X_A \xrightarrow a A. 
$$
其中 $X_M → M$ 是预盖, $b$ 是 $a$ 的弱核. 此时有正合列
$$
(-, X_K)_ℬ → (-,X_A)_ℬ → (i(-),A)_𝒯 → 0.
$$
由于 $(i(-),A)_𝒯$ 是有限表现的平坦对象, 从而投射. 再由 Karoubi 性, 该函子可表, 因此 $i$ 存在右伴随. 

$\square$ 

**Prop** 三角范畴 Karoubi 的一个充分条件: 若三角范畴有可数积或可数余积, 则 Karoubi. 

*Proof* 范畴 Karoubi, 当且仅当其反范畴亦然. 不妨假定 $𝒯$ 有可数积, 对幂等自同态 $f ∈ \mathrm{End}(X)$ 定义
$$
∏_ℕX \xrightarrow[:=-e_L] {1-f+fL}∏_ℕX ,\quad ∏_ℕX \xrightarrow[:=-e_R] {1-f+fR}∏_ℕX. 
$$
此处 $L$ 是左移算子 (满), $R$ 是右移算子 (满). 计算知 
$$
e_Le_R = 1,\quad e_Re_L = 1-(f,0,\ldots).
$$
在三角范畴中, $e_L$ 可裂满, 从而 $\ker (e_L)$ 存在, 因此 $(1-f)$ 存在核. 对称地, $𝒯$ Karoubi.  

$\square$

**Rmk** 以上实际上是在取 $\cdots → X \xrightarrow f X$ 的同伦极限.