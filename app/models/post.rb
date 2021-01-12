class Post < ActiveRecord::Base

    belongs_to :user

    #Active record validations
    validates :title, :description, :image_url, presence: true

    def self.search(query)
        where("title LIKE ?", "%#{query}%")
    end

    #methods we get from belongs_to:
    # .user
    # .user=(accept a user obj as an argument)
    # .build_user(accept a user attributes hash)
    # .create_user(accep a user attributes hash)

end
