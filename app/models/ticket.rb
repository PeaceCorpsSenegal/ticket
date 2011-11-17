class Ticket < ActiveRecord::Base

  belongs_to :category
  belongs_to :priority
  
#  belongs_to :to, :through => :owners, :class_name => 'User'
#  belongs_to :from, :through => :owners, :class_name => 'User'
  
  has_many :updates, :dependent => :destroy
  has_many :codes, :through => :updates
  
  has_many :owners, :dependent => :destroy
  has_many :sent_by, :through => :owners, :source => :from
  has_many :sent_to, :through => :owners, :source => :to
  
  validates :priority_id, :presence => true
  validates :category_id, :presence => true
  
  accepts_nested_attributes_for :updates
  accepts_nested_attributes_for :owners
  
  default_scope :order => 'tickets.created_at DESC'

end
