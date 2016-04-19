
# Dado un array de números imprime únicamente los elementos que contienen un indice impar
# Utiliza: Enumerable#each_with_index

def print_odd_indexed_integers(array)
 array.each_with_index {|item, index| puts item if index % 2 != 0}

end
# Driver code... no modifiques nada de este código 
print_odd_indexed_integers([2, 4, 6, 8, 10, 12]) 
# => 4
# => 8
# => 12

# Dado un array de números regresa un array con solo numeros impares
# Utiliza: Enumerable#select
def odd_integers(array)
  array.select {|num| num.odd?}
end

puts odd_integers([3, 4, 7, 9, 10, 16]) == [3, 7, 9]

# Dado un array y un límite regresa el primer numero que sea menor al límite 
# Utiliza: Enumerable#find
def first_under(array, limit)
  array.find {|num| num < limit}
end

puts first_under([13, 21, 7, 0, 11, 106], 10) == 7

# Dado un array de strings y regresa un nuevo array donde todos los elementos contengan al final un signo de admiración. 
# Utiliza: Enumerable#map
def add_bang(array)
  array.map {|string| string + "!"}
end

puts add_bang(["hi", "mom"]) == ["hi!", "mom!"]


# Dado un array de números calcula la suma de todos sus elementos. 
# Utiliza: Enumerable#reduce
# Repite el ejercicio con Enumerable#inject
def sum(array)
  array.inject {|num, n| num + n}
end

puts sum([1, 1, 2, 3, 5]) == 12

# Dado un array de números calcula la suma de todos sus elementos. 
# Utiliza: Enumerable#reduce
# Repite el ejercicio con Enumerable#inject
def sum(array)
  array.reduce(:+)
end

puts sum([1, 1, 2, 3, 5]) == 12


# Dado un array de string reorganizalo en grupos de tres y ordénalos alfabéticamente.  
# Utiliza: Enumerable#each_slice
def sorted_triples(array)
  ordenado = []
  array.each_slice(3) {|palabra| ordenado << palabra.sort }
  ordenado
end

words = %w(De esta simple manera se puede reorganizar una oracion)  
p sorted_triples(words) == [["De", "esta", "simple"], ["manera", "puede", "se"], ["oracion", "reorganizar", "una"]]









