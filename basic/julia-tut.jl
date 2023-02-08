using Printf
using Statistics

s1 = "just some random numer \n"
println(length(s1))
println(s1[1])
println(s1[1:4])
println(s1[end-2])

s2 = string("Loc", "Luong")
println(s2)
println("Loc"*"Luong")
i3 = 2
i4 = 4
println("$i3 + $i4 = $(i3+i4)")
println("Loc" > "Luong")
println(findfirst(isequal('i'), "Bepheomapi"))

println(occursin("key","monkey"))
