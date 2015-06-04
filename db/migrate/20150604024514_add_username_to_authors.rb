class AddUsernameToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :username, :text
  end
end
