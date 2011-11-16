class PagesController < ApplicationController

def home
  if signed_in?
    @user = User.find_by_id(1)
    @tickets = @user.tickets
    @incoming = @user.incoming
  end
end

end