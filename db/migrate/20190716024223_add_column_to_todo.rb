class AddColumnToTodo < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :user_name, :string
  end
end
