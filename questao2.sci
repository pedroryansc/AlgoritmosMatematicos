soma = 0
for i = 10:50
    if modulo(i, 2) ~= 0
        soma = soma + i
    end
end
mprintf("Soma dos números ímpares entre 10 e 50: %d", soma)
