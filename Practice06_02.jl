#а) c использованием 3-х вспомогательных массивов (с последующим их объединением в один)
function sort_with_three_arr(A::Vector{T},b::Int64)::Vector{T} where T
    A1 = Vector{Int}(undef,0)
    A2 = Vector{Int}(undef,0)
    A3 = Vector{Int}(undef,0)
    for a in A
        if (a<b)
            push!(A1,a)
        elseif (a==b)
            push!(A2,a)
        elseif (a>b)
            push!(A3,a)
        end
    end
    return append!(append!(A1,A2),A3)
end

#б) без использования вспомогательного массива
function sort_without_arr(A::Vector{T},b::Int64)::Vector{T} where T
    res = copy(A)
    move = 1
    for i in 1:length(A)
        if res[i]<=b
            res[move+1:i],res[move]=res[move:i-1],res[i]
            if res[move]<b
                move = move + 1
            end
        end
    end
    return res
end
