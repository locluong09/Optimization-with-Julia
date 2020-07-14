i = 0
ρ = sqrt(5)
println(ρ)
while true
	global i = i +1
	println(i)
	if i >= 5
		println("This will end at i = 5")
		break
	end

end

for i = 1 : 10
	if i%3 != 0
		println(i)
	end
end

for i in 1:10
	if i%3 != 0
		continue
	end
	println(i)
end

function test(x::Int64)
	i = 0
	while true
		i += 1
		if i >= x
			return i
		end
	end
end
println(test(13))