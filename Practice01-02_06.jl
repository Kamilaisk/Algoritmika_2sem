#Написать функцию calcsort, реализующую сортировку методом подсчета числа значений
#первый вариант - некоторый диапазон
function calcsort(a::Vector{Int}, diap::NTuple{2, Int})
    l, r = diap
    N = r - l + 1
    nums = zeros(Int, N)
    for i in a
        nums[i - l + 1] += 1 
    end
    b = []
    for i in 1:(r - l + 1)
        for j in 1:nums[i]
            push!(b, i + l - 1)
        end
    end
    a = b
    return b 
end

 
#второй вариант - некоторый отсортированный массив (вектор)
function calcsort(a::Vector{Int}, diap::Vector{Int})
    N = length(diap)
    nums = zeros(Int, N)
    for x in a
        for i in 1:N
            if a == diap[i]
                nums[i] += 1
                break
            end
        end    
    end
    b = []
    for i in 1:N
        for j in 1:nums[i]
            push!(b,diap[i])
        end
    end
    a = b
    return b 
end
