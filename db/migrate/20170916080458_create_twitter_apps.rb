class CreateTwitterApps < ActiveRecord::Migration
  def change
    create_table :twitter_apps do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
  add_index :microposts, [:user_id, :created_at]
end
