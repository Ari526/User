class Que < ActiveRecord::Base
	#before_save :change_title
     after_save :change_title

   def change_title

    self.title = "Pay electricity & TV bill"

  end
end
