#функция, возвращающая соответствующий срез неокоторого одномерного массива A
function slice(A::Vector{T},p::Vector{Int})::Vector{T} where T
    return A[p]
end
