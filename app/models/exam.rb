class Exam < ActiveRecord::Base
	after_initialize do |exam|
    puts "You have initialized an object!"
  end

  after_find do |exam|
    puts "You have found an object!"
  end
end
