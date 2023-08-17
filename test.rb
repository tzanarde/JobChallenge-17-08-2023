# Given a string s consisting of small English letters, find and return the first instance of a
# non-repeating character in it. If there is no such character, return '_'.

# Example

# For s = "abacabad", the output should be
# solution(s) = 'c'.

# There are 2 non-repeating characters in the string: 'c' and 'd'. Return c since it appears in the string first.

# For s = "abacabaabacaba", the output should be
# solution(s) = '_'.

# There are no characters in this string that do not repeat.

# 'actcay' => 't'
# 'abcxabc' => 'x'
# 'zzywxx' => 'y'

def first_non_repeating(input)
  char_found = input.split('').group_by { |letter| letter }
                              .transform_values { |values| values.count }
                              .select { |letter, value| value == 1 }
  return char_found.keys.first unless char_found.empty?
  '_'
end

puts first_non_repeating 'actcay'          # t
puts first_non_repeating 'abcxabc'         # x
puts first_non_repeating 'zzywxx'          # y
puts first_non_repeating 'abacabaabacaba'  # _
