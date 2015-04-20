def choose_word	
	dictionary = File.open("5desk.txt")
	words = dictionary.read.split()

	valid_words = []
	words.each do |word|
	  valid_words << word if word.length.between?(5, 12)
	end

	valid_words.sample
end

game_word = choose_word
