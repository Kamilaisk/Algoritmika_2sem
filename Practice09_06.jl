function linsolve(A,b)
    for i in length(A):-1:1
        for j in 1:i-1
            b[j]-=(A[j][i]/A[i][i])*b[i]
            A[j][i]=0
        end
    end
    for i in 1:length(A)
        println("x",i," = ",b[i]/A[i][i])
    end
end
