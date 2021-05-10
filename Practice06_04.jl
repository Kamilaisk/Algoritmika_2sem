#а) с использованием двух массивов длины n (плюс-минус 1)
function binomial_coeffs(n::Integer)::Vector{Int}
    c=Int[]
    for _ in 1:n
        c=[1, (@view c[1:end-1] .+ @view c[2:end])..., 1] # - это тоже самое, что и vcat(1, c[1:end-1] .+ c[2:end], 1)
    end
    return c
end

