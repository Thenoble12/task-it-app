class Tasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task
      t.text   :notes
      t.string :category

      t.timestamps
    end
  end
end
