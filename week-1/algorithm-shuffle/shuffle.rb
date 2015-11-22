def shuffle(array)
  new_array = []
    until array.all? { |i| new_array.include?(i) }
      x = rand(array.length)
      if not new_array.include?(array[x])
      new_array << array[x]
      end
    end
    new_array
  end

input = [0, 5, 3, 7, 8, 6, 2, 1, 4, 9]
p shuffle(input)
p shuffle(input)
p shuffle(input)