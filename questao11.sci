peso = input("Insira seu peso: ")
altura = input("Insira sua altura: ")

imc = peso / (altura^2)

if imc <= 18.5
    mprintf("Magreza (%g)", imc)
elseif imc <= 25
    mprintf("Normal (%g)", imc)
elseif imc <= 30
    mprintf("Sobrepeso (%g)", imc)
else
    mprintf("Obeso (%g)", imc)
end
