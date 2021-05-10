function sqrt(x,ε)
    an=1
    sum=1
    i=1
    a=0
    while(abs(a)>ε)
        an*=((-1)*(2*i-1)/(2*i))*x
        a=(((-1)^(i%2))*x_minus_1)/(i+1)
        sum+=a
        i+=1
    end
    return sum
end

function ln(x,ε)
    x_minus_1=x-1
    sum=x_minus_1
    i=1
    a=0
    while(abs(a)>ε)
        x_minus*=x_minus
        a=(((-1)^(i%2))*x_minus_1)/(i+1)
        sum+=a
        i+=1
    end
    return sum
end
