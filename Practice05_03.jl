#k производная
function evaldiffpoly_k(x,A,k)
    arr = zeros(k+1)
    diff = Poly{Int}(arr)
    add = 0
    for a in A
        for i in length(diff.a):-1:1  #берем индексы т.к. не знаю как брать элементы массива в обратном порядке
            if (i!=1)
                diff.a[i]=diff.a[i]*x+(i-1)*diff.a[i-1]
            else
                diff.a[i]=diff.a[i]*x+a
            end
        end
    end
    return diff.a[k+1]
end
