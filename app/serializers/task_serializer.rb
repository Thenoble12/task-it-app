class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :category, :user_id

  def show
    self.id
    self.name
    self.details
    self.category
  end

end
