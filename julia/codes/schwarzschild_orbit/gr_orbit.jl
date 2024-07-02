using DifferentialEquations
using .CelestialBody

CelestialBody.initial_conditions = [
    diff_distance, distance, diff_distance, phi, diff_phi
]

tspan = (0.0, 10.0)
prob = ODEProblem(CelestialBody.diff_equation, CelestialBod.initial_conditions, tspan)
sol = solve(prob)

println(sol)