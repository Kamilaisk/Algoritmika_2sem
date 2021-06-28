#написать функцию, получающая на вход дерево, представленное списком смежностей tree и индексом его корня root, 
#и возвращающая представление того же дерева в виде вложенных векторов

ConnectList{T}=Vector{Vector{T}}
NestedVectors = Vector

function convert_to_nested(tree::ConnectList{T},root::T) where T
    nested_tree = []
    for subroot in tree[root]
        push!(nested_tree, convert(tree, subroot))
    end
    push!(nested_tree, root)
    return nested_tree
end
