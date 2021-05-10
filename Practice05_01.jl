#функция, вычисляющая значение второй производной многочлена в точке
function evaldiffpoly_2(x,A)
    Q′′=0
    Q′=0
    Q=0
    for a in A
        Q′′=Q′′*x+2*Q′
        Q′=Q′*x+Q
        Q=Q*x+a
    end
    return Q′′′
end
