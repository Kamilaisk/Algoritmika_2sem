struct KSetIndicator{N,K} <: AbstractCombinObject
    value::Vector{Bool}
end

KSetIndicator{N, K}() where {N, K} = SetIndicator{N,K}([zeros(Bool, N-K); ones(Bool, K)])

function next!(indicator::KSetIndicator)
    i = lastindex(indicator.value)
    while indicator.value[i]==0
        i-=1
    end
    m=0; 
    while i >= firstindex(indicator.indicator) && indicator.indicator[i]==1 
        m+=1
        i-=1
    end 
    if i < firstindex(indicator.value)
        return false
    end
    indicator.value[i]=1
    indicator.value[i+1:i+m-1] .= 0
    indicator.value[i+m:end] .= 1
    return true
end
