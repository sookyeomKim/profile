class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :username
      t.string :avatar
      t.boolean :favorite

      t.timestamps null: false
    end
  end
end
