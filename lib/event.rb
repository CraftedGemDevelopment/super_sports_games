require 'pry'

class Event
  attr_reader :name,
              :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    ages.sum.to_f / ages.count
  end

  def standard_deviation_age
    sub_ave = ages.map do |element|
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
        bingo = sum_of_squared / ages.count.to_i
        answer = Math.sqrt(bingo)
        answer.round(2)
  end
end