function permute_!(a::Vector, perm::Vector{Int})
    for i in 1:length(A)
        j = 1
        while perm[j] != i
            j += 1
        end
        a[j],a[i] = a[i], a[j]
        perm[i], perm[j] = perm[j], perm[i] 
    end
end
