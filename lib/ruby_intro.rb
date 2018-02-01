# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.size == 0
  	return 0
  end
  sum = 0
  arr.each { |a| sum += a }
  return sum
end

def max_2_sum arr
  if arr.size == 0
  	return 0
  end
  if arr.size == 1
  	return arr[0]
  end
  arr.sort!
  return arr[arr.size-1] + arr[arr.size-2]
end

def sum_to_n? arr, n
  if arr.size == 0 || arr.size == 1 #cannot sum two elements if there aren't two elements
  	return false
  end
  arr.sort!
  arr.each do |x| 
  	arr.each do |y|
  		if x + y == n and not x.equal? y
  		  puts "x,y = #{x},#{y}"
  		  return true
  		end
  	end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
  	return true
  end
  return false
end

def binary_multiple_of_4? s
  puts s
  if s.size == 0
  	return false
  end
  x = s =~ /[^0-1]/
  if x != nil
    puts "bad input"
  	return false
  end
  if s.size > 2 and s =~ /0{2}\z/#s[s.size-1] == 0 and s[s.size-2] == 0
  	return true
  end
  if s == "0" #because 0 is a multiple of every number for some reason
  	return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
  	unless price.is_a? Numeric
  		raise ArgumentError.new("Price must be a number")
  	end
  	unless price > 0 
  		raise ArgumentError.new("Price must be greater than 0")
  	end
  	unless isbn.size > 0
  		raise ArgumentError.new("ISBN must not be an empty string")
  	end
  	@isbn = isbn
  	@price = price
  end

  #getters and setters
  attr_accessor :isbn, :price

=begin def set_ISBN(isbn)
  	unless isbn.size > 0
  		raise ArgumentError.new("ISBN must not be an empty string")
  	end
  	@isbn = isbn
  end

  def set_price(price)
  	unless price.is_a? Numeric
  		raise ArgumentError.new("Price must be a number")
  	end
  	unless price > 0 
  		raise ArgumentError.new("Price must be greater than 0")
  	end
  	@price = price
  end

  def get_ISBN
  	return @isbn
  end

  def get_price
  	return @price
  end
=end
  def price_as_string
  	#price = price.to_f #to add decimal point if necessary
  	price = @price.to_s #so we can use regex
  	if price =~ /\.\d{2}\z/
  		return "$#{price}"
  	elsif price =~ /\.\d\z/
  		return "$#{price}0"
  	else
  		return "$#{price}.00"
  	end
  end
  	

end
