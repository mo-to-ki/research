using DifferentialEquations
using Plots

function ode_system!(du, u, p, t)
    r, dot_r, theta = u
    du[1] = dot_r
    du[2] = 1/r^3 - 1/r^2
    du[3] = 1/r^2
end

u0 = [1.0, 0.2, 0.0]

tspan = (0.0, 50.0)

prob = ODEProblem(ode_system!, u0, tspan)
sol = solve(prob, Tsit5(), saveat=0.1)

t = sol.t
r = [u[1] for u in sol.u]
theta = [u[3] for u in sol.u]

plot()

x = [r[i]*cos(theta[i]) for i in 1:length(r)]
y = [r[i]*sin(theta[i]) for i in 1:length(r)]
plot!(x, y, label=nothing)

savefig("../../images/schwarzschild/cm_orbit_00.png")
