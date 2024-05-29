using Plots


plt = plot(size=(800, 800))
x = 0.9:0.01:6
size = length(x)

# first plot
y = [-1 / x + 1 / x^2 for x in x]
plot!(
    plt,
    x, y,
    line=:solid, # line=:dash, line=:dot, line=:dashdot,
    # xlabel="x", ylabel="y",
    color=:blue,
    label=nothing,
)

# second plot
y = [-1/x for x in x]
plot!(
    plt,
    x, y,
    line=:dashdot,
    color=:red,
    label=nothing,
)

# third plot
y = [1/x^2 for x in x]
plot!(
    plt,
    x, y,
    line=:dashdot,
    color=:red,
    label=nothing,
)

savefig("test" * ".png")