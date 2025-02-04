function S=eliminacaoGauss(A)
    // Inicialização de variáveis
    
    quantLinhas = size(A, "r")
    quantColunas = size(A, "c")
    
    // Escalonamento/Triangularização
    
    for i = 1:quantLinhas // Laço de repetição da linha base
        // Pivoteamento
        maior = i
        
        for j = (i+1):quantLinhas
            if abs(A(j,i)) > abs(A(maior,i)) then
                maior = j
            end
        end
        
        aux = A(i,:)
        A(i,:) = A(maior,:)
        A(maior,:) = aux
        
        for j = (i+1):quantLinhas // Laço das linhas que são alteradas
            if A(j,i) <> 0 then
                multiplicador = A(j,i) / A(i,i) // Constante que multiplicará a linha base
                for k = (i+1):quantColunas // Laço das colunas que são alteradas
                    A(j,k) = A(j,k) - multiplicador * A(i,k) // Cálculo do novo valor do elemento atual
                end
                
                A(j,i) = 0
            end
            disp(A)
            mprintf("\n")
        end
    end
    
    // Retrossubstituição
    
    for i = quantLinhas:-1:1
        S(i) = A(i,quantColunas)
        
        for j = (i+1):(quantColunas - 1)
            S(i) = S(i) - (A(i,j) * S(j))
        end
        
        S(i) = S(i) / A(i,i)
    end
endfunction

matrizA = [2.4579 1.6235 4.6231; 1.4725 0.9589 -1.3253; 2.6951 2.8966 -1.4794]

matrizB = [0.00647; 1.0473; -0.6789]

matrizAmpliada = matrizA
matrizAmpliada(:, size(matrizAmpliada, "c") + 1) = matrizB

resultado = eliminacaoGauss(matrizAmpliada)

diferenca = matrizB - matrizA * resultado

matrizRefinar = matrizA
matrizRefinar(:, size(matrizRefinar, "c") + 1) = diferenca

refinamento = eliminacaoGauss(matrizRefinar)

solucao = resultado + refinamento
