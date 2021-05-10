function %(a::Poly,b::Poly)
    none,res = divrem(a.a,b.a)
    return res
end
function ÷(a::Poly,b::Poly)
    res,none = divrem(a.a,b.a)
    return res
end

/(a::Poly,b::Poly)=divrem(a.a,b.a)
