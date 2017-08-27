# Playing with arrays

arr = [1, 2, 3, 4, 5]
puts '_' * 61
puts "This section is about ADDING and REMOVING items from an array"
puts '-' * 61
puts "The array is currently: #{arr}"
puts "_" * 2
puts "But if we use the push function to add 6 to the end."
puts '_' * 2

# .push adds to the end of an array
arr.push(6)

puts "The array is now: #{arr}"
puts '_' * 2
puts "The unshift function allows us to add to the beginning of the array."
puts "For example, -1 and 0 like this: arr.unshift(-1, 0)"
puts '_' * 2

# .unshift adds to the start of an array
arr.unshift(-1,0)

puts "And now the array is: #{arr}"
puts '_' * 2
puts "If we use the insert function we can insert at a given index."
puts "Like this: arr.insert(5, 3.25, 3.50, 3.75)"
puts '_' * 2

# .insert will insert the numbers following the first at that index point
arr.insert(5, 3.25, 3.50, 3.75)

puts "Such that our array is now #{arr}"
puts '_' * 2
puts "We can use the pop function to remove an item/s from our array"
puts "For example arr.pop should remove the last item"
puts '_' * 2

# pops off the end item
arr.pop

puts "And now the array is: #{arr}"
puts '_' * 2
puts "If we wanted to remove the first item we would us the shift function"
puts "arr.shift does this"
puts '_' * 2

# removes the first item in the array
arr.shift

puts "The array is now: #{arr}"
puts '_' * 2
puts "Let's remove the floats. We can use the delete function like so:"
puts "arr.delete(3.25) for each float"
puts '_' * 2

# There must be a way to refactor this into a single line of code
arr.delete(3.25)
arr.delete(3.50)
arr.delete(3.75)

puts "This leaves our array looking like this: #{arr}"
puts '_' * 2
puts "we can also use arr.delete(0) to specify which item to remove"

arr.delete(0)

puts "_" * 2
puts "And now our array is back to how it was at the beginning: #{arr}"