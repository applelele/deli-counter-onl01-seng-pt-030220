require "pry"

def line(katz_deli)
    if katz_deli.length < 1
      puts "The line is currently empty."
    else
      message = "The line is currently:"
      katz_deli.each_with_index do |name, index|
        message += " #{index+1}. #{name}"
      end
      puts message
    end
end


def take_a_number(katz_deli, new_customer)
  # binding.pry
  # new_customer = ""
  # katz_deli = []
  # new_customer = gets.chomp
  katz_deli << new_customer
  if katz_deli.length < 1
    puts "Welcome, #{new_customer}. You are number 1 in line."
  else
      puts "Welcome, #{katz_deli.last}. You are number #{katz_deli.length} in line."
    end
end


def now_serving(katz_deli)
  
  if katz_deli < 1
    puts "There is nobody waiting to be served!"
  else
    katz_deli.each do |next_customer|
    next_customer = katz_deli[0]
    puts "Currently serving #{next_customer}."
    binding.pry
    katz_deli.shift
    end
  end
end