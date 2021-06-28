#определить тип, позволяющий итерировать все k-элементные подмножества заданного n-элементного множества
struct SetIndicator{N} <: AbstractCombinObject
    value::Vector{Bool}
end

SetIndicator{N}() where N = SetIndicator{N}(zeros(Bool, N))

function next!(indicator::IndicatorSet)
    i = findlast(item->item==0, indicator.value)
    if isnothing(i)
        return false
    end
    indicator.value[i] = 1
    indicator.value[i+1:end] .= 0
    return true 
end
