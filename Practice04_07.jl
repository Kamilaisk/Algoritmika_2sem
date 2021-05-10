#вставка элемента массива
function delete_at!(a::Vector, inds::Vector{Int})::Vector
    b = []
    j = 1
    for i in 1:length(a)
        if j > length(inds) || i != inds[j]
            push!(b, a[i])
        else
            j += 1
        end
    end
    a = b
end

#добавление элемента массива
function insert_at!(a::Vector, index::Int, item)
    push!(a,0)
    N = length(a)
    for i in N:-1:index
        a[i] = a[i-1]
    end
    a[index] = item
end
