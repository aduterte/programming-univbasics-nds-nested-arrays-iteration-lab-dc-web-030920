def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  i = 0
  joined = []

  while i < src.count do
    element = src[i]
    joined << "I love #{element[0]} and #{element[1]} on my pizza"
    i += 1
  end

  joined
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  i = 0
  larger = []

  while i < src.count do
    num = src[i]
    if num[0] > num[1]
      larger << num[0]
    else
      larger << num[1]
    end
    i += 1

  end

  larger

end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!

  i = 0
  total = 0

  while i < src.count do
    num = src[i]
    
    if num[0] % 2 == 0 && num[1] % 2 == 0
      total += num[1]+num[0]
    end
    i += 1
  end

  total

end
