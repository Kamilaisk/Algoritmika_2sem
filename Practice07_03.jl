function log(a::Real,x::Real,ε::Real)
    z, t, y = x, 1, 0
while (z>a || z<1/a || t>ε)
    if (z>a)
        z/=a
        y+=t
    elseif (z<1/a)
        z*=a
        y-=t
    else
        t/=2
        z*=z
    end
end
return y
end
