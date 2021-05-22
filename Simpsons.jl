#= **********************
   *   Simpson Rule     *
   **********************
 =#

function simps(h::Function, a::Real, b::Real)
    (h(a) + 4h((a + b)/2) + h(b)) * (b - a)/6
end