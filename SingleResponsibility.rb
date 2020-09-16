class Circle
  attr_accessor :radius
  def initialize(radius)
    @radius = radius
  end
=begin
  def get_area
    3.14 * @radius * @radius
  end
=end
end


class Square
  attr_accessor :length
  def initialize(length)
    @length = length
  end
=begin
  def get_area
    @length * @length
  end
=end
end


class AreaCalculator
  attr_accessor :shapes
  def initialize(shapes)
    @shapes = shapes
  end
  def cal_area
    sum = 0
    @shapes.each do |shape|
      if shape.instance_of?(Square)
        sum += shape.length * shape.length
      else
        sum += (3.14 * shape.radius * shape.radius)
      end
    end
    sum
  end
=begin
  def output
    puts cal_area
  end
=end
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