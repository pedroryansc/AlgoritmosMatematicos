for i = 1:3
    mprintf("Insira o valor do %dº lado:", i)
    lado(i) = input("")
end

if lado(1) > 0 & lado(2) > 0 & lado(3) > 0
    if lado(1) == lado(2) & lado(2) == lado(3)
        disp("Triângulo equilátero")
    elseif lado(1) == lado(2) | lado(2) == lado(3) | lado(1) == lado(3)
        disp("Triângulo isósceles")
    else
        disp("Triângulo escaleno")
    end
else
    disp("Os lados de um triângulo devem ser maiores do que zero.")
end
