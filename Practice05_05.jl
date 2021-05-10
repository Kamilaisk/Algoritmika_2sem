#деление многочлена на многочлен
function divrem(a::AbstractVector,b::AbstractVector)
    c_a = copy(a)
    d = length(a)-length(b)  #разница между степенями многочленов
    res = zeros(length(a)-length(b)+1)
    for i in 1:length(b)
        res[i]=c_a[i]/b[1]
        for j in 1:length(b)
            c_a[i+j-1]=c_a[i+j-1]-res[i]*b[j]
        end
        c_a[i] = 0
    end
    return res,c_a #c_a - остаток
end
