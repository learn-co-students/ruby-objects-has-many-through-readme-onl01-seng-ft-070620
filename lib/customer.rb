class Customer
  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.get_meals_by_customer(self)
  end

  def waiters
    Meal.get_waiters_by_customer(self)
  end

  def self.all
    @@all
  end
end