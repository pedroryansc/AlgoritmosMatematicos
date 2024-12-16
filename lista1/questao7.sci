x1 = input("Insira a abscissa (x) do ponto A: ")
y1 = input("Insira a ordenada (y) do ponto A: ")

x2 = input("Insira a abscissa (x) do ponto B: ")
y2 = input("Insira a ordenada (y) do ponto B: ")

if x1 == x2
    disp("A reta AB é paralela ao eixo Y.")
elseif y1 == y2
    disp("A reta AB é paralela ao eixo X.")
else
    disp("A reta não é paralela aos eixos cartesianos.")
end

plot([x1 x2], [y1 y2])
