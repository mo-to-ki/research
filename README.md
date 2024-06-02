# 研究のバックアップ

## tex
`./tex/learning`  
に学んだ内容を保存している。

## julia
自分の卒業研究では、興味の持ったものをできる限り追求してみることにした。  
その一環として、プログラミング言語も興味がある julia を採用した。

### ファイル名の規約
codes フォルダのと images フォルダと tex の images フォルダは対応関係にあり  

例えば  
`codes/schwarzschild/01.jl`  
`images/schwarzschild/01.png`  
`tex/lerning/images/schwarzschild/01.png`  
のファイルが対応関係にある。
___
### codes の説明

#### schwarzschild

以下の式を plot した

$$
V_{eff}(r) = - \frac{2Ml^2}{r^3} + \frac{l^2}{r^2} - \frac{2M}{r} + 1
$$

**01.jl**  
$M=1$ $l=4$ で plot し、見やすいように拡大

**02.jl**  
$M=1$ $l=4$ で plot

**03.jl**  
$M=1$ $l=1$ で plot

___
## 参考文献

ブラックホール関連  
https://webspace.science.uu.nl/~hooft101/lectures/blackholes/BH_lecturenotes.pdf  
