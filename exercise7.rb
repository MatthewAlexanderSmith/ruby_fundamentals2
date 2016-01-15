#Question 1
students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22,
  :cohort4 => 43
}

puts "Print Hash"
students.each do |k, v|
  puts "#{k}: #{v}"
end
puts "Print the sum of all values in students hash"
sum = 0
students.each {|key, value| sum += value}
puts sum
puts""

puts "Print hash multiplied by 5%"
students.each do |k, v|
  puts "#{k}: #{v*1.05}"
end
puts "Print the sum of all values in students hash"
sum = 0.0
students.each {|key, value| sum += value}
puts sum
puts""

puts "Delete second entry and print hash"
students.delete(:cohort2)
students.each do |k, v|
  puts "#{k}: #{v}"
end
