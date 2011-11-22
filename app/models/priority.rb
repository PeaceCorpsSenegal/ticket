class Priority < ActiveRecord::Base

  has_many :tickets
  
  default_scope :order => 'priorities.level ASC'

end
