def my_collect(items)
    x = 0
    new_array = []
    while x < items.length
        new_array << yield(items[x])
        x += 1
    end    
    items.collect do |thing|
        thing.upcase
        return new_array
    end
    items.collect do |anotherthing|
    anotherthing.split(" ").first
    end
end
    