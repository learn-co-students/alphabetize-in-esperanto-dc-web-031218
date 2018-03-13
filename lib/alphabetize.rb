require 'pry'

def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  order_hash = hash_alphabet(esperanto_alphabet)

  arr.sort_by do |word|
    word_array(word, order_hash)
  end

end

  # i = 1
  # while i < arr.length
  #   curr_word = arr[i]
  #   j = 0
  #   while j < new_arr.length
  #     new_arr_word = new_arr[j]
  #
  #     k = 0
  #     while k < curr_word.length
  #       if order_hash[curr_word][k] < order_hash[new_arr_word][k]
  #         new_arr.insert(j, curr_word)
  #       end
  #     end
  #
  #   end
  #   i += 1
  # end
  #


  # new_arr
  # i = 0
  # while i < arr.length
  #   word_one = arr[i]
  #   word_two = arr[i + 1]
  #   j = 0
  #   # binding.pry
  #   while j < word_one.length
  #     # binding.pry
  #     if word_one[j] != word_two[j]
  #       if order_hash[word_one[j]][0] < order_hash[word_two[j]][0]
  #         if new_arr.length > 0
  #           new_arr.pop
  #         end
  #         # binding.pry
  #         new_arr << word_one
  #         new_arr << word_two
  #         j = word_one.length
  #       elsif order_hash[word_one[j]][0] > order_hash[word_two[j]][0]
  #         if new_arr.length > 0
  #           new_arr.pop
  #         end
  #         new_arr << word_two
  #         new_arr << word_one
  #         j = word_one.length
  #         i += 1
  #       else
  #         j += 1
  #       end #if compares the number of the letters
  #     else
  #       j += 1
  #     end #first if
  #   end #second while
  #   # binding.pry
  #   i += 1
  # end # first while


def hash_alphabet(esperanto_alphabet) #this assigns a number to each letter in esperanto alphabet
  hash = {}
  es_array = esperanto_alphabet.split("")
  i = 0
  es_array.each do |letter|
    hash[letter] = [i]
    i += 1
  end
  hash
end

def word_array(word, order_hash)
  i = 0
  number_array = []
  while i < word.length
    number_array << order_hash[word[i]]
    i += 1
  end
  number_array
end




# esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

# def alphabetize(arr)
#   # code here
#   esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
#   order_hash = hash_alphabet(esperanto_alphabet)
#
#   sorted = arr.sort_by {|word|
#     # binding.pry
#
#     i = 0
#     while i < word.length
#       # binding.pry
#       position_number = compare(word, i, order_hash)
#       binding.pry
#     end
#
#   }
#   sorted
#   # binding.pry
# end

#
# def compare(word, i, order_hash)
#   number = order_hash["#{word[i]}"][0]
#   number
# end
# # def hash_word(word) #this will assign a number to each character in a given word
# #   hash = {}
# #   es_array = esperanto_alphabet.split("")
# #   word_array = word.split("")
# #   i = 0
# #   word_array.each do |letter|
# #     hash[letter] = [i]
# #     i += 1
# #   end
# #   hash
# # end
#
# def hash_alphabet(esperanto_alphabet) #this assigns a number to each letter in esperanto alphabet
#   hash = {}
#   es_array = esperanto_alphabet.split("")
#   i = 0
#   es_array.each do |letter|
#     hash[letter] = [i]
#     i += 1
#   end
#   hash
# end
#
# hash_alphabet(esperanto_alphabet)
