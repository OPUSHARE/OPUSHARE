class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :name
      t.text :description
      t.string :url
      t.string :tag
      t.string :image

      t.timestamps
    end
  end
end
