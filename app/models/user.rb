class User < ActiveRecord::Base
    has_many :posts, -> { order(title: :desc) }
    
    has_secure_password
    # from active record - provides a reader/writer method for password

    validates :username, uniqueness: true

    
end