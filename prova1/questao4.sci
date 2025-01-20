x = (-2:0.1:2) * %pi
c = cos(x)

plot(x, c)

y = x / 2

plot(x, y)

f = (c - y) .^ 2

plot(x, f)
