function eratosphen(n::Integer)
    ser=fill(true,n)
    ser[1]=false
    k=2
    #=ИНВАРИАНТ: 
    - число k - простое
    - все элементы в ser[1:k] c простыми индексами, и только они, имеют значение true
    =#
    while k<n || k != nothing
        ser[2k:k:end] .= false # но лучше: numser[k^2:k:end] .= false
        k=findnext(ser, k+1)
    end
    return findall(ser)
end
