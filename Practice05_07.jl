#вифференцирование и интегрирования
function diffpoly(p)
    res = zeros(length(p.a)-1)
    for i in 1:length(res)
        res[i]=(length(p.a)-i)*p.a[i]
    end
    return Poly{Real}(res)
end

#интегрирования
function intpoly(p)
    res = zeros(length(p.a))
    for i in 1:length(res)
        res[i]=p.a[i]/(length(p.a)-i+1)
    end
    return Poly{Real}(res)
end
