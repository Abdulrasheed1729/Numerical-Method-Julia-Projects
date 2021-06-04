#---------------AdamsBashforth-Moulton Formula -----------------------#
f(x,y) = 1/x^2 - y/x 
println("Enter the number of data: ")
num = parse(Int64, readline())
x = zeros(num)
y = zeros(num)
yprime = zeros(num)
println("Enter data: ")
for i in 1:(num)
    println("x[$i] = ")
    x[i] = parse(Float64, readline())
    println("y[$i] = ")
    y[i] = parse(Float64, readline())
end
println("Enter the initial value for the independent variable: ")
x0 = parse(Float64, readline())
println("Enter the value you want to evaluate at: ")
xn = parse(Float64, readline())
println("Enter the step size: ")
h = parse(Float64, readline())

for i in 1:num
    yprime[i] = f(x[i], y[i])
end
yp = y[num] + ((h)/24)*(55*yprime[num] - 59*yprime[num-1] + 37*yprime[num-2] - 9*yprime[num-3])
println("By Adams-Bashforth-Moulton Predictor method we have y($xn) = $yp")
yn = f(xn,yp)
yc = y[num] + (h/24)*(yprime[num-2] - 5*yprime[num-1] + 19*yprime[num]+ 9*yn)
println("By Adams-Bashforth-Moulton Corrector method we have y($xn) = $yc")
