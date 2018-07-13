# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names_array)
  names_array.collect {|name| badge_maker(name)}
end

def assign_rooms(names_array)
  rooms_array = []
  count = 1
  names_array.each do |name|
    rooms_array << "Hello, #{name}! You'll be assigned to room #{count}!"
    count += 1
  end
  return rooms_array
end

def printer(names_array)
  batch_badge_creator(names_array).each do |name|
    puts name
  end
  assign_rooms(names_array).each do |room|
    puts room
  end
end
