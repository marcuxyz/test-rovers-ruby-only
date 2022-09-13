class Rovers
  def position(coordinate, positions)
    x, y, direction = coordinate.split

    positions.chars do | position |
      case position
      when 'L'
        direction = move_left(direction)
      when 'R'
        direction = move_right(direction)       
      when 'M'
        x, y = move_grid(x.to_i, y.to_i, direction)    
      end
    end
    "#{x} #{y} #{direction}"
  end

  
  def move_left(direction)
    return 'W' if direction == 'N'
    return 'S' if direction == 'W'
    return 'E' if direction == 'S'
    'N'
  end

  def move_right(direction)
    return 'W' if direction == 'S'
    return 'N' if direction == 'W'
    return 'E' if direction == 'N'
    'S'
  end

  def move_grid(x, y, direction)
    return [x, y+1] if direction == 'N'
    return [x, y-1] if direction == 'S'
    return [x+1, y] if direction == 'E'
    return [x-1, y] if direction == 'W'
  end
end

