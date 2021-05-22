#= This program evaluate the lagrange interpolation at a particular point by collect inputs from the user 
and evaluate it 
Using the formula p(x) = ∑ ∏ (x-x_i)/(x_j - x_i)

=#

#=  **************************************
    *    Input collection from the user  *
    **************************************
=#
local  yp = 0
println("Please enter the number of values: ")
n = readline()
n = parse(Int64, n)
i = 1
x = zeros(n)
y = zeros(n)
println("Please enter data: \n")
for i in 1:n 
    println("x[$i] = " )
    x[i] = parse(Float64, readline())  #This will take in the values of x 
    println("y[$i] = ")
    y[i] = parse(Float64, readline()) # This will take in the values of y = f(x)
end
println("Enter interpolation point: ")
xp =parse(Float64, readline()) # This the point we want to interpolate at

#=  *******************************
    * Sum and products evaluation *
    *******************************
=#
for i in 1:n
    prod = 1
    for j in 1:n
        if i != j
            prod = prod * (xp - x[j])/(x[i] - x[j])
        end
    end
    yp = yp + prod * y[i]
end
println("Interpolated value at $xp is $yp")