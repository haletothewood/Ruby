# Playing with arrays

arr = [1, 2, 3, 4, 5]

puts "The array is currently: #{arr}"
puts '_' * 10
puts "But if we use the push function to add 6 to the end."
puts '_' * 10

# .push adds to the end of an array
arr.push(6)

puts "The array is now: #{arr}"
puts '_' * 10
puts "The unshift function allows us to add to the beginning of the array."
puts "For example, -1 and 0 like this: arr.unshift(-1, 0)"
puts '_' * 10

# .unshift adds to the start of an array
arr.unshift(-1,0)

puts "`And now the array is: #{arr}"