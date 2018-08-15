require './lib/event'
require './lib/games'

@ages = [24, 30, 18, 20, 41]

# # Your code here for calculating the standard deviation

#   def average_age
#     @ages.sum.to_f / ages.count
#   end

#   def standard_deviation_age
#     sub_ave = @ages.map do |element|
#     element - average_age
#     end
#       rounded_subtracted_average = sub_ave.map do |element|
#       element.round(1)
#     end
#       squared_average = rounded_subtracted_average.map do |element|
#       element ** 2
#     end
#       rounded_squared_average = squared_average.map do |element|
#         element.round(2)
#     end
#       sum_of_squared = rounded_squared_average.sum
#       bingo = sum_of_squared / @ages.count.to_i
#       answer = Math.sqrt(bingo)
#       print answer.round(2)
# end


class Event
  attr_reader :name,
              :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def standard_deviation_age
    sroot = Math.sqrt(squared.sum / squared.count)
    return sroot.round(2)
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    sum = 0.to_f
    count = ages.count
      ages.each do |age|
        sum += age
      end
    average = sum / count
    return average
  end

  def subtract_average #standard_deviation_age#(ages)
    subtracted = []
    ages.each do |age|
    rounded = age - average_age
    subtracted << rounded.round(1)
    end
    return subtracted
  end

  def squared
    square = []
    subtract_average.each do |num|
      round_squared = num ** 2
      square << round_squared.round(2)
    end
    return square
  end



end

# When you find the standard deviation, print it out
standard_deviation_age