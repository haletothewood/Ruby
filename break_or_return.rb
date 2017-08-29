def testing(target, method)
  (0..100).each do |x|
    (0..100).each do |y|
     puts x*y
     if x*y == target
      puts "I found my target!"
      break if method == "break" # Only exits the inner most loop
      return if method == "return" # Exits from the entire function
     end
    end 
  end
end

testing(50, "break") # Doesn't stop at target just carries on
testing(50, "return") # Stops at target (50)