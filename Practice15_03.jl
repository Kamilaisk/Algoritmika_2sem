#функция, получающая на вход дерево, 
#представленное списком смежностей tree и индексом его корня root, и возвращающая ссылку на связанные стркутруры типа Tree{T}, представляющие то же самое дерево
struct Tree{T}
    index::T
    sub::Vector{Tree{T}}}
    Tree{T}(index) where T = new(index, Tree{T}[])
end

function tree_convert(tree::ConnectList{T}, root::T) where T
    _tree = copy(tree)
    list_arr = Array{Tree{Int}}(undef,length(_tree))
    for i in 1:length(_tree)
        list_arr[i] = Tree{Int}(i,[])
    end
    list = list_arr[root]
    q = [root]
    while (!isempty(q))
        cur = first(q)
        deleteat!(q,firstindex(q))
        q = append!(q,_tree[cur])
        for tree in _tree[cur]
            push!(list_arr[cur].sub,list_arr[tree])
        end
    end
    return list
end
