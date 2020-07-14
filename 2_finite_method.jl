diff_foward(f,x; h = sqrt(eps(Float64))) = (f(x+h) - f(x)) / h
diff_central(f,x; h = cbrt(eps(Float64))) = (f(x+h/2) - f(x-h/2)) / h
diff_backward(f,x; h = sqrt(eps(Float64))) = (f(x) - f(x-h)) / h
diff_complex(f,x; h = 1e-20) = imag(f(X+h*im)) / h

f = x -> sin(x)
println(diff_foward(f,2;h=0.01))