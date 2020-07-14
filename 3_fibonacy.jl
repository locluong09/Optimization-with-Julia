function fibonaccy_search(f,a,b,n; ε = 1e-8)
	s = (1 - sqrt(5)) / (1+sqrt(5))
	φ = (1+sqrt(5)) /2
	ρ = 1 / (φ * (1-s^(n+1)) / (1 - s^n))
	d = ρ*b  + (1 - ρ)*a
	yd = f(d)
	for i in 1:n-1
		if i == n-1
			c = ε*a + (1 - ε)*d
		else
			c = ρ*a + (1- ρ)*b
		end
		yc = f(c)
		if yc < yd
			b , d, yd = d, c, yc
		else
			a, b = b, c
		end
		ρ = 1 / (φ*(1-s^(n-i+1))/(1-s^(n-i)))
		println(a)
		println(b)
	end
	return a < b ? (a,b) : (b,a)
end

f = x -> x^3 - 10*x^2 + 4*x + 12

println(fibonaccy_search(f,4,9,10))