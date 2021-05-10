function rang(Ab)
    B=copy(Ab)
    rang = length(B)
    while (det_(B)==0 && rang!=1)
        rang-=1
        B=B[1:rang]
    end
    return rang
end
