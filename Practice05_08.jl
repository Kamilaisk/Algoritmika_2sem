function currentstd(series)
    S¹ = eltype(series)(0)
    S² = eltype(series)(0)
    D=0
    M=0
    std = zeros(length(series))
    for (n,a) in enumerate(series)
        S¹ += a
        S² += a^2
        M = S¹/n
        D = S²/n-M^2
        std[n] = sqrt(D)
    end
    return std
end
