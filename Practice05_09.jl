#алгоритм, вычисляющий наибольшее значение обобщенной частичной суммы числовой последовательности
function sub_sum(series)
    elem = series[1]
	sum = 0
	max_sum = 0
for i in 1:length(series)
	sum += series[i]
	elem = min(elem, sum - max_sum)
	max_sum = max(max_sum, sum)
end
return max_sum
end
