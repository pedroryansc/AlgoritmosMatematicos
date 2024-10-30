A = [8 3 5 7 2 9 1 4 6 10]

// B = gsort(A, "g", "d")

B = A

for i = 1:length(B)
    for j = 1:(length(B) - 1)
        if B(1, j) < B(1, j + 1)
            aux = B(1, j)
            B(1, j) = B(1, j + 1)
            B(1, j + 1) = aux
        end
    end
end

disp(A, B)
