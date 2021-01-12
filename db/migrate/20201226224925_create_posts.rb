class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.integer :user_id
      #foreign key goes with the belongs to model

      t.timestamps null: false
    end
  end
end
