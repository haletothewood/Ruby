require 'time'

# using a while loop

def beer_song_1
	x = 99 # x instead of bottles because easier
	while x > 1 do # once x = 1 we exit the while loop
		puts "#{x} bottles of beer on the wall"
		puts "#{x} bottles of beer"
		puts "Take one down, pass it around #{x} bottles of beer on the wall"
		puts "_" * 5 # separator
		x = x - 1 # while loop applies so down we go 98, 97, 96...
	end
		puts "#{x} bottle of beer on the wall"
		puts "#{x} bottle of beer"
		puts "Take it down, pass it around, there's no more bottles of beer on the wall, best go home..ick!"
end

# using recursion

def beer_song_2(x) 
	if x != 1 # once x = 1 the else statement occurs
		puts "#{x} bottles of beer on the wall"
		puts "#{x} bottles of beer"
		puts "Take one down, pass it around #{x} bottles of beer on the wall"
		puts "_" * 5 # separator
		beer_song_2(x-1) # repeats the function with 98, 97, 96...
	else
		puts "#{x} bottle of beer on the wall"
		puts "#{x} bottle of beer"
		puts "Take it down, pass it around, there's no more bottles of beer on the wall, best go home..ick!"
	end # no recursion here so function ends
end

# using downto iteration

def beer_song_3
	99.downto(1) do |x|
		if x != 1
			puts "#{x} bottles of beer on the wall"
			puts "#{x} bottles of beer"
			puts "Take one down, pass it around #{x} bottles of beer on the wall"
			puts "_" * 5 # separator
		else
			puts "#{x} bottle of beer on the wall"
			puts "#{x} bottle of beer"
			puts "Take it down, pass it around, there's no more bottles of beer on the wall, best go home..ick!"
		end # end of is/else and nothing more to do so...
	end # end of loop, starts again with 98, 97, 96...
end

def quickest_method
	arr = []

	time_a = Time.now
	beer_song_1
	time_b = Time.now
	while_time = (time_b - time_a).to_f
	puts "_" * 5
	puts "This while loop took #{while_time} seconds"
	puts "_" * 5

	time_c = Time.now
	beer_song_2(99)
	time_d = Time.now
	rec_time = (time_d - time_c).to_f
	puts "_" * 5
	puts "This recursion method took #{rec_time} seconds"
	puts "_" * 5

	time_e = Time.now
	beer_song_3
	time_f = Time.now
	downto_time = (time_f - time_e).to_f
	puts "_" * 5
	puts "This downto iteration took #{downto_time} seconds"
	puts "_" * 5

	hash = {while_time => "while loop", 
			rec_time => "recursion method", 
			downto_time => "downto iteration"}

	hash.each do |k,v|
	arr << k
	end
	puts "The quickest method was the #{((hash.values_at(arr.max)).to_s).delete('["]')}."
end

quickest_method