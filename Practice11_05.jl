#функция, получающая на вход последовательность точек плоскости (их массив или генератор) и ещё пару (кортеж) точек плоскости, определяющих некоторую прямую.
#функция возвращает графический объект типа Plots.Plot, содержащий график этих точек (в виде круглых маркеров) и график заданной прямой

function flat_segments(segments::Vector{Tuple{Vector2D{T},Vector2D{T}}}, vect::Vector2D{T}; kwords...) where T<:Real
    p=plot(;kwords...)
    for s in segments
        plot!(collect(s); kwords...)
    end
    return p
end
