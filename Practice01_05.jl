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
