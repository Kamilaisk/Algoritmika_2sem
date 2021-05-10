function unique_!(a::Vector)::Vector
    sort!(a)
    b = []
    k = 0
    for x in a
        if k == 0 || b[k] < x
            push!(b, x)
            k += 1
        end
    end

    return b
end

unique_(a::Vector) = unique!(copy(a))
