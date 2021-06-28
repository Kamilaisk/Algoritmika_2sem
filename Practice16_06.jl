#функция, возвращающая оптимальный путь, ведущий из заданной вершины i в заданную вершину j, если существует такой путь конечной стоимости, или - значение nothing, в противном случае.

function optpath_floyd(next::AbstractMatrix, i::Integer, j::Integer)
    path= [i]
    fin = i
    while (fin!=j)
        push!(path,next[fin,j])
        fin = next[fin,j]
    end
    return path
end
