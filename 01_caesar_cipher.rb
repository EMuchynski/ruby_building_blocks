#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string

def caesar_cipher(str, n)

  #start looping
  (0..str.length-1).each do |i|

    #make sure element is a letter
    if str[i] =~ /[a-zA-Z]/

      #downcase letters
      if str[i] == str[i].downcase
        chr = str[i].ord - 'a'.ord
        new_chr = (chr + n) % 26
        str[i] = (new_chr + 'a'.ord).chr

      #upcase letters
      elsif str[i] = str[i].upcase
        chr = str[i].ord - 'A'.ord
        new_chr = (chr + n) % 26
        str[i] = (new_chr + 'A'.ord).chr
      end
    end
  end

  #return string
  str
end

puts "Please enter a string:"
str = gets.chomp
puts "Please enter a number you wish to shift alphabetical characters by:"
n = gets.chomp.to_i
puts "The new string is: " + caesar_cipher(str, n)
