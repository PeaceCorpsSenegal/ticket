class Update < ActiveRecord::Base

  belongs_to :ticket
  belongs_to :code
  belongs_to :user
  
  default_scope :order => 'updates.created_at DESC'

end
