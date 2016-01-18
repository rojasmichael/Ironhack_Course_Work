
def word_sort(sentence)
#split the sentence into a array
#sort the array
#return the array
split_sentence = sentence.split(" ").sort{ | word1, word2 | word1.downcase <=> word2.downcase }
p split_sentence



end

word_sort("My favorite language is ruby.")

