#функция, осуществляющая циклический сдвиг массива на m позиций "на месте"
function cyclic_move!(a::Vector)
    temp = a[length(a)]
    for i in length(a):-1:2
        a[i] = a[i - 1]
    end
    a[1] = temp
end

