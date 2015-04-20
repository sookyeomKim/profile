class RemoveContentToBlogs < ActiveRecord::Migration
  def change
    remove_column :blogs, :content, :text
  end
end
