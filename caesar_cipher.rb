puts 'Enter your cipher text'
input = gets.chomp
def caesar_cipher(text, shift)
  text_arr = text.split('')
  text_arr.map {|char| char.ord}.map {|ord|
    if ord < 64 || ord > 122
      chard.ord
    else
      ord > 65 && ord < 97 ?
      ((ord - 65 + shift) % 26 + 65).chr:
      ((ord - 97 + shift) % 26 + 97).chr
    end
  }.join()
end

puts caesar_cipher(input, 3)
