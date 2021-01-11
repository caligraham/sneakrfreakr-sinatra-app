class User < ActiveRecord::Base
    has_many :posts
    
    has_secure_password
    #provides a reader/writer method for password

    validates :username, uniqueness: true

    
end