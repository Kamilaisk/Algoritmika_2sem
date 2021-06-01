#функция, получающая на вход последовательность точек плоскости (их массив или генератор) 
#и ещё одну последовательность точек, определяющую координаты вершин некоторого многоугольника в порядке его обхода в одном из двух возможных направлений

function plot_hexagon(A::Array,hexagon::Vector{Vector2D{T}}) where T
    p=plot(hexagon, linecolor=:green, markershape=:circle, markersize=:3, markercolor=:green)
    plot!([(hexagon[length(hexagon)][1],hexagon[length(hexagon)][2]),(hexagon[1][1],hexagon[1][2])],  linecolor=:green, markershape=:circle, markersize=:3, markercolor=:green)
    for i in 1:length(t)
        for j in 1:length(A)
            if (t[i][1]*A[j%length(A)]-t[i][])
                plot!([(A[:,1][1],A[:,1][2])]; markershape=:circle, markersize=:10, markercolor=:green, )
            end
        end
    end
end
