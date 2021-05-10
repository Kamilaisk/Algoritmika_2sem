#insertsort!
function insertsort!(a)
    n = length(a)
    for i in 2:n
        j = i - 1
        while j > 0 && a[j] > a[j + 1]
            a[j+1], a[j] = a[j], a[j+1]
            j -= 1
        end 
    end
    return a    
end

#insertsort
insertsort(a) = insertsort!(copy(a))

#insertsortPerm!
function insertsortPerm!(a)
    n = length(a)
    b = []
    for i in 1:n
        push!(b, i)
    end
    for i in 2:n
        j = i - 1
        while j > 0 && a[j] > a[j + 1]
            a[j+1], a[j] = a[j], a[j+1]
            b[j+1], b[j] = b[j], b[j + 1]
            j -= 1
        end 
    end

    return b
end

#insertsortPerm
insertsortPerm(a) = insertsortPerm!(copy(a))
