function solutionofClay(Ab)
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
    for i in 1:length(B)
        if (A[i]==zeros(length(A[1])) && b[i]!=0)
            return nothing
        end
    end
end
