class Update < ActiveRecord::Base

  belongs_to :ticket
  belongs_to :code
  
  default_scope :order => 'updates.created_at ASC'

end
