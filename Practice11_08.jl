#функция, получающая на вход такую последовательность точек плоскости и возвращающая значение true, если многоугольник выпуклый, или значение false - в противном случае
function convex(flat::Vector{Vector2D{T}}) where T
    for i in 1:length(flat)
        if ((flat[i%length(flat)+1][1]-flat[i][1])*(flat[(i%length(flat)+1)%length(flat)+1][2]-flat[i%length(flat)+1][2])-(flat[(i%length(flat)+1)%length(flat)+1][1]-flat[i%length(flat)+1][1])*(flat[i%length(flat)+1][2]-flat[i][2]) < 0)
            return false
        end
    end
    return true
end
