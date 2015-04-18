class RemoveIndexToBlogs < ActiveRecord::Migration
  def change
    remove_column :blogs, :index, :string
  end
end
