function bisection(f′, a,b; ε =1)
	if a > b; a,b = b,a end # ensure a = b
	ya,yb = f′(a),f′(b)
	if ya == 0; b = a; end
	if yb == 0; a = b; end
	while b-a > ε
		x = (a+b)/2
		y = f′(x)
		if y == 0
			a,b = x,x
		elseif sign(y) == sign(a)
			a = x
		else 
			b = x
		end
	end
	return (a,b)
end

f = x-> x^2

re = bisection(f,-5,5;ε =  1e-2)
println(re)

function bracket_sign_change(f′, a, b; k=2) 
	if a > b; a,b = b,a; end # ensure a < b
	center, half_width = (b+a)/2, (b-a)/2 
	while f′(a)*f′(b) > 0
		half_width *= k
		a = center - half_width 
		b = center + half_width
	end
	return (a,b) 
end

