class AddImageToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :image_id, :string
  end
end
