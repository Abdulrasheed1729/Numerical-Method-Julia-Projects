#= ***********************************
   * Runge-Kutta fourth order method *
   ***********************************
 =#

#f(x,y) = 

function rungeKutta(α::Real, a::Real, h::Real, n::Int64)
    #h = (b-a)/n
     x = a
     y = α
        
         for i in 1:n
           k1 = h * f(x, y)
           k2 = h * f(x + h/2, y + k1/2)
           k3 = h * f(x + h/2, y + k2/2)
           k4 = h * f(x + h,y + k3)
           y = y + (k1 + 2*(k2 + k3)+ k4)/6
           x = a + i * h
            println("x = $x <-----> y = $y")
        end
    end
