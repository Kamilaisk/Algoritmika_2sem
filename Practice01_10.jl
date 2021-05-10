#функция, получающая на вход
#итерируемый объект, содержащий некоторую последовательность и возвращающую число максимумов этой последовательности.
function nummax(a)
    r = lastindex(a)
    maxes = 0
    maxEl = a[1]
    for i in 2:r
        if maxEl == a[i]
            maxes += 1
        elseif maxEl < a[i]
            maxes = 1
            maxEl = a[i]
        end
    end
    return maxes
end
