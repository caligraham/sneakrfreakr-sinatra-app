class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :image_url
      t.string :password_digest
      #signifies that we are not storing plain text passwords in the database
      
      t.timestamps null: false
    end
  end
end
