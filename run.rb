require "green_shoes"
require "json"

class Makechart

  def getData
    file = File.read("people.json")
    return JSON.parse(file)
  end

end

# class Birth
#
#   def getData
#
#   end
#
# end




Shoes.app do

peopleArray = Makechart.new.getData
puts peopleArray[0]
flow do
  stack do
    stroke(black)
    rect(160,0, 4,460)
    stroke(blue)
    rect(160, 50, 50,4)
    stroke(blue)
    rect(160, 30, 80,4)
  end
  stack do
    interval_value = 0
    while interval_value < 110
      para interval_value, margin_bottom: 20
      interval_value = interval_value + 10
    end
  end
end


end
