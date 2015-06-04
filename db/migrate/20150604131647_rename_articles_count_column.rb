class RenameArticlesCountColumn < ActiveRecord::Migration
  def change
    rename_column :articles, :count, :view_count
  end
end
