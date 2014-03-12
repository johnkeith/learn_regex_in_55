class RegexReader
	def open_app
		opened_dictionary = File.read('words.txt')
		opened_timemachine = File.read('thetimemachine.txt')
		# first issue - used open and readlines to get array instead of the raw string of the text
		exercise_1_read_for_z(opened_dictionary)
		exercise_2_ending_with_prep(opened_timemachine)
		i_before_e_rules(opened_dictionary)
	end

	def exercise_1_read_for_z(opened_file)
		# matched = opened_file.match /cat/
		# second problem - using match instead of scan to get all instances
		matched = opened_file.scan /z.......z/ 
		puts "These are the longest matched 'z' words from the dictionary."
		puts matched
	end

	def exercise_2_ending_with_prep(opened_file)
		matched = opened_file.match /of\./
		puts "This is a preposition at the end of a sentence."
		puts matched
	end

	def i_before_e_rules(opened_file)
		matched = opened_file.scan /cie/
		other_matches = opened_file.scan /[^c]ei/
		puts matched 
		puts other_matches
	end
end

reader = RegexReader.new
reader.open_app

=begin

http://qntm.org/files/re/re.html

/z.{7}z/
\d{4}-\d{2}-\d{2}
[aeiou]{6}

=end