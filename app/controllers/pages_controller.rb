class PagesController < ApplicationController

def home
  if signed_in?
    @user = current_user
    @outgoing = @user.outgoing
    @incoming = @user.incoming
  end
end

end