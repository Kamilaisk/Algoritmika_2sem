function mergesort!(a)
    if (length(a)>1)
        a1 = mergesort!(@view a[1:div(length(a),2)]) 
        a2 = mergesort!(@view a[div(length(a),2)+1:length(a)])
        return merge(a1,a2)
    else
        return copy(a)
    end
end
