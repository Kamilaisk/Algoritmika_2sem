#быстрая сортировка Хоара
function quicksort!(a)
    if isempty(a)
        return a
    end
    a, i, j = partsort!(a,a[begin])
    quicksort!(a[begin:i])
    quicksort!(a[j+1:end])
    return a
end

function quicksort2!(a)
    if isempty(a)
        return a
    end
    a, i = partsort2!(a,a[begin])
    quicksort!(a[begin:i])
    quicksort!(a[i:end])
    return a
end
