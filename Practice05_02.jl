function evaldiffpoly_3(x,A)
    Q′′′=0
    Q′′=0
    Q′=0
    Q=0
    for a in A
        Q′′′=Q′′′*x+3*Q′′
        Q′′=Q′′*x+2*Q′
        Q′=Q′*x+Q
        Q=Q*x+a
    end
    return Q′′′
end
