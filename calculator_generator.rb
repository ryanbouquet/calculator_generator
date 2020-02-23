file = File.open("my_first_calculator.rb", "w")

file.puts '#TODO: add in error checking'
file.puts '#TODO: make this work with floats'
file.puts ''
file.puts 'while true'
file.puts '  puts "Enter a value between -100 and 100"'
file.puts '  first_val = STDIN.gets.chomp.to_i'
file.puts '  puts "Enter an operator (+, -, *, /)"'
file.puts '  operator = STDIN.gets.chomp'
file.puts '  puts "Enter another value between -100 and 100"'
file.puts '  second_val = STDIN.gets.chomp.to_i'
file.puts ''

operators = ["+", "-", "*", "/"]
first_i = -100
second_i = -100
op_i = 0

while first_i <= 100
  while second_i <= 100
    while op_i < 4
      file.puts "  if first_val == #{first_i} && operator == \"#{operators[op_i]}\" && second_val == #{second_i}"
      if op_i == 0
        file.puts "    puts 'Your result is: #{first_i + second_i}'"
      elsif op_i == 1
        file.puts "    puts 'Your result is: #{first_i - second_i}'"
      elsif op_i == 2
        file.puts "    puts 'Your result is: #{first_i * second_i}'"
      elsif op_i == 3 && second_i != 0
        file.puts "    puts 'Your result is: #{first_i / second_i}'"
      end
      file.puts "  end"
      file.puts ""
      op_i = op_i + 1
    end
    second_i = second_i + 1
    op_i = 0
  end
  first_i = first_i + 1
  second_i = -100
end
file.puts 'end'
file.close
