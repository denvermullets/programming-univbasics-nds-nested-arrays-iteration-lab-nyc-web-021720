def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  row_index = 0 
  fav_toppings = []
  while row_index < src.count do 
    column_index = 0 
      while column_index < src[row_index].count do
        if column_index == 0 
          food1 = src[row_index][column_index]
        else 
          food2 = src[row_index][column_index]
        end
        column_index += 1
      end
    fav_toppings << "I love #{food1} and #{food2} on my pizza"
    row_index += 1
  end
  fav_toppings
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  larger_nums = []
  row_index = 0
  
  while row_index < src.count do 
    column_index = 0
      while column_index < src[row_index].count do
        if column_index == 0 
          num1 = src[row_index][column_index]
        else 
          num2 = src[row_index][column_index]
        end
        column_index += 1
      end 
      
      if num1 > num2 
        larger_nums << num1 
      else 
        larger_nums << num2 
      end
      
      row_index += 1 
    end 
    larger_nums
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  
  row_index = 0
  even_nums = 0
  
  while row_index < src.count do 
    column_index = 0
      while column_index < src[row_index].count do
        if column_index == 0 
          num1 = src[row_index][column_index]
        else 
          num2 = src[row_index][column_index]
        end
        column_index += 1
      end 
      
      if (num1 % 2 == 0) && (num2 % 2 == 0) 
        temp_sum = num1 + num2
        even_nums = even_nums + temp_sum
      end
      row_index += 1 
    end 
    
    even_nums
  
end
