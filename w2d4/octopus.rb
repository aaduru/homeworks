# quadractic method
def sluggish_octopus(fishes)
  long_fish = ""
  max_length = 0
  fishes.each_with_index do |fish1,index1|
    fishes.each_with_index do |fish2,index2|
      next if index1 == index2
      if fish1.length > fish2.length
        max_length = fish1.length
        long_fish = fish1
      else
        max_length = fish2.length
        long_fish = fish2
      end
    end
  end
  long_fish
end

# (n(logn)) dominant octopus
def merge_sort
  return self if count < 2

  middle = count / 2

  left, right = self.take(middle), self.drop(middle)
  sorted_left, sorted_right = left.merge_sort, right.merge_sort

  merge(sorted_left, sorted_right)
end

def merge(left, right)
  merged_array = []
  until left.empty? || right.empty?
    merged_array <<
      ((left.first < right.first) ? left.shift : right.shift)
  end

  merged_array + left + right
end

# clever octopus O(n)time

def clever_octopus(fishes)

  big_fish = fishes.first

  fishes.each do |fish|
    if fish.length > big_fish.length
      big_fish = fish
    end
  end

  big_fish

end

# dancing Octopus

tiles_hash = {
    :up => 0,
    :rightup => 1,
    :right => 2,
    :right_down => 3,
    :down => 4,
    :left_down => 5,
    :left => 6,
    :left_up => 7
}

tiles_array = [:up ,:rightup,:right,:right_down,:down,:left_down,
  :left,:left_up]

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |element,index|
    return index if element == direction
  end
end


def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end

puts slow_dance(:up,tiles_array)
