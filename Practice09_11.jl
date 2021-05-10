function stupmatr(Ab)
    B=copy(Ab)
    if (length(B)==rang(B))
        return zeros(length(B))
    else
        B=copy(Ab)
        b = []
        curr_row = [[]]
        A = []
        for i in 1:length(B)
            push!(b,Ab[i][length(B[1])])
            for j in 1:(length(B[1])-1)
                push!(curr_row[1],B[i][j])
            end
            A = append!(A,curr_row)
            curr_row = [[]]
        end
        linsolve(A,b)
    end
end
