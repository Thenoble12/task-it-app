class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task, :notes, :category

  def show
    self.id
    self.task
    self.notes
    self.category
  end

end
