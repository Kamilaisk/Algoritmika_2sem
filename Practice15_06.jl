#функция, получающая на вход имя некоторого типа (встоенного или пользовательского) языка Julia (тип этого аргумента - Type)
function types_all(type)
    for i in subtypes(type)
        println(i)
        types_all(i)
    end
end
