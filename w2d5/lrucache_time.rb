class Linkedlist
  attr_accessor :value, :next_node, :prev_node

  def initialize(value, prev_node, next_node)
    @value = value
    @prev_node = prev_node
    @next_node = next_node
  end
end

class LRU
    attr_accessor :head, :tail, :num_items, :cache_size

    def initialize(cache_size)
      @cache_size = cache_size
      @table = {}
      @head = nil
      @tail = nil
      @num_items = 0
    end

    def add(key, value)
    @num_items += 1
    if @num_items > @cache_size
      @head = @head.next_node
    end

    new_node = Linkedlist.new value, @tail, nil
    @head = new_node if tail == nil
    @tail.next_node = new_node if @tail != nil
    @tail = new_node
    @table[key] = new_node
  end

  def get(key)
    res = @table[key]
    return res if res.next_node == nil

    if res.prev_node != nil
      res.prev_node.next_node = res.next_node
    else
      @head = res.next_node
      @head.prev_node = nil
    end

    @tail.next_node = res
    res.next_node = nil
    res.prev_node = @tail
    @tail = res
  end


end


  lru = LRU.new(2)
  lru.add('a', 1)
  lru.add('b', 2)
  lru.add('c', 3)
  puts lru.head
  lru.get('a')
  puts lru.head
  lru.get('b')
  puts lru.head
  lru.get('c')
  puts lru.head
  lru.add('d', 8)
  lru.add('e', 9)
  puts lru.head
