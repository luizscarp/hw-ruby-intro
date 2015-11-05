# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each do |x|
    result += x
  end
  result
end

def max_2_sum arr
  array = arr.sort.reverse
  result = 0
  count = 0
  array.each do |x|
    result += x if count < 2
    count += 1
  end
  result
end

def sum_to_n? arr, n
  unless arr.length > 1
    return false
  else
    for i in 0...arr.length
      for j in 0...arr.length
        next if j<=i
        return true if arr[i]+arr[j]==n
      end
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  !(/^[A-Z]/i =~ s).nil? && (/^[AEIOU]/i =~ s).nil?
end

def binary_multiple_of_4? s
  !(/^[01]*00$/ =~ s).nil? || s == "0"
end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn == "" || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$#{format("%.2f", price)}"
  end
  
end
