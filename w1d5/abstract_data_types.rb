# Exercise 1  Stack
class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def add(el)
      # adds an element to the stack
      @stack.push(el)
    end

    def remove
      # removes one element from the stack
      @stack.pop
    end

    def show
      # return a copy of the stack
      new_stack = @stack
      new_stack
    end
  end

p stack = Stack.new
p stack.add(5)
p stack.add(4)
p stack.show
p stack.remove
p stack.show

#exercise 2
class Queue
    def initialize
      # create ivar to store stack here!
      @queue = []
    end

    def enqueue(el)
      # adds an element to the stack
      @queue.unshift(el)
    end

    def dequeue
      # removes one element from the stack
      @queue.pop
    end

    def show
      # return a copy of the stack
      new_queue = @queue
      new_queue
    end
  end

p queue = Queue.new
p queue.enqueue(5)
p queue.enqueue(4)
p queue.show
p queue.dequeue
p queue.show

# exercise 3
class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    key_id = @map.index {|el| el[0] == key}
    key_id ? @map[key_id][1] = value : @map.push([key, value])
    [key, value]
  end

  def lookup(key)
    @map.each {|el| return el.last if el.first == key}
    nil
  end

  def remove(key)
    @map.reject! {|el| el.first == key}
  end

  def show
    deep_dup(@map)
  end

  private
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end

new_map = Map.new
p new_map.assign(5,4)
p new_map.assign(4,6)
p new_map.show
p new_map.assign(5,3)
p new_map.show
p new_map.remove(4)
p new_map.show
