x = input("Insira o domínio em x: ")
y = input("Insira a função: ")

legendaX = input("Legenda do eixo x: ")
legendaY = input("Legenda do eixo y: ")

titulo = input("Título do gráfico: ")
legenda = input("Legenda da função: ")

plot(x, y)
xlabel(legendaX)
ylabel(legendaY)
title(titulo)
legend(legenda)
