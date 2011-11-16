class PagesController < ApplicationController

def home
  if signed_in?
    @user = current_user
    @tickets = @user.tickets
    @incoming = @user.incoming
  end
end

end