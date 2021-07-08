class Note < ActiveRecord::Base
  before_validation :set_title, if: :title_not_present

def title_not_present
  self.title.blank?
end

def set_title
  self.title = 'Pay electricity bill'
end
end
