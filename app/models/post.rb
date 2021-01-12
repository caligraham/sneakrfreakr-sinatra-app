class Post < ActiveRecord::Base

    belongs_to :user

    #Active record validations
    validates :title, :description, :image_url, presence: true

   def self.reverse_posts
    Post.order(:created_at).reverse_order
   end 

   def self.search(query)
    where ("title LIKE ?", "%#{query}")
   end

end
