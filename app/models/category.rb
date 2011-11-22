class Category < ActiveRecord::Base

  has_many :tickets
  
  default_scope :order => 'categories.category ASC'

end
