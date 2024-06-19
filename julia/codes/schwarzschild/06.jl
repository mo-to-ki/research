"""
r_+, r_- の範囲に関する plot
"""

using Plots

# settings
M = 1

X_MIN = 0.1
X_LIM = 20
Y_MIN = -1
Y_LIM = 50

plt = plot(
    size=(800, 800),
    xlims=(0, X_LIM),
    ylims=(Y_MIN, Y_LIM),
    grid=false,
)

x = round(sqrt(12), digits=1):0.1:100
y_positive = [ (1/2) * x^2 * (1 + sqrt(1 - 12/x^2)) for x in x]
y_negative = [ (1/2) * x^2 * (1 - sqrt(1 - 12/x^2)) for x in x]

plot!(plt, [0,100] , [6, 6], line=:dot, color=:black, label=nothing)
plot!(plt, [0,100] , [2, 2], line=:dot, color=:black, label=nothing)
plot!(plt, [sqrt(12),sqrt(12)] , [-100, 100], line=:dot, color=:black, label=nothing)

println(x)
plot!(plt, x, y_positive, line=:solid , color="#2f4f4f", label=nothing, linewidth=2)
plot!(plt, x, y_negative, line=:solid , color="#2f4f4f", label=nothing, linewidth=2)
# plot!(plt, x, y_1, line=:dash, color="#008080", label=nothing)

savefig("../../images/schwarzschild/06.png")