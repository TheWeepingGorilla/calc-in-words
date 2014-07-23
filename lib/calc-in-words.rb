def word_calc (arg)
  input_array = arg.split(" ")
  op_arr = ["plus","minus"]
  num_arr = ["0","1","2","3","4","5","6","7","8","9"]
  useful_array = []


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

  # for index in (0...useful_array.length)
  #   if useful_array[index] == "plus"
  #     x = useful_array[index - 1]
  #     y = useful_array[index + 1]
  #     result = x + y
  #   end
  #   if useful_array[index] == "minus"
  #     x = useful_array[index - 1]
  #     y = useful_array[index + 1]
  #     result = x - y
  #   end
  # end

  useful_array.each_with_index { |item, index|
    if (item == "plus")
      x = useful_array[index - 1]
      y = useful_array[index + 1]
      return x + y
    end
    if (item == "minus")
      x = useful_array[index - 1]
      y = useful_array[index + 1]
      return x - y
    end
  }

end
