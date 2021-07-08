class Article < ActiveRecord::Base
 
  validates :title, presence: true
  
  before_save :call_before_save
  after_save :call_after_save
  around_save :call_around_save


  private

  def call_before_save

    puts 'before article is saved'
  end

  def call_after_save
    puts 'after article is saved'
  end

  def call_around_save
    puts 'in around article save'
    yield # Article saved
    puts 'out around article save'
  end
end
