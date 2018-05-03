# write your code here
=begin
def translate(word)
  vowels = %w[a e i o u]
  if vowels.include?(word[0])
    word + 'ay'
  elsif vowels.include?(word[2])
    word[2..-1] + word[0..1] + 'ay'
  else
    word[1..-1] + word[0] + 'ay'
  end
end
=end

def translate(word)
  split_words = word.split(' ')
  words = []
  vowels = %w[a e i o u]
  split_words.each do |word|
    word = qu_in_word(word)
    if vowels.include?(word[0])
      words.push(word + 'ay')
    else
      count = 0
      word.length.times do |number|
        vowels.include?(word[number]) ? break : count += 1
      end
      words.push(word[count..-1] + word[0..(count - 1)] + 'ay')
    end
  end
  words.join(' ')
end

def qu_in_word(word)
  if word.include?('qu')
    qu_location = word.index('qu')
    front = word[0..qu_location + 1]
    word[qu_location + 2..word.length] + front
  else
    word
  end
end
