class AddDetailsToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :title, :string
    add_column :todos, :deadline, :string
  end
end
