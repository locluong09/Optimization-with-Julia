using Plots
x = range(0, stop = 5, length = 101)
println(x)
y = cos.(2x + .5)
plot(x,y, linewidth = 2.0, linestyle = :auto)
# title("A nice plot of cosin")
# xlabel("x axis")
# ylabel("y axis")
