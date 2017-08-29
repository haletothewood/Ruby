class Animal

	def legs
		4
	end

	def name=(name)
		@name = name
	end

	def speak
		print ("Hello!")
	end

	def introduce
		puts "#{speak} My name is #{@name}, I have #{legs} legs and I am #{@colour}."
	end

end

class Dog < Animal

	def initialize(n,c)
		self.name = n # Can write either way
		@colour = c
	end

	def speak
		print "Woof!"
	end
end

class Cat < Animal

	def initialize(n,c)
		self.name = n
		@colour = c
	end

	def speak
		print "Meow!"
	end

	def likes_milk
		puts "Yes"
	end

end

class Snake < Animal

	def initialize(n,c)
		self.name = n
		@colour = c
	end

	def legs
		0
	end

	def speak
		print "Hiss!"
	end

end


beanie = Dog.new("Beanie", "brown")
beanie::introduce # Woof! My name is Beanie, I have 4 legs and I am brown.
paws = Cat.new("Paws", 'white')
paws::introduce # Meow! My name is Paws, I have 4 legs and I am white.
paws.likes_milk # Yes
# beanie.likes_milk - $undefined method error
sammy = Snake.new("Sammy", 'stripy')
sammy::introduce