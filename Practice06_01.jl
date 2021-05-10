#функция, получающая
#2 отсортированных массива A и B, и объединяющая их в одном отсортированном массиве 
#а)merge(A,B) - возвращает массив C
function merge(A::Vector{T},B::Vector{T})::Vector{T} where T
    i,j=1,1
    c = Array{Int}(undef,length(A)+length(B))
    for k in 1:(length(A)+length(B))
        if (i!=length(A)+1 && (j==length(B)+1 || A[i]<B[j]))
            c[k]=A[i]
            i+=1
        elseif (j!=length(B)+1)
            c[k]=B[j]
            j+=1
        end
    end
    return c
end
