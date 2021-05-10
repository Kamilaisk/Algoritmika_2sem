#функция, возвращающая вектор, составленный из индексов элементов входной последовательности, на которых заданная функция достигает максимального значения 
function findallmax(f::Function, a)
    a1 = copy(a)
    for i in 1:length(a1)
        a1[i] = f(a1[i])
    return findallmax(a1)
end
