#Написать функцию sortkey!(a, key_values)
function sortkey!(a::Vector{Int}, key_value::Vector{Int})
    index_array = BubbleSortPerm!(a)
    b = copy(a)
    for i in 1:length(a)
        a = b[index_array[i]]
    end
end

function sortkey!(f::Function, a)
    b = []
    for i in a
        push!(b,f(i))
    end
    indperm = sortperm(b)
    return indperm
end

 отсортировать столбцы какой-либо заданной числовой матрицы в порядке 
а) не убывания их сумм 
function sum(a)
    s = 0
    for i in a
        s += i
    end
    return s
end

function sortSum!(A::Matrix)
    row_size, column_size = size(A)
    B = []
    for i in 1:column_size
        push!(B, A[:,i])
    end
    index_array = sortkey!(x -> sum(x), B)
    B = copy(A)
    for i in 1:column_size
        C = @view A[: , i]
        ArraysCanBeAppropriated!(C, B[: , index_array[i]])
    end
end


б) не убывания числа нулей в них
function zeroescount(a::Vector{Int})
    s = 0
    for i in a
        if i == 0
            s+=1
        end
    end
    return s
end
 
function Assignment!(A, B)
    n = length(A)
    for i in 1:n
        A[i] = B[i]
    end
end

function sortZeroes!(A::Matrix)
    row_size, column_size = size(A)
    B = []
    for i in 1:column_size
        push!(B, A[:,i])
    end
    index_array = sortkey!(x -> zeroescount(x), B)
    B = copy(A)
    for i in 1:column_size
        C = @view A[: , i]
       Assignment!(C, B[: , index_array[i]])
    end
end

