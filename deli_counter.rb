def line(katz_deli)
    if katz_deli.length < 1
      puts "The line is currently empty."
    else
      puts "The line is currently:"
      katz_deli.each_with_index do |name, index|
        puts "#{index+1}. #{name} "
      end
    end
end


def take_a_number(katz_deli, new_customer)
  new_customer = ""
  katz_deli = []
  new_customer = gets.chomp
  katz_deli << new_customer
  if katz_deli.length < 1
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |name, index|
      puts "Welcome, #{name}. You are number #{index+1} in line."
    end
  end
end

def now_serving(katz_deli)
  
  if katz_deli < 1
    puts "There is nobody waiting to be served!"
  else
    katz_deli.each do |next_customer|
    next_customer = katz_deli[0]
    puts "Currently serving #{next_customer}."
    katz_deli = katz_deli.shift
  end
end
end