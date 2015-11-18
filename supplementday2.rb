#Reversing
#take string make it an array. then pull the last one and use it for the first
def reverse_string(string)
  reversed_array = []
  array_string = string.split("")
  (array_string.length - 1).downto(0) do |index|
    reversed_array << array_string[index]
  end
  reversed_string = reversed_array.join
  reversed_string
end

# string = reverse_string("Hey how are you")
#
# puts string

#Intergers to strings
def int_to_str(int_array)
  string_array = []
  int_array.each do |int|
    string_array << "#{int}"
  end
  string_array
end
#
# str_arr = int_to_str([1, 2, 3, 4, 5, 6])
# puts str_arr

#Multiplier
def array_multiplier(array, multiplier)
  array2 = []
  array.each do |item|
    array2 << item * multiplier
    # puts "here"
    # puts answer
    # array2 << answer

  end
  puts array2
  array2
end
#new_array = array_multiplier([1,2,3], 2)
#
#puts new_array


#Offset
def offset_str(string_here, offset)
  string_array = string_here.split
  offset_num = " " * offset
  offset_string = "#{offset_num}#{string_here}"
  puts offset_string
end


test_str = "I am a string"

# puts test_str
offset_str(test_str, 4)
