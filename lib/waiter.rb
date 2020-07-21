require 'customer.rb'
require 'meal.rb'

class Waiter

  attr_accessor :name, :yrs_experience

  @@all = []

  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all

  def new_meal(customer, total, tip)
    new_meal = Meal.new(self, customer, total, tip)
  end #new_meal

  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end #meals

  def best_tipper
    meals.max {|m1, m2| m1.tip <=> m2.tip}.customer
  end #best_tipper

end
