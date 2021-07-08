class Category < ActiveRecord::Base
	has_many :usertests, dependent: :destroy
	
end
