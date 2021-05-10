#функция, возвращающая вектор, составленный из индексов элементов входной последовательности, имеющих максимальное значение
function findallmax(a)
    m = maximum(a)
    b = []
    for i in 1:length(a)
        if a[i] == m
            push!(b, i)
        end
    end
    
    return b    
end
