#= ***********************************
   * Runge-Kutta fourth order method *
   ***********************************
 =#

function rungeKutta(α::Real, a::Real, h::Real, n::Int64)
    #h = (b-a)/n
     t = a
     w = α
        
         for i in 1:n
           k1 = h * j(t, w)
           k2 = h * j(t + h/2, w + k1/2)
           k3 = h * j(t + h/2, w + k2/2)
           k4 = h * j(t + h,w + k3)
           w = w + (k1 + 2*(k2 + k3)+ k4)/6
           t = a + i * h
            println("t = $t <-----> w = $w")
        end
    end