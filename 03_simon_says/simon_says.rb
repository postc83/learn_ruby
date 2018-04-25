# write your code here
def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num = 2)
  new_str = str + ' '
  new_str *= num
  new_str.strip
end

def start_of_word(word, num)
  word[0...num]
end

def first_word(str)
  new_arr = str.split(' ')
  new_arr[0]
end

def titleize(title)
  little_words = %w[and the over]
  new_arr = title.split(' ')
  new_arr.map! do |word|
    little_words.include?(word) ? word : word.capitalize
  end
  new_arr[0].capitalize!
  new_arr.join(' ')
end
