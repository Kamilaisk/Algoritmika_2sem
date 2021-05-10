#функция, осуществляющая циклический сдвиг массива на m позиций "на месте"
function cyclshift(a::AbstractVector, k::Int) 
    reverse!(a)
    reverse!(@view a[begin:begin+k])
    reverse!(@view a[begin+k+1:end])
end
