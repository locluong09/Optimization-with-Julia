function multiply(x,y)
    println("x is $x and y is $y")
    return x*y
end
res = multiply(2,3)
println(res)
function multi(x,y)
    x*y, mod(x,y), div(x,y), x%y
end

a,b,c = multi(5,2)
