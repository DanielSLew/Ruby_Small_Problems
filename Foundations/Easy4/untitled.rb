produce = {
    'apple' => 'Fruit',
    'carrot' => 'Vegetable',
    'pear' => 'Fruit',
    'broccoli' => 'Vegetable'
}
require 'pry'

def select_fruit(hash)
  fruit = {}
  counter = 0
  keys_hash = hash.keys
  current_key = keys_hash[counter]

  loop do
    if hash[current_key] == 'Fruit'
      binding.pry
      fruit[current_key] = 'Fruit'
    end
    counter += 1
    binding.pry
    break if counter == keys_hash.size
  end
  fruit

end

