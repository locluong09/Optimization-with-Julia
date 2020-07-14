using SymEngine
@vars x; #define x as symbolic variable
f = x^2 +x/2 -sin(x)/x
println(diff(f,x))