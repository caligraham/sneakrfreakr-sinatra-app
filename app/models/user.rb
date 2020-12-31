class User < ActiveRecord::Base
    has_many :posts
    
    has_secure_password

    validates :username, uniqueness: true

    
end