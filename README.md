# 研究のバックアップ


## julia
自分の卒業研究では、興味の持ったものをできる限り追求してみることにした。  
その一環として、プログラミング言語も、自分の興味がある julia を採用した。

### ファイル名の規約
codes フォルダのと images フォルダと tex の images フォルダは対応関係にあり  

例えば  
`codes/schwarzschild/01.jl`  
`images/schwarzschild/01.png`  
`tex/lerning/images/schwarzschild/01.png`  
のファイルが対応関係にある。

`codes/schwarzschild/01.jl`  
で作成した画像が  
`images/schwarzschild/01.png`  
で、これを編集したものが  
`tex/lerning/images/schwarzschild/01.png`  
___
### codes の説明

#### schwarzschild

以下の式を plot した

$$
V_{eff}(r) = - \frac{2Ml^2}{r^3} + \frac{l^2}{r^2} - \frac{2M}{r} + 1
$$

**01.jl**  
極値を持つ場合  
$M=1$ $l=4$ で plot し、見やすいように拡大

**02.jl**  
極値を持つ場合  
$M=1$ $l=4$ で plot し、全体像がわかりやすいように縮小

**03.jl**  
極値を持たない場合  
$M=1$ $l=1$ で plot


