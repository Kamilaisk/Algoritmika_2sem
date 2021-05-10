#функция, реализуюшщая быстрый поиск  
function quicsearch(iter, value)
    l = 1
    r = lastindex(iter)
    n = r

    while r >= l
        if r == l + 1
            if iter[l] > value
                return l - 1
            elseif iter[l] == value
                return l
            elseif iter[l] < value <= iter[r]
                return r
            else
                return r + 1
            end
        elseif r == l
            return l + 1
        end
        m = (l + r) ÷ 2
        if iter[m] == value
            return m
        elseif iter[m] < value
            l = m
        else
            r = m 
        end
    end
    
end

function insertsort!(a)
    n = length(a)
    for i in 2:n
        j = i - 1
        index = quicsearch(a[1:j], a[i])
        index = index == 0 ? 1 : index
        while j >= index
            a[j + 1], a[j] = a[j], a[j+1]
            j -= 1 
        end
    end
    return a       
end
