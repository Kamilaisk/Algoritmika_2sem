#то же самое, что в practice 12_04, однако метод треугольников
function polygonal_area_tr(T)
    S = 0
    for i in 1:length(T)
        S += xdot(T[i],T[i >= length(T) ? 1 : i+1])/2
    end
    return S
end
