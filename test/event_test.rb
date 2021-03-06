require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'

class EventTest < Minitest::Test
  def test_event_exist
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_instance_of Event, curling
  end

  def test_event_has_name
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal "Curling", curling.name
  end

  def test_event_has_ages
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal [24, 30, 18, 20, 41], curling.ages
  end

  def test_can_find_max_age
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 41, curling.max_age
  end

  def test_can_find_min_age
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 18, curling.min_age
  end

  def test_can_find_average_age
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 26.6, curling.average_age
  end


  def test_can_find_standard_deviation_age
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 8.28, curling.standard_deviation_age
  end
end