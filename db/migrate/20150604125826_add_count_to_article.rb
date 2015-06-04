class AddCountToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :count, :integer
  end
end
