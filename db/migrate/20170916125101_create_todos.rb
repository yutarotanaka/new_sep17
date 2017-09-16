class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :content
      t.integer :user_id
      t.text :universal

      t.timestamps null: false
    end
  end
end
