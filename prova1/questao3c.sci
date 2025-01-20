h = deff("z = g(x)", "z = cos((%pi * (x + 1)) / 8) + 0.4180 * x - 0.9062")

a = -1
b = 0

while h(a) ~= 0 & h(b) ~= 0
    x = (a + b) / 2
    resultado = h(x)
    if h(a) * h(x) < 0
        b = x
    else
        a = x
    end
    plot(a:0.01:b, h)
end

format(11)
mprintf("Aproximação da raiz com a precisão 1 x 10^(-8): ")
disp(a)
