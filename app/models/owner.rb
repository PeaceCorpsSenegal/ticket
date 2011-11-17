class Owner < ActiveRecord::Base

  belongs_to :ticket
  belongs_to :code
  belongs_to :outgoing, :class_name => 'User'
  belongs_to :incoming, :class_name => 'User'
  belongs_to :to, :class_name => 'User'
  belongs_to :from, :class_name => 'User'
  
  default_scope :order => 'owner.created_at ASC'

end
