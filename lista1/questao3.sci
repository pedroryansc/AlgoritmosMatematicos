for i = 1:15
    A(1, i) = i
end

for i = 1:15
    B(1, i) = A(1, i)^2
end

disp(A, B)
