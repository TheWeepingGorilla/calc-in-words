def word_calc (arg)
  input_array = arg.split(" ")
  op_arr = ["plus","minus","times","divided", "power"]
  num_arr = ["0","1","2","3","4","5","6","7","8","9"]
  useful_array = []
  results = []
  sum = 0
  result_index = 0


  #split input string into words,
  #filter numbers and operators into useful array
  input_array.each do |input|
    op_arr.each do |op|
      if (input == op)
        useful_array.push(input)
      end
    end
    num_arr.each do |comp_num|
      if (comp_num == input)
        num = input.to_i
        useful_array.push(num)
      end
    end
  end

  #search useful array for operator,
  #grab numbers on either side,
  #do operation


  useful_array.each_with_index { |item, index|
    if (item == "plus")
      if (sum != 0)
        sum = sum + useful_array[index + 1]
      else
        x = useful_array[index - 1]
        y = useful_array[index + 1]
        sum = x + y
      end
    end
    if (item == "minus")
      if (sum != 0)
        sum = sum - useful_array[index + 1]
      else
        x = useful_array[index - 1]
        y = useful_array[index + 1]
        sum = x - y
      end
    end
    if (item == "times")
      if (sum != 0)
        sum = sum * useful_array[index + 1]
      else
        x = useful_array[index - 1]
        y = useful_array[index + 1]
        sum = x * y
      end
    end
    if (item == "divided")
      if (sum != 0)
        sum = sum / useful_array[index + 1]
      else
        x = useful_array[index - 1].to_f
        y = useful_array[index + 1].to_f
        sum = x / y
      end
    end
    if (item == "power")
      if (sum != 0)
        sum = sum ** useful_array[index + 1]
      else
        x = useful_array[index - 2]
        y = useful_array[index - 1]
        sum = x ** y
      end
    end
  }
  #results.each do |result|
  #  sum = sum + result
  #end

  return sum

end
