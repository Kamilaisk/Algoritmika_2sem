#2. Реализовать функцию, аналогичную встроенной функции copy для следующих случаев: 
#a) аргумент функции - вектор 
function copy_user(A::Vector{Int})
    B = Vector{Int}(undef, length(A))
    for i in 1:length(A)
        B[i] = A[i]
    end
    return B
end

#б) аргумент функции - матрица (2-мерный массив)
function copy_user(A::Matrix, dim = (2, 2))
    len_rows, len_columns = dim
    len_of_array = len_rows * len_columns
    A = reshape(A, len_of_array)
    B = copy_user(A)
    A = reshape(A, dim)
    B = reshape(A, dim)
end
 

