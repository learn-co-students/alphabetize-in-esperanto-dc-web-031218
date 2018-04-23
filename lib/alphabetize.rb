ESPERANTO_ALPHABET = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by{|x| x.split("").map{ |char| ESPERANTO_ALPHABET.index(char) } }
end
