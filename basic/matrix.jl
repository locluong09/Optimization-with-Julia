ma1 = rand(3,5)
ma2 = [1 2; 3 4]
vector = [1,2,3]
vector2 = [1;2;3]
row_vector = [1 2 3]
size(ma1)
ndims(ma1)
row,col = size(ma1)
println(ma1[:,2])
using LinearAlgebra
idm = I(3)
println(idm)
transpose(ma1)
v = [1., 2., 3.]
w = [4., 5., 6.]
z = hcat(v,w)
t = vcat(v,w)
println(t)
println(z)
println(ma2)
v1 = [1 2 3]
w1 = [4 5 6]
z1 = hcat(v1,w1)
t1 = vcat(v1,w1)
println(z1,t1)
a = reshape(1:10, 5, 2)
