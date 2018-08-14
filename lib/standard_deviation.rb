require './lib/event'
require './lib/games'

@ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation

  def average_age
    @ages.sum.to_f / ages.count
  end

  def standard_deviation_age
    sub_ave = @ages.map do |element|
    element - average_age
    end
      rounded_subtracted_average = sub_ave.map do |element|
      element.round(1)
    end
      squared_average  = rounded_subtracted_average.map do |element|
      element ** 2
    end
      rounded_squared_average = squared_average.map do |element|
        element.round(2)
    end
      sum_of_squared = rounded_squared_average.sum
      bingo = sum_of_squared / @ages.count.to_i
      answer = Math.sqrt(bingo)
      print answer.round(2)
end


# When you find the standard deviation, print it out
standard_deviation_age