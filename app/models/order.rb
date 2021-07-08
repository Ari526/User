class Order < ActiveRecord::Base
	
  before_save :normalize_card_number, if: :paid_with_card?

  def  paid_with_card
  	puts "paid_with_card"
  end


  private

  def log_message
    puts "You are about to save an article"
  end
end
