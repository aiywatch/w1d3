def count_letters(str)
  p str.delete(" ").chars.inject(Hash.new(0)){ |h, c| h[c] += 1; h }
end

count_letters("lighthouse in the house...")

def show_indices(str)
  char_indice = Hash.new { |hash, key| hash[key] = [] }
  str.chars.each_with_index do |c, i| 
    char_indice[c] << i if str[c] != ' '
  end
  char_indice
end

p show_indices("lighthouse in the house...")

