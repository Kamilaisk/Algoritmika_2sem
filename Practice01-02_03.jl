#Реализовать алгоритм сортировки методом пузырька, написав следующие 4 обобщенные функции: bubblesort, bubblesort!, bubblesortperm, bubblesortperm!, 
#по аналогии со встоенными функциями sort!, sort, sortperm!, sortperm, ограничившись только случаем, когда входной параметр есть одномерный массив (вектор).
 
#bubblesort!
function bubblesort!(a)
    n = length(a)
    for k in 1:n-1
        istranspose = false
        for i in 1:n-k
            if a[i]>a[i+1]
                a[i], a[i+1] = a[i+1], a[i]
                istranspose = true
            end
        end
        if istranspose == false
            break
        end
    end
    return a
end

#bubblesort
bubblesort(a)=bubblesort!(deepcopy(a))

#bubblesortperm!
function bubblesortperm!(a)
    n = length(a)
    indexes = collect(1:n)
    for k in 1:n-1
        istranspose = false
        for i in 1:n-k
            if a[i]>a[i+1]
                a[i],a[i+1]=a[i+1],a[i]
                indexes[i],indexes[i+1]=indexes[i+1],indexes[i]
                istranspose = true
            end
        end
        if istranspose == false
            break
        end
    end
    return indexes
end
 
#bubblesortperm
bubblesortperm(a)=bubblesortperm!(deepcopy(a))
