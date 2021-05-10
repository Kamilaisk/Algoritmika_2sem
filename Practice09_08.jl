function issingular_convert!(Ab)
    for i in 1:length(Ab)
        for j in length(Ab):-1:i+1
            if (Ab[i][i]!=0)
                Ab[j,:]-=(Ab[j][i]/Ab[i][i])*Ab[i,:]
            elseif (A[j][i]!=0)
                temp=Ab[j,:]
                Ab[j,:]=Ab[i,:]
                A[i,:]=A[j,:]
            else
                return true
            end
            #println("R",j," = ",A[j,:])
            if Ab[j,:]==zeros(length(Ab))
                return true
            end
        end
    end
    return false
end




function det_(A)
    B=copy(A)
    if issingular_convert!(B)==true
        return 0
    else
        det=B[1][1]
        for i in 2:length(B)
            det*=B[i][i]
        end
        return det
    end
end
