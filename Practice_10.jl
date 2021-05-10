#алгоритм, возвращающий диапазон индексов элементов заданной числовой последовательности, 
#соответствующего наибольшему значению обобщенной частичной суммы числовой последовательности
function index_max_sub_sum(series)
    elem = series[1]
	elem_l = 1
	elem_r = 1
	sum = 0
	max_sum = 0
	max_pos = 0
for i in 1:length(series)
	sum += series[i]
	cur = sum - max_sum
	if (cur > elem)
		elem = cur
		elem_l = max_pos + 1
		elem_r = i
    end
	if (sum < max_sum)
		max_sum = sum
		max_pos = i
    end
end
return (elem_l,elem_r)
end
