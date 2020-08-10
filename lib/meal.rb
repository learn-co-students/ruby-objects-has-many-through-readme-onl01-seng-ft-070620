
class Meal
  attr_accessor :waiter, :customer, :total, :tip

  @@all = []

  def initialize(waiter, customer, total, tip)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end

  def self.get_meals_by_customer(customer)
    @@all.select{ |meal| meal.customer == customer }
  end

  def self.get_meals_by_waiter(waiter)
    @@all.select{ |meal| meal.waiter == waiter }
  end

  def self.get_waiters_by_customer(customer)
    waiters = []
    @@all.each do |meal| 
      if meal.customer == customer
        waiters << meal.waiter
      end
    end
    waiters
  end

  def self.all
    @@all
  end
end