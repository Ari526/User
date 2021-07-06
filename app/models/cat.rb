class Cat < ActiveRecord::Base
	after_touch do |cat|
    puts "You have touched an object"
  end
end
