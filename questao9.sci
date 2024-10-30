x = input("Insira a abscissa do ponto A: ")
y = input("Insira a ordenada do ponto A: ")

if x > 0
    if y > 0
        disp("O ponto A está no 1º quadrante.")
    elseif y < 0
        disp("O ponto A está no 4º quadrante.")
    else
        disp("O ponto A está no eixo X.")
    end
elseif x < 0
    if y > 0
        disp("O ponto A está no 2º quadrante.")
    elseif y < 0
        disp("O ponto A está no 3º quadrante.")
    else
        disp("O ponto A está no eixo X.")
    end
else
    if y > 0 | y < 0
        disp("O ponto A está no eixo Y")
    else
        disp("O ponto A está na origem.")
    end
end
