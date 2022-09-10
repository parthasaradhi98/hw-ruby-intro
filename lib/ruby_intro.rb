# frozen_string_literal: true

# Part 1

def sum(arr)
  return arr.sum
end

def max_2_sum(arr)
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    max1 = arr.sort[-1]
    max2 = arr.sort[-2]
    return max1 + max2
  end
end

def sum_to_n?(arr, number)
  if arr.size <= 1
    return false
  end
  for ind1 in 0...arr.length
  	for ind2 in (ind1 + 1)...arr.length
  		if arr[ind1] + arr[ind2] === number
  			return true
  		end
  	end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(string)
  if string.downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/i)
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(string)
  if string.length==0 or string.match(/[^01]/)
    return false
  end
  num = string.to_i
  if num%4 == 0
    return true
  else
   return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if isbn.size ==0
      raise ArgumentError, "Invalid argument - ISBN number can't be empty"
    end
    if price <=0
      raise ArgumentError, "Invalid argument - price should be a positive number"
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%0.2f",@price)
  end

end
