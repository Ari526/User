class Fit < ActiveRecord::Base
  validates :title, presence: true

  before_save :log_message

  private

  def log_message
    puts "You are about to save an article"
  end
end
