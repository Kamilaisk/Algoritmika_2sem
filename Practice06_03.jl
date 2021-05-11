#функция, выполняющую частичную сортировку 
function sort_2(A::Vector{T},b::Int64)::Vector{T} where T
    A1 = Vector{Int}(undef,0)
    A2 = Vector{Int}(undef,0)
    for a in A
        if (a<=b)
            push!(A1,a)
        else
            push!(A2,a)
        end
    end
    return append!(A1,A2)
end
