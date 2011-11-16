class User < ActiveRecord::Base

  has_many :tickets, :foreign_key => :from_id
  has_many :sent_to, :through => :tickets, :source => :to
  
  has_many :incoming, :foreign_key => :to_id, :class_name => 'Ticket'
  has_many :received_from, :through => :incoming, :source => :from

end
