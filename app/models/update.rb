class Update < ActiveRecord::Base

  belongs_to :ticket
  belongs_to :code

end
