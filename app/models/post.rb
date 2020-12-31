class Post < ActiveRecord::Base

    belongs_to :user

    #Active record validations
    validates :title, :description, :image_url ,presence: true


end
