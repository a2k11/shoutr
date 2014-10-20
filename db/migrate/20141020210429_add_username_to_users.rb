class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username,:string, uniqueness: true,index: true
  end
end
