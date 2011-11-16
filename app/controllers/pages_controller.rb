class PagesController < ApplicationController

def home
  @user = User.find_by_id(1)
  @tickets = @user.tickets
  @incoming = @user.incoming
end

end