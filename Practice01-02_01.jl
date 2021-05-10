#Реализовать функцию, аналогичную встроенной функции reverse!, назвав её reverse_user!,
#для следующих случаев

#a) аргумент функции - вектор
function reverse_user!(A::Vector{Int})
    len = length(A)
    N = isodd(len) ? (len ÷ 2 + 1) : (len ÷ 2)
    for i in 1:N
        A[i], A[ len - i + 1] = A[len - i + 1], A[i]
    end
end

 #б) аргумент функции - матрица (2-мерный массив)
 function reverse_user!(A::Matrix, dim = (2, 2))
    len_rows, len_columns = dim
    len_of_array = len_rows * len_columns
    A = reshape(A, len_of_array)
    reverse_user!(A)
    A = reshape(A, (len_rows, len_columns))
end
 
