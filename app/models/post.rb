class Post < ActiveRecord::Base

    belongs_to :user

    #Active record validations
    validates :title, :description, :image_url, presence: true

    def self.search(query)
        where("title LIKE ?", "%#{query}%")
    end

end
