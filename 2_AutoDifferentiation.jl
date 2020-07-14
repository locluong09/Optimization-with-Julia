struct Dual
	v
	d
end

Base. : +(a::Dual, b::Dual) = Dual(a.v +b.v, a.d + b.d)
Base. : *(a::Dual, b::Dual) = Dual(a.v * b.v, a.d*b.v +b.v*a.d)
Bade. : log(a::Dual) = Dual(log(a,v), a.d / a.v)

function Base.max(a::Dual, b::Dual)
	v = max(a.v, b.v)
	d = a.v > b.v ? a.d : a.v < b.v ? b.d : NaN
	return Dual(v,d)
end

function Base.max(a::Dual, b::Int)
	v = max(a.v, b)
	d = a.v > b ? a.d : a.v < b ? 0 : NaN
	return Dual(v,d)
end
