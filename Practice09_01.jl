function taylor_cos_1(n,x)
    sum=1
    fact=1
    for i in 1:n
        fact*=i
        if (i%2==0)
            sum+=(((-1)^((i/2)%2))*(x^i))/fact
        end
    end
    return sum
end
