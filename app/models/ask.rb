class Ask < ActiveRecord::Base
	
    after_validation :set_title

    validates :title, presence: true


  def set_title

    self.title = "Pay electricity bill"

  end
end
