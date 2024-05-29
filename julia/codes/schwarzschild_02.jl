using Plots

# settings
M = 1
L = 1

X_MIN = 0.1
X_LIM = 10
Y_MIN = -10
Y_LIM = 10

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

hline!(plt, [0, 100] , [0, 0], line=:solid, color=:black, label=nothing)

y_1 = [ -2 * M * L^2 / x^3 for x in x]
y_2 = [ L^2 / x^2 for x in x]
y_3 = [ - 2 * M / x for x in x]
y_total = y_1 + y_2 + y_3

plot!(plt, x, y_1, line=:dash, color="#008080", label=nothing)
plot!(plt, x, y_2, line=:dash, color="#2f4f4f", label=nothing)
plot!(plt, x, y_3, line=:dash, color="#006400", label=nothing)
plot!(plt, x, y_total, line=:solid, color=:red, label=nothing, linewidth=2)

savefig("../images/schwarzschild/0529_02.png")
