def my_collect(collection)
  x = 0
  new_collection = []
  while x < collection.length
    yield(collection[x])
    x = x + 1
  end
new_collection
end

collection = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(collection) { |name| new_collection << name.split(" ").first}
