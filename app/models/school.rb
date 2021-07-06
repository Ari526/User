class School < ActiveRecord::Base
	after_initialize do |school|
      puts "You have initialized an object!"
    end

  after_find do |school|
    puts "You have found an object!"
  end
end
