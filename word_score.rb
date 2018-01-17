def w_score(words)
	scores = {"a" => 2, "e" => 2, "i" => 2, "o" => 2, "f" => 3, "j" => 6, "t" => 5, "x" => 12}
	words = words.split('')
	score = 0
	words.each do |w|
		downw = w.downcase
		if scores.has_key?(downw)
			score = score + scores[downw]
		end
	end
	score
end

p w_score("JAbbt")



