# Create a function named divisors/Divisors that takes an integer n > 1 
# and returns an array with all of the integer's divisors(except for 1 and the number itself), 
# from smallest to largest 
# If the number is prime return the string '(integer) is prime'

# Nick's solution
require 'pry'
def factorize(number)
    array = []
    i = Math.sqrt(number).floor
    if i*i == number
        array << i
    end
    i = i-1
    while i > 1
        if number%i == 0
            array << (number/i)
            array.unshift(i)
        end
        i = i-1
    end
    
    if array.length == 0
        puts "Prime"
    else
        puts array.join(" ")
    end
end

factorize(434)

#another solution
def divisors(n)
  i=2
  array=[]
  while i <= n/2
    if n % i == 0
      array << i
    end
    i+=1
  end
  if array.count == 0
    "#{n} is prime"
  else
    array
  end 
end