def select_elements_starting_with_a(array)
	array.select { |word| /\ba\w+/.match(word) }
end

def select_elements_starting_with_vowel(array)
	array.select { |word| /\b[aeiou]\w+/.match(word) }
end

def remove_nils_from_array(array)
	array.compact 
end

def remove_nils_and_false_from_array(array)
	array.select { |element| element.is_a?(String) }
end

def reverse_every_element_in_array(array)
	array.each { |word| word.reverse! }
end

def every_possible_pairing_of_students(array)
	array.combination(2).to_a
end

def all_elements_except_first_3(array)
	array.drop(3)
end

def add_element_to_beginning_of_array(array, element)
	array.unshift(element)
end

def array_sort_by_last_letter_of_word(array)
	# dont like this one
	(array.each { |word| word.reverse! }).sort!.each { |word| word.reverse! }
end

def get_first_half_of_string(string)
	string.slice(0, ((string.length).to_f / 2).ceil)
end

def make_numbers_negative(number)
	# dont like this one
	if number < 0
		number
	else
		number * -1
	end
end

def separate_array_into_even_and_odd_numbers(array)
	# dont like this one
	new_array = []
	new_array << array.select { |num| num.even? }
	new_array << array.select { |num| num.odd? }
end

def number_of_elements_that_are_palindromes(array)
	array.count { |word| word == word.reverse }
end

def shortest_word_in_array(array)
	array.inject do |memo, word|
		memo.length < word.length ? memo : word
	end
end

def longest_word_in_array(array)
	array.inject do |memo, word|
  	memo.length > word.length ? memo : word
	end
end

def total_of_array(array)
	array.inject { |memo, value| memo += value }
end

def double_array(array)
	(array << array.dup).flatten
end

def turn_symbol_into_string(symbol)
	symbol.to_s
end

def average_of_array(array)
	(array.inject(:+).to_f / array.length).round
end

def get_elements_until_greater_than_five(array)
	array.take_while { |num| num < 6 }
end

def convert_array_to_a_hash(array)
	array.each_slice(2).to_a.to_h
end

def get_all_letters_in_array_of_words(array)
	array.map { |word| word.split(//) }.flatten.sort
end

def swap_keys_and_values_in_a_hash(hash)
	hash.invert
end

def add_together_keys_and_values(hash)
	# weird looking! Must be a more ruby way...
	hash.inject(:+).inject(:+)
end

def remove_capital_letters_from_string(string)
	string.delete('/[A-Z]/')
end

def round_up_number(float)
	float.ceil
end

def round_down_number(float)
	float.floor
end

def format_date_nicely(date)
	date.strftime('%d/%m/%Y')
end

def get_domain_name_from_email_address(email)
	# couldnt figure out regex for this
	email.split('@')[1].split('.com')[0]
end

def titleize_a_string(string)
	# horrible
	words_to_ignore = ['a', 'and', 'the']
	words = string.split(' ').each { |word| word.capitalize! unless words_to_ignore.include?(word) }
	words[0].capitalize!
	words.join(' ')
end

# def check_a_string_for_special_characters(string)
# 	# This works in irb = worked out using rubular!
# 	# /\W/ == string
# end

def get_upper_limit_of(range)
	range.last
end

def is_a_3_dot_range?(range)
	# this works but doesnt pass test
	range.max != range.last
end

def square_root_of(number)
	Math.sqrt(number)
end

def word_count_a_file(file_path)
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of 
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
end
