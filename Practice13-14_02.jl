#определить тип, позволяющий итерировать все перестановки элементов заданного n элементного множества

#Задача 2
struct Permute{N} <: AbstractCombinObject
    value:Vector{Int}
end

Permute{N}() where N = Permute{N}(collect(1:N))

function next!(w::Permute{N}) where N
    p=get(w)
    k=0
    for i in N-1:-1:1
        if p[i] < p[i+1]
            k=i
            break
        end
    end
    if k==0
        return false
    end
    i=k+1
    while i < N && p[i+1] > p[k]
        i+=1
    end
    p[k], p[i] = p[i], p[k]
    reverse!(@view p[k+1:end])
    return true
end
