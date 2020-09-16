class Shape
  def get_area
    raise 'Must implement get_area!'
  end
end

class Circle < Shape
  attr_accessor :radius
  def initialize(radius)
    @radius = radius
  end

  def get_area
    3.14 * @radius * @radius
  end
end


class Square < Shape
  attr_accessor :length
  def initialize(length)
    @length = length
  end

  def get_area
    @length * @length
  end

end


class AreaCalculator
  attr_accessor :shapes
  def initialize(shapes)
    @shapes = shapes
  end
  def cal_area
    sum = 0
    @shapes.each do |shape|
      sum += shape.get_area
    end
    sum
  end
end


class DisplayArea
  def initialize(sum)
    @sum = sum
  end
  def html
    puts '<p>' + @sum.to_s + '</p>'
  end
  def json
    puts "{ \"sum\"" + " : " + @sum.to_s + " }"
  end

end

shapes = [Circle.new(5), Square.new(5)]
ar = AreaCalculator.new(shapes)
output = DisplayArea.new(ar.cal_area)
output.json
output.html