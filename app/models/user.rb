class User < ActiveRecord::Base
    has_many :posts
    
    has_secure_password
    # from active record - provides a reader/writer method for password

    validates :username, uniqueness: true

    #methods 
    # user.posts
    # user.posts=
end