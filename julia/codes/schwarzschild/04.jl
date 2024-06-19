using Plots

# settings
M = 1

X_MIN = 0.1
X_LIM = 30
Y_MIN = 0.75
Y_LIM = 1.15

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

plot!(plt, [2,2] , [-10, 10], line=:dot, color=:black, label=nothing)
plot!(plt, [6,6] , [-10, 10], line=:dot, color=:black, label=nothing)

anim = @animate for L=10:-0.1:1
    x = X_MIN:0.01:X_LIM
    y = [ -2 * M * L^2 / r^3 + L^2 / r^2 - 2 * M / r + 1 for r in x]
    plot!(plt, x, y, color="#008080", label=nothing)
end
gif(anim, "../../images/schwarzschild/04.gif", fps = 15)
savefig("../../images/schwarzschild/04.png")

# L=4
# x = X_MIN:0.01:X_LIM
# y = [ -2 * M * L^2 / r^3 + L^2 / r^2 - 2 * M / r + 1 for r in x]

# plot!(plt, x, y, color="#008080", label=nothing)
# savefig("../../images/schwarzschild/04.png")