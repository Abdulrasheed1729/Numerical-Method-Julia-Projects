#= ****************************
   *  Simple Trapezoidal rule *
   ****************************
 =#

function trapezoid(g::Function, a::Real, b::Real)
    (g(a) + g(b)) * (b - a)/2
end

#=  *******************************
    * Composite Trapezoidal rule  *
    *******************************
 =#

 function comptrapezoid(f::Function, a::Real, b::Real, n::Int64)
    h = (b - a)/n
    nodes = Array{Float64}(undef, n+1)
    for i in 1:n+1
        nodes[i] = a + (i-1)h
    end
    sum = f(a) + f(b)
    for i in 2:n-1
        sum = sum + 2 * f(nodes[i])
    end
    return (sum * h/2)
end