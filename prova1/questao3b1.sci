h = deff("z = g(x)", "z = cos((%pi * (x + 1)) / 8) + 0.4180 * x - 0.9062")

a = -2
mprintf("a = %g\n", a)
b = 1
mprintf("b = %g\n", b)

mprintf("h(a) = %g\n", h(a))
mprintf("h(b) = %g\n", h(b))

for i = 1:3
    x = (a + b) / 2
    mprintf("Ponto médio (x) = %g\n", x)
    resultado = h(x)
    mprintf("h(%g) = %g\n", x, resultado)
    if h(a) * h(x) < 0
        b = x
        disp("b = x")
    else
        a = x
        disp("a = x")
    end
    plot(a:0.01:b, h)
end
