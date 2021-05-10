#На основе разработанных в пункте 1 функций, сотрирующих одномерный массив, написать соответствующие функции, которые бы могли получать на вход матрицу, 
#и сортировать каждый из ее столбцов по отдельности

#Для матрицы
function bubbleSort!(A::Matrix)
    _ , column_size = size(A)
    for i in 1:column_size
        column = @view A[:, i]
        bubbleSort!(column)
    end
end

bubbleSort(A::Matrix) = bubbleSort!(copy(A))

function BubbleSortPerm!(A::Matrix)
    row_size , column_size = size(A)
    B = copy(A)
    k = 0
    for i in 1:column_size
        column = @view A[:, i]
        index_array = BubbleSortPerm!(column)
        index_column = @view B[: , i]
        for j in 1:row_size
            index_column[j] = index_array[j] + k
        end
        k += 2
    end

    return B
end

BubbleSortPerm(A::Matrix) = BubbleSortPerm!(copy(A))
 
