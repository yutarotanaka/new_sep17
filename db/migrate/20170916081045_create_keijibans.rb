class CreateKeijibans < ActiveRecord::Migration
  def change
    create_table :keijibans do |t|
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
