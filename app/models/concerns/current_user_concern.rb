module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
  	super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Potential Friend"
    guest.first_name = "Potential"
    guest.last_name = "Friend"
    guest.email = "potentialfriend@example.com"
    guest
  end

end