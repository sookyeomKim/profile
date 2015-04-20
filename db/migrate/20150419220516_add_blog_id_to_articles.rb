class AddBlogIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :blog_id, :integer
    add_index :articles, :blog_id
  end
end
