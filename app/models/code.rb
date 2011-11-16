class Code < ActiveRecord::Base

  has_many :updates
  has_many :tickets, :through => :updates

end
