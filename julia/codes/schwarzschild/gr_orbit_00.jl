using DifferentialEquations
using Plots

function A(r)
    return 1 - 2 / r
end

function B(r)
    return 1 / A(r)
end

function A_prime(r)
    return 2 / r^2
end

function B_prime(r)
    return - A_prime(r) / A(r)^2
end

# Define the system of differential equations
function f!(du, u, p, t)
    dot_t, r, dot_r, phi, dot_phi = u

    du[1] = - (A_prime(r) / A(r)) * dot_r * dot_t
    du[2] = dot_r
    du[3] = - (A_prime(r) / B(r)) * dot_t^2 - (B_prime(r)/2*B(r)) * dot_r^2 - (r/B(r)) * dot_phi^2
    du[4] = 1/r^2
    du[5] = - (2 / r) * dot_phi * dot_r
end

u0 = [0.0, 1.0, 0.2, 0.0, 0.0]
tspan = (0.0, 50.0)

prob = ODEProblem(f!, u0, tspan)
sol = solve(prob, Tsit5(), saveat=0.1)

t = sol.t
r = [u[2] for u in sol.u]
phi = [u[4] for u in sol.u]

plt = plot()

x = [r[i]*cos(phi[i]) for i in 1:length(r)]
y = [r[i]*sin(phi[i]) for i in 1:length(r)]
plot!(plt, x, y, label=nothing)

savefig("../../images/schwarzschild/gr_orbit_00.png")
