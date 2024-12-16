consumo = input("Média de consumo do seu carro (km/litro): ")
litros = input("Quantidade de litros no tanque: ")
distancia = input("Distância que será percorrida: ")

media = distancia / litros

if consumo >= media
    disp("Você conseguirá completar o percurso.") 
else
    litrosNecessarios = distancia / consumo
    mprintf("Você não conseguirá completar o percurso. No total, será(ão) necessário(s) %g litro(s).", litrosNecessarios)
end
