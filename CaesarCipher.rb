def caesar_cipher(string, shift)
  output = Array.new
  upper = [*("A".."Z")]
  lower = [*("a".."z")]
  string.each_char do |letter|
    if letter =~ /[A-Z]/
      output << upper[(upper.index(letter) + shift) % 26]
    elsif letter =~ /[a-z]/
      output << lower[(lower.index(letter) + shift) % 26]
    elsif letter =~ /[^A-Za-z]/
      output << letter
    end
  end
  output.join("")
end


puts caesar_cipher("What a string!", 5)