function taylor_cos2(x,ε)
    sum=1
    fact=1
    i=1
    a=1
    while(abs(a)>ε)
        fact*=i
        if (i%2==0)
            a=(((-1)^((i/2)%2))*(x^i))/fact
            sum+=a
        end
    i+=1
    end
    return sum
end
