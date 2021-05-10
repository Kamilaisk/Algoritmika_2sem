function slice(A::Vector{T},p::Vector{Int})::Vector{T} where T
    return A[p]
end

function permute_!(A::Vector{T},perm::Vector{Int})::Vector{T} where T
    return slice(A,perm);
end
