def decode_char(str)
  morsecode = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
                '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
                '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }
  morsecode[str]
end

def decode_word(str)
  letters = str.split
  word = ''
  letters.each { |letter| word += decode_char(letter) }
  word
end

def decode(str)
  words = str.split('   ')
  text = ''
  words.each do |word|
    text += decode_word(word)
    text += ' '
  end
  text
end

puts decode_char('-..')

puts decode_word('-- -.--')

puts decode('-- -.--   -. .- -- .')

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
