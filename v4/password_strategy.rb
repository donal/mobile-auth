Warden::Strategies.add(:password) do
  def valid?
    p "in valid?"
    params['username'] || params['password']
  end

  def authenticate!
    # u = User.authenticate(params['username'], params['password'])
    # u.nil? ? fail!("Could not log in") : success!(u)
    p "in authenticate"
    fail!("Can't log in")
  end
end
