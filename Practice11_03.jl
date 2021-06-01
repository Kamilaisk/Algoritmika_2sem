#функциz, получающая вектор кортежей, 
#содержащих пары точек типа Vector2D, и возвращающая графический объект (типа Plots.Plot), содержащий изображение соответствующих отрезков, расположенных на плоскости
function plotsegments(segments::Vector{Tuple{Point2D,Point2D}}; kwargs...)
    p=plot(;kwargs...)
    for s in segments
        plot!(collect(s); kwargs...)
    end
    return p
end

#подготовка
segments = [s for s in zip(randpoints(randn,20), randpoints(randn,20))]
