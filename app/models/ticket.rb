class Ticket < ActiveRecord::Base

  belongs_to :category
  belongs_to :priority
  belongs_to :to, :class_name => 'User'
  belongs_to :from, :class_name => 'User'
  
  has_many :updates
  has_many :codes, :through => :updates
  
  validates :from_id, :presence => true
  validates :to_id, :presence => true
  validates :priority_id, :presence => true
  validates :category_id, :presence => true
  
  default_scope :order => 'tickets.created_at DESC'

end
