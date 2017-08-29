require 'time'

=begin
A classic example for explaining recursion is calculating 
factorials.  
A factorial is the product of an integer and all the integers 
below it, down to the number 1. The factorial of 4 would be 
written out as: 4 * 3 * 2 * 1, or 24

Now, we could very easily write this using a while loop:
=end

def factorial_1(num)
  factorial_count = 1
  while num > 0
    factorial_count *= num
    num -= 1
  end
  factorial_count
end

=begin
But let’s look at this code for a second. What exactly happens 
when our compiler runs this code? Well, a lot of stuff.

-First, it has to keep track of our counter, since we only ever 
want to calculate a factorial down to the number 1.
-Then, it checks that the number being passed in as a parameter 
(for example, num = 7), is greater than 0.
-If num is greater than 0, it will multiply num by the counter.
-Then, it will decrease the counter by 1.
-Finally, it repeats steps 1-4 again until num = 0, in which 
case it will and finally break out of the while loop.

Okay. WHUT?! This seems like a lot of stuff to keep track of. 
And that factorial_count variable is pretty weird and 
counter-intuitive. And if we were calculating the factorials 
for a larger numbr – say 70, instead of 7 – this would be a 
lot of logic to keep track of and repeat over and over.

Let’s rethink this problem for a second. What we actually want 
to do is find the factorials of all the numbers smaller than 7 
and greater than 1, and then just multiply them together. In 
fact, all we really want to do is repeat the same procedure of 
multiplication.

Instead of using a loop, we could write a method that takes in 
a single argument num, and actually use that same method to 
replicate the process of multiplication. That might look 
something like this:
=end

def factorial_2(num)
  if num == 1 # This is the break once the number reaches one
    return 1
  end
  num * factorial_2(num - 1) # This is the power of recursion
end

=begin
Using Time.now to check which method is faster to process.
=end

def quickest
	time_a = Time.now
	factorial_1(1000)
	time_b = Time.now
	run_time_1 = (time_b - time_a).to_f
	puts "The run time of the while loop is #{run_time_1}."
	puts '_' * 5

	time_c = Time.now
	factorial_2(1000)
	time_d = Time.now
	run_time_2 = (time_d - time_c).to_f
	puts "The run time of the recursion method is #{run_time_2}."
	puts '_' *5

	if run_time_1 < run_time_2
		puts "The quickest method is the while loop."
	else
		puts "The quickest method is recursion."
	end
end

quickest # while loop is quicker and recursion method fails first?!?


