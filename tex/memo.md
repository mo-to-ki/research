
```tex
A^i_{/\!/}(R) &= A^i_{/\!/}(Q_1) - \Gamma^{i}_{\; jk}(Q_1)A^i_{/\!/}(Q_1)\delta_2 x^k \\
&= \left[ A^i - \Gamma^{i}_{\; jk}A^j(\delta_1 x^k + \delta_2 x^k) \right. \\
& \quad - \left. \left( \frac{\partial\Gamma^{i}_{\; jl}}{\partial x^k} - \Gamma^{i}_{\; nl}\Gamma^{n}_{\; jk} \right)A^j\delta_1x^k \delta_2x^l \right]_p
```

```tex
\delta A^i &= A^i_{/\!/}(P \rightarrow Q_2 \rightarrow R) - A'^i_{/\!/}(P \rightarrow Q_1 \rightarrow R) \\
&= R^i_{\; jkl}A^j\delta_1 x^k \delta_2 x^l
```

```tex
\mathcal{L}
```

```tex
ds^2 = - \left( 1 - \frac{2M}{r} \right) dt^2 + \left( 1 - \frac{2M}{r} \right)^{-1} dr^2 + r^2 \left( d\theta^2 + \sin^2\theta d\phi^2 \right)
```

```tex
R^{i}_{\;jkl} = \frac{\partial \Gamma^{i}_{\;jl}}{\partial x^k} - \frac{\partial \Gamma^{i}_{\;jk}}{\partial x^l} + \Gamma^{i}_{\;nk} \Gamma^{n}_{\;jl} - \Gamma^{i}_{\;nl} \Gamma^{n}_{\;jk}
```

```tex
S &= \int^{P_2}_{P_1} ds\\
&= \int^{\lambda_2}_{\lambda_1} \sqrt{ - g_{ij}(x)\frac{dx^i}{d\lambda} \frac{dx^j}{d\lambda} } d\lambda
```

```tex
\frac{d}{d\lambda}\left( \frac{\partial L}{\partial \dot{x}^l} \right) - \frac{\partial L}{\partial x^l}
&= \frac{d}{d\lambda}\left( \frac{ g_{kl} \dot{x}^k }{ \sqrt{- g_{ij} \dot{x}^i\dot{x}^j }} \right)
- \frac{ \frac{ \partial g_{mn}\dot{x}^m\dot{x}^n }{ \partial x^l } }{ 2\sqrt{ - g_{ij}\dot{x}^i\dot{x}^j } }\\
&= 0
```

```tex
g_{00} &= -A(r)\\
g_{11} &= B(r)\\
g_{22} &= r^2\\
g_{33} &= r^2 \sin^2\theta \\
```

```tex
\frac{ \partial g_{00} }{ \partial x^1 } &= -A'(r)\\
\frac{ \partial g_{11} }{ \partial x^1 } &= B'(r)\\
\frac{ \partial g_{22} }{ \partial x^1 } &= 2r\\
\frac{ \partial g_{33} }{ \partial x^1 } &= 2r \sin^2\theta \\
\frac{ \partial g_{33} }{ \partial x^2 } = 2r^2 \sin\theta \cos\theta \\
```

```tex
-1 &= g_{ij}\dot{x}^i\dot{x}^j\\
&= \left[ -A(r)\dot{t}^2 + B(r)\dot{r}^2 + r^2(\dot{\theta}^2 + \sin^2\theta \dot{\phi}^2) \right]_{\theta = \frac{\theta}{2}}\\
&= -A(r)\dot{t}^2 + B(r)\dot{r}^2 + r^2\dot{\phi}^2
```

```tex
\ddot{r} + \delta \ddot{r} &= - \frac{1}{2} V'_N( r + \delta r)\\
&= - \frac{1}{2} V'_N(r) - \frac{1}{2} V''_N(r) \delta r -...
```

```tex
\delta r = ( C_1 + C_2 ) \cos \left( t\frac{M^4}{l^6} \right) + i( C_1 - C_2 ) \sin \left( t\frac{M^4}{l^6} \right)
```

```tex
\delta r = C_1 \exp \left( \lambda \sqrt{ - \frac{V''_G(r)}{2} } \right) + C_2 \exp \left( - \lambda \sqrt{ - \frac{V''_G(r)}{2} } \right)
```

```tex
0 &= \frac{dV_N(r)}{dr} = -2Mr^3 \left( \frac{l^2}{M} - r \right)\\
r_c &= \frac{l^2}{M}
```

```tex
\omega^{N}_{(r)} = \frac{V''_{N}(r_c)}{2} = \frac{M^4}{l^6}
```

```tex
0 &= \frac{dV_G(r)}{dr}\\
&= \frac{6Ml^2}{r^4} - \frac{2l^2}{r^3} + \frac{2M}{r^2}\\
\frac{r_{\pm}}{M} &= \frac{ l^2 \pm l \sqrt{(l+\sqrt{12})(l-\sqrt{12})} }{2M^2}
```

```tex
- \frac{V''_G(r)}{2} = \frac{l^2}{r^4} \left( \frac{6M}{r} - 1 \right)
```

```tex
- \frac{V''_G(r)}{2} = \frac{l^2}{r^4} \left( \frac{6M}{r} - 1 \right) \geq 0
```

```tex
\delta r = ( C_1 + C_2 ) \cos \left( t \frac{l}{r^2} \sqrt{ \frac{6M}{r} - 1 }
 \right) + i( C_1 - C_2 ) \sin \left( t \frac{l}{r^2} \sqrt{ \frac{6M}{r} - 1 }
 \right)
```

```tex
T_\phi &= \frac{ 2\pi }{ \dot{\phi}  } \\
&= \frac{ 2\pi }{ \left( \frac{M^2}{l^3} \right)  }
```

```tex
T_r = \frac{ 2\pi }{ \frac{V''_G(r)}{2} }  = \frac{ 2\pi }{ \left( \frac{1}{ r\sqrt{r-3} } \right) \sqrt{ 1 - \frac{6}{r} } }
```

```tex
\Delta \phi  &= \frac{ 2\pi }{ \left( \left( \frac{T_r}{T_\phi} \right) - 1 \right)  }\\
&= 2\pi \left( \frac{ M^2 r^2 }{l^4 \left( \frac{6M}{r} - 1 \right) } - 1\right)
```