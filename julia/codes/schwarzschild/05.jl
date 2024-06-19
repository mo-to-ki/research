using Plots

# settings
M = 1

X_MIN = 0.1
X_LIM = 30
Y_MIN = 0.85
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

L=sqrt(12)
x = X_MIN:0.01:X_LIM
y = [ -2 * M * L^2 / r^3 + L^2 / r^2 - 2 * M / r + 1 for r in x]
plot!(plt, x, y, color="#008080", label=nothing)
r = 6 * M
scatter!(
    [r],
    [-2 * M * L^2 / r^3 + L^2 / r^2 - 2 * M / r + 1],
    color=:red, markerstrokewidth=0, label=nothing)

anim = @animate for L=round(sqrt(12), digits=1):0.1:10
    x = X_MIN:0.01:X_LIM
    y = [ -2 * M * L^2 / r^3 + L^2 / r^2 - 2 * M / r + 1 for r in x]
    plot!(plt, x, y, color="#008080", label=nothing)
    r_positive = L^2 * (1 + sqrt(1 - 12 * M^2 / L^2)) / (2 * M)
    r_negative = L^2 * (1 - sqrt(1 - 12 * M^2 / L^2)) / (2 * M)
    scatter!(
        [r_positive, r_negative],
        [
            -2 * M * L^2 / r_positive^3 + L^2 / r_positive^2 - 2 * M / r_positive + 1,
            -2 * M * L^2 / r_negative^3 + L^2 / r_negative^2 - 2 * M / r_negative + 1
        ],
        color=:red, markerstrokewidth=0, label=nothing)
end
gif(anim, "../../images/schwarzschild/05.gif", fps = 15)
savefig("../../images/schwarzschild/05.png")
