arr = [100, 75, 15, 10]
#println(typeof(arr))
arra = Any[100,"a"]
#println(arra)
arr2 = Array{Float64, 2}(undef, 2, 3)
println(arr2)
fill!(arr2, 100)
println(arr2)

arr3 = Float64[5,7]
arr4 = [1:1:7]
arr5 = Array{Float64, 3}(undef,(2,2,3))
fill!(arr5,1)
println(arr5)
println(arr4)

arr6 = [5,4,6]
sort!(arr6)
println(arr6)
using Dates
Dates.today()
Dates.Time(Dates.now())
const pi = 3.14
show(pi)
