using Plots

# settings
M = 1
L = 4

X_MIN = 0.1
X_LIM = 30
Y_MIN = 0.75
Y_LIM = 1.15

x = X_MIN:0.01:X_LIM

plt = plot(
    size=(800, 800),
    xlims=(0, X_LIM),
    ylims=(Y_MIN, Y_LIM),
    grid=false,
    # xaxis=false,
    # yaxis=false,
    # xticks=false,
    # yticks=false,
)

hline!(plt, [0, 100] , [0, 0], line=:dot, color=:black, label=nothing, linewidth=0.5)

y_1 = [ -2 * M * L^2 / x^3 for x in x]
y_2 = [ L^2 / x^2 for x in x]
y_3 = [ - 2 * M / x for x in x]
y_total = y_1 + y_2 + y_3 .+ 1

index = findfirst(x -> x == 12, x)
tmp_y = y_total[index]
println(tmp_y)
hline!(plt, [0, 100] , [tmp_y, tmp_y], line=:dot, color=:black, label=nothing, linewidth=0.5)

index = findfirst(x -> x == 4, x)
tmp_y = y_total[index]
println(tmp_y)
hline!(plt, [0, 100] , [tmp_y, tmp_y], line=:dot, color=:black, label=nothing, linewidth=0.5)

plot!(plt, x, y_1, line=:dash, color="#008080", label=nothing)
plot!(plt, x, y_2, line=:dash, color="#2f4f4f", label=nothing)
plot!(plt, x, y_3, line=:dash, color="#006400", label=nothing)
plot!(plt, x, y_total, line=:solid, color=:red, label=nothing, linewidth=2)

savefig("../../images/schwarzschild/01.png")
