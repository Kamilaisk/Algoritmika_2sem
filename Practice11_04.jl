# функциz, которая получает на вход аргумент segments, представляющий собой массив типа Vector{Tuple{Point2D,Point2D}}

function segments(s::Vector{Tuple{Vector2D{T},Vector2D{T}}}) where T<:Real
    plotsegments(s; linecolor=:green, markershape=:circle, markercolor=:blue)
    for i in s
        plot!(segments_intersect(s(1)[1],s(2)[1],s(1)[2],s(2)[2]))
    end
end
