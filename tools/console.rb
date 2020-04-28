require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end
# Pry.start

g1 = Guest.new("Josh")
g2 = Guest.new("Paisley")
g3 = Guest.new("Ana")
g4 = Guest.new("Mia")

l1 = Listing.new("house", "Buffalo")
l2 = Listing.new("house", "Houston")
l3 = Listing.new("apartment", "Buffalo")
l4 = Listing.new("house 2", "Buffalo")
l5 = Listing.new("house 2", "Houston")
l6 = Listing.new("apartment", "Orlando")

t1 = Trip.new("2020-01-27", g1, l1)
t2 = Trip.new("2020-02-27", g3, l1)
t3 = Trip.new("2020-03-27", g3, l6)
t4 = Trip.new("2020-04-27", g3, l5)
t5 = Trip.new("2020-05-27", g3, l4)
t6 = Trip.new("2020-06-27", g4, l6)
t7 = Trip.new("2020-07-27", g2, l2)

binding.pry
0