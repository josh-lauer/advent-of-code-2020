class TreeMap
  attr_reader :map, :offset_x, :offset_y

  def initialize(pattern_map)
    @map = pattern_map.map(&:chars)
    move_to(0,0)
  end

  def move_to(x,y)
    @offset_x = x
    @offset_y = y

    wrap!
  end

  # move x squares toward the right and y squares toward the bottom.
  def move(x,y)
    @offset_x, @offset_y = [offset_x + x, offset_y + y]
    
    wrap!
  end

  # if the position is off the left or right edge of the map,
  # wrap around and put the position back on the map
  def wrap!
    unless (0..width - 1).include?(offset_x)
      @offset_x = offset_x - width * (offset_x / width)
    end
  end

  def on_tree?
    this_char == '#'.freeze
  end

  def this_char
    map[offset_y][offset_x] rescue nil
  end

  def off_bottom?
    offset_y + 1 > height
  end

  def width
    @width ||= map[0].size
  end

  def height
    @height ||= map.size
  end

  def inspect
    map.map(&:join).join("\n")
  end
end
