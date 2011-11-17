class PagesController < ApplicationController

def home
  if signed_in?
    @ticket = Ticket.new
    @outgoing = current_user.outgoing
    @incoming = current_user.incoming
  end
end

end