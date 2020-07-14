struct Pt
	x
	y
end
function get_sp_intersection(A,B,l)
	t = ((A.y - B.y) - l*(A.x - B.x))/(2l)
	return Pt(A.x + t, B.y - t*l)
end

function shubert_piyavskii(f,a,b,l,ε, δ = 0.01)
	m = (a+b)/2
	A,M,B = Pt(a,f(a)), Pt(m,f(m)), Pt(b,f(b))
	pts = [A, get_sp_intersection(A,M,l), M, get_sp_intersection(M,B,l), B]
	println(pts)
	Δ = Inf
	while Δ > ε
		i = argmin([P.y for P in pts])
		P = Pt(pts[i].x, f(pts[i].x))
		Δ = P.y - pts[i].y

		P_prev = get_sp_intersection(pts[i-1], P,l)
		P_next = get_sp_intersection(P, pts[i+1], l)

		deleteat!(pts,i)
		insert!(pts,i,P_next)
		insert!(pts,i,P)
		insert!(pts,i,P_prev)
	end
	#println(pts)
	intervals = []
	i = 2*(argmin([P.y for P in pts[1:2:end]])) - 1
	for j in 2:2:length(pts)
		if pts[j].y < pts[i].y
			dy = pts[i].y - pts[j].y
			x_lo = max(a, pts[j].x - dy/l)
			x_hi = max(b, pts[j].x + dy/l)
			if !isempty(intervals) && intervals[end][2] + δ >= x_lo
				intervals[end] = (intervals[end][1], x_hi)
			else
				push!(intervals,(x_lo, x_hi))
			end
		end
	end
	return (pts[i], intervals)
end

f = x -> x^3 - 10*x^2 + 4*x + 12

println(shubert_piyavskii(f,4,9,100,1e-2))
