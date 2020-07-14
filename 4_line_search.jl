# include("3_bracketing.jl")
# using bracket_minimum

function brent_dekker(f,a,b)
	if a > b; a,b = b,a end
	ya,yb = f(a),f(b)
	Δ = abs(f(b) - f(a))
	while Δ > 1e-8
		m = (a+b)/2
		ym = f(m)
		if ya < yb
			if ym < yb
				a,b, ya, yb = m,a, f(m), f(a)
			end
		else
			if ym < yb
				a,b, ya, yb = b,m, f(b), f(m)
			end
		end
		Δ = abs(f(b) - f(a))
	end
	return a,f(a)
end

f = x -> x^3 - 10*x^2 + 4*x + 12

println(brent_dekker(f,4,9))



# function line_search(f,x,d)
# 	objective = α -> f(x + α*d)
# 	a,b = bracket_minimum(objective)
# 	α = minimize(objective, a, b)
# 	return x + α*d
# end