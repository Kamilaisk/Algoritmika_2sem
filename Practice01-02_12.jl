#функция, возвращающая вектор, составленный из индексов элементов входной последовательности, на которых заданная функция достигает максимального значения 
function findallmax(f::Function, a)
    b = copy(a)
    for i in 1:length(b)
        b[i] = f(b[i])
    return findallmax(b)
end
