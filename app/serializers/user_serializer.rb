class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest

  def show
    self.id
    self.username
    self.email
    self.password
  end

end
