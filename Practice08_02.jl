function mergesort2!(a)
    k=1
    i=1
    while (2*k<length(a))
        if (i>=length(a))
            i=1
            k*=2
        end
        elem_r = i+2k-1
        if (i+2k-1>length(a))
            elem_r = length(a)
        end
        b=merge(a[i:i+k-1], a[i+k:elem_r])
        a[i:elem_r]=b
        i+=2*k
    end
    return a
end
