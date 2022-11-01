include("SDPSolver.jl")

T = Float64

function test()
    A, C = zeros(T, 2, 2, 2), zeros(T, 2, 2)
    A[1, 1, 1] = 1
    A[2, 2, 2] = 1
    C[1, 2], C[2, 1] = 1, 1
    A = [A]
    C = [C]
    c = [2, 3]
    B = Matrix{T}(undef, 2, 0)
    b = Array{T}(undef, 0)

    prob = sdp(100, c, A, C, B, b, 0.1, 1, 1, 1e-10, 1e-10, 1e-10, 200, "opt")
    println("\nStatus: ", prob["status"])
end

test()
