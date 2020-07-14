x = "I am Julia"
println(x)
x = 5
y = 5
println(x+y)
#print_with_color(:red, "I love Julia")
x = "I am"
y = "Loc"
#println(x+y)

typeof(x)
typemax(Int128)
typemax(Float64)
isa(true, Bool)
Bool(1)
if 1 == 2 || 2==2
    print(100)
end
x = "abc"
for i = firstindex(x):lastindex(x)
    println(i)
end
y = [1,2,3,4]
for i = firstindex(y):lastindex(y)
    println(i^2)
end

#search("Julia", 'u')
#replace and split are nolonger exist in new verstion of Julia
