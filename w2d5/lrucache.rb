class LRUCache

    def initialize(cache_size)
      @cache_size = cache_size
      @cache = []
    end

    def count
      # returns number of elements currently in cache
      @cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if count >= @cache_size
        @cache.shift
        @cache.push(el)
      elsif @cache.include?(el)
        @cache.delete(el)
        @cache.push(el)
      else
        @cache.push(el)
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @cache
    end

    private
    # helper methods go here!

  end


  johnny_cache = LRUCache.new(4)

  p  johnny_cache.add("I walk the line")
  p  johnny_cache.add(5)

  p  johnny_cache.count # => returns 2

  p  johnny_cache.add([1,2,3])
  p  johnny_cache.add(5)
  p  johnny_cache.add(-5)
  p  johnny_cache.add({a: 1, b: 2, c: 3})
  p  johnny_cache.add([1,2,3,4])
  p  johnny_cache.add("I walk the line")
  p  johnny_cache.add(:ring_of_fire)
  p  johnny_cache.add("I walk the line")
  p  johnny_cache.add({a: 1, b: 2, c: 3})
