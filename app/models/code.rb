class Code < ActiveRecord::Base

  has_many :updates
  has_many :owners
  has_many :tickets, :through => :updates
  
  default_scope :order => 'codes.rank ASC'

end
