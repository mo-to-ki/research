module CelestialBody
"""
CelestialBody
"""
    initial_conditions = [
        0.0,
        0.0,
        0.0,
        0.0,
        0.0,
    ]

    function diff_equation(du::Array{Float64, 1}, u::Array{Float64, 1}, p, t)
        diff_time, distance, diff_distance, phi, diff_phi = u

        du[1] = - ((2 / distance^2) / (1 - 2 / distance)) * diff_distance * diff_time
        du[2] = diff_distance
        du[3] =
            - ((2 / distance^2) / (2 * (1 / (1 - 2 / distance)))) * diff_time^2
            - (( - ( 2 / distance^2 ) / ( 1 - 2 / distance )^2 ) / ( 2 * (1 / (1 - 2 / distance)))) * diff_distance^2
            + (distance / (1 / (1 - 2 / distance))) * diff_phi^2
        du[4] = diff_phi
        du[5] = - (2 / distance) * diff_phi * diff_distance
    end
end
