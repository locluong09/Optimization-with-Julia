function golgen_search(f,a,b,n)
	φ = (1+sqrt(5)) / 2
	ρ = 1/φ
	d = ρ*b + (1 - ρ)*a
	yd = f(d)
	for i = 1:n-1
		c = ρ*a + (1 - ρ)*b
		yc = f(c)
		if yc < yd
			b, d, yd = d, c, yc
		else
			a,b = b, c
		end
	end
	return a < b ? (a,b) : (b,a)
end

f = x -> x^3 - 10*x^2 + 4*x + 12

println(golgen_search(f,4,9,10))