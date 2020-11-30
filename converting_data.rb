# Convert an array of arrays into a hash.
# For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.

# arrays = [[1, 3], [8, 9], [2, 16]]
# hash = Hash[arrays.map {|key, value|[key, value]}]
# puts hash

#  2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
#     For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.

array_of_hashes = [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}]
@new_hash = Hash.new
array_of_hashes.each do |hash|
  id = hash.fetch(:id)
  @new_hash[id] = hash
end

puts @new_hash