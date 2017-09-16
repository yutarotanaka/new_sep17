class AddUsernameToKeijiban < ActiveRecord::Migration
  def change
    add_column :keijibans, :username, :string
  end
end
