pos = 0; neg = 0
for i = 1:15
    num = input("Insira um número: ")
    if num > 0
        pos = pos + 1
    elseif num < 0
        neg = neg + 1
    end
end

mprintf("Quantidade de números negativos: %d\n", neg)
mprintf("Quantidade de números positivos: %d", pos)
