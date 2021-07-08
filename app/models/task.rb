class Task < ActiveRecord::Base
	include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks

  attr_accessor :title

  validates_length_of :title, maximum: 6

  before_validation :remove_whitespaces

  private

  def remove_whitespaces
    title.strip!
  end
end
