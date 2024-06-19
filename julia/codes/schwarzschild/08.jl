using Plots

# settings
plt = plot(
    size=(800, 800),
    xlims=(0, 40),
    ylims=(0, 50),
    grid=false,
    # xaxis=false,
    # yaxis=false,
    # xticks=false,
    # yticks=false,
)

plot!(plt, [3, 3] , [0, 100], line=:dot, color=:black, label=nothing, linewidth=0.5)
plot!(plt, [6, 6] , [0, 100], line=:dot, color=:black, label=nothing, linewidth=0.5)
plot!(plt, [0, 100] , [0, 100], line=:dot, color=:black, label=nothing, linewidth=0.5)

x = 3.1:0.01:40
y = [ x^2 / (x-3) for x in x]
plot!(plt, x, y, line=:solid, color=:red, label=nothing, linewidth=2)

savefig(plt, "../../images/schwarzschild/08.png")
